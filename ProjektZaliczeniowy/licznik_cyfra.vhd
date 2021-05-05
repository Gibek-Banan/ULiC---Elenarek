library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity licznik_cyfra is
  port (
    clk : in std_logic;
    wy  : out std_logic_vector(1 downto 0));
end licznik_cyfra;

architecture Behavioral of licznik_cyfra is
  signal licznik : std_logic_vector (1 downto 0) := "00";
begin
  process (clk)
  begin
    if rising_edge(clk_we) then
      licznik <= licznik + 1;
    end if;
  end process;
  wy <= licznik
  end Behavioral;