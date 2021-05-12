--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SchematGlowny.vhf
-- /___/   /\     Timestamp : 05/12/2021 10:46:49
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl C:/Studia/ULiC/ProjektZaliczeniowy/SchematGlowny.vhf -w C:/Studia/ULiC/ProjektZaliczeniowy/SchematGlowny.sch
--Design Name: SchematGlowny
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

entity SchematGlowny is
   port ( b0           : in    std_logic; 
          b1           : in    std_logic; 
          clk          : in    std_logic; 
          sw0          : in    std_logic; 
          sw1          : in    std_logic; 
          d_Stopwatch1 : out   std_logic; 
          d_Stopwatch2 : out   std_logic; 
          XLXN_34      : out   std_logic; 
          XLXN_35      : out   std_logic_vector (6 downto 0); 
          XLXN_46      : out   std_logic_vector (3 downto 0));
end SchematGlowny;

architecture BEHAVIORAL of SchematGlowny is
   attribute BOX_TYPE   : string ;
   signal XLXN_3                : std_logic;
   signal XLXN_5                : std_logic_vector (1 downto 0);
   signal XLXN_30               : std_logic;
   signal XLXN_32               : std_logic;
   signal XLXN_36               : std_logic_vector (3 downto 0);
   signal XLXI_5_we1_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_5_we2_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_5_we3_openSignal : std_logic_vector (3 downto 0);
   signal XLXI_5_we4_openSignal : std_logic_vector (3 downto 0);
   component dzielnik_100kHz_na_400Hz
      port ( clk : in    std_logic; 
             wy  : out   std_logic);
   end component;
   
   component licznik_cyfra
      port ( clk : in    std_logic; 
             wy  : out   std_logic_vector (1 downto 0));
   end component;
   
   component aktywna_anoda
      port ( we : in    std_logic_vector (1 downto 0); 
             wy : out   std_logic_vector (3 downto 0));
   end component;
   
   component moj_projekt
      port ( clk     : in    std_logic; 
             sw0     : in    std_logic; 
             sw1     : in    std_logic; 
             b0      : in    std_logic; 
             b1      : in    std_logic; 
             wy_ds   : out   std_logic_vector (3 downto 0); 
             wy_s_j  : out   std_logic_vector (3 downto 0); 
             wy_s_dz : out   std_logic_vector (3 downto 0); 
             wy_min  : out   std_logic_vector (3 downto 0));
   end component;
   
   component mult_vec1
      port ( we  : in    std_logic_vector (1 downto 0); 
             we1 : in    std_logic_vector (3 downto 0); 
             we2 : in    std_logic_vector (3 downto 0); 
             we3 : in    std_logic_vector (3 downto 0); 
             we4 : in    std_logic_vector (3 downto 0); 
             wy  : out   std_logic_vector (3 downto 0));
   end component;
   
   component transkoder_7s
      port ( we : in    std_logic_vector (3 downto 0); 
             wy : out   std_logic_vector (6 downto 0));
   end component;
   
   component dzielnik_400Hz_na_10Hz
      port ( clk : in    std_logic; 
             wy  : out   std_logic);
   end component;
   
   component moj_projekt_Diody
      port ( sw0          : in    std_logic; 
             d_Stopwatch1 : out   std_logic; 
             d_Stopwatch2 : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component ster_kropka
      port ( we : in    std_logic_vector (1 downto 0); 
             wy : out   std_logic);
   end component;
   
begin
   XLXI_1 : dzielnik_100kHz_na_400Hz
      port map (clk=>clk,
                wy=>XLXN_3);
   
   XLXI_2 : licznik_cyfra
      port map (clk=>XLXN_3,
                wy(1 downto 0)=>XLXN_5(1 downto 0));
   
   XLXI_3 : aktywna_anoda
      port map (we(1 downto 0)=>XLXN_5(1 downto 0),
                wy(3 downto 0)=>XLXN_46(3 downto 0));
   
   XLXI_4 : moj_projekt
      port map (b0=>b0,
                b1=>b1,
                clk=>XLXN_32,
                sw0=>sw0,
                sw1=>sw1,
                wy_ds=>open,
                wy_min=>open,
                wy_s_dz=>open,
                wy_s_j=>open);
   
   XLXI_5 : mult_vec1
      port map (we(1 downto 0)=>XLXN_5(1 downto 0),
                we1(3 downto 0)=>XLXI_5_we1_openSignal(3 downto 0),
                we2(3 downto 0)=>XLXI_5_we2_openSignal(3 downto 0),
                we3(3 downto 0)=>XLXI_5_we3_openSignal(3 downto 0),
                we4(3 downto 0)=>XLXI_5_we4_openSignal(3 downto 0),
                wy(3 downto 0)=>XLXN_36(3 downto 0));
   
   XLXI_6 : transkoder_7s
      port map (we(3 downto 0)=>XLXN_36(3 downto 0),
                wy(6 downto 0)=>XLXN_35(6 downto 0));
   
   XLXI_7 : dzielnik_400Hz_na_10Hz
      port map (clk=>XLXN_3,
                wy=>XLXN_32);
   
   XLXI_8 : moj_projekt
      port map (b0=>b0,
                b1=>b1,
                clk=>XLXN_32,
                sw0=>XLXN_30,
                sw1=>sw1,
                wy_ds=>open,
                wy_min=>open,
                wy_s_dz=>open,
                wy_s_j=>open);
   
   XLXI_9 : moj_projekt_Diody
      port map (sw0=>sw0,
                d_Stopwatch1=>d_Stopwatch1,
                d_Stopwatch2=>d_Stopwatch2);
   
   XLXI_10 : INV
      port map (I=>sw0,
                O=>XLXN_30);
   
   XLXI_11 : ster_kropka
      port map (we(1 downto 0)=>XLXN_5(1 downto 0),
                wy=>XLXN_34);
   
end BEHAVIORAL;


