--  with STM32.Board; use STM32.Board;
with Board.BLE; use Board.BLE;
with STM32.USARTs; use STM32.USARTs;
with HAL; use HAL;

package body OPAVES.BLE is
   function Hex2Byte (C : Character) return UInt8;
   --   Convert a character (0-9, A-F) to its hexadecimal value.  Return
   --   Bad_Byte if the character is not valid.

   Bad_Byte : constant UInt8 := 16#FF#;
   --  Error result for Hex2Byte

   procedure To_Bytes (S : String; Arr : out UInt8_Array; Valid : out Boolean);
   --  Convert an hexadecimal string S to its value ARR

   procedure Setup_4871;
   --  Setup the BLE 4871 chip: set name and services

   type Rx_State_Type is (Data_Unsync, Data_Sync, Command);

   procedure Send (S : String);
   --  Send a string to the BLE

   protected Prot is
      pragma Interrupt_Priority;

      function Get_Speed return Speed_Msg_Type;

      procedure Send (C : Character);

      procedure Handler;
      pragma Attach_Handler (Handler, BLE_UART_Interrupt_Id);

      procedure Set_Command_Mode;
      procedure Set_Data_Mode;
      --  Set internal mode for the receiver mechanism (but send nothing)

      entry Wait;
      --  Wait until a prompt was received

      procedure Read_Reply (S : out String; Len : out Natural);
   private
      Msg : String (1 .. 60);
      Len : Natural := 0;
      --  Input buffer

      Rx_State : Rx_State_Type := Data_Unsync;
      --  True if waiting for '%' (start of message)

      Wait_Flag : Boolean := False;
      --  Flag for barrier

      Speed : Speed_Msg_Type := (0, Time_First);
      --  Result

      Tx_Buf : String (1 .. 64);
      --  Output buffer
      Tx_In : Natural := 1;
      Tx_Out : Natural := 1;
      --  Next character to be sent is at TX_OUT, first free place is at TX_IN.
      --  TX_IN = TX_OUT means the buffer is empty, TX_IN + 1 = TX_OUT means
      --  the buffer is full.
   end Prot;

   function Hex2Byte (C : Character) return UInt8 is
   begin
      if C >= '0' and C <= '9' then
         return Character'Pos (C) - Character'Pos ('0');
      elsif C >= 'A' and C <= 'F' then
         return Character'Pos (C) - Character'Pos ('A') + 10;
      else
         return Bad_Byte;
      end if;
   end Hex2Byte;

   procedure To_Bytes (S : String; Arr : out UInt8_Array; Valid : out Boolean)
   is
      P : Natural;
      R : Natural;
      L, H : UInt8;
   begin
      Valid := False;
      P := S'First;
      R := Arr'First;

      --  Convert byte per byte
      while P + 1 <= S'Last loop
         H := Hex2Byte (S (P + 0));
         L := Hex2Byte (S (P + 1));
         if H = Bad_Byte or L = Bad_Byte then
            return;
         end if;
         Arr (R) := H * 16 + L;
         R := R + 1;
         P := P + 2;
      end loop;

      --  Check matching length
      if P = S'Last + 1 and R = Arr'Last + 1 then
         Valid := True;
      end if;
   end To_Bytes;

   protected body Prot is
      procedure Send_Hex (N : Natural) is
      begin
         if N < 10 then
            Prot.Send (Character'Val (Character'Pos ('0') + N));
         elsif N < 16 then
            Prot.Send (Character'Val (Character'Pos ('A') + N - 10));
         end if;
      end Send_Hex;

      procedure Handle_Packet is
         --  Packet like: WV,0072,300000000000000080000000000000
         --  uint8_t header;  (0x30)
         --  float roll;
         --  float pitch;
         --  float yaw;
         --  uint16_t thrust;
         Res : UInt8_Array (1 .. 15);
         Ok : Boolean;
      begin
         if Len /= 38 then
            Send ('L');
            return;
         end if;
         To_Bytes (Msg (9 .. 38), Res, Ok);
         if not Ok then
            Send ('E');
            return;
         end if;
         if Res (1) /= 16#30# then
            Send ('H');
            return;
         end if;

         Speed := (Speed => Natural (Res (15)) * 256 + Natural (Res (14)),
                   Timestamp => Clock);

         if True then
            Send_Hex ((Speed.Speed / 2**12) mod 16);
            Send_Hex ((Speed.Speed / 2**8) mod 16);
            Send_Hex ((Speed.Speed / 2**4) mod 16);
            Send_Hex ((Speed.Speed / 2**0) mod 16);
            Prot.Send (ASCII.CR);
            Prot.Send (ASCII.LF);
         end if;
      end Handle_Packet;

      procedure Handle_Message is
      begin
         if Len > 7 and then Msg (1 .. 7) = "CONNECT" then
            --  Connected
            Send ('C');
            null;
         elsif Len > 3 and then Msg (1 .. 3) = "WC," then
            --  Start/end notification request
            Send ('N');
            null;
         elsif Len > 3 and then Msg (1 .. 3) = "WV," then
            --  Write request
            Handle_Packet;
         elsif Len > 10 and then Msg (1 .. 10) = "DISCONNECT" then
            --  Connected
            Send ('D');
            null;
         else
            null;
         end if;
      end Handle_Message;

      entry Wait when Wait_Flag is
      begin
         Wait_Flag := False;
      end Wait;

      procedure Read_Reply (S : out String; Len : out Natural) is
      begin
         Len := Prot.Len;
         if Len > S'Length then
            S := Msg (Msg'First .. Msg'First + S'Length - 1);
         else
            S (S'First .. S'First + Len - 1) :=
              Msg (Msg'First .. Msg'First + Len - 1);
         end if;
         Prot.Len := 0;
      end Read_Reply;

      procedure Set_Command_Mode is
      begin
         Len := 0;
         Rx_State := Command;
         Wait_Flag := False;
      end Set_Command_Mode;

      procedure Set_Data_Mode is
      begin
         Len := 0;
         Rx_State := Data_Unsync;
         Wait_Flag := False;
      end Set_Data_Mode;

      procedure Tx_Add (C : Character) is
      begin
         --  Add to buffer
         Len := Len + 1;
         if Len < Msg'Last then
            Msg (Len) := C;
         end if;
      end Tx_Add;

      procedure Receive (C : Character) is
      begin
         case Rx_State is
            when Data_Unsync =>
               if C = '%' then
                  --  Start of message
                  Len := 0;
                  Rx_State := Data_Sync;
               else
                  --  Discard character
                  null;
               end if;
            when Data_Sync =>
               if C = '%' then
                  if Len = 0 then
                     --  Two in a raw, that's a real start
                     null;
                  else
                     --  End of message
                     Handle_Message;
                     Rx_State := Data_Unsync;
                  end if;
               else
                  Tx_Add (C);
               end if;
            when Command =>
               Tx_Add (C);
               if C = '>' and then Len > 3
                 and then Msg (Len - 3 .. Len - 1) = "CMD"
               then
                  Wait_Flag := True;
               end if;
         end case;
      end Receive;

      function Inc_Tx (V : Natural) return Natural is
      begin
         if V = Tx_Buf'Last then
            return Tx_Buf'First;
         else
            return V + 1;
         end if;
      end Inc_Tx;

      procedure Handler is
      begin
         if Status (BLE_UART, Read_Data_Register_Not_Empty) then
            declare
               C : constant Character :=
                 Character'Val (Current_Input (BLE_UART));
            begin
               Clear_Status (BLE_UART, Read_Data_Register_Not_Empty);
               Receive (C);
            end;
         end if;
         if Status (BLE_UART, Transmit_Data_Register_Empty)
           and then Interrupt_Enabled (BLE_UART, Transmit_Data_Register_Empty)
         then
            --  A character has been sent. Ack interrupt.
            Clear_Status (BLE_UART, Transmit_Data_Register_Empty);

            --  Next character
            Tx_Out := Inc_Tx (Tx_Out);

            if Tx_Out = Tx_In then
               --  No next character
               Disable_Interrupts (BLE_UART, Transmit_Data_Register_Empty);
            else
               Transmit (BLE_UART, Character'Pos (Tx_Buf (Tx_Out)));
            end if;
         end if;
      end Handler;

      function Get_Speed return Speed_Msg_Type is
      begin
         return Speed;
      end Get_Speed;

      procedure Send (C : Character) is
         Next : constant Natural := Inc_Tx (Tx_In);
      begin
         if Next = Tx_Out then
            --  Buffer is full
            return;
         end if;
         Tx_Buf (Tx_In) := C;

         if Tx_In = Tx_Out then
            --  Buffer was empty, start to transmit
            Transmit (BLE_UART, Character'Pos (C));
            Enable_Interrupts (BLE_UART, Transmit_Data_Register_Empty);
         end if;

         Tx_In := Next;
      end Send;
   end Prot;

   procedure Send (S : String) is
   begin
      --  Assuming the string S is small enough
      for I in S'Range loop
         Prot.Send (S (I));
      end loop;
   end Send;

   procedure Setup_4871 is
      T : Time;
      Reply : String (1 .. 80);
      Reply_Len : Natural;
   begin
      --  Switch to data mode if already in command mode
      Prot.Send (ASCII.CR);
      Send ("---" & ASCII.CR);

      --  Enter command mode
      T := Clock;
      delay until T + Milliseconds (400);
      Prot.Set_Command_Mode;
      Send ("$$$");

      --  Wait prompt
      Prot.Wait;
      Prot.Read_Reply (Reply, Reply_Len);

      --  Get name
      Send ("GN" & ASCII.CR);

      Prot.Wait;
      Prot.Read_Reply (Reply, Reply_Len);
      if Reply_Len >= 11
        and then Reply (1 .. 11) = " Crazyflie" & ASCII.CR
      then
         if False then
            --  Factory reset
            Send ("SF,1" & ASCII.CR);
            return;
         end if;

         --  Already configured
         Send ("---" & ASCII.CR);
         Prot.Set_Data_Mode;

         return;
      end if;

      Send ("SS,00" & ASCII.CR);
      Prot.Wait;
      Prot.Read_Reply (Reply, Reply_Len);

      Send ("PS,000002011C7F4F9E947B43B7C00A9A08" & ASCII.CR);
      Prot.Wait;
      Prot.Read_Reply (Reply, Reply_Len);
      Send ("PC,000002021C7F4F9E947B43B7C00A9A08,1A,14" & ASCII.CR);
      Prot.Wait;
      Prot.Read_Reply (Reply, Reply_Len);
      Send ("PC,000002031C7F4F9E947B43B7C00A9A08,14,14" & ASCII.CR);
      Prot.Wait;
      Prot.Read_Reply (Reply, Reply_Len);
      Send ("PC,000002041C7F4F9E947B43B7C00A9A08,12,14" & ASCII.CR);
      Prot.Wait;
      Prot.Read_Reply (Reply, Reply_Len);
      Send ("SN,Crazyflie" & ASCII.CR);
      Prot.Wait;
      Prot.Read_Reply (Reply, Reply_Len);

      --  Reboot
      Send ("R,1" & ASCII.CR);
      Prot.Set_Data_Mode;
   end Setup_4871;

   procedure Initialize is
   begin
      Initialize_BLE_UART;
      Clear_Status (BLE_UART, Read_Data_Register_Not_Empty);
      Enable_Interrupts (BLE_UART, Source => Received_Data_Not_Empty);
      Prot.Send ('I');
      Setup_4871;
   end Initialize;

   function Get_Speed return Speed_Msg_Type is
   begin
      return Prot.Get_Speed;
   end Get_Speed;

end OPAVES.BLE;
