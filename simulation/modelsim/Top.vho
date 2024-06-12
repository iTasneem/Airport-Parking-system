-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/11/2022 21:23:53"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top IS
    PORT (
	resetT : IN std_logic;
	clockT : IN std_logic;
	fireT : IN std_logic;
	weathT : IN std_logic;
	countT : BUFFER std_logic_vector(9 DOWNTO 0);
	countET : BUFFER std_logic_vector(1 DOWNTO 0);
	airpotEmerT : BUFFER std_logic
	);
END Top;

-- Design Ports Information
-- countT[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countT[1]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countT[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countT[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countT[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countT[5]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countT[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countT[7]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countT[8]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countT[9]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countET[0]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countET[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- airpotEmerT	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clockT	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetT	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fireT	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- weathT	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_resetT : std_logic;
SIGNAL ww_clockT : std_logic;
SIGNAL ww_fireT : std_logic;
SIGNAL ww_weathT : std_logic;
SIGNAL ww_countT : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_countET : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_airpotEmerT : std_logic;
SIGNAL \resetT~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockT~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \airpotEmerT~input_o\ : std_logic;
SIGNAL \airpotEmerT~output_o\ : std_logic;
SIGNAL \countT[0]~output_o\ : std_logic;
SIGNAL \countT[1]~output_o\ : std_logic;
SIGNAL \countT[2]~output_o\ : std_logic;
SIGNAL \countT[3]~output_o\ : std_logic;
SIGNAL \countT[4]~output_o\ : std_logic;
SIGNAL \countT[5]~output_o\ : std_logic;
SIGNAL \countT[6]~output_o\ : std_logic;
SIGNAL \countT[7]~output_o\ : std_logic;
SIGNAL \countT[8]~output_o\ : std_logic;
SIGNAL \countT[9]~output_o\ : std_logic;
SIGNAL \countET[0]~output_o\ : std_logic;
SIGNAL \countET[1]~output_o\ : std_logic;
SIGNAL \clockT~input_o\ : std_logic;
SIGNAL \clockT~inputclkctrl_outclk\ : std_logic;
SIGNAL \fireT~input_o\ : std_logic;
SIGNAL \weathT~input_o\ : std_logic;
SIGNAL \airemer|process_0~0_combout\ : std_logic;
SIGNAL \resetT~input_o\ : std_logic;
SIGNAL \airemer|p~q\ : std_logic;
SIGNAL \park|cou[0]~10_combout\ : std_logic;
SIGNAL \resetT~inputclkctrl_outclk\ : std_logic;
SIGNAL \airpotEmerTs~q\ : std_logic;
SIGNAL \park|process_0~4_combout\ : std_logic;
SIGNAL \park|entranceA~1_combout\ : std_logic;
SIGNAL \park|exitB~0_combout\ : std_logic;
SIGNAL \park|entranceA~0_combout\ : std_logic;
SIGNAL \park|entranceA~2_combout\ : std_logic;
SIGNAL \park|entranceA~q\ : std_logic;
SIGNAL \airpl|NextState~7_combout\ : std_logic;
SIGNAL \park|exitB~1_combout\ : std_logic;
SIGNAL \park|exitB~q\ : std_logic;
SIGNAL \airpl|tim|Add0~0_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~95_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~1\ : std_logic;
SIGNAL \airpl|tim|Add0~2_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~73_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~3\ : std_logic;
SIGNAL \airpl|tim|Add0~4_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~74_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~5\ : std_logic;
SIGNAL \airpl|tim|Add0~6_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~75_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~7\ : std_logic;
SIGNAL \airpl|tim|Add0~8_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~76_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~9\ : std_logic;
SIGNAL \airpl|tim|Add0~10_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~77_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~11\ : std_logic;
SIGNAL \airpl|tim|Add0~12_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~65_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~13\ : std_logic;
SIGNAL \airpl|tim|Add0~14_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~66_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~15\ : std_logic;
SIGNAL \airpl|tim|Add0~16_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~67_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~17\ : std_logic;
SIGNAL \airpl|tim|Add0~18_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~68_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~19\ : std_logic;
SIGNAL \airpl|tim|Add0~20_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~69_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~21\ : std_logic;
SIGNAL \airpl|tim|Add0~22_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~70_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~23\ : std_logic;
SIGNAL \airpl|tim|Add0~24_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~71_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~25\ : std_logic;
SIGNAL \airpl|tim|Add0~26_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~72_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~27\ : std_logic;
SIGNAL \airpl|tim|Add0~28_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~78_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~29\ : std_logic;
SIGNAL \airpl|tim|Add0~30_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~79_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~31\ : std_logic;
SIGNAL \airpl|tim|Add0~32_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~80_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~33\ : std_logic;
SIGNAL \airpl|tim|Add0~34_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~81_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~35\ : std_logic;
SIGNAL \airpl|tim|Add0~36_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~82_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~37\ : std_logic;
SIGNAL \airpl|tim|Add0~38_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~83_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~39\ : std_logic;
SIGNAL \airpl|tim|Add0~40_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~84_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~41\ : std_logic;
SIGNAL \airpl|tim|Add0~42_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~85_combout\ : std_logic;
SIGNAL \airpl|tim|LessThan0~5_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~43\ : std_logic;
SIGNAL \airpl|tim|Add0~44_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~86_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~45\ : std_logic;
SIGNAL \airpl|tim|Add0~46_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~87_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~47\ : std_logic;
SIGNAL \airpl|tim|Add0~48_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~88_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~49\ : std_logic;
SIGNAL \airpl|tim|Add0~50_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~89_combout\ : std_logic;
SIGNAL \airpl|tim|LessThan0~6_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~51\ : std_logic;
SIGNAL \airpl|tim|Add0~52_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~90_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~53\ : std_logic;
SIGNAL \airpl|tim|Add0~54_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~91_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~55\ : std_logic;
SIGNAL \airpl|tim|Add0~56_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~92_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~57\ : std_logic;
SIGNAL \airpl|tim|Add0~58_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~93_combout\ : std_logic;
SIGNAL \airpl|tim|LessThan0~7_combout\ : std_logic;
SIGNAL \airpl|tim|LessThan0~4_combout\ : std_logic;
SIGNAL \airpl|tim|LessThan0~8_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~59\ : std_logic;
SIGNAL \airpl|tim|Add0~60_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~94_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~61\ : std_logic;
SIGNAL \airpl|tim|Add0~62_combout\ : std_logic;
SIGNAL \airpl|tim|Add0~64_combout\ : std_logic;
SIGNAL \airpl|tim|f~0_combout\ : std_logic;
SIGNAL \airpl|tim|LessThan0~2_combout\ : std_logic;
SIGNAL \airpl|tim|LessThan0~1_combout\ : std_logic;
SIGNAL \airpl|tim|LessThan0~0_combout\ : std_logic;
SIGNAL \airpl|tim|LessThan0~3_combout\ : std_logic;
SIGNAL \airpl|tim|f~1_combout\ : std_logic;
SIGNAL \airpl|tim|f~2_combout\ : std_logic;
SIGNAL \airpl|tim|f~q\ : std_logic;
SIGNAL \airpl|process_0~2_combout\ : std_logic;
SIGNAL \airpl|NextState~8_combout\ : std_logic;
SIGNAL \airpl|NextState.flight~q\ : std_logic;
SIGNAL \airpl|PrState~9_combout\ : std_logic;
SIGNAL \airpl|PrState.flight~q\ : std_logic;
SIGNAL \airpl|NextState~5_combout\ : std_logic;
SIGNAL \airpl|NextState~6_combout\ : std_logic;
SIGNAL \airpl|NextState.park~q\ : std_logic;
SIGNAL \airpl|PrState~8_combout\ : std_logic;
SIGNAL \airpl|PrState.park~q\ : std_logic;
SIGNAL \airpl|B~0_combout\ : std_logic;
SIGNAL \airpl|A~0_combout\ : std_logic;
SIGNAL \airpl|A~1_combout\ : std_logic;
SIGNAL \airpl|B~q\ : std_logic;
SIGNAL \BB~feeder_combout\ : std_logic;
SIGNAL \BB~q\ : std_logic;
SIGNAL \park|cou[0]~11\ : std_logic;
SIGNAL \park|cou[1]~16_combout\ : std_logic;
SIGNAL \park|cou[3]~12_combout\ : std_logic;
SIGNAL \park|cou[3]~15_combout\ : std_logic;
SIGNAL \park|cou[1]~17\ : std_logic;
SIGNAL \park|cou[2]~18_combout\ : std_logic;
SIGNAL \park|cou[2]~19\ : std_logic;
SIGNAL \park|cou[3]~20_combout\ : std_logic;
SIGNAL \park|cou[3]~21\ : std_logic;
SIGNAL \park|cou[4]~22_combout\ : std_logic;
SIGNAL \park|cou[4]~23\ : std_logic;
SIGNAL \park|cou[5]~24_combout\ : std_logic;
SIGNAL \park|cou[5]~25\ : std_logic;
SIGNAL \park|cou[6]~26_combout\ : std_logic;
SIGNAL \park|cou[6]~27\ : std_logic;
SIGNAL \park|cou[7]~28_combout\ : std_logic;
SIGNAL \park|cou[7]~29\ : std_logic;
SIGNAL \park|cou[8]~31\ : std_logic;
SIGNAL \park|cou[9]~32_combout\ : std_logic;
SIGNAL \park|LessThan1~1_combout\ : std_logic;
SIGNAL \park|LessThan1~0_combout\ : std_logic;
SIGNAL \park|process_0~2_combout\ : std_logic;
SIGNAL \park|process_0~3_combout\ : std_logic;
SIGNAL \park|Add0~0_combout\ : std_logic;
SIGNAL \park|cou[8]~30_combout\ : std_logic;
SIGNAL \park|Equal0~0_combout\ : std_logic;
SIGNAL \park|Equal0~1_combout\ : std_logic;
SIGNAL \park|Equal0~2_combout\ : std_logic;
SIGNAL \park|L~0_combout\ : std_logic;
SIGNAL \park|L~1_combout\ : std_logic;
SIGNAL \park|L~q\ : std_logic;
SIGNAL \airpl|A~2_combout\ : std_logic;
SIGNAL \airpl|A~q\ : std_logic;
SIGNAL \AA~feeder_combout\ : std_logic;
SIGNAL \AA~q\ : std_logic;
SIGNAL \park|cou[3]~13_combout\ : std_logic;
SIGNAL \park|cou[3]~14_combout\ : std_logic;
SIGNAL \park|count[0]~feeder_combout\ : std_logic;
SIGNAL \park|count[1]~feeder_combout\ : std_logic;
SIGNAL \park|count[6]~feeder_combout\ : std_logic;
SIGNAL \park|count[7]~feeder_combout\ : std_logic;
SIGNAL \park|cou\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \park|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \airpl|tim|Ticks\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_resetT~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetT <= resetT;
ww_clockT <= clockT;
ww_fireT <= fireT;
ww_weathT <= weathT;
countT <= ww_countT;
countET <= ww_countET;
airpotEmerT <= ww_airpotEmerT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\resetT~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetT~input_o\);

\clockT~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockT~input_o\);
\ALT_INV_resetT~inputclkctrl_outclk\ <= NOT \resetT~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y24_N2
\airpotEmerT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \airemer|p~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \airpotEmerT~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\countT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(0),
	devoe => ww_devoe,
	o => \countT[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\countT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(1),
	devoe => ww_devoe,
	o => \countT[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\countT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(2),
	devoe => ww_devoe,
	o => \countT[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\countT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(3),
	devoe => ww_devoe,
	o => \countT[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\countT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(4),
	devoe => ww_devoe,
	o => \countT[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\countT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(5),
	devoe => ww_devoe,
	o => \countT[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\countT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(6),
	devoe => ww_devoe,
	o => \countT[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\countT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(7),
	devoe => ww_devoe,
	o => \countT[7]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\countT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(8),
	devoe => ww_devoe,
	o => \countT[8]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\countT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \park|count\(9),
	devoe => ww_devoe,
	o => \countT[9]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\countET[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \countET[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\countET[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \countET[1]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clockT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clockT,
	o => \clockT~input_o\);

-- Location: CLKCTRL_G2
\clockT~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockT~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockT~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y9_N8
\fireT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fireT,
	o => \fireT~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\weathT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_weathT,
	o => \weathT~input_o\);

-- Location: LCCOMB_X3_Y9_N20
\airemer|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \airemer|process_0~0_combout\ = (\fireT~input_o\) # (\weathT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fireT~input_o\,
	datad => \weathT~input_o\,
	combout => \airemer|process_0~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\resetT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetT,
	o => \resetT~input_o\);

-- Location: FF_X3_Y9_N21
\airemer|p\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airemer|process_0~0_combout\,
	sclr => \resetT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airemer|p~q\);

-- Location: LCCOMB_X2_Y7_N4
\park|cou[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[0]~10_combout\ = \park|cou\(0) $ (VCC)
-- \park|cou[0]~11\ = CARRY(\park|cou\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \park|cou\(0),
	datad => VCC,
	combout => \park|cou[0]~10_combout\,
	cout => \park|cou[0]~11\);

-- Location: CLKCTRL_G4
\resetT~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetT~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetT~inputclkctrl_outclk\);

-- Location: FF_X3_Y7_N31
airpotEmerTs : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airemer|p~q\,
	clrn => \ALT_INV_resetT~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpotEmerTs~q\);

-- Location: LCCOMB_X3_Y7_N8
\park|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|process_0~4_combout\ = (\AA~q\ & (!\park|Equal0~2_combout\ & (!\resetT~input_o\ & \BB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AA~q\,
	datab => \park|Equal0~2_combout\,
	datac => \resetT~input_o\,
	datad => \BB~q\,
	combout => \park|process_0~4_combout\);

-- Location: LCCOMB_X3_Y7_N22
\park|entranceA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|entranceA~1_combout\ = (\park|entranceA~q\) # ((\AA~q\ & (!\park|Equal0~2_combout\ & !\BB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AA~q\,
	datab => \park|Equal0~2_combout\,
	datac => \park|entranceA~q\,
	datad => \BB~q\,
	combout => \park|entranceA~1_combout\);

-- Location: LCCOMB_X3_Y7_N0
\park|exitB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|exitB~0_combout\ = (\resetT~input_o\) # ((!\park|process_0~3_combout\ & ((!\park|Equal0~2_combout\) # (!\park|cou[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetT~input_o\,
	datab => \park|cou[3]~13_combout\,
	datac => \park|Equal0~2_combout\,
	datad => \park|process_0~3_combout\,
	combout => \park|exitB~0_combout\);

-- Location: LCCOMB_X3_Y7_N20
\park|entranceA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|entranceA~0_combout\ = (!\airpotEmerTs~q\ & (!\resetT~input_o\ & \park|exitB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \airpotEmerTs~q\,
	datac => \resetT~input_o\,
	datad => \park|exitB~0_combout\,
	combout => \park|entranceA~0_combout\);

-- Location: LCCOMB_X3_Y7_N6
\park|entranceA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|entranceA~2_combout\ = (\airpotEmerTs~q\ & (((\park|entranceA~1_combout\ & \park|entranceA~0_combout\)))) # (!\airpotEmerTs~q\ & ((\park|process_0~4_combout\) # ((\park|entranceA~1_combout\ & \park|entranceA~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpotEmerTs~q\,
	datab => \park|process_0~4_combout\,
	datac => \park|entranceA~1_combout\,
	datad => \park|entranceA~0_combout\,
	combout => \park|entranceA~2_combout\);

-- Location: FF_X3_Y7_N7
\park|entranceA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|entranceA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|entranceA~q\);

-- Location: LCCOMB_X4_Y7_N22
\airpl|NextState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|NextState~7_combout\ = (\airpl|PrState.flight~q\ & ((\airpl|NextState.flight~q\))) # (!\airpl|PrState.flight~q\ & (!\park|entranceA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \airpl|PrState.flight~q\,
	datac => \park|entranceA~q\,
	datad => \airpl|NextState.flight~q\,
	combout => \airpl|NextState~7_combout\);

-- Location: LCCOMB_X3_Y7_N16
\park|exitB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|exitB~1_combout\ = (!\airpotEmerTs~q\ & (!\park|process_0~4_combout\ & !\park|exitB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpotEmerTs~q\,
	datac => \park|process_0~4_combout\,
	datad => \park|exitB~0_combout\,
	combout => \park|exitB~1_combout\);

-- Location: FF_X3_Y7_N17
\park|exitB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|exitB~1_combout\,
	ena => \park|L~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|exitB~q\);

-- Location: LCCOMB_X4_Y9_N0
\airpl|tim|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~0_combout\ = \airpl|tim|Ticks\(0) $ (GND)
-- \airpl|tim|Add0~1\ = CARRY(!\airpl|tim|Ticks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(0),
	datad => VCC,
	combout => \airpl|tim|Add0~0_combout\,
	cout => \airpl|tim|Add0~1\);

-- Location: LCCOMB_X3_Y9_N24
\airpl|tim|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~95_combout\ = (\resetT~input_o\) # (!\airpl|tim|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \airpl|tim|Add0~0_combout\,
	datad => \resetT~input_o\,
	combout => \airpl|tim|Add0~95_combout\);

-- Location: FF_X4_Y9_N27
\airpl|tim|Ticks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airpl|tim|Add0~95_combout\,
	sload => VCC,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(0));

-- Location: LCCOMB_X4_Y9_N2
\airpl|tim|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~2_combout\ = (\airpl|tim|Ticks\(1) & (!\airpl|tim|Add0~1\)) # (!\airpl|tim|Ticks\(1) & ((\airpl|tim|Add0~1\) # (GND)))
-- \airpl|tim|Add0~3\ = CARRY((!\airpl|tim|Add0~1\) # (!\airpl|tim|Ticks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(1),
	datad => VCC,
	cin => \airpl|tim|Add0~1\,
	combout => \airpl|tim|Add0~2_combout\,
	cout => \airpl|tim|Add0~3\);

-- Location: LCCOMB_X3_Y9_N0
\airpl|tim|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~73_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datac => \airpl|tim|Add0~2_combout\,
	combout => \airpl|tim|Add0~73_combout\);

-- Location: FF_X4_Y9_N23
\airpl|tim|Ticks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airpl|tim|Add0~73_combout\,
	sload => VCC,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(1));

-- Location: LCCOMB_X4_Y9_N4
\airpl|tim|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~4_combout\ = (\airpl|tim|Ticks\(2) & (\airpl|tim|Add0~3\ $ (GND))) # (!\airpl|tim|Ticks\(2) & (!\airpl|tim|Add0~3\ & VCC))
-- \airpl|tim|Add0~5\ = CARRY((\airpl|tim|Ticks\(2) & !\airpl|tim|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(2),
	datad => VCC,
	cin => \airpl|tim|Add0~3\,
	combout => \airpl|tim|Add0~4_combout\,
	cout => \airpl|tim|Add0~5\);

-- Location: LCCOMB_X3_Y9_N26
\airpl|tim|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~74_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datad => \airpl|tim|Add0~4_combout\,
	combout => \airpl|tim|Add0~74_combout\);

-- Location: FF_X4_Y9_N3
\airpl|tim|Ticks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airpl|tim|Add0~74_combout\,
	sload => VCC,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(2));

-- Location: LCCOMB_X4_Y9_N6
\airpl|tim|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~6_combout\ = (\airpl|tim|Ticks\(3) & (!\airpl|tim|Add0~5\)) # (!\airpl|tim|Ticks\(3) & ((\airpl|tim|Add0~5\) # (GND)))
-- \airpl|tim|Add0~7\ = CARRY((!\airpl|tim|Add0~5\) # (!\airpl|tim|Ticks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(3),
	datad => VCC,
	cin => \airpl|tim|Add0~5\,
	combout => \airpl|tim|Add0~6_combout\,
	cout => \airpl|tim|Add0~7\);

-- Location: LCCOMB_X3_Y9_N4
\airpl|tim|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~75_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datad => \airpl|tim|Add0~6_combout\,
	combout => \airpl|tim|Add0~75_combout\);

-- Location: FF_X4_Y9_N29
\airpl|tim|Ticks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airpl|tim|Add0~75_combout\,
	sload => VCC,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(3));

