-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity x is
  port (
    s: in std_logic_vector(2 downto 0);
    o: out std_logic);
end x;

architecture Behavioral of x is
begin
  o <= (s(0) XOR ((s(1) XOR '1') AND s(2)));
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity x64_61 is
  port (
    i_64: in std_logic_vector(63 downto 0);
    o_64: out std_logic_vector(61 downto 0));
end x64_61;

architecture Behavioral of x64_61 is
  signal s0: std_logic_vector(2 downto 0);
  signal s1: std_logic_vector(2 downto 0);
  signal s2: std_logic_vector(2 downto 0);
  signal s3: std_logic_vector(2 downto 0);
  signal s4: std_logic_vector(2 downto 0);
  signal s5: std_logic_vector(2 downto 0);
  signal s6: std_logic_vector(2 downto 0);
  signal s7: std_logic_vector(2 downto 0);
  signal s8: std_logic_vector(2 downto 0);
  signal s9: std_logic_vector(2 downto 0);
  signal s10: std_logic_vector(2 downto 0);
  signal s11: std_logic_vector(2 downto 0);
  signal s12: std_logic_vector(2 downto 0);
  signal s13: std_logic_vector(2 downto 0);
  signal s14: std_logic_vector(2 downto 0);
  signal s15: std_logic_vector(2 downto 0);
  signal s16: std_logic_vector(2 downto 0);
  signal s17: std_logic_vector(2 downto 0);
  signal s18: std_logic_vector(2 downto 0);
  signal s19: std_logic_vector(2 downto 0);
  signal s20: std_logic_vector(2 downto 0);
  signal s21: std_logic_vector(2 downto 0);
  signal s22: std_logic_vector(2 downto 0);
  signal s23: std_logic_vector(2 downto 0);
  signal s24: std_logic_vector(2 downto 0);
  signal s25: std_logic_vector(2 downto 0);
  signal s26: std_logic_vector(2 downto 0);
  signal s27: std_logic_vector(2 downto 0);
  signal s28: std_logic_vector(2 downto 0);
  signal s29: std_logic_vector(2 downto 0);
  signal s30: std_logic_vector(2 downto 0);
  signal s31: std_logic_vector(2 downto 0);
  signal s32: std_logic_vector(2 downto 0);
  signal s33: std_logic_vector(2 downto 0);
  signal s34: std_logic_vector(2 downto 0);
  signal s35: std_logic_vector(2 downto 0);
  signal s36: std_logic_vector(2 downto 0);
  signal s37: std_logic_vector(2 downto 0);
  signal s38: std_logic_vector(2 downto 0);
  signal s39: std_logic_vector(2 downto 0);
  signal s40: std_logic_vector(2 downto 0);
  signal s41: std_logic_vector(2 downto 0);
  signal s42: std_logic_vector(2 downto 0);
  signal s43: std_logic_vector(2 downto 0);
  signal s44: std_logic_vector(2 downto 0);
  signal s45: std_logic_vector(2 downto 0);
  signal s46: std_logic_vector(2 downto 0);
  signal s47: std_logic_vector(2 downto 0);
  signal s48: std_logic_vector(2 downto 0);
  signal s49: std_logic_vector(2 downto 0);
  signal s50: std_logic_vector(2 downto 0);
  signal s51: std_logic_vector(2 downto 0);
  signal s52: std_logic_vector(2 downto 0);
  signal s53: std_logic_vector(2 downto 0);
  signal s54: std_logic_vector(2 downto 0);
  signal s55: std_logic_vector(2 downto 0);
  signal s56: std_logic_vector(2 downto 0);
  signal s57: std_logic_vector(2 downto 0);
  signal s58: std_logic_vector(2 downto 0);
  signal s59: std_logic_vector(2 downto 0);
  signal s60: std_logic_vector(2 downto 0);
  signal s61: std_logic_vector(2 downto 0);
  signal s62: std_logic;
  signal s63: std_logic;
  signal s64: std_logic;
  signal s65: std_logic;
  signal s66: std_logic;
  signal s67: std_logic;
  signal s68: std_logic;
  signal s69: std_logic;
  signal s70: std_logic;
  signal s71: std_logic;
  signal s72: std_logic;
  signal s73: std_logic;
  signal s74: std_logic;
  signal s75: std_logic;
  signal s76: std_logic;
  signal s77: std_logic;
  signal s78: std_logic;
  signal s79: std_logic;
  signal s80: std_logic;
  signal s81: std_logic;
  signal s82: std_logic;
  signal s83: std_logic;
  signal s84: std_logic;
  signal s85: std_logic;
  signal s86: std_logic;
  signal s87: std_logic;
  signal s88: std_logic;
  signal s89: std_logic;
  signal s90: std_logic;
  signal s91: std_logic;
  signal s92: std_logic;
  signal s93: std_logic;
  signal s94: std_logic;
  signal s95: std_logic;
  signal s96: std_logic;
  signal s97: std_logic;
  signal s98: std_logic;
  signal s99: std_logic;
  signal s100: std_logic;
  signal s101: std_logic;
  signal s102: std_logic;
  signal s103: std_logic;
  signal s104: std_logic;
  signal s105: std_logic;
  signal s106: std_logic;
  signal s107: std_logic;
  signal s108: std_logic;
  signal s109: std_logic;
  signal s110: std_logic;
  signal s111: std_logic;
  signal s112: std_logic;
  signal s113: std_logic;
  signal s114: std_logic;
  signal s115: std_logic;
  signal s116: std_logic;
  signal s117: std_logic;
  signal s118: std_logic;
  signal s119: std_logic;
  signal s120: std_logic;
  signal s121: std_logic;
  signal s122: std_logic;
  signal s123: std_logic;
