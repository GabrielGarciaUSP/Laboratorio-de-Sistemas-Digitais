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

-- DATE "12/13/2023 23:49:47"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE10_LITE_RegFile IS
    PORT (
	KEY : IN STD.STANDARD.bit_vector(1 DOWNTO 0);
	SW : IN STD.STANDARD.bit_vector(9 DOWNTO 0);
	HEX0 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	HEX1 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	HEX2 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	HEX3 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	HEX4 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	HEX5 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LEDR : OUT STD.STANDARD.bit_vector(9 DOWNTO 0)
	);
END DE10_LITE_RegFile;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE10_LITE_RegFile IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[7]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \regfile0|bank~3_combout\ : std_logic;
SIGNAL \regfile0|bank~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \regfile0|Mux0~0_combout\ : std_logic;
SIGNAL \regfile0|bank~4_combout\ : std_logic;
SIGNAL \regfile0|bank~2_combout\ : std_logic;
SIGNAL \regfile0|Mux0~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \regfile0|Mux1~0_combout\ : std_logic;
SIGNAL \regfile0|Mux1~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \regfile0|Mux3~0_combout\ : std_logic;
SIGNAL \regfile0|Mux3~1_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \regfile0|Mux2~0_combout\ : std_logic;
SIGNAL \regfile0|Mux2~1_combout\ : std_logic;
SIGNAL \hexa0|Mux6~0_combout\ : std_logic;
SIGNAL \hexa0|Mux5~0_combout\ : std_logic;
SIGNAL \hexa0|Mux4~0_combout\ : std_logic;
SIGNAL \hexa0|Mux3~0_combout\ : std_logic;
SIGNAL \hexa0|Mux2~0_combout\ : std_logic;
SIGNAL \hexa0|Mux1~0_combout\ : std_logic;
SIGNAL \hexa0|Mux0~0_combout\ : std_logic;
SIGNAL \hexa1|Mux1~0_combout\ : std_logic;
SIGNAL \hexa1|Mux1~1_combout\ : std_logic;
SIGNAL \hexa1|Mux1~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \regfile0|Mux6~0_combout\ : std_logic;
SIGNAL \regfile0|Mux6~1_combout\ : std_logic;
SIGNAL \regfile0|Mux7~0_combout\ : std_logic;
SIGNAL \regfile0|Mux7~1_combout\ : std_logic;
SIGNAL \regfile0|Mux5~0_combout\ : std_logic;
SIGNAL \regfile0|Mux5~1_combout\ : std_logic;
SIGNAL \regfile0|Mux4~0_combout\ : std_logic;
SIGNAL \regfile0|Mux4~1_combout\ : std_logic;
SIGNAL \hexa2|Mux6~0_combout\ : std_logic;
SIGNAL \hexa2|Mux5~0_combout\ : std_logic;
SIGNAL \hexa2|Mux4~0_combout\ : std_logic;
SIGNAL \hexa2|Mux3~0_combout\ : std_logic;
SIGNAL \hexa2|Mux2~0_combout\ : std_logic;
SIGNAL \hexa2|Mux1~0_combout\ : std_logic;
SIGNAL \hexa2|Mux0~0_combout\ : std_logic;
SIGNAL \hexa3|Mux1~0_combout\ : std_logic;
SIGNAL \hexa3|Mux1~1_combout\ : std_logic;
SIGNAL \hexa3|Mux1~2_combout\ : std_logic;
SIGNAL \hexa4|Mux6~0_combout\ : std_logic;
SIGNAL \hexa4|Mux5~0_combout\ : std_logic;
SIGNAL \hexa4|Mux4~0_combout\ : std_logic;
SIGNAL \hexa4|Mux3~0_combout\ : std_logic;
SIGNAL \hexa4|Mux2~0_combout\ : std_logic;
SIGNAL \hexa4|Mux1~0_combout\ : std_logic;
SIGNAL \hexa4|Mux0~0_combout\ : std_logic;
SIGNAL \regfile0|Equal1~0_combout\ : std_logic;
SIGNAL \regfile0|Equal1~1_combout\ : std_logic;
SIGNAL \regfile0|bank~0_combout\ : std_logic;
SIGNAL \regfile0|bank:1:regi|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regfile0|bank:2:regi|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regfile0|bank:0:regi|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regfile0|bank:3:regi|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \regfile0|ALT_INV_bank~0_combout\ : std_logic;
SIGNAL \hexa4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexa2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexa0|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(KEY);
ww_SW <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(SW);
HEX0 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX0);
HEX1 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX1);
HEX2 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX2);
HEX3 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX3);
HEX4 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX4);
HEX5 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_HEX5);
LEDR <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_LEDR);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\regfile0|ALT_INV_bank~0_combout\ <= NOT \regfile0|bank~0_combout\;
\hexa4|ALT_INV_Mux0~0_combout\ <= NOT \hexa4|Mux0~0_combout\;
\hexa2|ALT_INV_Mux0~0_combout\ <= NOT \hexa2|Mux0~0_combout\;
\hexa0|ALT_INV_Mux0~0_combout\ <= NOT \hexa0|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y49_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa1|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa1|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa3|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa3|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[3]~input_o\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|ALT_INV_bank~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[5]~input_o\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regfile0|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOIBUF_X66_Y54_N15
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G3
\KEY[0]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y54_N15
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X51_Y50_N2
\regfile0|bank~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|bank~3_combout\ = (!\SW[4]~input_o\ & (!\SW[5]~input_o\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \regfile0|bank~3_combout\);

-- Location: FF_X54_Y50_N15
\regfile0|bank:0:regi|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:0:regi|q\(3));