-- Location: LCCOMB_X4_Y9_N8
\airpl|tim|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~8_combout\ = (\airpl|tim|Ticks\(4) & (\airpl|tim|Add0~7\ $ (GND))) # (!\airpl|tim|Ticks\(4) & (!\airpl|tim|Add0~7\ & VCC))
-- \airpl|tim|Add0~9\ = CARRY((\airpl|tim|Ticks\(4) & !\airpl|tim|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(4),
	datad => VCC,
	cin => \airpl|tim|Add0~7\,
	combout => \airpl|tim|Add0~8_combout\,
	cout => \airpl|tim|Add0~9\);

-- Location: LCCOMB_X5_Y9_N30
\airpl|tim|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~76_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~8_combout\,
	combout => \airpl|tim|Add0~76_combout\);

-- Location: FF_X4_Y9_N7
\airpl|tim|Ticks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airpl|tim|Add0~76_combout\,
	sload => VCC,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(4));

-- Location: LCCOMB_X4_Y9_N10
\airpl|tim|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~10_combout\ = (\airpl|tim|Ticks\(5) & (!\airpl|tim|Add0~9\)) # (!\airpl|tim|Ticks\(5) & ((\airpl|tim|Add0~9\) # (GND)))
-- \airpl|tim|Add0~11\ = CARRY((!\airpl|tim|Add0~9\) # (!\airpl|tim|Ticks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(5),
	datad => VCC,
	cin => \airpl|tim|Add0~9\,
	combout => \airpl|tim|Add0~10_combout\,
	cout => \airpl|tim|Add0~11\);

