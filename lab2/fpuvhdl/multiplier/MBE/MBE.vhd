library ieee;
use ieee.std_logic_1164.all;

entity MBE is
port(
	x : in std_logic_vector(31 downto 0);
	y: in std_logic_vector(31 downto 0);
	z : out std_logic_vector(63 downto 0)
	);
end entity MBE;

architecture arch of MBE  is

component full_adder is
port(
	a : in std_logic;
	b : in std_logic;
	cin : in  std_logic;
	s : out std_logic;
	cout : out std_logic
);
end component;

component half_adder is
port(
	a : in std_logic;
	b : in std_logic;
	s : out std_logic;
	cout : out std_logic);
end component;

component BEU is
port(
	b_in : in std_logic_vector(2 downto 0);
	a_in : in std_logic_vector(23 downto 0);
	a_out : out std_logic_vector(24 downto 0);
	S : out std_logic);
end component;

signal Sign0 : std_logic;
signal Sign1 : std_logic;
signal Sign2 : std_logic;
signal Sign3 : std_logic;
signal Sign4 : std_logic;
signal Sign5 : std_logic;
signal Sign6 : std_logic;
signal Sign7 : std_logic;
signal Sign8 : std_logic;
signal Sign9 : std_logic;
signal Sign10 : std_logic;
signal Sign11 : std_logic;
signal Sign12 : std_logic;


signal Sign0n : std_logic;
signal Sign1n : std_logic;
signal Sign2n : std_logic;
signal Sign3n : std_logic;
signal Sign4n : std_logic;
signal Sign5n : std_logic;
signal Sign6n : std_logic;
signal Sign7n : std_logic;
signal Sign8n : std_logic;
signal Sign9n : std_logic;
signal Sign10n : std_logic;
signal Sign11n : std_logic;

signal C : std_logic_vector(343 downto 0);
signal S : std_logic_vector(297 downto 0);

signal PP0 : std_logic_vector(24 downto 0);
signal PP1 : std_logic_vector(24 downto 0);
signal PP2 : std_logic_vector(24 downto 0);
signal PP3 : std_logic_vector(24 downto 0);
signal PP4 : std_logic_vector(24 downto 0);
signal PP5 : std_logic_vector(24 downto 0);
signal PP6 : std_logic_vector(24 downto 0);
signal PP7 : std_logic_vector(24 downto 0);
signal PP8 : std_logic_vector(24 downto 0);
signal PP9 : std_logic_vector(24 downto 0);
signal PP10 : std_logic_vector(24 downto 0);
signal PP11 : std_logic_vector(24 downto 0);
signal PP12 : std_logic_vector(24 downto 0);

signal first_b_in : std_logic_vector(2 downto 0);
signal last_b_in : std_logic_vector(2 downto 0);

begin

first_b_in <= x(1 downto 0) & '0';
last_b_in <= "00" & x(23);


BEU1:  BEU port map(first_b_in, y(23 downto 0), PP0, Sign0);
BEU2:  BEU port map(x(3 downto 1), y(23 downto 0), PP1, Sign1);
BEU3:  BEU port map(x(5 downto 3), y(23 downto 0), PP2, Sign2);
BEU4:  BEU port map(x(7 downto 5), y(23 downto 0), PP3, Sign3);
BEU5:  BEU port map(x(9 downto 7), y(23 downto 0), PP4, Sign4);
BEU6:  BEU port map(x(11 downto 9), y(23 downto 0), PP5, Sign5);
BEU7:  BEU port map(x(13 downto 11), y(23 downto 0), PP6, Sign6);
BEU8:  BEU port map(x(15 downto 13), y(23 downto 0), PP7, Sign7);
BEU9:  BEU port map(x(17 downto 15), y(23 downto 0), PP8, Sign8);
BEU10: BEU port map(x(19 downto 17), y(23 downto 0), PP9, Sign9);
BEU11: BEU port map(x(21 downto 19), y(23 downto 0), PP10, Sign10);
BEU12: BEU port map(x(23 downto 21), y(23 downto 0), PP11, Sign11);
BEU13: BEU port map(last_b_in, y(23 downto 0), PP12, Sign12);

Sign0n <= not(Sign0);
Sign1n <= not(Sign1);
Sign2n <= not(Sign2);
Sign3n <= not(Sign3);
Sign4n <= not(Sign4);
Sign5n <= not(Sign5);
Sign6n <= not(Sign6);
Sign7n <= not(Sign7);
Sign8n <= not(Sign8);
Sign9n <= not(Sign9);
Sign10n <= not(Sign10);
Sign11n <= not(Sign11);

HA1  : half_adder port map(PP0(16), PP1(14), S(0),  C(0));

