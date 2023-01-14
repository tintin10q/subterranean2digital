--  A testbench for subterranean_absorb_keyed_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity subterranean_absorb_keyed_tb is
end subterranean_absorb_keyed_tb;

architecture behav of subterranean_absorb_keyed_tb is
  component main
    port (
      State_in_0_63: in std_logic_vector(63 downto 0);
      State_in_128_191: in std_logic_vector(63 downto 0);
      State_in_192_255: in std_logic_vector(63 downto 0);
      State_in_64_127: in std_logic_vector(63 downto 0);
      State_in_256: in std_logic;
      value_in_0_63: in std_logic_vector(63 downto 0);
      value_in_64_127: in std_logic_vector(63 downto 0);
      State_0_63: out std_logic_vector(63 downto 0);
      State_64_127: out std_logic_vector(63 downto 0);
      State_128_191: out std_logic_vector(63 downto 0);
      State_192_255: out std_logic_vector(63 downto 0);
      State_256: out std_logic);
  end component;

  signal State_in_0_63 : std_logic_vector(63 downto 0);
  signal State_in_128_191 : std_logic_vector(63 downto 0);
  signal State_in_192_255 : std_logic_vector(63 downto 0);
  signal State_in_64_127 : std_logic_vector(63 downto 0);
  signal State_in_256 : std_logic;
  signal value_in_0_63 : std_logic_vector(63 downto 0);
  signal value_in_64_127 : std_logic_vector(63 downto 0);
  signal State_0_63 : std_logic_vector(63 downto 0);
  signal State_64_127 : std_logic_vector(63 downto 0);
  signal State_128_191 : std_logic_vector(63 downto 0);
  signal State_192_255 : std_logic_vector(63 downto 0);
  signal State_256 : std_logic;
  function to_string ( a: std_logic_vector) return string is
      variable b : string (1 to a'length) := (others => NUL);
      variable stri : integer := 1; 
  begin
      for i in a'range loop
          b(stri) := std_logic'image(a((i)))(2);
      stri := stri+1;
      end loop;
      return b;
  end function;
begin
  main_0 : main port map (
    State_in_0_63 => State_in_0_63,
    State_in_128_191 => State_in_128_191,
    State_in_192_255 => State_in_192_255,
    State_in_64_127 => State_in_64_127,
    State_in_256 => State_in_256,
    value_in_0_63 => value_in_0_63,
    value_in_64_127 => value_in_64_127,
    State_0_63 => State_0_63,
    State_64_127 => State_64_127,
    State_128_191 => State_128_191,
    State_192_255 => State_192_255,
    State_256 => State_256 );
  process
    type pattern_type is record
      State_in_0_63 : std_logic_vector(63 downto 0);
      State_in_128_191 : std_logic_vector(63 downto 0);
      State_in_192_255 : std_logic_vector(63 downto 0);
      State_in_64_127 : std_logic_vector(63 downto 0);
      State_in_256 : std_logic;
      value_in_0_63 : std_logic_vector(63 downto 0);
      value_in_64_127 : std_logic_vector(63 downto 0);
      State_0_63 : std_logic_vector(63 downto 0);
      State_64_127 : std_logic_vector(63 downto 0);
      State_128_191 : std_logic_vector(63 downto 0);
      State_192_255 : std_logic_vector(63 downto 0);
      State_256 : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ("0000000000000000000000000000000000000000000000000000000000000000", "0000000000000000000000000000000000000000000000000000000000000000", "0000000000000000000000000000000000000000000000000000000000000000", "0000000000000000000000000000000000000000000000000000000000000000", '0', "0000000000000000000000000000000000000000000000000000000000000000", "0000000000000000000000000000000000000000000000000000000000000000", "0000011000010110100011111111111010110011100110011000010010110111", "1001001001011000001111100110001000010000010010110111101100110001", "0000000001001111000110100100001110111110010100011010100011011100", "1001001111001110101100010110001000001110111010010110001000110111", '1'), -- i=0
      ("0000000000000000000000000000000000000000000000000000000000000110", "0000000000000000000000000000000000000000000000000000000000000000", "0000000000000000000000000000000000000000000000000000000000000000", "0000000000000000000000000000000000000000000000000000000000000000", '0', "0000000000000000000000000000000000000000000000000000000000000000", "0000000000000000000000000000000000000000000000000000000000000000", "1110001110101000011001101011011000110101110001100010001101100011", "1100101000100110110111110111110110001001101100011110000111100010", "1101110100111000100100110001100011000011010011100010000111001111", "0011111010110000110011000111011101110100010001010100011000101100", '0'));
  begin
    for i in patterns'range loop
      State_in_0_63 <= patterns(i).State_in_0_63;
      State_in_128_191 <= patterns(i).State_in_128_191;
      State_in_192_255 <= patterns(i).State_in_192_255;
      State_in_64_127 <= patterns(i).State_in_64_127;
      State_in_256 <= patterns(i).State_in_256;
      value_in_0_63 <= patterns(i).value_in_0_63;
      value_in_64_127 <= patterns(i).value_in_64_127;
      wait for 10 ns;
      assert std_match(State_0_63, patterns(i).State_0_63) OR (State_0_63 = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" AND patterns(i).State_0_63 = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ")
        report "wrong value for State_0_63, i=" & integer'image(i)
         & ", expected " & to_string(patterns(i).State_0_63) & ", found " & to_string(State_0_63) severity error;assert std_match(State_64_127, patterns(i).State_64_127) OR (State_64_127 = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" AND patterns(i).State_64_127 = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ")
        report "wrong value for State_64_127, i=" & integer'image(i)
         & ", expected " & to_string(patterns(i).State_64_127) & ", found " & to_string(State_64_127) severity error;assert std_match(State_128_191, patterns(i).State_128_191) OR (State_128_191 = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" AND patterns(i).State_128_191 = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ")
        report "wrong value for State_128_191, i=" & integer'image(i)
         & ", expected " & to_string(patterns(i).State_128_191) & ", found " & to_string(State_128_191) severity error;assert std_match(State_192_255, patterns(i).State_192_255) OR (State_192_255 = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" AND patterns(i).State_192_255 = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ")
        report "wrong value for State_192_255, i=" & integer'image(i)
         & ", expected " & to_string(patterns(i).State_192_255) & ", found " & to_string(State_192_255) severity error;assert std_match(State_256, patterns(i).State_256) OR (State_256 = 'Z' AND patterns(i).State_256 = 'Z')
        report "wrong value for State_256, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).State_256) & ", found " & std_logic'image(State_256) severity error;end loop;
    wait;
  end process;
end behav;