-- Location: LCCOMB_X51_Y50_N30
\regfile0|bank~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|bank~1_combout\ = (\SW[4]~input_o\ & (!\SW[5]~input_o\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \regfile0|bank~1_combout\);

-- Location: FF_X55_Y50_N29
\regfile0|bank:1:regi|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:1:regi|q\(3));

-- Location: IOIBUF_X36_Y39_N22
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X55_Y50_N28
\regfile0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux0~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\regfile0|bank:1:regi|q\(3)))) # (!\SW[0]~input_o\ & (\regfile0|bank:0:regi|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \regfile0|bank:0:regi|q\(3),
	datac => \regfile0|bank:1:regi|q\(3),
	datad => \SW[0]~input_o\,
	combout => \regfile0|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y50_N12
\regfile0|bank~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|bank~4_combout\ = (\SW[4]~input_o\ & (\SW[5]~input_o\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \regfile0|bank~4_combout\);

-- Location: FF_X55_Y50_N23
\regfile0|bank:3:regi|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:3:regi|q\(3));

-- Location: LCCOMB_X51_Y50_N24
\regfile0|bank~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|bank~2_combout\ = (!\SW[4]~input_o\ & (\SW[5]~input_o\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \regfile0|bank~2_combout\);

-- Location: FF_X54_Y50_N29
\regfile0|bank:2:regi|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:2:regi|q\(3));

-- Location: LCCOMB_X54_Y50_N28
\regfile0|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux0~1_combout\ = (\regfile0|Mux0~0_combout\ & ((\regfile0|bank:3:regi|q\(3)) # ((!\SW[1]~input_o\)))) # (!\regfile0|Mux0~0_combout\ & (((\regfile0|bank:2:regi|q\(3) & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux0~0_combout\,
	datab => \regfile0|bank:3:regi|q\(3),
	datac => \regfile0|bank:2:regi|q\(3),
	datad => \SW[1]~input_o\,
	combout => \regfile0|Mux0~1_combout\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X55_Y50_N27
\regfile0|bank:3:regi|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:3:regi|q\(2));

-- Location: FF_X55_Y50_N25
\regfile0|bank:1:regi|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:1:regi|q\(2));

-- Location: FF_X54_Y50_N27
\regfile0|bank:0:regi|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:0:regi|q\(2));

-- Location: FF_X54_Y50_N9
\regfile0|bank:2:regi|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:2:regi|q\(2));

-- Location: LCCOMB_X54_Y50_N8
\regfile0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux1~0_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\regfile0|bank:2:regi|q\(2)))) # (!\SW[1]~input_o\ & (\regfile0|bank:0:regi|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|bank:0:regi|q\(2),
	datab => \SW[0]~input_o\,
	datac => \regfile0|bank:2:regi|q\(2),
	datad => \SW[1]~input_o\,
	combout => \regfile0|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y50_N24