HA2  : half_adder port map(PP0(17), PP1(15), S(1),  C(1));

FA1  : full_adder port map(PP7(4),  PP8(2),  PP9(0),  S(2), C(2));
HA3  : half_adder port map(PP0(18), PP1(16), S(3), C(3));

FA2  : full_adder port map(PP7(5),  PP8(3),  PP9(1),  S(4), C(4));
HA4  : half_adder port map(PP0(19), PP1(17), S(5), C(5));

FA3  : full_adder port map(PP7(6),  PP8(4),  PP9(2),  S(6), C(6));
FA4  : full_adder port map(PP4(12), PP5(10), PP6(8),  S(7), C(7));
HA5  : half_adder port map(PP0(20), PP1(18), S(8), C(8));

FA5  : full_adder port map(PP7(7),  PP8(5),  PP9(3),  S(9), C(9));
FA6  : full_adder port map(PP4(13), PP5(11), PP6(9),  S(10), C(10));
HA6  : half_adder port map(PP0(21), PP1(19), S(11), C(11));

FA7  : full_adder port map(PP7(8),  PP8(6),  PP9(4),  S(12), C(12));
FA8  : full_adder port map(PP4(14), PP5(12), PP6(10),  S(13), C(13));
FA9  : full_adder port map(PP2(18), PP3(16), PP10(2),  S(14), C(14));
HA7  : half_adder port map(PP0(22), PP1(20), S(15), C(15));

FA10 : full_adder port map(PP7(9), PP8(7),  PP9(5),  S(16), C(16));
FA11 : full_adder port map(PP4(15), PP5(13), PP6(11),  S(17), C(17));
FA12 : full_adder port map(PP2(19), PP3(17), PP10(3),  S(18), C(18));
HA8  : half_adder port map(PP0(23), PP1(21), S(19), C(19));

FA13 : full_adder port map(PP10(4), PP11(2), PP12(0),  S(20), C(20));
FA14 : full_adder port map(PP7(10), PP8(8), PP9(6),  S(21), C(21));
FA15 : full_adder port map(PP4(16), PP5(14), PP6(12),  S(22), C(22));
FA16 : full_adder port map(PP1(22), PP2(20), PP3(18),  S(23), C(23));

FA17 : full_adder port map(PP10(5), PP11(3), PP12(1),  S(24), C(24));
FA18 : full_adder port map(PP7(11), PP8(9), PP9(7),  S(25), C(25));
FA19 : full_adder port map(PP4(17), PP5(15), PP6(13),  S(26), C(26));
FA20 : full_adder port map(PP1(23), PP2(21), PP3(19),  S(27), C(27));

FA21 : full_adder port map(PP10(6), PP11(4), PP12(2),  S(28), C(28));
FA22 : full_adder port map(PP7(12), PP8(10), PP9(8),  S(29), C(29));
FA23 : full_adder port map(PP4(18), PP5(16), PP6(14),  S(30), C(30));
FA24 : full_adder port map(PP1(24), PP2(22), PP3(20),  S(31), C(31));

FA25 : full_adder port map(PP10(7), PP11(5), PP12(3),  S(32), C(32));
FA26 : full_adder port map(PP7(13), PP8(11), PP9(9),  S(33), C(33));
FA27 : full_adder port map(PP4(19), PP5(17), PP6(15),  S(34), C(34));
FA28 : full_adder port map(Sign1n, PP2(23), PP3(21),  S(35), C(35));

FA29 : full_adder port map(PP10(8), PP11(6), PP12(4),  S(36), C(36));
FA30 : full_adder port map(PP7(14), PP8(12), PP9(10),  S(37), C(37));
FA31 : full_adder port map(PP4(20), PP5(18), PP6(16),  S(38), C(38));
HA9  : half_adder port map(PP2(24), PP3(22), S(39), C(39));

FA32 : full_adder port map(PP10(9), PP11(7), PP12(5),  S(40), C(40));
FA33 : full_adder port map(PP7(15), PP8(13), PP9(11),  S(41), C(41));
FA34 : full_adder port map(PP4(21), PP5(19), PP6(17),  S(42), C(42));

FA35 : full_adder port map(PP7(16), PP8(14), PP9(12),  S(43), C(43));
FA36 : full_adder port map(PP4(22), PP5(20), PP6(18),  S(44), C(44));
HA10 : half_adder port map(PP10(10), PP11(8), S(45), C(45));

FA37 : full_adder port map(PP7(17), PP8(15), PP9(13),  S(46), C(46));
FA38 : full_adder port map(PP4(23), PP5(21), PP6(19),  S(47), C(47));