begin
  s0 <= i_64(2 downto 0);
  s1 <= i_64(3 downto 1);
  s2 <= i_64(4 downto 2);
  s3 <= i_64(5 downto 3);
  s4 <= i_64(6 downto 4);
  s5 <= i_64(7 downto 5);
  s6 <= i_64(8 downto 6);
  s7 <= i_64(9 downto 7);
  s8 <= i_64(10 downto 8);
  s9 <= i_64(11 downto 9);
  s10 <= i_64(12 downto 10);
  s11 <= i_64(13 downto 11);
  s12 <= i_64(14 downto 12);
  s13 <= i_64(15 downto 13);
  s14 <= i_64(16 downto 14);
  s15 <= i_64(17 downto 15);
  s16 <= i_64(18 downto 16);
  s17 <= i_64(19 downto 17);
  s18 <= i_64(20 downto 18);
  s19 <= i_64(21 downto 19);
  s20 <= i_64(22 downto 20);
  s21 <= i_64(23 downto 21);
  s22 <= i_64(24 downto 22);
  s23 <= i_64(25 downto 23);
  s24 <= i_64(26 downto 24);
  s25 <= i_64(27 downto 25);
  s26 <= i_64(28 downto 26);
  s27 <= i_64(29 downto 27);
  s28 <= i_64(30 downto 28);
  s29 <= i_64(31 downto 29);
  s30 <= i_64(32 downto 30);
  s31 <= i_64(33 downto 31);
  s32 <= i_64(34 downto 32);
  s33 <= i_64(35 downto 33);
  s34 <= i_64(36 downto 34);
  s35 <= i_64(37 downto 35);
  s36 <= i_64(38 downto 36);
  s37 <= i_64(39 downto 37);
  s38 <= i_64(40 downto 38);
  s39 <= i_64(41 downto 39);
  s40 <= i_64(42 downto 40);
  s41 <= i_64(43 downto 41);
  s42 <= i_64(44 downto 42);
  s43 <= i_64(45 downto 43);
  s44 <= i_64(46 downto 44);
  s45 <= i_64(47 downto 45);
  s46 <= i_64(48 downto 46);
  s47 <= i_64(49 downto 47);
  s48 <= i_64(50 downto 48);
  s49 <= i_64(51 downto 49);
  s50 <= i_64(52 downto 50);
  s51 <= i_64(53 downto 51);
  s52 <= i_64(54 downto 52);
  s53 <= i_64(55 downto 53);
  s54 <= i_64(56 downto 54);
  s55 <= i_64(57 downto 55);
  s56 <= i_64(58 downto 56);
  s57 <= i_64(59 downto 57);
  s58 <= i_64(60 downto 58);
  s59 <= i_64(61 downto 59);
  s60 <= i_64(62 downto 60);
  s61 <= i_64(63 downto 61);
  gate0: entity work.x
    port map (
      s => s0,
      o => s62);
  gate1: entity work.x
    port map (
      s => s1,
      o => s63);
  gate2: entity work.x
    port map (
      s => s2,
      o => s64);
  gate3: entity work.x
    port map (
      s => s3,
      o => s65);
  gate4: entity work.x
    port map (
      s => s4,
      o => s66);
  gate5: entity work.x
    port map (
      s => s5,
      o => s67);
  gate6: entity work.x
    port map (
      s => s6,
      o => s68);
  gate7: entity work.x
    port map (
      s => s7,
      o => s69);
  gate8: entity work.x
    port map (
      s => s8,
      o => s70);
  gate9: entity work.x
    port map (
      s => s9,
      o => s71);
  gate10: entity work.x
    port map (
      s => s10,
      o => s72);
  gate11: entity work.x
    port map (
      s => s11,
      o => s73);
  gate12: entity work.x
    port map (
      s => s12,
      o => s74);
  gate13: entity work.x
    port map (
      s => s13,
      o => s75);
  gate14: entity work.x
    port map (
      s => s14,
      o => s76);
  gate15: entity work.x
    port map (
      s => s15,
      o => s77);
  gate16: entity work.x
    port map (
      s => s16,
      o => s78);
  gate17: entity work.x
    port map (
      s => s17,
      o => s79);
  gate18: entity work.x
    port map (
      s => s18,
      o => s80);
  gate19: entity work.x
    port map (
      s => s19,
      o => s81);
  gate20: entity work.x
    port map (
      s => s20,
      o => s82);
  gate21: entity work.x
    port map (
      s => s21,
      o => s83);
  gate22: entity work.x
    port map (
      s => s22,
      o => s84);
  gate23: entity work.x
    port map (
      s => s23,
      o => s85);
  gate24: entity work.x
    port map (
      s => s24,
      o => s86);
  gate25: entity work.x
    port map (
      s => s25,
      o => s87);
  gate26: entity work.x
    port map (
      s => s26,
      o => s88);
  gate27: entity work.x
    port map (
      s => s27,
      o => s89);
  gate28: entity work.x
    port map (
      s => s28,
      o => s90);
  gate29: entity work.x
    port map (
      s => s29,
      o => s91);
  gate30: entity work.x
    port map (
      s => s30,
      o => s92);
  gate31: entity work.x
    port map (
      s => s31,
      o => s93);
  gate32: entity work.x
    port map (
      s => s32,
      o => s94);
  gate33: entity work.x
    port map (
      s => s33,
      o => s95);
  gate34: entity work.x
    port map (
      s => s34,
      o => s96);
  gate35: entity work.x
    port map (
      s => s35,
      o => s97);
  gate36: entity work.x
    port map (
      s => s36,
      o => s98);
  gate37: entity work.x
    port map (
      s => s37,
      o => s99);
  gate38: entity work.x
    port map (
      s => s38,
      o => s100);
  gate39: entity work.x
    port map (
      s => s39,
      o => s101);
  gate40: entity work.x
    port map (
      s => s40,
      o => s102);
  gate41: entity work.x
    port map (
      s => s41,
      o => s103);
  gate42: entity work.x
    port map (
      s => s42,
      o => s104);
  gate43: entity work.x
    port map (
      s => s43,
      o => s105);
  gate44: entity work.x
    port map (
      s => s44,
      o => s106);
  gate45: entity work.x
    port map (
      s => s45,
      o => s107);
  gate46: entity work.x
    port map (
      s => s46,
      o => s108);
  gate47: entity work.x
    port map (
      s => s47,
      o => s109);
  gate48: entity work.x
    port map (
      s => s48,
      o => s110);
  gate49: entity work.x
    port map (
      s => s49,
      o => s111);
  gate50: entity work.x
    port map (
      s => s50,
      o => s112);
  gate51: entity work.x
    port map (
      s => s51,
      o => s113);
  gate52: entity work.x
    port map (
      s => s52,
      o => s114);
  gate53: entity work.x
    port map (
      s => s53,
      o => s115);
  gate54: entity work.x
    port map (
      s => s54,
      o => s116);
  gate55: entity work.x
    port map (
      s => s55,
      o => s117);
  gate56: entity work.x
    port map (
      s => s56,
      o => s118);
  gate57: entity work.x
    port map (
      s => s57,
      o => s119);
  gate58: entity work.x
    port map (
      s => s58,
      o => s120);
  gate59: entity work.x
    port map (
      s => s59,
      o => s121);
  gate60: entity work.x
    port map (
      s => s60,
      o => s122);
  gate61: entity work.x
    port map (
      s => s61,
      o => s123);
  o_64(0) <= s62;
  o_64(1) <= s63;
  o_64(2) <= s64;
  o_64(3) <= s65;
  o_64(4) <= s66;
  o_64(5) <= s67;
  o_64(6) <= s68;
  o_64(7) <= s69;
  o_64(8) <= s70;
  o_64(9) <= s71;
  o_64(10) <= s72;
  o_64(11) <= s73;
  o_64(12) <= s74;
  o_64(13) <= s75;
  o_64(14) <= s76;
  o_64(15) <= s77;
  o_64(16) <= s78;
  o_64(17) <= s79;
  o_64(18) <= s80;
  o_64(19) <= s81;
  o_64(20) <= s82;
  o_64(21) <= s83;
  o_64(22) <= s84;
  o_64(23) <= s85;
  o_64(24) <= s86;
  o_64(25) <= s87;
  o_64(26) <= s88;
  o_64(27) <= s89;
  o_64(28) <= s90;
  o_64(29) <= s91;
  o_64(30) <= s92;
  o_64(31) <= s93;
  o_64(32) <= s94;
  o_64(33) <= s95;
  o_64(34) <= s96;
  o_64(35) <= s97;
  o_64(36) <= s98;
  o_64(37) <= s99;
  o_64(38) <= s100;
  o_64(39) <= s101;
  o_64(40) <= s102;
  o_64(41) <= s103;
  o_64(42) <= s104;
  o_64(43) <= s105;
  o_64(44) <= s106;
  o_64(45) <= s107;
  o_64(46) <= s108;
  o_64(47) <= s109;
  o_64(48) <= s110;
  o_64(49) <= s111;
  o_64(50) <= s112;
  o_64(51) <= s113;
  o_64(52) <= s114;
  o_64(53) <= s115;
  o_64(54) <= s116;
  o_64(55) <= s117;
  o_64(56) <= s118;
  o_64(57) <= s119;
  o_64(58) <= s120;
  o_64(59) <= s121;
  o_64(60) <= s122;
  o_64(61) <= s123;
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