\regfile0|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux1~1_combout\ = (\SW[0]~input_o\ & ((\regfile0|Mux1~0_combout\ & (\regfile0|bank:3:regi|q\(2))) # (!\regfile0|Mux1~0_combout\ & ((\regfile0|bank:1:regi|q\(2)))))) # (!\SW[0]~input_o\ & (((\regfile0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|bank:3:regi|q\(2),
	datab => \SW[0]~input_o\,
	datac => \regfile0|bank:1:regi|q\(2),
	datad => \regfile0|Mux1~0_combout\,
	combout => \regfile0|Mux1~1_combout\);

-- Location: IOIBUF_X58_Y54_N1
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X54_Y50_N3
\regfile0|bank:0:regi|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:0:regi|q\(0));

-- Location: FF_X54_Y50_N17
\regfile0|bank:2:regi|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:2:regi|q\(0));

-- Location: LCCOMB_X54_Y50_N16
\regfile0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux3~0_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\regfile0|bank:2:regi|q\(0)))) # (!\SW[1]~input_o\ & (\regfile0|bank:0:regi|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \regfile0|bank:0:regi|q\(0),
	datac => \regfile0|bank:2:regi|q\(0),
	datad => \SW[1]~input_o\,
	combout => \regfile0|Mux3~0_combout\);

-- Location: FF_X55_Y50_N17
\regfile0|bank:1:regi|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:1:regi|q\(0));

-- Location: FF_X55_Y50_N11
\regfile0|bank:3:regi|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:3:regi|q\(0));

-- Location: LCCOMB_X55_Y50_N16
\regfile0|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux3~1_combout\ = (\regfile0|Mux3~0_combout\ & (((\regfile0|bank:3:regi|q\(0))) # (!\SW[0]~input_o\))) # (!\regfile0|Mux3~0_combout\ & (\SW[0]~input_o\ & (\regfile0|bank:1:regi|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux3~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \regfile0|bank:1:regi|q\(0),
	datad => \regfile0|bank:3:regi|q\(0),
	combout => \regfile0|Mux3~1_combout\);

-- Location: IOIBUF_X56_Y54_N8
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X54_Y50_N31
\regfile0|bank:0:regi|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:0:regi|q\(1));

-- Location: FF_X55_Y50_N21
\regfile0|bank:1:regi|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:1:regi|q\(1));

-- Location: LCCOMB_X55_Y50_N20
\regfile0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux2~0_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\regfile0|bank:1:regi|q\(1)))) # (!\SW[0]~input_o\ & (\regfile0|bank:0:regi|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \regfile0|bank:0:regi|q\(1),
	datac => \regfile0|bank:1:regi|q\(1),
	datad => \SW[0]~input_o\,
	combout => \regfile0|Mux2~0_combout\);

-- Location: FF_X55_Y50_N31
\regfile0|bank:3:regi|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:3:regi|q\(1));

-- Location: FF_X54_Y50_N21
\regfile0|bank:2:regi|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \regfile0|bank~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regfile0|bank:2:regi|q\(1));