FA39 : full_adder port map(PP7(18), PP8(16), PP9(14),  S(48), C(48));
HA11 : half_adder port map(PP10(12), PP11(10), S(49), C(49));

FA40 : full_adder port map(PP7(19), PP8(17), PP9(15),  S(50), C(50));

HA12 : half_adder port map(PP10(14), PP11(12), S(51), C(51));





HA13 : half_adder port map(PP0(10), PP1(8), S(52), C(52));

HA14 : half_adder port map(PP0(11), PP1(9), S(53), C(53));

FA41 : full_adder port map(PP0(12), PP1(10), PP2(8),  S(54), C(54));
HA15 : half_adder port map(PP3(6), PP4(4), S(55), C(55));

FA42 : full_adder port map(PP0(13), PP1(11), PP2(9),  S(56), C(56));
HA16 : half_adder port map(PP3(7), PP4(5), S(57), C(57));

FA43 : full_adder port map(PP0(14), PP1(12), PP2(10),  S(58), C(58));
FA44 : full_adder port map(PP3(8), PP4(6), PP5(4),  S(59), C(59));
HA17 : half_adder port map(PP6(2), PP7(0), S(60), C(60));

FA45 : full_adder port map(PP0(15), PP1(13), PP2(11),  S(61), C(61));
FA46 : full_adder port map(PP3(9), PP4(7), PP5(5),  S(62), C(62));
HA18 : half_adder port map(PP6(3), PP7(1), S(63), C(63));

FA47 : full_adder port map(S(0), PP2(12), PP3(10),  S(64), C(64));
FA48 : full_adder port map(PP4(8), PP5(6), PP6(4),  S(65), C(65));
FA49 : full_adder port map(PP7(2), PP8(0), Sign8,  S(66), C(66));

FA50 : full_adder port map(C(0), S(1), PP2(13),  S(67), C(67));
FA51 : full_adder port map(PP3(11), PP4(9), PP5(7),  S(68), C(68));
FA52 : full_adder port map(PP6(5), PP7(3), PP8(1),  S(69), C(69));

FA53 : full_adder port map(C(1), PP2(14), PP3(12),  S(70), C(70));
FA54 : full_adder port map(PP4(10), PP5(8), PP6(6),  S(71), C(71));
FA55 : full_adder port map(S(2), S(3), Sign9,  S(72), C(72));

FA56 : full_adder port map(PP2(15), PP3(13), PP4(11),  S(73), C(73));
FA57 : full_adder port map(PP5(9), PP6(7), C(2),  S(74), C(74));
FA58 : full_adder port map(C(3), S(4), S(5),  S(75), C(75));

FA59 : full_adder port map(PP2(16), PP3(14), S(6),  S(76), C(76));
FA60 : full_adder port map(S(7), S(8), C(4),  S(77), C(77));
FA61 : full_adder port map(C(5), PP10(0), Sign10,  S(78), C(78));

FA62 : full_adder port map(C(6), C(7), C(8),  S(79), C(79));
FA63 : full_adder port map(S(9), S(10), S(11),  S(80), C(80));
FA64 : full_adder port map(PP2(17), PP3(15), PP10(1),  S(81), C(81));

FA65 : full_adder port map(C(9), C(10), C(11),  S(82), C(82));
FA66 : full_adder port map(S(12), S(13), S(14),  S(83), C(83));
FA67 : full_adder port map(S(15), PP11(0), Sign11,  S(84), C(84));

FA68 : full_adder port map(C(12), C(13), C(14),  S(85), C(85));
FA69 : full_adder port map(C(15), S(16), S(17),  S(86), C(86));
FA70 : full_adder port map(S(18), S(19), PP11(1),  S(87), C(87));

FA71 : full_adder port map(C(16), C(17), C(18),  S(88), C(88));
FA72 : full_adder port map(C(19), S(20), S(21),  S(89), C(89));
FA73 : full_adder port map(S(22), S(23), PP0(24),  S(90), C(90));

FA74 : full_adder port map(C(20), C(21), C(22),  S(91), C(91));
FA75 : full_adder port map(C(23), S(24), S(25),  S(92), C(92));
FA76 : full_adder port map(S(26), S(27), Sign0,  S(93), C(93));

FA77 : full_adder port map(C(24), C(25), C(26),  S(94), C(94));
FA78 : full_adder port map(C(27), S(28), S(29),  S(95), C(95));
FA79 : full_adder port map(S(30), S(31), Sign0,  S(96), C(96));

FA80 : full_adder port map(C(28), C(29), C(30),  S(97), C(97));
FA81 : full_adder port map(C(31), S(32), S(33),  S(98), C(98));
FA82 : full_adder port map(S(34), S(35), Sign0n,  S(99), C(99));