-- Location: LCCOMB_X3_Y9_N18
\airpl|tim|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~77_combout\ = (\airpl|tim|Add0~10_combout\ & !\resetT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \airpl|tim|Add0~10_combout\,
	datad => \resetT~input_o\,
	combout => \airpl|tim|Add0~77_combout\);

-- Location: FF_X4_Y9_N13
\airpl|tim|Ticks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airpl|tim|Add0~77_combout\,
	sload => VCC,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(5));

-- Location: LCCOMB_X4_Y9_N12
\airpl|tim|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~12_combout\ = (\airpl|tim|Ticks\(6) & (\airpl|tim|Add0~11\ $ (GND))) # (!\airpl|tim|Ticks\(6) & (!\airpl|tim|Add0~11\ & VCC))
-- \airpl|tim|Add0~13\ = CARRY((\airpl|tim|Ticks\(6) & !\airpl|tim|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(6),
	datad => VCC,
	cin => \airpl|tim|Add0~11\,
	combout => \airpl|tim|Add0~12_combout\,
	cout => \airpl|tim|Add0~13\);

-- Location: LCCOMB_X3_Y9_N16
\airpl|tim|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~65_combout\ = (\airpl|tim|Add0~12_combout\ & !\resetT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \airpl|tim|Add0~12_combout\,
	datad => \resetT~input_o\,
	combout => \airpl|tim|Add0~65_combout\);

-- Location: FF_X4_Y9_N31
\airpl|tim|Ticks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airpl|tim|Add0~65_combout\,
	sload => VCC,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(6));

-- Location: LCCOMB_X4_Y9_N14
\airpl|tim|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~14_combout\ = (\airpl|tim|Ticks\(7) & (!\airpl|tim|Add0~13\)) # (!\airpl|tim|Ticks\(7) & ((\airpl|tim|Add0~13\) # (GND)))
-- \airpl|tim|Add0~15\ = CARRY((!\airpl|tim|Add0~13\) # (!\airpl|tim|Ticks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(7),
	datad => VCC,
	cin => \airpl|tim|Add0~13\,
	combout => \airpl|tim|Add0~14_combout\,
	cout => \airpl|tim|Add0~15\);

-- Location: LCCOMB_X5_Y9_N24
\airpl|tim|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~66_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~14_combout\,
	combout => \airpl|tim|Add0~66_combout\);

-- Location: FF_X5_Y9_N25
\airpl|tim|Ticks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~66_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(7));

-- Location: LCCOMB_X4_Y9_N16
\airpl|tim|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~16_combout\ = (\airpl|tim|Ticks\(8) & (\airpl|tim|Add0~15\ $ (GND))) # (!\airpl|tim|Ticks\(8) & (!\airpl|tim|Add0~15\ & VCC))
-- \airpl|tim|Add0~17\ = CARRY((\airpl|tim|Ticks\(8) & !\airpl|tim|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(8),
	datad => VCC,
	cin => \airpl|tim|Add0~15\,
	combout => \airpl|tim|Add0~16_combout\,
	cout => \airpl|tim|Add0~17\);

-- Location: LCCOMB_X3_Y9_N6
\airpl|tim|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~67_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datad => \airpl|tim|Add0~16_combout\,
	combout => \airpl|tim|Add0~67_combout\);

-- Location: FF_X4_Y9_N5
\airpl|tim|Ticks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airpl|tim|Add0~67_combout\,
	sload => VCC,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(8));

-- Location: LCCOMB_X4_Y9_N18
\airpl|tim|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~18_combout\ = (\airpl|tim|Ticks\(9) & (!\airpl|tim|Add0~17\)) # (!\airpl|tim|Ticks\(9) & ((\airpl|tim|Add0~17\) # (GND)))
-- \airpl|tim|Add0~19\ = CARRY((!\airpl|tim|Add0~17\) # (!\airpl|tim|Ticks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(9),
	datad => VCC,
	cin => \airpl|tim|Add0~17\,
	combout => \airpl|tim|Add0~18_combout\,
	cout => \airpl|tim|Add0~19\);

-- Location: LCCOMB_X5_Y9_N6
\airpl|tim|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~68_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~18_combout\,
	combout => \airpl|tim|Add0~68_combout\);

-- Location: FF_X5_Y9_N7
\airpl|tim|Ticks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~68_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(9));

-- Location: LCCOMB_X4_Y9_N20
\airpl|tim|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~20_combout\ = (\airpl|tim|Ticks\(10) & (\airpl|tim|Add0~19\ $ (GND))) # (!\airpl|tim|Ticks\(10) & (!\airpl|tim|Add0~19\ & VCC))
-- \airpl|tim|Add0~21\ = CARRY((\airpl|tim|Ticks\(10) & !\airpl|tim|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(10),
	datad => VCC,
	cin => \airpl|tim|Add0~19\,
	combout => \airpl|tim|Add0~20_combout\,
	cout => \airpl|tim|Add0~21\);

-- Location: LCCOMB_X5_Y9_N10
\airpl|tim|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~69_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~20_combout\,
	combout => \airpl|tim|Add0~69_combout\);

-- Location: FF_X5_Y9_N11
\airpl|tim|Ticks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~69_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(10));

