-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    s: in std_logic_vector(2 downto 0);
    o: out std_logic);
end main;

architecture Behavioral of main is
begin
  o <= (s(0) XOR ((s(1) XOR '1') AND s(2)));
end Behavioral;