FA83 : full_adder port map(C(32), C(33), C(34),  S(100), C(100));
FA84 : full_adder port map(C(35), S(36), S(37),  S(101), C(101));
FA85 : full_adder port map(S(38), S(39), '1',  S(102), C(102));

FA86 : full_adder port map(C(36), C(37), C(38),  S(103), C(103));
FA87 : full_adder port map(C(39), S(40), S(41),  S(104), C(104));
FA88 : full_adder port map(S(42), Sign2n, PP3(23),  S(105), C(105));

FA89 : full_adder port map(C(40), C(41), C(42),  S(106), C(106));
FA90 : full_adder port map(S(43), S(44), S(45),  S(107), C(107));
FA91 : full_adder port map('1', PP3(24), PP12(6),  S(108), C(108));

FA92 : full_adder port map(C(43), C(44), C(45),  S(109), C(109));
FA93 : full_adder port map(S(46), S(47), Sign3n,  S(110), C(110));
FA94 : full_adder port map(PP10(11), PP11(9), PP12(7),  S(111), C(111));

FA95 : full_adder port map(C(46), C(47), S(48),  S(112), C(112));
FA96 : full_adder port map(S(49), '1', PP4(24),  S(113), C(113));
FA97 : full_adder port map(PP5(22), PP6(20), PP12(8),  S(114), C(114));

FA98 : full_adder port map(C(48), C(49), S(50),  S(115), C(115));
FA99 : full_adder port map(Sign4n, PP5(23), PP6(21),  S(116), C(116));
FA100 : full_adder port map(PP10(13), PP11(11), PP12(9),  S(117), C(117));

FA101 : full_adder port map(C(50), S(51), '1',  S(118), C(118));
FA102 : full_adder port map(PP5(24), PP6(22), PP7(20),  S(119), C(119));
FA103 : full_adder port map(PP8(18), PP9(16), PP12(10),  S(120), C(120));

FA104 : full_adder port map(C(51), Sign5n, PP6(23),  S(121), C(121));
FA105 : full_adder port map(PP7(21), PP8(19), PP9(17),  S(122), C(122));
FA106 : full_adder port map(PP10(15), PP11(13), PP12(11),  S(123), C(123));

FA107 : full_adder port map('1', PP6(24), PP7(22),  S(124), C(124));
FA108 : full_adder port map(PP8(20), PP9(18), PP10(16),  S(125), C(125));
HA19 : half_adder port map(PP11(14), PP12(12), S(126), C(126));

FA109 : full_adder port map(Sign6n, PP7(23), PP8(21),  S(127), C(127));
FA110 : full_adder port map(PP9(19), PP10(17), PP11(15),  S(128), C(128));

FA111 : full_adder port map('1', PP7(24), PP8(22),  S(129), C(129));
HA20 : half_adder port map(PP9(20), PP10(18), S(130), C(130));

FA112 : full_adder port map(Sign7n, PP8(23), PP9(21),  S(131), C(131));

HA21 : half_adder port map('1', PP8(24), S(132), C(132));





HA22 : half_adder port map(PP0(6), PP1(4), S(133), C(133));

HA23 : half_adder port map(PP0(7), PP1(5), S(134), C(134));

FA113 : full_adder port map(PP0(8), PP1(6), PP2(4),  S(135), C(135));
HA24 : half_adder port map(PP3(2), PP4(0), S(136), C(136));

FA114 : full_adder port map(PP0(9), PP1(7), PP2(5),  S(137), C(137));
HA25 : half_adder port map(PP3(3), PP4(1), S(138), C(138));

FA115 : full_adder port map(S(52), PP2(6), PP3(4),  S(139), C(139));
FA116 : full_adder port map(PP4(2), PP5(0), Sign5,  S(140), C(140));

FA117 : full_adder port map(C(52), S(53), PP2(7),  S(141), C(141));
FA118 : full_adder port map(PP3(5), PP4(3), PP5(1),  S(142), C(142));

FA119 : full_adder port map(C(53), S(54), S(55),  S(143), C(143));
FA120 : full_adder port map(PP5(2), PP6(0), Sign6,  S(144), C(144));

FA121 : full_adder port map(C(54), C(55), S(56),  S(145), C(145));
FA122 : full_adder port map(S(57), PP5(3), PP6(1),  S(146), C(146));

