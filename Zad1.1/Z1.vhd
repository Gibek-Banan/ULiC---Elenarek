----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:06:57 03/12/2021 
-- Design Name: 
-- Module Name:    Z1 - Behavioral 
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

entity Z1 is
    Port ( a3 : in  STD_LOGIC;
           a2 : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           a0 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end Z1;

architecture Behavioral of Z1 is


begin
y <= (not a3 and not a1) or (a2 and not a0) or (a3 and not a0);
end Behavioral;

