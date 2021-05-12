library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity moj_projekt_MUX is
  port (
    sw0           : in std_logic;
    we_Stopwatch1 : in std_logic_vector (3 downto 0);
    we_Stopwatch2 : in std_logic_vector (3 downto 0);
    wy            : out std_logic_vector (3 downto 0));
end moj_projekt_MUX;

architecture Behavioral of moj_projekt_MUX is

begin
  with sw0 select
    wy <=
    we_Stopwatch1 when '0',
    we_Stopwatch2 when others;

end Behavioral;