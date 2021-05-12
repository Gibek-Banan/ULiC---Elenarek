--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemat.vhf
-- /___/   /\     Timestamp : 05/11/2021 23:47:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl C:/Studia/ULiC/test/schemat.vhf -w C:/Studia/ULiC/test/schemat.sch
--Design Name: schemat
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

entity schemat is
   port ( );
end schemat;

architecture BEHAVIORAL of schemat is
   signal XLXI_1_a_openSignal : std_logic;
   signal XLXI_1_b_openSignal : std_logic;
   signal XLXI_2_a_openSignal : std_logic;
   signal XLXI_2_b_openSignal : std_logic;
   signal XLXI_3_a_openSignal : std_logic;
   signal XLXI_3_b_openSignal : std_logic;
   signal XLXI_4_a_openSignal : std_logic;
   signal XLXI_4_b_openSignal : std_logic;
   signal XLXI_5_a_openSignal : std_logic;
   signal XLXI_5_b_openSignal : std_logic;
   signal XLXI_6_a_openSignal : std_logic;
   signal XLXI_6_b_openSignal : std_logic;
   component laal
      port ( a : in    std_logic; 
             b : in    std_logic; 
             c : out   std_logic; 
             d : out   std_logic);
   end component;
   
begin
   XLXI_1 : laal
      port map (a=>XLXI_1_a_openSignal,
                b=>XLXI_1_b_openSignal,
                c=>open,
                d=>open);
   
   XLXI_2 : laal
      port map (a=>XLXI_2_a_openSignal,
                b=>XLXI_2_b_openSignal,
                c=>open,
                d=>open);
   
   XLXI_3 : laal
      port map (a=>XLXI_3_a_openSignal,
                b=>XLXI_3_b_openSignal,
                c=>open,
                d=>open);
   
   XLXI_4 : laal
      port map (a=>XLXI_4_a_openSignal,
                b=>XLXI_4_b_openSignal,
                c=>open,
                d=>open);
   
   XLXI_5 : laal
      port map (a=>XLXI_5_a_openSignal,
                b=>XLXI_5_b_openSignal,
                c=>open,
                d=>open);
   
   XLXI_6 : laal
      port map (a=>XLXI_6_a_openSignal,
                b=>XLXI_6_b_openSignal,
                c=>open,
                d=>open);
   
end BEHAVIORAL;