-- Location: LCCOMB_X4_Y9_N22
\airpl|tim|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~22_combout\ = (\airpl|tim|Ticks\(11) & (!\airpl|tim|Add0~21\)) # (!\airpl|tim|Ticks\(11) & ((\airpl|tim|Add0~21\) # (GND)))
-- \airpl|tim|Add0~23\ = CARRY((!\airpl|tim|Add0~21\) # (!\airpl|tim|Ticks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(11),
	datad => VCC,
	cin => \airpl|tim|Add0~21\,
	combout => \airpl|tim|Add0~22_combout\,
	cout => \airpl|tim|Add0~23\);

-- Location: LCCOMB_X5_Y9_N20
\airpl|tim|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~70_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~22_combout\,
	combout => \airpl|tim|Add0~70_combout\);

-- Location: FF_X5_Y9_N21
\airpl|tim|Ticks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~70_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(11));

-- Location: LCCOMB_X4_Y9_N24
\airpl|tim|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~24_combout\ = (\airpl|tim|Ticks\(12) & (\airpl|tim|Add0~23\ $ (GND))) # (!\airpl|tim|Ticks\(12) & (!\airpl|tim|Add0~23\ & VCC))
-- \airpl|tim|Add0~25\ = CARRY((\airpl|tim|Ticks\(12) & !\airpl|tim|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(12),
	datad => VCC,
	cin => \airpl|tim|Add0~23\,
	combout => \airpl|tim|Add0~24_combout\,
	cout => \airpl|tim|Add0~25\);

-- Location: LCCOMB_X5_Y9_N2
\airpl|tim|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~71_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~24_combout\,
	combout => \airpl|tim|Add0~71_combout\);

-- Location: FF_X5_Y9_N3
\airpl|tim|Ticks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~71_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(12));

-- Location: LCCOMB_X4_Y9_N26
\airpl|tim|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~26_combout\ = (\airpl|tim|Ticks\(13) & (!\airpl|tim|Add0~25\)) # (!\airpl|tim|Ticks\(13) & ((\airpl|tim|Add0~25\) # (GND)))
-- \airpl|tim|Add0~27\ = CARRY((!\airpl|tim|Add0~25\) # (!\airpl|tim|Ticks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(13),
	datad => VCC,
	cin => \airpl|tim|Add0~25\,
	combout => \airpl|tim|Add0~26_combout\,
	cout => \airpl|tim|Add0~27\);

-- Location: LCCOMB_X5_Y9_N4
\airpl|tim|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~72_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetT~input_o\,
	datac => \airpl|tim|Add0~26_combout\,
	combout => \airpl|tim|Add0~72_combout\);

-- Location: FF_X5_Y9_N5
\airpl|tim|Ticks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~72_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(13));

-- Location: LCCOMB_X4_Y9_N28
\airpl|tim|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~28_combout\ = (\airpl|tim|Ticks\(14) & (\airpl|tim|Add0~27\ $ (GND))) # (!\airpl|tim|Ticks\(14) & (!\airpl|tim|Add0~27\ & VCC))
-- \airpl|tim|Add0~29\ = CARRY((\airpl|tim|Ticks\(14) & !\airpl|tim|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(14),
	datad => VCC,
	cin => \airpl|tim|Add0~27\,
	combout => \airpl|tim|Add0~28_combout\,
	cout => \airpl|tim|Add0~29\);

-- Location: LCCOMB_X5_Y8_N0
\airpl|tim|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~78_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datac => \airpl|tim|Add0~28_combout\,
	combout => \airpl|tim|Add0~78_combout\);

-- Location: FF_X5_Y8_N1
\airpl|tim|Ticks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~78_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(14));

-- Location: LCCOMB_X4_Y9_N30
\airpl|tim|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~30_combout\ = (\airpl|tim|Ticks\(15) & (!\airpl|tim|Add0~29\)) # (!\airpl|tim|Ticks\(15) & ((\airpl|tim|Add0~29\) # (GND)))
-- \airpl|tim|Add0~31\ = CARRY((!\airpl|tim|Add0~29\) # (!\airpl|tim|Ticks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(15),
	datad => VCC,
	cin => \airpl|tim|Add0~29\,
	combout => \airpl|tim|Add0~30_combout\,
	cout => \airpl|tim|Add0~31\);

-- Location: LCCOMB_X5_Y8_N26
\airpl|tim|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~79_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datac => \airpl|tim|Add0~30_combout\,
	combout => \airpl|tim|Add0~79_combout\);

-- Location: FF_X5_Y8_N27
\airpl|tim|Ticks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~79_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(15));

-- Location: LCCOMB_X4_Y8_N0
\airpl|tim|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~32_combout\ = (\airpl|tim|Ticks\(16) & (\airpl|tim|Add0~31\ $ (GND))) # (!\airpl|tim|Ticks\(16) & (!\airpl|tim|Add0~31\ & VCC))
-- \airpl|tim|Add0~33\ = CARRY((\airpl|tim|Ticks\(16) & !\airpl|tim|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(16),
	datad => VCC,
	cin => \airpl|tim|Add0~31\,
	combout => \airpl|tim|Add0~32_combout\,
	cout => \airpl|tim|Add0~33\);

-- Location: LCCOMB_X5_Y8_N12
\airpl|tim|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~80_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datac => \airpl|tim|Add0~32_combout\,
	combout => \airpl|tim|Add0~80_combout\);

-- Location: FF_X5_Y8_N13
\airpl|tim|Ticks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~80_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(16));

-- Location: LCCOMB_X4_Y8_N2
\airpl|tim|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~34_combout\ = (\airpl|tim|Ticks\(17) & (!\airpl|tim|Add0~33\)) # (!\airpl|tim|Ticks\(17) & ((\airpl|tim|Add0~33\) # (GND)))
-- \airpl|tim|Add0~35\ = CARRY((!\airpl|tim|Add0~33\) # (!\airpl|tim|Ticks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(17),
	datad => VCC,
	cin => \airpl|tim|Add0~33\,
	combout => \airpl|tim|Add0~34_combout\,
	cout => \airpl|tim|Add0~35\);

-- Location: LCCOMB_X5_Y8_N2
\airpl|tim|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~81_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~34_combout\,
	combout => \airpl|tim|Add0~81_combout\);

-- Location: FF_X5_Y8_N3
\airpl|tim|Ticks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~81_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(17));

-- Location: LCCOMB_X4_Y8_N4
\airpl|tim|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~36_combout\ = (\airpl|tim|Ticks\(18) & (\airpl|tim|Add0~35\ $ (GND))) # (!\airpl|tim|Ticks\(18) & (!\airpl|tim|Add0~35\ & VCC))
-- \airpl|tim|Add0~37\ = CARRY((\airpl|tim|Ticks\(18) & !\airpl|tim|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(18),
	datad => VCC,
	cin => \airpl|tim|Add0~35\,
	combout => \airpl|tim|Add0~36_combout\,
	cout => \airpl|tim|Add0~37\);

-- Location: LCCOMB_X3_Y9_N30
\airpl|tim|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~82_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datac => \airpl|tim|Add0~36_combout\,
	combout => \airpl|tim|Add0~82_combout\);

-- Location: FF_X3_Y9_N31
\airpl|tim|Ticks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~82_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(18));

-- Location: LCCOMB_X4_Y8_N6
\airpl|tim|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~38_combout\ = (\airpl|tim|Ticks\(19) & (!\airpl|tim|Add0~37\)) # (!\airpl|tim|Ticks\(19) & ((\airpl|tim|Add0~37\) # (GND)))
-- \airpl|tim|Add0~39\ = CARRY((!\airpl|tim|Add0~37\) # (!\airpl|tim|Ticks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(19),
	datad => VCC,
	cin => \airpl|tim|Add0~37\,
	combout => \airpl|tim|Add0~38_combout\,
	cout => \airpl|tim|Add0~39\);

-- Location: LCCOMB_X3_Y9_N8
\airpl|tim|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~83_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datad => \airpl|tim|Add0~38_combout\,
	combout => \airpl|tim|Add0~83_combout\);

-- Location: FF_X3_Y9_N9
\airpl|tim|Ticks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~83_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(19));

-- Location: LCCOMB_X4_Y8_N8
\airpl|tim|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~40_combout\ = (\airpl|tim|Ticks\(20) & (\airpl|tim|Add0~39\ $ (GND))) # (!\airpl|tim|Ticks\(20) & (!\airpl|tim|Add0~39\ & VCC))
-- \airpl|tim|Add0~41\ = CARRY((\airpl|tim|Ticks\(20) & !\airpl|tim|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(20),
	datad => VCC,
	cin => \airpl|tim|Add0~39\,
	combout => \airpl|tim|Add0~40_combout\,
	cout => \airpl|tim|Add0~41\);

-- Location: LCCOMB_X3_Y9_N10
\airpl|tim|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~84_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datad => \airpl|tim|Add0~40_combout\,
	combout => \airpl|tim|Add0~84_combout\);

-- Location: FF_X3_Y9_N11
\airpl|tim|Ticks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~84_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(20));

