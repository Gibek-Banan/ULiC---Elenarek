----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:54:03 03/12/2021 
-- Design Name: 
-- Module Name:    liczenie - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL; --added
use IEEE.STD_LOGIC_unsigned.ALL; --added

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity liczenie is
    Port ( zegar : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           wyj : out  STD_LOGIC_VECTOR (3 downto 0));
end liczenie;

architecture Behavioral of liczenie is
signal licz: STD_LOGIC_VECTOR (3 downto 0):= "0000";
begin
--lista wra¿liwoœci - sygna³y, które bezpoœrednio wp³ywaj¹ na dzia³anie licznika - CLK i Reset
	process(zegar,reset)
	begin
		if reset='0' then --asynchroniczne
			licz<="0000";
		elsif zegar'event and zegar='1' then--zbocze narastaj¹ce, synchroniczne
			if licz="1001" then
				licz<="0000";
			else
				licz<=licz+1;
			end if;
		end if;
	end process;
	--Diody sterowane s¹ zerami, dlatego zanegujemy wszystkie te bity
wyj<=not licz;
end Behavioral;