-- ? : s_i ? s_i + (s_i+1 + 1)s_i+2 ,
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
  signal s0: std_logic_vector(63 downto 0);
  signal s1: std_logic_vector(61 downto 0);
  signal s2: std_logic;
  signal s3: std_logic_vector(63 downto 0);
  signal s4: std_logic;
  signal s5: std_logic_vector(2 downto 0);
  signal s6: std_logic;
  signal s7: std_logic_vector(2 downto 0);
  signal s8: std_logic;
  signal s9: std_logic;
  signal s10: std_logic_vector(61 downto 0);
  signal s11: std_logic_vector(2 downto 0);
  signal s12: std_logic;
  signal s13: std_logic_vector(2 downto 0);
  signal s14: std_logic;
  signal s15: std_logic;
  signal s16: std_logic_vector(63 downto 0);
  signal s17: std_logic;
  signal s18: std_logic_vector(61 downto 0);
  signal s19: std_logic_vector(2 downto 0);
  signal s20: std_logic;
  signal s21: std_logic_vector(2 downto 0);
  signal s22: std_logic;
  signal s23: std_logic;
  signal s24: std_logic_vector(63 downto 0);
  signal s25: std_logic;
  signal s26: std_logic;
  signal s27: std_logic_vector(61 downto 0);
  signal s28: std_logic_vector(2 downto 0);
  signal s29: std_logic;
  signal s30: std_logic_vector(2 downto 0);
  signal s31: std_logic;
  signal s32: std_logic_vector(2 downto 0);
