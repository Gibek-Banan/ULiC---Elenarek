library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity moj_projekt is
  port (
    clk   : in std_logic;
    sw0   : in std_logic;
    sw1   : in std_logic;
    b0    : in std_logic;
    b1    : in std_logic;
    c1    : out std_logic_vector (3 downto 0);
    c2    : out std_logic_vector (3 downto 0);
    c3    : out std_logic_vector (3 downto 0);
    c4    : out std_logic_vector (3 downto 0);
    trn1  : out std_logic; --Zmienna pomocniczna za pomocą której określa się przejścia pomiędzy licznikami
    trn2  : out std_logic;
    trn3  : out std_logic;
    trn4  : out std_logic;
    diody : out std_logic_vector (3 downto 0);
  );
end moj_projekt;

architecture Behavioral of moj_projekt is
  signal switche : std_logic_vector (1 downto 0) := "00"; --odpowiada stanom switchy
begin
  switche(0) <= sw0;
  switche(1) <= sw1;
end Behavioral;