-- Location: LCCOMB_X4_Y8_N10
\airpl|tim|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~42_combout\ = (\airpl|tim|Ticks\(21) & (!\airpl|tim|Add0~41\)) # (!\airpl|tim|Ticks\(21) & ((\airpl|tim|Add0~41\) # (GND)))
-- \airpl|tim|Add0~43\ = CARRY((!\airpl|tim|Add0~41\) # (!\airpl|tim|Ticks\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(21),
	datad => VCC,
	cin => \airpl|tim|Add0~41\,
	combout => \airpl|tim|Add0~42_combout\,
	cout => \airpl|tim|Add0~43\);

-- Location: LCCOMB_X3_Y9_N28
\airpl|tim|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~85_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datad => \airpl|tim|Add0~42_combout\,
	combout => \airpl|tim|Add0~85_combout\);

-- Location: FF_X3_Y9_N29
\airpl|tim|Ticks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~85_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(21));

-- Location: LCCOMB_X3_Y9_N22
\airpl|tim|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|LessThan0~5_combout\ = (!\airpl|tim|Ticks\(20) & (!\airpl|tim|Ticks\(19) & (!\airpl|tim|Ticks\(18) & !\airpl|tim|Ticks\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(20),
	datab => \airpl|tim|Ticks\(19),
	datac => \airpl|tim|Ticks\(18),
	datad => \airpl|tim|Ticks\(21),
	combout => \airpl|tim|LessThan0~5_combout\);

-- Location: LCCOMB_X4_Y8_N12
\airpl|tim|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~44_combout\ = (\airpl|tim|Ticks\(22) & (\airpl|tim|Add0~43\ $ (GND))) # (!\airpl|tim|Ticks\(22) & (!\airpl|tim|Add0~43\ & VCC))
-- \airpl|tim|Add0~45\ = CARRY((\airpl|tim|Ticks\(22) & !\airpl|tim|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(22),
	datad => VCC,
	cin => \airpl|tim|Add0~43\,
	combout => \airpl|tim|Add0~44_combout\,
	cout => \airpl|tim|Add0~45\);

-- Location: LCCOMB_X5_Y8_N22
\airpl|tim|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~86_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~44_combout\,
	combout => \airpl|tim|Add0~86_combout\);

-- Location: FF_X5_Y8_N23
\airpl|tim|Ticks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~86_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(22));

-- Location: LCCOMB_X4_Y8_N14
\airpl|tim|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~46_combout\ = (\airpl|tim|Ticks\(23) & (!\airpl|tim|Add0~45\)) # (!\airpl|tim|Ticks\(23) & ((\airpl|tim|Add0~45\) # (GND)))
-- \airpl|tim|Add0~47\ = CARRY((!\airpl|tim|Add0~45\) # (!\airpl|tim|Ticks\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(23),
	datad => VCC,
	cin => \airpl|tim|Add0~45\,
	combout => \airpl|tim|Add0~46_combout\,
	cout => \airpl|tim|Add0~47\);

-- Location: LCCOMB_X5_Y8_N4
\airpl|tim|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~87_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~46_combout\,
	combout => \airpl|tim|Add0~87_combout\);

-- Location: FF_X5_Y8_N5
\airpl|tim|Ticks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~87_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(23));

-- Location: LCCOMB_X4_Y8_N16
\airpl|tim|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~48_combout\ = (\airpl|tim|Ticks\(24) & (\airpl|tim|Add0~47\ $ (GND))) # (!\airpl|tim|Ticks\(24) & (!\airpl|tim|Add0~47\ & VCC))
-- \airpl|tim|Add0~49\ = CARRY((\airpl|tim|Ticks\(24) & !\airpl|tim|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(24),
	datad => VCC,
	cin => \airpl|tim|Add0~47\,
	combout => \airpl|tim|Add0~48_combout\,
	cout => \airpl|tim|Add0~49\);

-- Location: LCCOMB_X5_Y8_N18
\airpl|tim|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~88_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datac => \airpl|tim|Add0~48_combout\,
	combout => \airpl|tim|Add0~88_combout\);

-- Location: FF_X5_Y8_N19
\airpl|tim|Ticks[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~88_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(24));

-- Location: LCCOMB_X4_Y8_N18
\airpl|tim|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~50_combout\ = (\airpl|tim|Ticks\(25) & (!\airpl|tim|Add0~49\)) # (!\airpl|tim|Ticks\(25) & ((\airpl|tim|Add0~49\) # (GND)))
-- \airpl|tim|Add0~51\ = CARRY((!\airpl|tim|Add0~49\) # (!\airpl|tim|Ticks\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(25),
	datad => VCC,
	cin => \airpl|tim|Add0~49\,
	combout => \airpl|tim|Add0~50_combout\,
	cout => \airpl|tim|Add0~51\);

-- Location: LCCOMB_X5_Y8_N24
\airpl|tim|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~89_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~50_combout\,
	combout => \airpl|tim|Add0~89_combout\);

-- Location: FF_X5_Y8_N25
\airpl|tim|Ticks[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~89_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(25));

-- Location: LCCOMB_X5_Y8_N14
\airpl|tim|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|LessThan0~6_combout\ = (!\airpl|tim|Ticks\(22) & (!\airpl|tim|Ticks\(25) & (!\airpl|tim|Ticks\(23) & !\airpl|tim|Ticks\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(22),
	datab => \airpl|tim|Ticks\(25),
	datac => \airpl|tim|Ticks\(23),
	datad => \airpl|tim|Ticks\(24),
	combout => \airpl|tim|LessThan0~6_combout\);

-- Location: LCCOMB_X4_Y8_N20
\airpl|tim|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~52_combout\ = (\airpl|tim|Ticks\(26) & (\airpl|tim|Add0~51\ $ (GND))) # (!\airpl|tim|Ticks\(26) & (!\airpl|tim|Add0~51\ & VCC))
-- \airpl|tim|Add0~53\ = CARRY((\airpl|tim|Ticks\(26) & !\airpl|tim|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(26),
	datad => VCC,
	cin => \airpl|tim|Add0~51\,
	combout => \airpl|tim|Add0~52_combout\,
	cout => \airpl|tim|Add0~53\);

-- Location: LCCOMB_X5_Y8_N20
\airpl|tim|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~90_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~52_combout\,
	combout => \airpl|tim|Add0~90_combout\);

-- Location: FF_X5_Y8_N21
\airpl|tim|Ticks[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~90_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(26));

-- Location: LCCOMB_X4_Y8_N22
\airpl|tim|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~54_combout\ = (\airpl|tim|Ticks\(27) & (!\airpl|tim|Add0~53\)) # (!\airpl|tim|Ticks\(27) & ((\airpl|tim|Add0~53\) # (GND)))
-- \airpl|tim|Add0~55\ = CARRY((!\airpl|tim|Add0~53\) # (!\airpl|tim|Ticks\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(27),
	datad => VCC,
	cin => \airpl|tim|Add0~53\,
	combout => \airpl|tim|Add0~54_combout\,
	cout => \airpl|tim|Add0~55\);

-- Location: LCCOMB_X5_Y8_N6
\airpl|tim|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~91_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~54_combout\,
	combout => \airpl|tim|Add0~91_combout\);

-- Location: FF_X5_Y8_N7
\airpl|tim|Ticks[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~91_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(27));

-- Location: LCCOMB_X4_Y8_N24
\airpl|tim|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~56_combout\ = (\airpl|tim|Ticks\(28) & (\airpl|tim|Add0~55\ $ (GND))) # (!\airpl|tim|Ticks\(28) & (!\airpl|tim|Add0~55\ & VCC))
-- \airpl|tim|Add0~57\ = CARRY((\airpl|tim|Ticks\(28) & !\airpl|tim|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(28),
	datad => VCC,
	cin => \airpl|tim|Add0~55\,
	combout => \airpl|tim|Add0~56_combout\,
	cout => \airpl|tim|Add0~57\);

-- Location: LCCOMB_X5_Y8_N28
\airpl|tim|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~92_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Add0~56_combout\,
	combout => \airpl|tim|Add0~92_combout\);

-- Location: FF_X5_Y8_N29
\airpl|tim|Ticks[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~92_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(28));

-- Location: LCCOMB_X4_Y8_N26
\airpl|tim|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~58_combout\ = (\airpl|tim|Ticks\(29) & (!\airpl|tim|Add0~57\)) # (!\airpl|tim|Ticks\(29) & ((\airpl|tim|Add0~57\) # (GND)))
-- \airpl|tim|Add0~59\ = CARRY((!\airpl|tim|Add0~57\) # (!\airpl|tim|Ticks\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(29),
	datad => VCC,
	cin => \airpl|tim|Add0~57\,
	combout => \airpl|tim|Add0~58_combout\,
	cout => \airpl|tim|Add0~59\);

-- Location: LCCOMB_X5_Y8_N30
\airpl|tim|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~93_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetT~input_o\,
	datac => \airpl|tim|Add0~58_combout\,
	combout => \airpl|tim|Add0~93_combout\);

-- Location: FF_X5_Y8_N31
\airpl|tim|Ticks[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~93_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(29));

