--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Schemat_Uk_Iter.vhf
-- /___/   /\     Timestamp : 04/11/2021 19:10:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl C:/Studia/ULiC/Zad2.1/Schemat_Uk_Iter.vhf -w C:/Studia/ULiC/Zad2.1/Schemat_Uk_Iter.sch
--Design Name: Schemat_Uk_Iter
--Device: xbr
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Schemat_Uk_Iter is
   port ( a0     : in    std_logic; 
          a1     : in    std_logic; 
          a2     : in    std_logic; 
          a3     : in    std_logic; 
          p_wej1 : in    std_logic; 
          p_wej2 : in    std_logic; 
          p_wyj1 : out   std_logic; 
          p_wyj2 : out   std_logic);
end Schemat_Uk_Iter;

architecture BEHAVIORAL of Schemat_Uk_Iter is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   signal XLXN_4 : std_logic;
   signal XLXN_5 : std_logic;
   signal XLXN_6 : std_logic;
   component Kod_Blok_Iter
      port ( a     : in    std_logic; 
             pin1  : in    std_logic; 
             pin2  : in    std_logic; 
             pout1 : out   std_logic; 
             pout2 : out   std_logic);
   end component;
   
begin
   XLXI_5 : Kod_Blok_Iter
      port map (a=>a0,
                pin1=>p_wej1,
                pin2=>p_wej2,
                pout1=>XLXN_1,
                pout2=>XLXN_2);
   
   XLXI_6 : Kod_Blok_Iter
      port map (a=>a1,
                pin1=>XLXN_1,
                pin2=>XLXN_2,
                pout1=>XLXN_3,
                pout2=>XLXN_4);
   
   XLXI_8 : Kod_Blok_Iter
      port map (a=>a2,
                pin1=>XLXN_3,
                pin2=>XLXN_4,
                pout1=>XLXN_5,
                pout2=>XLXN_6);
   
   XLXI_9 : Kod_Blok_Iter
      port map (a=>a3,
                pin1=>XLXN_5,
                pin2=>XLXN_6,
                pout1=>p_wyj1,
                pout2=>p_wyj2);
   
end BEHAVIORAL;