FA123 : full_adder port map(C(56), C(57), S(58),  S(147), C(147));
FA124 : full_adder port map(S(59), S(60), Sign7,  S(148), C(148));

 FA125 : full_adder port map(C(58), C(59), C(60),  S(149), C(149)); 
 FA126 : full_adder port map(S(61), S(62), S(63),  S(150), C(150)); 
 
 FA127 : full_adder port map(C(61), C(62), C(63),  S(151), C(151)); 
 FA128 : full_adder port map(S(64), S(65), S(66),  S(152), C(152)); 
 
 FA129 : full_adder port map(C(64), C(65), C(66),  S(153), C(153)); 
 FA130 : full_adder port map(S(67), S(68), S(69),  S(154), C(154)); 
 
 FA131 : full_adder port map(C(67), C(68), C(69),  S(155), C(155)); 
 FA132 : full_adder port map(S(70), S(71), S(72),  S(156), C(156)); 
 
 FA133 : full_adder port map(C(70), C(71), C(72),  S(157), C(157)); 
 FA134 : full_adder port map(S(73), S(74), S(75),  S(158), C(158)); 
 
 FA135 : full_adder port map(C(73), C(74), C(75),  S(159), C(159)); 
 FA136 : full_adder port map(S(76), S(77), S(78),  S(160), C(160)); 
 
 FA137 : full_adder port map(C(76), C(77), C(78),  S(161), C(161)); 
 FA138 : full_adder port map(S(79), S(80), S(81),  S(162), C(162)); 
 
 FA139 : full_adder port map(C(79), C(80), C(81),  S(163), C(163)); 
 FA140 : full_adder port map(S(82), S(83), S(84),  S(164), C(164)); 
 
 FA141 : full_adder port map(C(82), C(83), C(84),  S(165), C(165)); 
 FA142 : full_adder port map(S(85), S(86), S(87),  S(166), C(166)); 
 
 FA143 : full_adder port map(C(85), C(86), C(87),  S(167), C(167)); 
 FA144 : full_adder port map(S(88), S(89), S(90),  S(168), C(168)); 
 
 FA145 : full_adder port map(C(88), C(89), C(90),  S(169), C(169)); 
 FA146 : full_adder port map(S(91), S(92), S(93),  S(170), C(170)); 
 
 FA147 : full_adder port map(C(91), C(92), C(93),  S(171), C(171)); 
 FA148 : full_adder port map(S(94), S(95), S(96),  S(172), C(172)); 
 
 FA149 : full_adder port map(C(94), C(95), C(96),  S(173), C(173)); 
 FA150 : full_adder port map(S(97), S(98), S(99),  S(174), C(174)); 
 
 FA151 : full_adder port map(C(97), C(98), C(99),  S(175), C(175)); 
 FA152 : full_adder port map(S(100), S(101), S(102),  S(176), C(176)); 
 
 FA153 : full_adder port map(C(100), C(101), C(102),  S(177), C(177)); 
 FA154 : full_adder port map(S(103), S(104), S(105),  S(178), C(178)); 
 
 FA155 : full_adder port map(C(103), C(104), C(105),  S(179), C(179)); 
 FA156 : full_adder port map(S(106), S(107), S(108),  S(180), C(180)); 
 
 FA157 : full_adder port map(C(106), C(107), C(108),  S(181), C(181)); 
 FA158 : full_adder port map(S(109), S(110), S(111),  S(182), C(182)); 
 
 FA159 : full_adder port map(C(109), C(110), C(111),  S(183), C(183)); 
 FA160 : full_adder port map(S(112), S(113), S(114),  S(184), C(184)); 
 
 FA161 : full_adder port map(C(112), C(113), C(114),  S(185), C(185)); 
 FA162 : full_adder port map(S(115), S(116), S(117),  S(186), C(186)); 
 
 FA163 : full_adder port map(C(115), C(116), C(117),  S(187), C(187)); 
 FA164 : full_adder port map(S(118), S(119), S(120),  S(188), C(188)); 
 
 FA165 : full_adder port map(C(118), C(119), C(120),  S(189), C(189)); 
 FA166 : full_adder port map(S(121), S(122), S(123),  S(190), C(190)); 
 
 FA167 : full_adder port map(C(121), C(122), C(123),  S(191), C(191)); 
 FA168 : full_adder port map(S(124), S(125), S(126),  S(192), C(192)); 

FA169 : full_adder port map(C(124), C(125), C(126),  S(193), C(193));
FA170 : full_adder port map(S(127), S(128), PP12(13),  S(194), C(194));

FA171 : full_adder port map(C(127), C(128), S(129),  S(195), C(195));
FA172 : full_adder port map(S(130), PP11(16), PP12(14),  S(196), C(196));

FA173 : full_adder port map(C(129), C(130), S(131),  S(197), C(197));
FA174 : full_adder port map(PP10(19), PP11(17), PP12(15),  S(198), C(198));

