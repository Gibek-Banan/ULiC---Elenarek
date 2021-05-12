library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity moj_projekt_Diody is
  port (
    sw0          : in std_logic;
    d_Stopwatch1 : out std_logic;
    d_Stopwatch2 : out std_logic);
end moj_projekt_Diody;

architecture Behavioral of moj_projekt_Diody is

begin
  d_Stopwatch1 <= sw0;
  d_Stopwatch2 <= not sw0;

end Behavioral;