-- Location: LCCOMB_X54_Y50_N20
\regfile0|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux2~1_combout\ = (\regfile0|Mux2~0_combout\ & ((\regfile0|bank:3:regi|q\(1)) # ((!\SW[1]~input_o\)))) # (!\regfile0|Mux2~0_combout\ & (((\regfile0|bank:2:regi|q\(1) & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux2~0_combout\,
	datab => \regfile0|bank:3:regi|q\(1),
	datac => \regfile0|bank:2:regi|q\(1),
	datad => \SW[1]~input_o\,
	combout => \regfile0|Mux2~1_combout\);

-- Location: LCCOMB_X77_Y49_N16
\hexa0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa0|Mux6~0_combout\ = (\regfile0|Mux0~1_combout\ & (\regfile0|Mux3~1_combout\ & (\regfile0|Mux1~1_combout\ $ (\regfile0|Mux2~1_combout\)))) # (!\regfile0|Mux0~1_combout\ & (!\regfile0|Mux2~1_combout\ & (\regfile0|Mux1~1_combout\ $ 
-- (\regfile0|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux0~1_combout\,
	datab => \regfile0|Mux1~1_combout\,
	datac => \regfile0|Mux3~1_combout\,
	datad => \regfile0|Mux2~1_combout\,
	combout => \hexa0|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y49_N26
\hexa0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa0|Mux5~0_combout\ = (\regfile0|Mux0~1_combout\ & ((\regfile0|Mux3~1_combout\ & ((\regfile0|Mux2~1_combout\))) # (!\regfile0|Mux3~1_combout\ & (\regfile0|Mux1~1_combout\)))) # (!\regfile0|Mux0~1_combout\ & (\regfile0|Mux1~1_combout\ & 
-- (\regfile0|Mux3~1_combout\ $ (\regfile0|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux0~1_combout\,
	datab => \regfile0|Mux1~1_combout\,
	datac => \regfile0|Mux3~1_combout\,
	datad => \regfile0|Mux2~1_combout\,
	combout => \hexa0|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y49_N4
\hexa0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa0|Mux4~0_combout\ = (\regfile0|Mux0~1_combout\ & (\regfile0|Mux1~1_combout\ & ((\regfile0|Mux2~1_combout\) # (!\regfile0|Mux3~1_combout\)))) # (!\regfile0|Mux0~1_combout\ & (!\regfile0|Mux1~1_combout\ & (!\regfile0|Mux3~1_combout\ & 
-- \regfile0|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux0~1_combout\,
	datab => \regfile0|Mux1~1_combout\,
	datac => \regfile0|Mux3~1_combout\,
	datad => \regfile0|Mux2~1_combout\,
	combout => \hexa0|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y49_N6
\hexa0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa0|Mux3~0_combout\ = (\regfile0|Mux2~1_combout\ & ((\regfile0|Mux1~1_combout\ & ((\regfile0|Mux3~1_combout\))) # (!\regfile0|Mux1~1_combout\ & (\regfile0|Mux0~1_combout\ & !\regfile0|Mux3~1_combout\)))) # (!\regfile0|Mux2~1_combout\ & 
-- (!\regfile0|Mux0~1_combout\ & (\regfile0|Mux1~1_combout\ $ (\regfile0|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux0~1_combout\,
	datab => \regfile0|Mux1~1_combout\,
	datac => \regfile0|Mux3~1_combout\,
	datad => \regfile0|Mux2~1_combout\,
	combout => \hexa0|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y49_N8
\hexa0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa0|Mux2~0_combout\ = (\regfile0|Mux2~1_combout\ & (!\regfile0|Mux0~1_combout\ & ((\regfile0|Mux3~1_combout\)))) # (!\regfile0|Mux2~1_combout\ & ((\regfile0|Mux1~1_combout\ & (!\regfile0|Mux0~1_combout\)) # (!\regfile0|Mux1~1_combout\ & 
-- ((\regfile0|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux0~1_combout\,
	datab => \regfile0|Mux1~1_combout\,
	datac => \regfile0|Mux3~1_combout\,
	datad => \regfile0|Mux2~1_combout\,
	combout => \hexa0|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y49_N2
\hexa0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa0|Mux1~0_combout\ = (\regfile0|Mux1~1_combout\ & (\regfile0|Mux3~1_combout\ & (\regfile0|Mux0~1_combout\ $ (\regfile0|Mux2~1_combout\)))) # (!\regfile0|Mux1~1_combout\ & (!\regfile0|Mux0~1_combout\ & ((\regfile0|Mux3~1_combout\) # 
-- (\regfile0|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux0~1_combout\,
	datab => \regfile0|Mux1~1_combout\,
	datac => \regfile0|Mux3~1_combout\,
	datad => \regfile0|Mux2~1_combout\,
	combout => \hexa0|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y49_N20
\hexa0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa0|Mux0~0_combout\ = (\regfile0|Mux3~1_combout\ & ((\regfile0|Mux0~1_combout\) # (\regfile0|Mux1~1_combout\ $ (\regfile0|Mux2~1_combout\)))) # (!\regfile0|Mux3~1_combout\ & ((\regfile0|Mux2~1_combout\) # (\regfile0|Mux0~1_combout\ $ 
-- (\regfile0|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux0~1_combout\,
	datab => \regfile0|Mux1~1_combout\,
	datac => \regfile0|Mux3~1_combout\,
	datad => \regfile0|Mux2~1_combout\,
	combout => \hexa0|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y50_N0
\hexa1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa1|Mux1~0_combout\ = (\SW[0]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \hexa1|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y50_N10
\hexa1|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa1|Mux1~1_combout\ = (!\SW[0]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \hexa1|Mux1~1_combout\);

-- Location: LCCOMB_X54_Y50_N4
\hexa1|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa1|Mux1~2_combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \hexa1|Mux1~2_combout\);

-- Location: IOIBUF_X51_Y54_N15
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X54_Y50_N30
\regfile0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux6~0_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\regfile0|bank:1:regi|q\(1)))) # (!\SW[2]~input_o\ & (\regfile0|bank:0:regi|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \regfile0|bank:0:regi|q\(1),
	datad => \regfile0|bank:1:regi|q\(1),
	combout => \regfile0|Mux6~0_combout\);

-- Location: LCCOMB_X54_Y50_N22
\regfile0|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux6~1_combout\ = (\SW[3]~input_o\ & ((\regfile0|Mux6~0_combout\ & ((\regfile0|bank:3:regi|q\(1)))) # (!\regfile0|Mux6~0_combout\ & (\regfile0|bank:2:regi|q\(1))))) # (!\SW[3]~input_o\ & (((\regfile0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \regfile0|bank:2:regi|q\(1),
	datac => \regfile0|Mux6~0_combout\,
	datad => \regfile0|bank:3:regi|q\(1),
	combout => \regfile0|Mux6~1_combout\);

-- Location: LCCOMB_X54_Y50_N2
\regfile0|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux7~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\regfile0|bank:2:regi|q\(0))))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\regfile0|bank:0:regi|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \regfile0|bank:0:regi|q\(0),
	datad => \regfile0|bank:2:regi|q\(0),
	combout => \regfile0|Mux7~0_combout\);

-- Location: LCCOMB_X55_Y50_N10
\regfile0|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux7~1_combout\ = (\SW[2]~input_o\ & ((\regfile0|Mux7~0_combout\ & ((\regfile0|bank:3:regi|q\(0)))) # (!\regfile0|Mux7~0_combout\ & (\regfile0|bank:1:regi|q\(0))))) # (!\SW[2]~input_o\ & (((\regfile0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \regfile0|bank:1:regi|q\(0),
	datac => \regfile0|bank:3:regi|q\(0),
	datad => \regfile0|Mux7~0_combout\,
	combout => \regfile0|Mux7~1_combout\);

-- Location: LCCOMB_X54_Y50_N26
\regfile0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux5~0_combout\ = (\SW[3]~input_o\ & ((\regfile0|bank:2:regi|q\(2)) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\regfile0|bank:0:regi|q\(2) & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \regfile0|bank:2:regi|q\(2),
	datac => \regfile0|bank:0:regi|q\(2),
	datad => \SW[2]~input_o\,
	combout => \regfile0|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y50_N26
\regfile0|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux5~1_combout\ = (\regfile0|Mux5~0_combout\ & (((\regfile0|bank:3:regi|q\(2)) # (!\SW[2]~input_o\)))) # (!\regfile0|Mux5~0_combout\ & (\regfile0|bank:1:regi|q\(2) & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux5~0_combout\,
	datab => \regfile0|bank:1:regi|q\(2),
	datac => \regfile0|bank:3:regi|q\(2),
	datad => \SW[2]~input_o\,
	combout => \regfile0|Mux5~1_combout\);

-- Location: LCCOMB_X54_Y50_N14
\regfile0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux4~0_combout\ = (\SW[2]~input_o\ & ((\regfile0|bank:1:regi|q\(3)) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\regfile0|bank:0:regi|q\(3) & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|bank:1:regi|q\(3),
	datab => \SW[2]~input_o\,
	datac => \regfile0|bank:0:regi|q\(3),
	datad => \SW[3]~input_o\,
	combout => \regfile0|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y50_N22
\regfile0|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Mux4~1_combout\ = (\regfile0|Mux4~0_combout\ & (((\regfile0|bank:3:regi|q\(3)) # (!\SW[3]~input_o\)))) # (!\regfile0|Mux4~0_combout\ & (\regfile0|bank:2:regi|q\(3) & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux4~0_combout\,
	datab => \regfile0|bank:2:regi|q\(3),
	datac => \regfile0|bank:3:regi|q\(3),
	datad => \SW[3]~input_o\,
	combout => \regfile0|Mux4~1_combout\);

-- Location: LCCOMB_X61_Y53_N16
\hexa2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa2|Mux6~0_combout\ = (\regfile0|Mux5~1_combout\ & (!\regfile0|Mux6~1_combout\ & (\regfile0|Mux7~1_combout\ $ (!\regfile0|Mux4~1_combout\)))) # (!\regfile0|Mux5~1_combout\ & (\regfile0|Mux7~1_combout\ & (\regfile0|Mux6~1_combout\ $ 
-- (!\regfile0|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux6~1_combout\,
	datab => \regfile0|Mux7~1_combout\,
	datac => \regfile0|Mux5~1_combout\,
	datad => \regfile0|Mux4~1_combout\,
	combout => \hexa2|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y53_N10
\hexa2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa2|Mux5~0_combout\ = (\regfile0|Mux6~1_combout\ & ((\regfile0|Mux7~1_combout\ & ((\regfile0|Mux4~1_combout\))) # (!\regfile0|Mux7~1_combout\ & (\regfile0|Mux5~1_combout\)))) # (!\regfile0|Mux6~1_combout\ & (\regfile0|Mux5~1_combout\ & 
-- (\regfile0|Mux7~1_combout\ $ (\regfile0|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux6~1_combout\,
	datab => \regfile0|Mux7~1_combout\,
	datac => \regfile0|Mux5~1_combout\,
	datad => \regfile0|Mux4~1_combout\,
	combout => \hexa2|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y53_N4
\hexa2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa2|Mux4~0_combout\ = (\regfile0|Mux5~1_combout\ & (\regfile0|Mux4~1_combout\ & ((\regfile0|Mux6~1_combout\) # (!\regfile0|Mux7~1_combout\)))) # (!\regfile0|Mux5~1_combout\ & (\regfile0|Mux6~1_combout\ & (!\regfile0|Mux7~1_combout\ & 
-- !\regfile0|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux6~1_combout\,
	datab => \regfile0|Mux7~1_combout\,
	datac => \regfile0|Mux5~1_combout\,
	datad => \regfile0|Mux4~1_combout\,
	combout => \hexa2|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y53_N6
\hexa2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa2|Mux3~0_combout\ = (\regfile0|Mux6~1_combout\ & ((\regfile0|Mux7~1_combout\ & (\regfile0|Mux5~1_combout\)) # (!\regfile0|Mux7~1_combout\ & (!\regfile0|Mux5~1_combout\ & \regfile0|Mux4~1_combout\)))) # (!\regfile0|Mux6~1_combout\ & 
-- (!\regfile0|Mux4~1_combout\ & (\regfile0|Mux7~1_combout\ $ (\regfile0|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux6~1_combout\,
	datab => \regfile0|Mux7~1_combout\,
	datac => \regfile0|Mux5~1_combout\,
	datad => \regfile0|Mux4~1_combout\,
	combout => \hexa2|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y53_N0
\hexa2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa2|Mux2~0_combout\ = (\regfile0|Mux6~1_combout\ & (\regfile0|Mux7~1_combout\ & ((!\regfile0|Mux4~1_combout\)))) # (!\regfile0|Mux6~1_combout\ & ((\regfile0|Mux5~1_combout\ & ((!\regfile0|Mux4~1_combout\))) # (!\regfile0|Mux5~1_combout\ & 
-- (\regfile0|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux6~1_combout\,
	datab => \regfile0|Mux7~1_combout\,
	datac => \regfile0|Mux5~1_combout\,
	datad => \regfile0|Mux4~1_combout\,
	combout => \hexa2|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y53_N26
\hexa2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa2|Mux1~0_combout\ = (\regfile0|Mux6~1_combout\ & (!\regfile0|Mux4~1_combout\ & ((\regfile0|Mux7~1_combout\) # (!\regfile0|Mux5~1_combout\)))) # (!\regfile0|Mux6~1_combout\ & (\regfile0|Mux7~1_combout\ & (\regfile0|Mux5~1_combout\ $ 
-- (!\regfile0|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux6~1_combout\,
	datab => \regfile0|Mux7~1_combout\,
	datac => \regfile0|Mux5~1_combout\,
	datad => \regfile0|Mux4~1_combout\,
	combout => \hexa2|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y53_N12
\hexa2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa2|Mux0~0_combout\ = (\regfile0|Mux7~1_combout\ & ((\regfile0|Mux4~1_combout\) # (\regfile0|Mux6~1_combout\ $ (\regfile0|Mux5~1_combout\)))) # (!\regfile0|Mux7~1_combout\ & ((\regfile0|Mux6~1_combout\) # (\regfile0|Mux5~1_combout\ $ 
-- (\regfile0|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regfile0|Mux6~1_combout\,
	datab => \regfile0|Mux7~1_combout\,
	datac => \regfile0|Mux5~1_combout\,
	datad => \regfile0|Mux4~1_combout\,
	combout => \hexa2|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y53_N0
\hexa3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa3|Mux1~0_combout\ = (!\SW[3]~input_o\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \hexa3|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y53_N2
\hexa3|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa3|Mux1~1_combout\ = (\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \hexa3|Mux1~1_combout\);

-- Location: LCCOMB_X50_Y53_N4
\hexa3|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa3|Mux1~2_combout\ = (\SW[3]~input_o\) # (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \hexa3|Mux1~2_combout\);

-- Location: LCCOMB_X54_Y50_N24
\hexa4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa4|Mux6~0_combout\ = (\SW[8]~input_o\ & (!\SW[7]~input_o\ & (\SW[6]~input_o\ $ (!\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (\SW[6]~input_o\ & (\SW[7]~input_o\ $ (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \hexa4|Mux6~0_combout\);

-- Location: LCCOMB_X55_Y50_N30
\hexa4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa4|Mux5~0_combout\ = (\SW[9]~input_o\ & ((\SW[6]~input_o\ & (\SW[7]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[8]~input_o\))))) # (!\SW[9]~input_o\ & (\SW[8]~input_o\ & (\SW[6]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \hexa4|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y50_N18
\hexa4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa4|Mux4~0_combout\ = (\SW[8]~input_o\ & (\SW[9]~input_o\ & ((\SW[7]~input_o\) # (!\SW[6]~input_o\)))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\ & (!\SW[6]~input_o\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \hexa4|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y50_N8
\hexa4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa4|Mux3~0_combout\ = (\SW[7]~input_o\ & ((\SW[6]~input_o\ & ((\SW[8]~input_o\))) # (!\SW[6]~input_o\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))) # (!\SW[7]~input_o\ & (!\SW[9]~input_o\ & (\SW[6]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \hexa4|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y50_N12
\hexa4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa4|Mux2~0_combout\ = (\SW[7]~input_o\ & (((\SW[6]~input_o\ & !\SW[9]~input_o\)))) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((!\SW[9]~input_o\))) # (!\SW[8]~input_o\ & (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \hexa4|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y50_N18
\hexa4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa4|Mux1~0_combout\ = (\SW[7]~input_o\ & (!\SW[9]~input_o\ & ((\SW[6]~input_o\) # (!\SW[8]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[6]~input_o\ & (\SW[9]~input_o\ $ (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \hexa4|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y50_N12
\hexa4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hexa4|Mux0~0_combout\ = (\SW[6]~input_o\ & ((\SW[9]~input_o\) # (\SW[7]~input_o\ $ (\SW[8]~input_o\)))) # (!\SW[6]~input_o\ & ((\SW[7]~input_o\) # (\SW[9]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \hexa4|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y50_N8
\regfile0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Equal1~0_combout\ = (\SW[4]~input_o\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	combout => \regfile0|Equal1~0_combout\);

-- Location: LCCOMB_X51_Y50_N26
\regfile0|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|Equal1~1_combout\ = (!\SW[4]~input_o\ & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	combout => \regfile0|Equal1~1_combout\);

-- Location: LCCOMB_X51_Y50_N28
\regfile0|bank~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \regfile0|bank~0_combout\ = (!\SW[4]~input_o\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	combout => \regfile0|bank~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(7) <= \HEX4[7]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(7) <= \HEX5[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