begin
  s2 <= n64_127(0);
  s3 <= n64_127(63 downto 0);
  s4 <= n64_127(63);
  s15 <= n128_191(0);
  s16 <= n128_191(63 downto 0);
  s17 <= n128_191(63);
  s23 <= n191_255(0);
  s24 <= n191_255(63 downto 0);
  s25 <= n191_255(63);
  s26 <= n0_63(0);
  s0 <= n0_63(63 downto 0);
  s9 <= n0_63(63);
  gate0: entity work.x64_61
    port map (
      i_64 => s0,
      o_64 => s1);
  s5(0) <= n0_63(62);
  s5(1) <= s9;
  s5(2) <= s2;
  s7(0) <= s9;
  s7(1) <= s2;
  s7(2) <= n64_127(1);
  gate1: entity work.x64_61
    port map (
      i_64 => s3,
      o_64 => s10);
  s11(0) <= n64_127(62);
  s11(1) <= s4;
  s11(2) <= s15;
  s13(0) <= s4;
  s13(1) <= s15;
  s13(2) <= n128_191(1);
  gate2: entity work.x64_61
    port map (
      i_64 => s16,
      o_64 => s18);
  s19(0) <= n128_191(62);
  s19(1) <= s17;
  s19(2) <= s23;
  s21(0) <= s17;
  s21(1) <= s23;
  s21(2) <= n191_255(1);
  gate3: entity work.x64_61
    port map (
      i_64 => s24,
      o_64 => s27);
  s28(0) <= n191_255(62);
  s28(1) <= s25;
  s28(2) <= n256;
  s30(0) <= s25;
  s30(1) <= n256;
  s30(2) <= s26;
  s32(0) <= n256;
  s32(1) <= s26;
  s32(2) <= n0_63(1);
  gate4: entity work.x
    port map (
      s => s5,
      o => s6);
  gate5: entity work.x
    port map (
      s => s7,
      o => s8);
  gate6: entity work.x
    port map (
      s => s11,
      o => s12);
  gate7: entity work.x
    port map (
      s => s13,
      o => s14);
  gate8: entity work.x
    port map (
      s => s19,
      o => s20);
  gate9: entity work.x
    port map (
      s => s21,
      o => s22);
  gate10: entity work.x
    port map (
      s => s28,
      o => s29);
  gate11: entity work.x
    port map (
      s => s30,
      o => s31);
  gate12: entity work.x
    port map (
      s => s32,
      o => o256);
  o0_63(61 downto 0) <= s1;
  o0_63(62) <= s6;
  o0_63(63) <= s8;
  o64_127(61 downto 0) <= s10;
  o64_127(62) <= s12;
  o64_127(63) <= s14;
  o128_191(61 downto 0) <= s18;
  o128_191(62) <= s20;
  o128_191(63) <= s22;
  o192_255(61 downto 0) <= s27;
  o192_255(62) <= s29;
  o192_255(63) <= s31;
end Behavioral;
