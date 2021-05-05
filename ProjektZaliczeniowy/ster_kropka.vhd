library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ster_kropka is
  port (
    we : in std_logic_vector (1 downto 0);
    wy : out std_logic;
  );
end ster_kropka;

architecture Behavioral of ster_kropka is

begin
  with we select
    wy <=
    '0' when "10",
    '1' when others;
end Behavioral;