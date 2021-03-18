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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Z2 is
    Port ( zegar : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           wy : out  STD_LOGIC_VECTOR (3 downto 0));
end Z2;

architecture Behavioral of Z2 is
signal licz: STD_LOGIC_VECTOR (3 downto 0):= "1101"; --=9 kod graya
begin
--lista wra¿liwoœci - sygna³y, które bezpoœrednio wp³ywaj¹ na dzia³anie licznika - CLK i Reset
	process(zegar,reset)
	begin
		if reset='0' then
			licz<="1101";
		elsif zegar'event and zegar='1' then
			if licz="0000" then
				licz<="1101";
			else
				licz(0)<=(not licz(2)and not licz(1)) or (licz(3) and not licz(0)) or (licz(2) and licz(1));
				licz(1)<=(licz(1) and not licz(0)) or (not licz(2) and licz(0));
				licz(2)<=(not licz(3) and licz(2)) or (licz(3) and not licz(0)) or (licz(1) and not licz(0));
				licz(3)<=(licz(2) and not licz(1) and not licz(0)); 
			end if;
		end if;
	end process;
	--Diody sterowane s¹ zerami, dlatego zanegujemy wszystkie te bity
wy<=not licz;


end Behavioral;