FA175 : full_adder port map(C(131), S(132), PP9(22),  S(199), C(199));
FA176 : full_adder port map(PP10(20), PP11(18), PP12(16),  S(200), C(200));

FA177 : full_adder port map(C(132), Sign8n, PP9(23),  S(201), C(201));
FA178 : full_adder port map(PP10(21), PP11(19), PP12(17),  S(202), C(202));

FA179 : full_adder port map('1', PP9(24), PP10(22),  S(203), C(203));
HA26 : half_adder port map(PP11(20), PP12(18), S(204), C(204));

FA180 : full_adder port map(Sign9n, PP10(23), PP11(21),  S(205), C(205));

HA27 : half_adder port map('1', PP10(24), S(206), C(206));






HA28 : half_adder port map(PP0(0), Sign0, S(207), C(207));

HA29 : half_adder port map(PP0(4), PP1(2), S(208), C(208));

HA30 : half_adder port map(PP0(5), PP1(3), S(209), C(209));

FA181 : full_adder port map(S(133), PP2(2), PP3(0),  S(210), C(210));

FA182 : full_adder port map(C(133), S(134), PP2(3),  S(211), C(211));

HA31 : half_adder port map(C(134), S(135), S(212), C(212));

 FA183 : full_adder port map(C(135), C(136), S(137),  S(213), C(213)); 
 
 FA184 : full_adder port map(C(137), C(138), S(139),  S(214), C(214)); 
 
 FA185 : full_adder port map(C(139), C(140), S(141),  S(215), C(215)); 
 
 FA186 : full_adder port map(C(141), C(142), S(143),  S(216), C(216)); 
 
 FA187 : full_adder port map(C(143), C(144), S(145),  S(217), C(217)); 
 
 FA188 : full_adder port map(C(145), C(146), S(147),  S(218), C(218)); 
 
 FA189 : full_adder port map(C(147), C(148), S(149),  S(219), C(219)); 
 
 FA190 : full_adder port map(C(149), C(150), S(151),  S(220), C(220)); 
 
 FA191 : full_adder port map(C(151), C(152), S(153),  S(221), C(221)); 
 
 FA192 : full_adder port map(C(153), C(154), S(155),  S(222), C(222)); 
 
 FA193 : full_adder port map(C(155), C(156), S(157),  S(223), C(223)); 
 
 FA194 : full_adder port map(C(157), C(158), S(159),  S(224), C(224)); 
 
 FA195 : full_adder port map(C(159), C(160), S(161),  S(225), C(225)); 
 
 FA196 : full_adder port map(C(161), C(162), S(163),  S(226), C(226)); 
 
 FA197 : full_adder port map(C(163), C(164), S(165),  S(227), C(227)); 
 
 FA198 : full_adder port map(C(165), C(166), S(167),  S(228), C(228)); 
 
 FA199 : full_adder port map(C(167), C(168), S(169),  S(229), C(229)); 
 
 FA200 : full_adder port map(C(169), C(170), S(171),  S(230), C(230)); 
 
 FA201 : full_adder port map(C(171), C(172), S(173),  S(231), C(231)); 
 
 FA202 : full_adder port map(C(173), C(174), S(175),  S(232), C(232)); 
 
 FA203 : full_adder port map(C(175), C(176), S(177),  S(233), C(233)); 
 
 FA204 : full_adder port map(C(177), C(178), S(179),  S(234), C(234)); 
 
 FA205 : full_adder port map(C(179), C(180), S(181),  S(235), C(235)); 
 
 FA206 : full_adder port map(C(181), C(182), S(183),  S(236), C(236)); 
 
 FA207 : full_adder port map(C(183), C(184), S(185),  S(237), C(237)); 
 
 FA208 : full_adder port map(C(185), C(186), S(187),  S(238), C(238)); 
 
 FA209 : full_adder port map(C(187), C(188), S(189),  S(239), C(239)); 
 
 FA210 : full_adder port map(C(189), C(190), S(191),  S(240), C(240)); 
 
 FA211 : full_adder port map(C(191), C(192), S(193),  S(241), C(241)); 
 
 FA212 : full_adder port map(C(193), C(194), S(195),  S(242), C(242)); 
 
 FA213 : full_adder port map(C(195), C(196), S(197),  S(243), C(243)); 
 
 FA214 : full_adder port map(C(197), C(198), S(199),  S(244), C(244)); 
 
 FA215 : full_adder port map(C(199), C(200), S(201),  S(245), C(245)); 
 
 FA216 : full_adder port map(C(201), C(202), S(203),  S(246), C(246)); 
 
 FA217 : full_adder port map(C(203), C(204), S(205),  S(247), C(247)); 

FA218 : full_adder port map(C(205), S(206), PP11(22),  S(248), C(248));

