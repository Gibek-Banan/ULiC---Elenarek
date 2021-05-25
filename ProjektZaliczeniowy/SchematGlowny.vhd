--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SchematGlowny.vhf
-- /___/   /\     Timestamp : 05/18/2021 09:32:50
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
   port ( b0                   : in    std_logic; 
          b1                   : in    std_logic; 
          clk                  : in    std_logic; 
          sw0                  : in    std_logic; 
          sw1                  : in    std_logic; 
          d_Stopwatch1         : out   std_logic; 
          d_Stopwatch2         : out   std_logic; 
          wy_aktywna_anoda     : out   std_logic_vector (3 downto 0); 
          wy_sterowanie_kropka : out   std_logic; 
          wy_transkoder_7s     : out   std_logic_vector (6 downto 0));
end SchematGlowny;

architecture BEHAVIORAL of SchematGlowny is
   attribute BOX_TYPE   : string ;
   signal XLXN_3               : std_logic;
   signal XLXN_30              : std_logic;
   signal XLXN_32              : std_logic;
   signal XLXN_49              : std_logic_vector (3 downto 0);
   signal XLXN_50              : std_logic_vector (3 downto 0);
   signal XLXN_51              : std_logic_vector (3 downto 0);
   signal XLXN_53              : std_logic_vector (3 downto 0);
   signal XLXN_54              : std_logic_vector (3 downto 0);
   signal XLXN_55              : std_logic_vector (3 downto 0);
   signal XLXN_56              : std_logic_vector (3 downto 0);
   signal XLXN_57              : std_logic_vector (3 downto 0);
   signal XLXN_58              : std_logic_vector (3 downto 0);
   signal XLXN_59              : std_logic_vector (3 downto 0);
   signal XLXN_60              : std_logic_vector (3 downto 0);
   signal XLXN_61              : std_logic_vector (1 downto 0);
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
   
   component transkoder_7s
      port ( we : in    std_logic_vector (3 downto 0); 
             wy : out   std_logic_vector (6 downto 0));
   end component;
   
   component moj_projekt_MUX
      port ( sw0           : in    std_logic; 
             we_Stopwatch1 : in    std_logic_vector (3 downto 0); 
             we_Stopwatch2 : in    std_logic_vector (3 downto 0); 
             wy            : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : dzielnik_100kHz_na_400Hz
      port map (clk=>clk,
                wy=>XLXN_3);
   
   XLXI_2 : licznik_cyfra
      port map (clk=>XLXN_3,
                wy(1 downto 0)=>XLXN_61(1 downto 0));
   
   XLXI_3 : aktywna_anoda
      port map (we(1 downto 0)=>XLXN_61(1 downto 0),
                wy(3 downto 0)=>wy_aktywna_anoda(3 downto 0));
   
   XLXI_4 : moj_projekt
      port map (b0=>b0,
                b1=>b1,
                clk=>XLXN_32,
                sw0=>sw0,
                sw1=>sw1,
                wy_ds(3 downto 0)=>XLXN_49(3 downto 0),
                wy_min(3 downto 0)=>XLXN_53(3 downto 0),
                wy_s_dz(3 downto 0)=>XLXN_51(3 downto 0),
                wy_s_j(3 downto 0)=>XLXN_50(3 downto 0));
   
   XLXI_5 : mult_vec1
      port map (we(1 downto 0)=>XLXN_61(1 downto 0),
                we1(3 downto 0)=>XLXN_49(3 downto 0),
                we2(3 downto 0)=>XLXN_50(3 downto 0),
                we3(3 downto 0)=>XLXN_51(3 downto 0),
                we4(3 downto 0)=>XLXN_53(3 downto 0),
                wy(3 downto 0)=>XLXN_59(3 downto 0));
   
   XLXI_7 : dzielnik_400Hz_na_10Hz
      port map (clk=>XLXN_3,
                wy=>XLXN_32);
   
   XLXI_8 : moj_projekt
      port map (b0=>b0,
                b1=>b1,
                clk=>XLXN_32,
                sw0=>XLXN_30,
                sw1=>sw1,
                wy_ds(3 downto 0)=>XLXN_54(3 downto 0),
                wy_min(3 downto 0)=>XLXN_57(3 downto 0),
                wy_s_dz(3 downto 0)=>XLXN_56(3 downto 0),
                wy_s_j(3 downto 0)=>XLXN_55(3 downto 0));
   
   XLXI_9 : moj_projekt_Diody
      port map (sw0=>sw0,
                d_Stopwatch1=>d_Stopwatch1,
                d_Stopwatch2=>d_Stopwatch2);
   
   XLXI_10 : INV
      port map (I=>sw0,
                O=>XLXN_30);
   
   XLXI_11 : ster_kropka
      port map (we(1 downto 0)=>XLXN_61(1 downto 0),
                wy=>wy_sterowanie_kropka);
   
   XLXI_15 : transkoder_7s
      port map (we(3 downto 0)=>XLXN_60(3 downto 0),
                wy(6 downto 0)=>wy_transkoder_7s(6 downto 0));
   
   XLXI_16 : mult_vec1
      port map (we(1 downto 0)=>XLXN_61(1 downto 0),
                we1(3 downto 0)=>XLXN_54(3 downto 0),
                we2(3 downto 0)=>XLXN_55(3 downto 0),
                we3(3 downto 0)=>XLXN_56(3 downto 0),
                we4(3 downto 0)=>XLXN_57(3 downto 0),
                wy(3 downto 0)=>XLXN_58(3 downto 0));
   
   XLXI_17 : moj_projekt_MUX
      port map (sw0=>sw0,
                we_Stopwatch1(3 downto 0)=>XLXN_59(3 downto 0),
                we_Stopwatch2(3 downto 0)=>XLXN_58(3 downto 0),
                wy(3 downto 0)=>XLXN_60(3 downto 0));
   
end BEHAVIORAL;


