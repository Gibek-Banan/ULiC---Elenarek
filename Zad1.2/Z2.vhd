----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:25 03/12/2021 
-- Design Name: 
-- Module Name:    Z2 - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.numeric_std.ALL;

entity Z2 is
    Port ( zegar : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           wy : out  STD_LOGIC_VECTOR (3 downto 0));
end Z2;

architecture Behavioral of Z2 is
signal licz: STD_LOGIC_VECTOR (3 downto 0):= "1001";
signal przesuniecie: STD_LOGIC_VECTOR (3 downto 0):= "1001";
begin
	process(zegar,reset)
	begin
		if reset='0' then
			licz<="1001";
		elsif zegar'event and zegar='1' then
			if licz="0000" then
				licz<="1001";
			else
				licz<=licz-1;
			end if;
		end if;
	end process;
	przesuniecie(0) <= licz(0);
	przesuniecie(1) <= licz(0) xor licz(1);
	przesuniecie(2) <= licz(1) xor licz(2);
	przesuniecie(3) <= licz(2) xor licz(3);
	wy<=not przesuniecie;
end Behavioral;

--				licz(0)<=(not licz(2)and not licz(1)) or (licz(3) and not licz(0)) or (licz(2) and licz(1));
--				licz(1)<=(licz(1) and not licz(0)) or (not licz(2) and licz(0));
--				licz(2)<=(not licz(3) and licz(2)) or (licz(3) and not licz(0)) or (licz(1) and not licz(0));
--				licz(3)<=(licz(2) and not licz(1) and not licz(0));

