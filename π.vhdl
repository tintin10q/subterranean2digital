-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

-- ? : s_i ? s_12i
entity main is
  port (
    n64_127: in std_logic_vector(63 downto 0);
    n128_191: in std_logic_vector(63 downto 0);
    n191_255: in std_logic_vector(63 downto 0);
    n0_63: in std_logic_vector(63 downto 0);
    n256: in std_logic;
    o0_63: out std_logic_vector(63 downto 0);
    o64_127: out std_logic_vector(63 downto 0);
    o128_191: out std_logic_vector(63 downto 0);
    o192_255: out std_logic_vector(63 downto 0);
    o256: out std_logic);
end main;

architecture Behavioral of main is
begin
  o0_63(0) <= n0_63(0);
  o0_63(1) <= n0_63(12);
  o0_63(2) <= n0_63(24);
  o0_63(3) <= n0_63(36);
  o0_63(4) <= n0_63(48);
  o0_63(5) <= n0_63(60);
  o0_63(6) <= n64_127(8);
  o0_63(7) <= n64_127(20);
  o0_63(8) <= n64_127(32);
  o0_63(9) <= n64_127(44);
  o0_63(10) <= n64_127(56);
  o0_63(11) <= n128_191(4);
  o0_63(12) <= n128_191(16);
  o0_63(13) <= n128_191(28);
  o0_63(14) <= n128_191(40);
  o0_63(15) <= n128_191(52);
  o0_63(16) <= n191_255(0);
  o0_63(17) <= n191_255(12);
  o0_63(18) <= n191_255(24);
  o0_63(19) <= n191_255(36);
  o0_63(20) <= n191_255(48);
  o0_63(21) <= n191_255(60);
  o0_63(22) <= n0_63(7);
  o0_63(23) <= n0_63(19);
  o0_63(24) <= n0_63(31);
  o0_63(25) <= n0_63(43);
  o0_63(26) <= n0_63(55);
  o0_63(27) <= n64_127(3);
  o0_63(28) <= n64_127(15);
  o0_63(29) <= n64_127(27);
  o0_63(30) <= n64_127(39);
  o0_63(31) <= n64_127(51);
  o0_63(32) <= n64_127(63);
  o0_63(33) <= n128_191(11);
  o0_63(34) <= n128_191(23);
  o0_63(35) <= n128_191(35);
  o0_63(36) <= n128_191(47);
  o0_63(37) <= n128_191(59);
  o0_63(38) <= n191_255(7);
  o0_63(39) <= n191_255(19);
  o0_63(40) <= n191_255(31);
  o0_63(41) <= n191_255(43);
  o0_63(42) <= n191_255(55);
  o0_63(43) <= n0_63(2);
  o0_63(44) <= n0_63(14);
  o0_63(45) <= n0_63(26);
  o0_63(46) <= n0_63(38);
  o0_63(47) <= n0_63(50);
  o0_63(48) <= n0_63(62);
  o0_63(49) <= n64_127(10);
  o0_63(50) <= n64_127(22);
  o0_63(51) <= n64_127(34);
  o0_63(52) <= n64_127(46);
  o0_63(53) <= n64_127(58);
  o0_63(54) <= n128_191(6);
  o0_63(55) <= n128_191(18);
  o0_63(56) <= n128_191(30);
  o0_63(57) <= n128_191(42);
  o0_63(58) <= n128_191(54);
  o0_63(59) <= n191_255(2);
  o0_63(60) <= n191_255(14);
  o0_63(61) <= n191_255(26);
  o0_63(62) <= n191_255(38);
  o0_63(63) <= n191_255(50);
  o64_127(0) <= n191_255(62);
  o64_127(1) <= n0_63(9);
  o64_127(2) <= n0_63(21);
  o64_127(3) <= n0_63(33);
  o64_127(4) <= n0_63(45);
  o64_127(5) <= n0_63(57);
  o64_127(6) <= n64_127(5);
  o64_127(7) <= n64_127(17);
  o64_127(8) <= n64_127(29);
  o64_127(9) <= n64_127(41);
  o64_127(10) <= n64_127(53);
  o64_127(11) <= n128_191(1);
  o64_127(12) <= n128_191(13);
  o64_127(13) <= n128_191(25);
  o64_127(14) <= n128_191(37);
  o64_127(15) <= n128_191(49);
  o64_127(16) <= n128_191(61);
  o64_127(17) <= n191_255(9);
  o64_127(18) <= n191_255(21);
  o64_127(19) <= n191_255(33);
  o64_127(20) <= n191_255(45);
  o64_127(21) <= n191_255(57);
  o64_127(22) <= n0_63(4);
  o64_127(23) <= n0_63(16);
  o64_127(24) <= n0_63(28);
  o64_127(25) <= n0_63(40);
  o64_127(26) <= n0_63(52);
  o64_127(27) <= n64_127(0);
  o64_127(28) <= n64_127(12);
  o64_127(29) <= n64_127(24);
  o64_127(30) <= n64_127(36);
  o64_127(31) <= n64_127(48);
  o64_127(32) <= n64_127(60);
  o64_127(33) <= n128_191(8);
  o64_127(34) <= n128_191(20);
  o64_127(35) <= n128_191(32);
  o64_127(36) <= n128_191(44);
  o64_127(37) <= n128_191(56);
  o64_127(38) <= n191_255(4);
  o64_127(39) <= n191_255(16);
  o64_127(40) <= n191_255(28);
  o64_127(41) <= n191_255(40);
  o64_127(42) <= n191_255(52);
  o64_127(43) <= n256;
  o64_127(44) <= n0_63(11);
  o64_127(45) <= n0_63(23);
  o64_127(46) <= n0_63(35);
  o64_127(47) <= n0_63(47);
  o64_127(48) <= n0_63(59);
  o64_127(49) <= n64_127(7);
  o64_127(50) <= n64_127(19);
  o64_127(51) <= n64_127(31);
  o64_127(52) <= n64_127(43);
  o64_127(53) <= n64_127(55);
  o64_127(54) <= n128_191(3);
  o64_127(55) <= n128_191(15);
  o64_127(56) <= n128_191(27);
  o64_127(57) <= n128_191(39);
  o64_127(58) <= n128_191(51);
  o64_127(59) <= n128_191(63);
  o64_127(60) <= n191_255(11);
  o64_127(61) <= n191_255(23);
  o64_127(62) <= n191_255(35);
  o64_127(63) <= n191_255(47);
  o192_255(0) <= n191_255(59);
  o192_255(1) <= n0_63(6);
  o192_255(2) <= n0_63(18);
  o192_255(3) <= n0_63(30);
  o192_255(4) <= n0_63(42);
  o192_255(5) <= n0_63(54);
  o192_255(6) <= n64_127(2);
  o192_255(7) <= n64_127(14);
  o192_255(8) <= n64_127(26);
  o192_255(9) <= n64_127(38);
  o192_255(10) <= n64_127(50);
  o192_255(11) <= n64_127(62);
  o192_255(12) <= n128_191(10);
  o192_255(13) <= n128_191(22);
  o192_255(14) <= n128_191(34);
  o192_255(15) <= n128_191(46);
  o192_255(16) <= n128_191(58);
  o192_255(17) <= n191_255(6);
  o192_255(18) <= n191_255(18);
  o192_255(19) <= n191_255(30);
  o192_255(20) <= n191_255(42);
  o192_255(21) <= n191_255(54);
  o192_255(22) <= n0_63(1);
  o192_255(23) <= n0_63(13);
  o192_255(24) <= n0_63(25);
  o192_255(25) <= n0_63(37);
  o192_255(26) <= n0_63(49);
  o192_255(27) <= n0_63(61);
  o192_255(28) <= n64_127(9);
  o192_255(29) <= n64_127(21);
  o192_255(30) <= n64_127(33);
  o192_255(31) <= n64_127(45);
  o192_255(32) <= n64_127(57);
  o192_255(33) <= n128_191(5);
  o192_255(34) <= n128_191(17);
  o192_255(35) <= n128_191(29);
  o192_255(36) <= n128_191(41);
  o192_255(37) <= n128_191(53);
  o192_255(38) <= n191_255(1);
  o192_255(39) <= n191_255(13);
  o192_255(40) <= n191_255(25);
  o192_255(41) <= n191_255(37);
  o192_255(42) <= n191_255(49);
  o192_255(43) <= n191_255(61);
  o192_255(44) <= n0_63(8);
  o192_255(45) <= n0_63(20);
  o192_255(46) <= n0_63(32);
  o192_255(47) <= n0_63(44);
  o192_255(48) <= n0_63(56);
  o192_255(49) <= n64_127(4);
  o192_255(50) <= n64_127(16);
  o192_255(51) <= n64_127(28);
  o192_255(52) <= n64_127(40);
  o192_255(53) <= n64_127(52);
  o192_255(54) <= n128_191(0);
  o192_255(55) <= n128_191(12);
  o192_255(56) <= n128_191(24);
  o192_255(57) <= n128_191(36);
  o192_255(58) <= n128_191(48);
  o192_255(59) <= n128_191(60);
  o192_255(60) <= n191_255(8);
  o192_255(61) <= n191_255(20);
  o192_255(62) <= n191_255(32);
  o192_255(63) <= n191_255(44);
  o128_191(0) <= n191_255(56);
  o128_191(1) <= n0_63(3);
  o128_191(2) <= n0_63(15);
  o128_191(3) <= n0_63(27);
  o128_191(4) <= n0_63(39);
  o128_191(5) <= n0_63(51);
  o128_191(6) <= n0_63(63);
  o128_191(7) <= n64_127(11);
  o128_191(8) <= n64_127(23);
  o128_191(9) <= n64_127(35);
  o128_191(10) <= n64_127(47);
  o128_191(11) <= n64_127(59);
  o128_191(12) <= n128_191(7);
  o128_191(13) <= n128_191(19);
  o128_191(14) <= n128_191(31);
  o128_191(15) <= n128_191(43);
  o128_191(16) <= n128_191(55);
  o128_191(17) <= n191_255(3);
  o128_191(18) <= n191_255(15);
  o128_191(19) <= n191_255(27);
  o128_191(20) <= n191_255(39);
  o128_191(21) <= n191_255(51);
  o128_191(22) <= n191_255(63);
  o128_191(23) <= n0_63(10);
  o128_191(24) <= n0_63(22);
  o128_191(25) <= n0_63(34);
  o128_191(26) <= n0_63(46);
  o128_191(27) <= n0_63(58);
  o128_191(28) <= n64_127(6);
  o128_191(29) <= n64_127(18);
  o128_191(30) <= n64_127(30);
  o128_191(31) <= n64_127(42);
  o128_191(32) <= n64_127(54);
  o128_191(33) <= n128_191(2);
  o128_191(34) <= n128_191(14);
  o128_191(35) <= n128_191(26);
  o128_191(36) <= n128_191(38);
  o128_191(37) <= n128_191(50);
  o128_191(38) <= n128_191(62);
  o128_191(39) <= n191_255(10);
  o128_191(40) <= n191_255(22);
  o128_191(41) <= n191_255(34);
  o128_191(42) <= n191_255(46);
  o128_191(43) <= n191_255(58);
  o128_191(44) <= n0_63(5);
  o128_191(45) <= n0_63(17);
  o128_191(46) <= n0_63(29);
  o128_191(47) <= n0_63(41);
  o128_191(48) <= n0_63(53);
  o128_191(49) <= n64_127(1);
  o128_191(50) <= n64_127(13);
  o128_191(51) <= n64_127(25);
  o128_191(52) <= n64_127(37);
  o128_191(53) <= n64_127(49);
  o128_191(54) <= n64_127(61);
  o128_191(55) <= n128_191(9);
  o128_191(56) <= n128_191(21);
  o128_191(57) <= n128_191(33);
  o128_191(58) <= n128_191(45);
  o128_191(59) <= n128_191(57);
  o128_191(60) <= n191_255(5);
  o128_191(61) <= n191_255(17);
  o128_191(62) <= n191_255(29);
  o128_191(63) <= n191_255(41);
  o256 <= n191_255(53);
end Behavioral;