FA219 : full_adder port map(C(206), Sign10n, PP11(23),  S(249), C(249));

HA32 : half_adder port map('1', PP11(24), S(250), C(250));







HA33 : half_adder port map(C(207), PP0(1), S(251), C(251));

FA220 : full_adder port map(PP0(2), PP1(0), Sign1,  S(252), C(252));

HA34 : half_adder port map(PP0(3), PP1(1), S(253), C(253));

FA221 : full_adder port map(S(208), PP2(0), Sign2,  S(254), C(254));

FA222 : full_adder port map(C(208), S(209), PP2(1),  S(255), C(255));

FA223 : full_adder port map(C(209), S(210), Sign3,  S(256), C(256));

FA224 : full_adder port map(C(210), S(211), PP3(1),  S(257), C(257));

 FA225 : full_adder port map(C(211), S(212), S(136),  S(258), C(258)); 
 
 FA226 : full_adder port map(C(212), S(213), S(138),  S(259), C(259)); 
 
 FA227 : full_adder port map(C(213), S(214), S(140),  S(260), C(260)); 
 
 FA228 : full_adder port map(C(214), S(215), S(142),  S(261), C(261)); 
 
 FA229 : full_adder port map(C(215), S(216), S(144),  S(262), C(262)); 
 
 FA230 : full_adder port map(C(216), S(217), S(146),  S(263), C(263)); 
 
 FA231 : full_adder port map(C(217), S(218), S(148),  S(264), C(264)); 
 
 FA232 : full_adder port map(C(218), S(219), S(150),  S(265), C(265)); 
 
 FA233 : full_adder port map(C(219), S(220), S(152),  S(266), C(266)); 
 
 FA234 : full_adder port map(C(220), S(221), S(154),  S(267), C(267)); 
 
 FA235 : full_adder port map(C(221), S(222), S(156),  S(268), C(268)); 
 
 FA236 : full_adder port map(C(222), S(223), S(158),  S(269), C(269)); 
 
 FA237 : full_adder port map(C(223), S(224), S(160),  S(270), C(270)); 
 
 FA238 : full_adder port map(C(224), S(225), S(162),  S(271), C(271)); 
 
 FA239 : full_adder port map(C(225), S(226), S(164),  S(272), C(272)); 
 
 FA240 : full_adder port map(C(226), S(227), S(166),  S(273), C(273)); 
 
 FA241 : full_adder port map(C(227), S(228), S(168),  S(274), C(274)); 
 
 FA242 : full_adder port map(C(228), S(229), S(170),  S(275), C(275)); 
 
 FA243 : full_adder port map(C(229), S(230), S(172),  S(276), C(276)); 
 
 FA244 : full_adder port map(C(230), S(231), S(174),  S(277), C(277)); 
 
 FA245 : full_adder port map(C(231), S(232), S(176),  S(278), C(278)); 
 
 FA246 : full_adder port map(C(232), S(233), S(178),  S(279), C(279)); 
 
 FA247 : full_adder port map(C(233), S(234), S(180),  S(280), C(280)); 
 
 FA248 : full_adder port map(C(234), S(235), S(182),  S(281), C(281)); 
 
 FA249 : full_adder port map(C(235), S(236), S(184),  S(282), C(282)); 
 
 FA250 : full_adder port map(C(236), S(237), S(186),  S(283), C(283)); 
 
 FA251 : full_adder port map(C(237), S(238), S(188),  S(284), C(284)); 
 
 FA252 : full_adder port map(C(238), S(239), S(190),  S(285), C(285)); 
 
 FA253 : full_adder port map(C(239), S(240), S(192),  S(286), C(286)); 
 
 FA254 : full_adder port map(C(240), S(241), S(194),  S(287), C(287)); 
 
 FA255 : full_adder port map(C(241), S(242), S(196),  S(288), C(288)); 
 
 FA256 : full_adder port map(C(242), S(243), S(198),  S(289), C(289)); 
 
 FA257 : full_adder port map(C(243), S(244), S(200),  S(290), C(290)); 
 
 FA258 : full_adder port map(C(244), S(245), S(202),  S(291), C(291)); 
 
 FA259 : full_adder port map(C(245), S(246), S(204),  S(292), C(292));

FA260 : full_adder port map(C(246), S(247), PP12(19),  S(293), C(293));

FA261 : full_adder port map(C(247), S(248), PP12(20),  S(294), C(294));

FA262 : full_adder port map(C(248), S(249), PP12(21),  S(295), C(295));

FA263 : full_adder port map(C(249), S(250), PP12(22),  S(296), C(296));

