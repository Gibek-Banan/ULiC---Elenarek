----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:45:50 03/24/2021 
-- Design Name: 
-- Module Name:    F0 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity F0 is
    Port ( a3 : in  STD_LOGIC;
           a2 : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           a0 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end F0;

architecture Behavioral of F0 is

begin
y<=(a3 or a2 or not a1) and (not a1 or not a0) and (not a3 or not a0);
end Behavioral;

