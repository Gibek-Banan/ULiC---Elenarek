library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity mult_vec1 is
end mult_vec1;
we  : in std_logic_vector (1 downto 0);
we1 : in std_logic_vector (3 downto 0);
we2 : in std_logic_vector (3 downto 0);
we3 : in std_logic_vector (3 downto 0);
we4 : in std_logic_vector (3 downto 0);
wy  : out std_logic_vector(3 downto 0));
architecture Behavioral of mult_vec1 is

begin
  with we select
    wy <=
    we1 when "00",
    we2 when "01",
    we3 when "10",
    we4 when others;
end Behavioral;