FA264 : full_adder port map(C(250), Sign11n, PP12(23),  S(297), C(297));







HA35 : half_adder port map(C(251), S(252), Z(2), C(298));
 
FA265 : full_adder port map(C(252), S(253), C(298),  Z(3), C(299)); 
 
FA266 : full_adder port map(C(253), S(254), C(299),  Z(4), C(300)); 
 
FA267 : full_adder port map(C(254), S(255), C(300),  Z(5), C(301)); 
 
FA268 : full_adder port map(C(255), S(256), C(301),  Z(6), C(302)); 
 
FA269 : full_adder port map(C(256), S(257), C(302),  Z(7), C(303)); 
 
FA270 : full_adder port map(C(257), S(258), C(303),  Z(8), C(304)); 
 
FA271 : full_adder port map(C(258), S(259), C(304),  Z(9), C(305)); 
 
FA272 : full_adder port map(C(259), S(260), C(305),  Z(10), C(306)); 
 
FA273 : full_adder port map(C(260), S(261), C(306),  Z(11), C(307)); 
 
FA274 : full_adder port map(C(261), S(262), C(307),  Z(12), C(308)); 
 
FA275 : full_adder port map(C(262), S(263), C(308),  Z(13), C(309)); 
 
FA276 : full_adder port map(C(263), S(264), C(309),  Z(14), C(310)); 
 
FA277 : full_adder port map(C(264), S(265), C(310),  Z(15), C(311)); 
 
FA278 : full_adder port map(C(265), S(266), C(311),  Z(16), C(312)); 
 
FA279 : full_adder port map(C(266), S(267), C(312),  Z(17), C(313)); 
 
FA280 : full_adder port map(C(267), S(268), C(313),  Z(18), C(314)); 
 
FA281 : full_adder port map(C(268), S(269), C(314),  Z(19), C(315)); 
 
FA282 : full_adder port map(C(269), S(270), C(315),  Z(20), C(316)); 
 
FA283 : full_adder port map(C(270), S(271), C(316),  Z(21), C(317)); 
 
FA284 : full_adder port map(C(271), S(272), C(317),  Z(22), C(318)); 
 
FA285 : full_adder port map(C(272), S(273), C(318),  Z(23), C(319)); 
 
FA286 : full_adder port map(C(273), S(274), C(319),  Z(24), C(320)); 
 
FA287 : full_adder port map(C(274), S(275), C(320),  Z(25), C(321)); 
 
FA288 : full_adder port map(C(275), S(276), C(321),  Z(26), C(322)); 
 
FA289 : full_adder port map(C(276), S(277), C(322),  Z(27), C(323)); 
 
FA290 : full_adder port map(C(277), S(278), C(323),  Z(28), C(324)); 
 
FA291 : full_adder port map(C(278), S(279), C(324),  Z(29), C(325)); 
 
FA292 : full_adder port map(C(279), S(280), C(325),  Z(30), C(326)); 
 
FA293 : full_adder port map(C(280), S(281), C(326),  Z(31), C(327)); 
 
FA294 : full_adder port map(C(281), S(282), C(327),  Z(32), C(328)); 
 
FA295 : full_adder port map(C(282), S(283), C(328),  Z(33), C(329)); 
 
FA296 : full_adder port map(C(283), S(284), C(329),  Z(34), C(330)); 
 
FA297 : full_adder port map(C(284), S(285), C(330),  Z(35), C(331)); 
 
FA298 : full_adder port map(C(285), S(286), C(331),  Z(36), C(332)); 
 
FA299 : full_adder port map(C(286), S(287), C(332),  Z(37), C(333)); 
 
FA300 : full_adder port map(C(287), S(288), C(333),  Z(38), C(334)); 
 
FA301 : full_adder port map(C(288), S(289), C(334),  Z(39), C(335)); 
 
FA302 : full_adder port map(C(289), S(290), C(335),  Z(40), C(336)); 
 
FA303 : full_adder port map(C(290), S(291), C(336),  Z(41), C(337)); 
 
FA304 : full_adder port map(C(291), S(292), C(337),  Z(42), C(338)); 
 
FA305 : full_adder port map(C(292), S(293), C(338),  Z(43), C(339)); 
 
FA306 : full_adder port map(C(293), S(294), C(339),  Z(44), C(340)); 
 
FA307 : full_adder port map(C(294), S(295), C(340),  Z(45), C(341)); 
 
FA308 : full_adder port map(C(295), S(296), C(341),  Z(46), C(342)); 
 
FA309 : full_adder port map(C(296), S(297), C(342),  Z(47), C(343));

Z(0) <= S(207);
Z(1) <= S(251);
z(63 downto 48) <= "0000000000000000";

end architecture;