-- Location: LCCOMB_X5_Y8_N8
\airpl|tim|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|LessThan0~7_combout\ = (!\airpl|tim|Ticks\(27) & (!\airpl|tim|Ticks\(28) & (!\airpl|tim|Ticks\(29) & !\airpl|tim|Ticks\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(27),
	datab => \airpl|tim|Ticks\(28),
	datac => \airpl|tim|Ticks\(29),
	datad => \airpl|tim|Ticks\(26),
	combout => \airpl|tim|LessThan0~7_combout\);

-- Location: LCCOMB_X5_Y8_N16
\airpl|tim|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|LessThan0~4_combout\ = (!\airpl|tim|Ticks\(16) & (!\airpl|tim|Ticks\(14) & (!\airpl|tim|Ticks\(15) & !\airpl|tim|Ticks\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(16),
	datab => \airpl|tim|Ticks\(14),
	datac => \airpl|tim|Ticks\(15),
	datad => \airpl|tim|Ticks\(17),
	combout => \airpl|tim|LessThan0~4_combout\);

-- Location: LCCOMB_X5_Y9_N12
\airpl|tim|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|LessThan0~8_combout\ = (\airpl|tim|LessThan0~5_combout\ & (\airpl|tim|LessThan0~6_combout\ & (\airpl|tim|LessThan0~7_combout\ & \airpl|tim|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|LessThan0~5_combout\,
	datab => \airpl|tim|LessThan0~6_combout\,
	datac => \airpl|tim|LessThan0~7_combout\,
	datad => \airpl|tim|LessThan0~4_combout\,
	combout => \airpl|tim|LessThan0~8_combout\);

-- Location: LCCOMB_X4_Y8_N28
\airpl|tim|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~60_combout\ = (\airpl|tim|Ticks\(30) & (\airpl|tim|Add0~59\ $ (GND))) # (!\airpl|tim|Ticks\(30) & (!\airpl|tim|Add0~59\ & VCC))
-- \airpl|tim|Add0~61\ = CARRY((\airpl|tim|Ticks\(30) & !\airpl|tim|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(30),
	datad => VCC,
	cin => \airpl|tim|Add0~59\,
	combout => \airpl|tim|Add0~60_combout\,
	cout => \airpl|tim|Add0~61\);

-- Location: LCCOMB_X5_Y9_N14
\airpl|tim|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~94_combout\ = (!\resetT~input_o\ & \airpl|tim|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetT~input_o\,
	datad => \airpl|tim|Add0~60_combout\,
	combout => \airpl|tim|Add0~94_combout\);

-- Location: FF_X5_Y9_N15
\airpl|tim|Ticks[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~94_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(30));

-- Location: LCCOMB_X4_Y8_N30
\airpl|tim|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~62_combout\ = \airpl|tim|Ticks\(31) $ (!\airpl|tim|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \airpl|tim|Ticks\(31),
	cin => \airpl|tim|Add0~61\,
	combout => \airpl|tim|Add0~62_combout\);

-- Location: LCCOMB_X5_Y9_N28
\airpl|tim|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|Add0~64_combout\ = (\resetT~input_o\) # (!\airpl|tim|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetT~input_o\,
	datac => \airpl|tim|Add0~62_combout\,
	combout => \airpl|tim|Add0~64_combout\);

-- Location: FF_X5_Y9_N29
\airpl|tim|Ticks[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|Add0~64_combout\,
	ena => \airpl|tim|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|Ticks\(31));

-- Location: LCCOMB_X5_Y9_N26
\airpl|tim|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|f~0_combout\ = (\resetT~input_o\) # (!\airpl|tim|Ticks\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|tim|Ticks\(31),
	combout => \airpl|tim|f~0_combout\);

-- Location: LCCOMB_X5_Y9_N0
\airpl|tim|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|LessThan0~2_combout\ = ((!\airpl|tim|Ticks\(2) & (!\airpl|tim|Ticks\(1) & !\airpl|tim|Ticks\(3)))) # (!\airpl|tim|Ticks\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(2),
	datab => \airpl|tim|Ticks\(4),
	datac => \airpl|tim|Ticks\(1),
	datad => \airpl|tim|Ticks\(3),
	combout => \airpl|tim|LessThan0~2_combout\);

-- Location: LCCOMB_X5_Y9_N22
\airpl|tim|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|LessThan0~1_combout\ = (!\airpl|tim|Ticks\(10) & (!\airpl|tim|Ticks\(11) & (!\airpl|tim|Ticks\(13) & !\airpl|tim|Ticks\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(10),
	datab => \airpl|tim|Ticks\(11),
	datac => \airpl|tim|Ticks\(13),
	datad => \airpl|tim|Ticks\(12),
	combout => \airpl|tim|LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y9_N16
\airpl|tim|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|LessThan0~0_combout\ = (!\airpl|tim|Ticks\(9) & (!\airpl|tim|Ticks\(7) & (!\airpl|tim|Ticks\(8) & !\airpl|tim|Ticks\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(9),
	datab => \airpl|tim|Ticks\(7),
	datac => \airpl|tim|Ticks\(8),
	datad => \airpl|tim|Ticks\(6),
	combout => \airpl|tim|LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y9_N18
\airpl|tim|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|LessThan0~3_combout\ = (\airpl|tim|LessThan0~1_combout\ & (\airpl|tim|LessThan0~0_combout\ & ((\airpl|tim|LessThan0~2_combout\) # (!\airpl|tim|Ticks\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|Ticks\(5),
	datab => \airpl|tim|LessThan0~2_combout\,
	datac => \airpl|tim|LessThan0~1_combout\,
	datad => \airpl|tim|LessThan0~0_combout\,
	combout => \airpl|tim|LessThan0~3_combout\);

-- Location: LCCOMB_X5_Y9_N8
\airpl|tim|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|f~1_combout\ = (\airpl|tim|f~0_combout\) # ((\airpl|tim|LessThan0~8_combout\ & (!\airpl|tim|Ticks\(30) & \airpl|tim|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|tim|LessThan0~8_combout\,
	datab => \airpl|tim|Ticks\(30),
	datac => \airpl|tim|f~0_combout\,
	datad => \airpl|tim|LessThan0~3_combout\,
	combout => \airpl|tim|f~1_combout\);

-- Location: LCCOMB_X4_Y7_N12
\airpl|tim|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|tim|f~2_combout\ = !\airpl|tim|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \airpl|tim|f~1_combout\,
	combout => \airpl|tim|f~2_combout\);

-- Location: FF_X4_Y7_N13
\airpl|tim|f\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|tim|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|tim|f~q\);

-- Location: LCCOMB_X4_Y7_N10
\airpl|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|process_0~2_combout\ = (\airpl|PrState.park~q\ & \airpl|tim|f~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \airpl|PrState.park~q\,
	datad => \airpl|tim|f~q\,
	combout => \airpl|process_0~2_combout\);

-- Location: LCCOMB_X4_Y7_N18
\airpl|NextState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|NextState~8_combout\ = (!\park|L~q\ & ((\airpl|process_0~2_combout\ & ((\park|exitB~q\))) # (!\airpl|process_0~2_combout\ & (\airpl|NextState~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|NextState~7_combout\,
	datab => \park|L~q\,
	datac => \park|exitB~q\,
	datad => \airpl|process_0~2_combout\,
	combout => \airpl|NextState~8_combout\);

-- Location: FF_X4_Y7_N19
\airpl|NextState.flight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|NextState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|NextState.flight~q\);

-- Location: LCCOMB_X4_Y7_N16
\airpl|PrState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|PrState~9_combout\ = (!\resetT~input_o\ & !\airpl|NextState.flight~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|NextState.flight~q\,
	combout => \airpl|PrState~9_combout\);

-- Location: FF_X4_Y7_N17
\airpl|PrState.flight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|PrState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|PrState.flight~q\);

-- Location: LCCOMB_X4_Y7_N4
\airpl|NextState~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|NextState~5_combout\ = (\airpl|PrState.flight~q\ & ((\airpl|NextState.park~q\))) # (!\airpl|PrState.flight~q\ & (\park|entranceA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \airpl|PrState.flight~q\,
	datac => \park|entranceA~q\,
	datad => \airpl|NextState.park~q\,
	combout => \airpl|NextState~5_combout\);

-- Location: LCCOMB_X4_Y7_N28
\airpl|NextState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|NextState~6_combout\ = (!\park|L~q\ & ((\airpl|process_0~2_combout\ & ((!\park|exitB~q\))) # (!\airpl|process_0~2_combout\ & (\airpl|NextState~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|L~q\,
	datab => \airpl|NextState~5_combout\,
	datac => \park|exitB~q\,
	datad => \airpl|process_0~2_combout\,
	combout => \airpl|NextState~6_combout\);

-- Location: FF_X4_Y7_N29
\airpl|NextState.park\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|NextState~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|NextState.park~q\);

-- Location: LCCOMB_X4_Y7_N26
\airpl|PrState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|PrState~8_combout\ = (!\resetT~input_o\ & \airpl|NextState.park~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetT~input_o\,
	datad => \airpl|NextState.park~q\,
	combout => \airpl|PrState~8_combout\);

-- Location: FF_X4_Y7_N27
\airpl|PrState.park\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|PrState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|PrState.park~q\);

-- Location: LCCOMB_X4_Y7_N24
\airpl|B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|B~0_combout\ = (\airpl|PrState.park~q\ & (\airpl|tim|f~q\ & (!\park|exitB~q\ & !\park|L~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \airpl|PrState.park~q\,
	datab => \airpl|tim|f~q\,
	datac => \park|exitB~q\,
	datad => \park|L~q\,
	combout => \airpl|B~0_combout\);

-- Location: LCCOMB_X4_Y7_N20
\airpl|A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|A~0_combout\ = (\park|exitB~q\ & ((\airpl|PrState.flight~q\) # ((\park|entranceA~q\)))) # (!\park|exitB~q\ & (!\airpl|process_0~2_combout\ & ((\airpl|PrState.flight~q\) # (\park|entranceA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|exitB~q\,
	datab => \airpl|PrState.flight~q\,
	datac => \park|entranceA~q\,
	datad => \airpl|process_0~2_combout\,
	combout => \airpl|A~0_combout\);

-- Location: LCCOMB_X4_Y7_N30
\airpl|A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|A~1_combout\ = (\resetT~input_o\) # ((!\park|L~q\ & !\airpl|A~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|L~q\,
	datac => \resetT~input_o\,
	datad => \airpl|A~0_combout\,
	combout => \airpl|A~1_combout\);

-- Location: FF_X4_Y7_N25
\airpl|B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|B~0_combout\,
	ena => \airpl|A~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|B~q\);

-- Location: LCCOMB_X3_Y7_N12
\BB~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BB~feeder_combout\ = \airpl|B~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \airpl|B~q\,
	combout => \BB~feeder_combout\);

-- Location: FF_X3_Y7_N13
BB : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \BB~feeder_combout\,
	clrn => \ALT_INV_resetT~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BB~q\);

-- Location: LCCOMB_X2_Y7_N6
\park|cou[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[1]~16_combout\ = (\park|cou\(1) & ((\park|Add0~0_combout\ & (\park|cou[0]~11\ & VCC)) # (!\park|Add0~0_combout\ & (!\park|cou[0]~11\)))) # (!\park|cou\(1) & ((\park|Add0~0_combout\ & (!\park|cou[0]~11\)) # (!\park|Add0~0_combout\ & 
-- ((\park|cou[0]~11\) # (GND)))))
-- \park|cou[1]~17\ = CARRY((\park|cou\(1) & (!\park|Add0~0_combout\ & !\park|cou[0]~11\)) # (!\park|cou\(1) & ((!\park|cou[0]~11\) # (!\park|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(1),
	datab => \park|Add0~0_combout\,
	datad => VCC,
	cin => \park|cou[0]~11\,
	combout => \park|cou[1]~16_combout\,
	cout => \park|cou[1]~17\);

-- Location: LCCOMB_X3_Y7_N24
\park|cou[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[3]~12_combout\ = (!\park|process_0~3_combout\ & ((\BB~q\) # ((\park|Equal0~2_combout\) # (!\AA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BB~q\,
	datab => \park|process_0~3_combout\,
	datac => \AA~q\,
	datad => \park|Equal0~2_combout\,
	combout => \park|cou[3]~12_combout\);

-- Location: LCCOMB_X2_Y7_N0
\park|cou[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[3]~15_combout\ = (\resetT~input_o\) # ((!\airpotEmerTs~q\ & ((\park|cou[3]~13_combout\) # (!\park|cou[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou[3]~13_combout\,
	datab => \resetT~input_o\,
	datac => \airpotEmerTs~q\,
	datad => \park|cou[3]~12_combout\,
	combout => \park|cou[3]~15_combout\);

-- Location: FF_X2_Y7_N7
\park|cou[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[1]~16_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(1));

-- Location: LCCOMB_X2_Y7_N8
\park|cou[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[2]~18_combout\ = ((\park|cou\(2) $ (\park|Add0~0_combout\ $ (!\park|cou[1]~17\)))) # (GND)
-- \park|cou[2]~19\ = CARRY((\park|cou\(2) & ((\park|Add0~0_combout\) # (!\park|cou[1]~17\))) # (!\park|cou\(2) & (\park|Add0~0_combout\ & !\park|cou[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(2),
	datab => \park|Add0~0_combout\,
	datad => VCC,
	cin => \park|cou[1]~17\,
	combout => \park|cou[2]~18_combout\,
	cout => \park|cou[2]~19\);

-- Location: FF_X2_Y7_N9
\park|cou[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[2]~18_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(2));

-- Location: LCCOMB_X2_Y7_N10
\park|cou[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[3]~20_combout\ = (\park|cou\(3) & ((\park|Add0~0_combout\ & (\park|cou[2]~19\ & VCC)) # (!\park|Add0~0_combout\ & (!\park|cou[2]~19\)))) # (!\park|cou\(3) & ((\park|Add0~0_combout\ & (!\park|cou[2]~19\)) # (!\park|Add0~0_combout\ & 
-- ((\park|cou[2]~19\) # (GND)))))
-- \park|cou[3]~21\ = CARRY((\park|cou\(3) & (!\park|Add0~0_combout\ & !\park|cou[2]~19\)) # (!\park|cou\(3) & ((!\park|cou[2]~19\) # (!\park|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(3),
	datab => \park|Add0~0_combout\,
	datad => VCC,
	cin => \park|cou[2]~19\,
	combout => \park|cou[3]~20_combout\,
	cout => \park|cou[3]~21\);

-- Location: FF_X2_Y7_N11
\park|cou[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[3]~20_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(3));

-- Location: LCCOMB_X2_Y7_N12
\park|cou[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[4]~22_combout\ = ((\park|cou\(4) $ (\park|Add0~0_combout\ $ (!\park|cou[3]~21\)))) # (GND)
-- \park|cou[4]~23\ = CARRY((\park|cou\(4) & ((\park|Add0~0_combout\) # (!\park|cou[3]~21\))) # (!\park|cou\(4) & (\park|Add0~0_combout\ & !\park|cou[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(4),
	datab => \park|Add0~0_combout\,
	datad => VCC,
	cin => \park|cou[3]~21\,
	combout => \park|cou[4]~22_combout\,
	cout => \park|cou[4]~23\);

-- Location: FF_X2_Y7_N13
\park|cou[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[4]~22_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(4));

-- Location: LCCOMB_X2_Y7_N14
\park|cou[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[5]~24_combout\ = (\park|cou\(5) & ((\park|Add0~0_combout\ & (\park|cou[4]~23\ & VCC)) # (!\park|Add0~0_combout\ & (!\park|cou[4]~23\)))) # (!\park|cou\(5) & ((\park|Add0~0_combout\ & (!\park|cou[4]~23\)) # (!\park|Add0~0_combout\ & 
-- ((\park|cou[4]~23\) # (GND)))))
-- \park|cou[5]~25\ = CARRY((\park|cou\(5) & (!\park|Add0~0_combout\ & !\park|cou[4]~23\)) # (!\park|cou\(5) & ((!\park|cou[4]~23\) # (!\park|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(5),
	datab => \park|Add0~0_combout\,
	datad => VCC,
	cin => \park|cou[4]~23\,
	combout => \park|cou[5]~24_combout\,
	cout => \park|cou[5]~25\);

-- Location: FF_X2_Y7_N15
\park|cou[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[5]~24_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(5));

-- Location: LCCOMB_X2_Y7_N16
\park|cou[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[6]~26_combout\ = ((\park|Add0~0_combout\ $ (\park|cou\(6) $ (!\park|cou[5]~25\)))) # (GND)
-- \park|cou[6]~27\ = CARRY((\park|Add0~0_combout\ & ((\park|cou\(6)) # (!\park|cou[5]~25\))) # (!\park|Add0~0_combout\ & (\park|cou\(6) & !\park|cou[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \park|Add0~0_combout\,
	datab => \park|cou\(6),
	datad => VCC,
	cin => \park|cou[5]~25\,
	combout => \park|cou[6]~26_combout\,
	cout => \park|cou[6]~27\);

-- Location: FF_X2_Y7_N17
\park|cou[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[6]~26_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(6));

-- Location: LCCOMB_X2_Y7_N18
\park|cou[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[7]~28_combout\ = (\park|Add0~0_combout\ & ((\park|cou\(7) & (\park|cou[6]~27\ & VCC)) # (!\park|cou\(7) & (!\park|cou[6]~27\)))) # (!\park|Add0~0_combout\ & ((\park|cou\(7) & (!\park|cou[6]~27\)) # (!\park|cou\(7) & ((\park|cou[6]~27\) # 
-- (GND)))))
-- \park|cou[7]~29\ = CARRY((\park|Add0~0_combout\ & (!\park|cou\(7) & !\park|cou[6]~27\)) # (!\park|Add0~0_combout\ & ((!\park|cou[6]~27\) # (!\park|cou\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \park|Add0~0_combout\,
	datab => \park|cou\(7),
	datad => VCC,
	cin => \park|cou[6]~27\,
	combout => \park|cou[7]~28_combout\,
	cout => \park|cou[7]~29\);

-- Location: FF_X2_Y7_N19
\park|cou[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[7]~28_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(7));

-- Location: LCCOMB_X2_Y7_N20
\park|cou[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[8]~30_combout\ = ((\park|cou\(8) $ (\park|Add0~0_combout\ $ (!\park|cou[7]~29\)))) # (GND)
-- \park|cou[8]~31\ = CARRY((\park|cou\(8) & ((\park|Add0~0_combout\) # (!\park|cou[7]~29\))) # (!\park|cou\(8) & (\park|Add0~0_combout\ & !\park|cou[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(8),
	datab => \park|Add0~0_combout\,
	datad => VCC,
	cin => \park|cou[7]~29\,
	combout => \park|cou[8]~30_combout\,
	cout => \park|cou[8]~31\);

-- Location: LCCOMB_X2_Y7_N22
\park|cou[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[9]~32_combout\ = \park|cou\(9) $ (\park|cou[8]~31\ $ (\park|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \park|cou\(9),
	datad => \park|Add0~0_combout\,
	cin => \park|cou[8]~31\,
	combout => \park|cou[9]~32_combout\);

-- Location: FF_X2_Y7_N23
\park|cou[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[9]~32_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(9));

-- Location: LCCOMB_X2_Y7_N26
\park|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|LessThan1~1_combout\ = (\park|cou\(4)) # ((\park|cou\(7)) # ((\park|cou\(5)) # (\park|cou\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(4),
	datab => \park|cou\(7),
	datac => \park|cou\(5),
	datad => \park|cou\(6),
	combout => \park|LessThan1~1_combout\);

-- Location: LCCOMB_X2_Y7_N28
\park|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|LessThan1~0_combout\ = (\park|cou\(3)) # ((\park|cou\(0)) # ((\park|cou\(2)) # (\park|cou\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(3),
	datab => \park|cou\(0),
	datac => \park|cou\(2),
	datad => \park|cou\(1),
	combout => \park|LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y7_N24
\park|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|process_0~2_combout\ = (\park|cou\(8)) # ((\park|LessThan1~1_combout\) # (\park|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \park|cou\(8),
	datac => \park|LessThan1~1_combout\,
	datad => \park|LessThan1~0_combout\,
	combout => \park|process_0~2_combout\);

-- Location: LCCOMB_X3_Y7_N28
\park|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|process_0~3_combout\ = (\BB~q\ & (!\AA~q\ & ((\park|cou\(9)) # (\park|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BB~q\,
	datab => \AA~q\,
	datac => \park|cou\(9),
	datad => \park|process_0~2_combout\,
	combout => \park|process_0~3_combout\);

-- Location: LCCOMB_X2_Y7_N2
\park|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|Add0~0_combout\ = (!\resetT~input_o\ & ((\park|cou[3]~13_combout\ & (\park|Equal0~2_combout\ & !\park|process_0~3_combout\)) # (!\park|cou[3]~13_combout\ & ((\park|process_0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou[3]~13_combout\,
	datab => \resetT~input_o\,
	datac => \park|Equal0~2_combout\,
	datad => \park|process_0~3_combout\,
	combout => \park|Add0~0_combout\);

-- Location: FF_X2_Y7_N21
\park|cou[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[8]~30_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(8));

-- Location: LCCOMB_X1_Y7_N30
\park|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|Equal0~0_combout\ = (\park|cou\(0) & (\park|cou\(2) & (\park|cou\(3) & \park|cou\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(0),
	datab => \park|cou\(2),
	datac => \park|cou\(3),
	datad => \park|cou\(1),
	combout => \park|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y7_N28
\park|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|Equal0~1_combout\ = (\park|cou\(5) & (\park|cou\(6) & (\park|cou\(4) & \park|cou\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(5),
	datab => \park|cou\(6),
	datac => \park|cou\(4),
	datad => \park|cou\(7),
	combout => \park|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y7_N6
\park|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|Equal0~2_combout\ = (\park|cou\(8) & (\park|cou\(9) & (\park|Equal0~0_combout\ & \park|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou\(8),
	datab => \park|cou\(9),
	datac => \park|Equal0~0_combout\,
	datad => \park|Equal0~1_combout\,
	combout => \park|Equal0~2_combout\);

-- Location: LCCOMB_X3_Y7_N14
\park|L~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|L~0_combout\ = (\AA~q\ & !\park|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AA~q\,
	datad => \park|Equal0~2_combout\,
	combout => \park|L~0_combout\);

-- Location: LCCOMB_X3_Y7_N10
\park|L~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|L~1_combout\ = (\resetT~input_o\) # ((\airpotEmerTs~q\) # ((\park|L~0_combout\) # (!\park|exitB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetT~input_o\,
	datab => \airpotEmerTs~q\,
	datac => \park|L~0_combout\,
	datad => \park|exitB~0_combout\,
	combout => \park|L~1_combout\);

-- Location: FF_X3_Y7_N15
\park|L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \airpotEmerTs~q\,
	sload => VCC,
	ena => \park|L~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|L~q\);

-- Location: LCCOMB_X4_Y7_N2
\airpl|A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \airpl|A~2_combout\ = (!\park|L~q\ & (!\park|entranceA~q\ & !\airpl|PrState.flight~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|L~q\,
	datac => \park|entranceA~q\,
	datad => \airpl|PrState.flight~q\,
	combout => \airpl|A~2_combout\);

-- Location: FF_X4_Y7_N3
\airpl|A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \airpl|A~2_combout\,
	ena => \airpl|A~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \airpl|A~q\);

-- Location: LCCOMB_X3_Y7_N26
\AA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AA~feeder_combout\ = \airpl|A~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \airpl|A~q\,
	combout => \AA~feeder_combout\);

-- Location: FF_X3_Y7_N27
AA : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \AA~feeder_combout\,
	clrn => \ALT_INV_resetT~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA~q\);

-- Location: LCCOMB_X3_Y7_N30
\park|cou[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[3]~13_combout\ = (\AA~q\ & \BB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AA~q\,
	datad => \BB~q\,
	combout => \park|cou[3]~13_combout\);

-- Location: LCCOMB_X2_Y7_N30
\park|cou[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|cou[3]~14_combout\ = (\resetT~input_o\) # ((\airpotEmerTs~q\) # (\park|cou[3]~13_combout\ $ (\park|cou[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \park|cou[3]~13_combout\,
	datab => \resetT~input_o\,
	datac => \airpotEmerTs~q\,
	datad => \park|cou[3]~12_combout\,
	combout => \park|cou[3]~14_combout\);

-- Location: FF_X2_Y7_N5
\park|cou[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|cou[0]~10_combout\,
	sclr => \park|cou[3]~14_combout\,
	ena => \park|cou[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|cou\(0));

-- Location: LCCOMB_X1_Y7_N20
\park|count[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|count[0]~feeder_combout\ = \park|cou\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \park|cou\(0),
	combout => \park|count[0]~feeder_combout\);

-- Location: FF_X1_Y7_N21
\park|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|count[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(0));

-- Location: LCCOMB_X1_Y7_N26
\park|count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|count[1]~feeder_combout\ = \park|cou\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \park|cou\(1),
	combout => \park|count[1]~feeder_combout\);

-- Location: FF_X1_Y7_N27
\park|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|count[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(1));

-- Location: FF_X1_Y7_N5
\park|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \park|cou\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(2));

-- Location: FF_X1_Y7_N23
\park|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \park|cou\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(3));

-- Location: FF_X1_Y7_N13
\park|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \park|cou\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(4));

-- Location: FF_X1_Y7_N3
\park|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \park|cou\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(5));

-- Location: LCCOMB_X1_Y7_N0
\park|count[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|count[6]~feeder_combout\ = \park|cou\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \park|cou\(6),
	combout => \park|count[6]~feeder_combout\);

-- Location: FF_X1_Y7_N1
\park|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|count[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(6));

-- Location: LCCOMB_X1_Y7_N10
\park|count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \park|count[7]~feeder_combout\ = \park|cou\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \park|cou\(7),
	combout => \park|count[7]~feeder_combout\);

-- Location: FF_X1_Y7_N11
\park|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	d => \park|count[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(7));

-- Location: FF_X1_Y7_N25
\park|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \park|cou\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(8));

-- Location: FF_X3_Y7_N29
\park|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockT~inputclkctrl_outclk\,
	asdata => \park|cou\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \park|count\(9));

-- Location: IOIBUF_X1_Y24_N1
\airpotEmerT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_airpotEmerT,
	o => \airpotEmerT~input_o\);

ww_countT(0) <= \countT[0]~output_o\;

ww_countT(1) <= \countT[1]~output_o\;

ww_countT(2) <= \countT[2]~output_o\;

ww_countT(3) <= \countT[3]~output_o\;

ww_countT(4) <= \countT[4]~output_o\;

ww_countT(5) <= \countT[5]~output_o\;

ww_countT(6) <= \countT[6]~output_o\;

ww_countT(7) <= \countT[7]~output_o\;

ww_countT(8) <= \countT[8]~output_o\;

ww_countT(9) <= \countT[9]~output_o\;

ww_countET(0) <= \countET[0]~output_o\;

ww_countET(1) <= \countET[1]~output_o\;

ww_airpotEmerT <= \airpotEmerT~output_o\;
END structure;


