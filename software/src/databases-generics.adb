------------------------------------------------------------------------------
--                                                                          --
--                                  O'PAVES                                 --
--                                                                          --
--                        Copyright (C) 2017, AdaCore                       --
--                                                                          --
-- This program is free software; you can redistribute it and/or modify it  --
-- under terms of the GNU General Public License as published by the  Free  --
-- Software  Foundation;  either version 3,  or (at your option) any later  --
-- version. This software is distributed in the hope that it will be useful --
-- but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- --
-- TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public --
-- License for  more details.  You should have  received  a copy of the GNU --
-- General  Public  License  distributed  with  this  software;   see  file --
-- COPYING3.  If not, go to http://www.gnu.org/licenses for a complete copy --
-- of the license.                                                          --
------------------------------------------------------------------------------

package body Databases.Generics is

   New_Data_ID : Data_ID_Type := 1;

   protected Database_PO is

      procedure Set
        (Data_ID : Data_ID_Type;
         Data    : Data_Type);

      function Get
        (Data_ID : Data_ID_Type) return Data_Type;

      function Get_Timestamp
        (Data_ID  : Data_ID_Type) return Time;

   end Database_PO;

   -----------------
   -- Database_PO --
   -----------------

   protected body Database_PO is

      ---------
      -- Set --
      ---------

      procedure Set
        (Data_ID : Data_ID_Type;
         Data    : Data_Type)
      is
      begin
         Database_Instance.Data_Objects_Map (Data_ID).Timestamp := Clock;
         Database_Instance.Data_Objects_Map (Data_ID).Data := Data;
      end Set;

      ---------
      -- Get --
      ---------

      function Get
        (Data_ID : Data_ID_Type) return Data_Type is
      begin
         return Database_Instance.Data_Objects_Map (Data_ID).Data;
      end Get;

      -------------------
      -- Get_Timestamp --
      -------------------

      function Get_Timestamp
        (Data_ID  : Data_ID_Type) return Ada.Real_Time.Time is
      begin
         return Database_Instance.Data_Objects_Map (Data_ID).Timestamp;
      end Get_Timestamp;

   end Database_PO;

   ---------------------------
   -- Get_Database_Instance --
   ---------------------------

   function Get_Database_Instance return Database_Access is
   begin
      return Database_Instance'Access;
   end Get_Database_Instance;

   --------------
   -- Register --
   --------------

   overriding function Register
     (Database  : in out Database_Type;
      Data_Name : Data_Name_Type) return Data_ID_Type
   is
      Data_ID : constant Data_ID_Type := New_Data_ID;
   begin
      Database.Data_Names (Data_ID) := Data_Name;
      Database.Data_Objects_Map (Data_ID) := Data_Object'
        (Data      => Init_Data,
         Timestamp => Time_First);

      New_Data_ID := New_Data_ID + 1;

      return Data_ID;
   end Register;

   ---------
   -- Set --
   ---------

   overriding procedure Set
     (Database : in out Database_Type;
      Data_ID  : Data_ID_Type;
      Raw_Data : UInt8_Array)
   is
      Data : Data_Type with Address => Raw_Data'Address;
   begin
      Database.Set
        (Data_ID => Data_ID,
         Data    => Data);
   end Set;

   ---------
   -- Get --
   ---------

   overriding function Get
     (Database : Database_Type;
      Data_ID  : Data_ID_Type) return UInt8_Array
   is
      Data_Size : constant Natural := Data_Type'Size / 8;
      Data      : constant Data_Type := Database.Get (Data_ID);
      Raw_Data  : UInt8_Array (1 .. Data_Size) with Address => Data'Address;
   begin
      return Raw_Data;
   end Get;

   ---------
   -- Get --
   ---------

   function Get
     (Database : Database_Type;
      Data_ID  : Data_ID_Type) return Data_Type
   is
      pragma Unreferenced (Database);
   begin
      return Database_PO.Get (Data_ID => Data_ID);
   end Get;

   ---------
   -- Set --
   ---------

   procedure Set
     (Database : in out Database_Type;
      Data_ID  : Data_ID_Type;
      Data     : Data_Type)
   is
      pragma Unreferenced (Database);
   begin
      Database_PO.Set
        (Data_ID => Data_ID,
         Data    => Data);
   end Set;

   -------------------
   -- Get_Timestamp --
   -------------------

   function Get_Timestamp
     (Database : Database_Type;
      Data_ID  : Data_ID_Type) return Time
   is
      pragma Unreferenced (Database);
   begin
      return Database_PO.Get_Timestamp (Data_ID => Data_ID);
   end Get_Timestamp;

end Databases.Generics;
