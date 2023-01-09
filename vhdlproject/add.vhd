library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity add4 is
port(
a, b: in std_logic_vector(3 downto 0);
sum: out std_logic_vector(4 downto 0)
);
end add4;
architecture behavioral of add4 is
signal a_long, b_long: std_logic_vector(4 downto 0);
begin
a_long <= '0' & a;
b_long <= '0' & b;
sum <= std_logic_vector(unsigned(a_long) + unsigned(b_long));
end behavioral;