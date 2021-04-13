library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Kod_Blok_Iter is
    Port ( a : in  STD_LOGIC;
           pin1 : in  STD_LOGIC;
           pin2 : in  STD_LOGIC;
           pout1 : out  STD_LOGIC;
           pout2 : out  STD_LOGIC);
end Kod_Blok_Iter;

architecture Behavioral of Kod_Blok_Iter is

begin
pout1 <= (not a and not pin2 and not pin1) or (pin2 and pin1) or (a and pin2);
pout2 <=	(not a and pin1) or pin2;

end Behavioral;
