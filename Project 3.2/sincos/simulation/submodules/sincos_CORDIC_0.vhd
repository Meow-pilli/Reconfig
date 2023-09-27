-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 22.1std (Release Build #922)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2023 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from sincos_CORDIC_0
-- VHDL created on Tue Sep 26 11:59:55 2023


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity sincos_CORDIC_0 is
    port (
        a : in std_logic_vector(9 downto 0);  -- sfix10_en7
        c : out std_logic_vector(6 downto 0);  -- sfix7_en5
        s : out std_logic_vector(6 downto 0);  -- sfix7_en5
        clk : in std_logic;
        areset : in std_logic
    );
end sincos_CORDIC_0;

architecture normal of sincos_CORDIC_0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal constantZero_uid6_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal signA_uid7_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignA_uid8_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal absAE_uid9_sincosTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal absAE_uid9_sincosTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal absAE_uid9_sincosTest_o : STD_LOGIC_VECTOR (11 downto 0);
    signal absAE_uid9_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absAE_uid9_sincosTest_q : STD_LOGIC_VECTOR (10 downto 0);
    signal absAR_uid10_sincosTest_in : STD_LOGIC_VECTOR (8 downto 0);
    signal absAR_uid10_sincosTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal cstPiO2_uid11_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal padACst_uid12_sincosTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal aPostPad_uid13_sincosTest_q : STD_LOGIC_VECTOR (10 downto 0);
    signal argMPiO2_uid14_sincosTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal argMPiO2_uid14_sincosTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal argMPiO2_uid14_sincosTest_o : STD_LOGIC_VECTOR (11 downto 0);
    signal argMPiO2_uid14_sincosTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal firstQuadrant_uid15_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal absARE_bottomRange_uid17_sincosTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal absARE_bottomRange_uid17_sincosTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal absARE_mergedSignalTM_uid18_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal argMPiO2_uid20_sincosTest_in : STD_LOGIC_VECTOR (9 downto 0);
    signal argMPiO2_uid20_sincosTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal absA_uid21_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absA_uid21_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal cstOneOverK_uid22_sincosTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal cstArcTan2Mi_0_uid26_sincosTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1E_1_uid32_sincosTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_1CostZeroPaddingA_uid33_sincosTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_1NA_uid34_sincosTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_1sumAHighB_uid35_sincosTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_1sumAHighB_uid35_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_1sumAHighB_uid35_sincosTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_1sumAHighB_uid35_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_1sumAHighB_uid35_sincosTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal invSignOfSelectionSignal_uid36_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_1CostZeroPaddingA_uid37_sincosTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aip1E_1NA_uid38_sincosTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_1sumAHighB_uid39_sincosTest_a : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_1sumAHighB_uid39_sincosTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_1sumAHighB_uid39_sincosTest_o : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_1sumAHighB_uid39_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_1sumAHighB_uid39_sincosTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_1_topRange_uid41_sincosTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1_1_topRange_uid41_sincosTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1_1_mergedSignalTM_uid42_sincosTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal xMSB_uid44_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_1_mergedSignalTM_uid48_sincosTest_q : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid50_sincosTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_uid50_sincosTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid51_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid53_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid56_sincosTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal twoToMiSiYip_uid57_sincosTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal cstArcTan2Mi_1_uid58_sincosTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1E_2_uid60_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_2_uid60_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_2_uid60_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_2_uid60_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2_uid60_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_2_uid61_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_2_uid61_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_2_uid61_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_2_uid61_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2_uid61_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal aip1E_2_uid63_sincosTest_a : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_2_uid63_sincosTest_b : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_2_uid63_sincosTest_o : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_2_uid63_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_2_uid63_sincosTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_2_uid64_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_2_uid64_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_2_uid65_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_2_uid65_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid66_sincosTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_uid66_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid67_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid69_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid72_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal twoToMiSiYip_uid73_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal cstArcTan2Mi_2_uid74_sincosTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_3_uid76_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_3_uid76_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_3_uid76_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_3_uid76_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3_uid76_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_3_uid77_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_3_uid77_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_3_uid77_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_3_uid77_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3_uid77_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal aip1E_3_uid79_sincosTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal aip1E_3_uid79_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aip1E_3_uid79_sincosTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal aip1E_3_uid79_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_3_uid79_sincosTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1_3_uid80_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_3_uid80_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_3_uid81_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_3_uid81_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid82_sincosTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal aip1E_uid82_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid83_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid85_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid88_sincosTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal twoToMiSiYip_uid89_sincosTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal cstArcTan2Mi_3_uid90_sincosTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1E_4_uid92_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_4_uid92_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_4_uid92_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_4_uid92_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4_uid92_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_4_uid93_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4_uid93_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4_uid93_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_4_uid93_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4_uid93_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal aip1E_4_uid95_sincosTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_4_uid95_sincosTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_4_uid95_sincosTest_o : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_4_uid95_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_4_uid95_sincosTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1_4_uid96_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_4_uid96_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_4_uid97_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_4_uid97_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid98_sincosTest_in : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_uid98_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid99_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid101_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid104_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal twoToMiSiYip_uid105_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal cstArcTan2Mi_4_uid106_sincosTest_q : STD_LOGIC_VECTOR (10 downto 0);
    signal xip1E_5_uid108_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_5_uid108_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_5_uid108_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_5_uid108_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5_uid108_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_5_uid109_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_5_uid109_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_5_uid109_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_5_uid109_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5_uid109_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal aip1E_5_uid111_sincosTest_a : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_5_uid111_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_5_uid111_sincosTest_o : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_5_uid111_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_5_uid111_sincosTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1_5_uid112_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_5_uid112_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_5_uid113_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_5_uid113_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid114_sincosTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal aip1E_uid114_sincosTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal xMSB_uid115_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid117_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid120_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal twoToMiSiYip_uid121_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal cstArcTan2Mi_5_uid122_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal xip1E_6_uid124_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_6_uid124_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_6_uid124_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_6_uid124_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6_uid124_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_6_uid125_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_6_uid125_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_6_uid125_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_6_uid125_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6_uid125_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal lowRangeA_uid127_sincosTest_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeA_uid127_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highABits_uid128_sincosTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal aip1E_6high_uid129_sincosTest_a : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_6high_uid129_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_6high_uid129_sincosTest_o : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_6high_uid129_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_6high_uid129_sincosTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal aip1E_6_uid130_sincosTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1_6_uid131_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_6_uid131_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_6_uid132_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_6_uid132_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal aip1E_uid133_sincosTest_in : STD_LOGIC_VECTOR (10 downto 0);
    signal aip1E_uid133_sincosTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal xMSB_uid134_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid136_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid139_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal twoToMiSiYip_uid140_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_7_uid143_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_7_uid143_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_7_uid143_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_7_uid143_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7_uid143_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_7_uid144_sincosTest_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_7_uid144_sincosTest_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_7_uid144_sincosTest_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_7_uid144_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7_uid144_sincosTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1_7_uid150_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_7_uid150_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_7_uid151_sincosTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_7_uid151_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xSumPreRnd_uid153_sincosTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal xSumPreRnd_uid153_sincosTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal xSumPostRnd_uid156_sincosTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal xSumPostRnd_uid156_sincosTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal xSumPostRnd_uid156_sincosTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal xSumPostRnd_uid156_sincosTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal ySumPreRnd_uid157_sincosTest_in : STD_LOGIC_VECTOR (17 downto 0);
    signal ySumPreRnd_uid157_sincosTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal ySumPostRnd_uid160_sincosTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal ySumPostRnd_uid160_sincosTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal ySumPostRnd_uid160_sincosTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal ySumPostRnd_uid160_sincosTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal xPostExc_uid161_sincosTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal xPostExc_uid161_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal yPostExc_uid162_sincosTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal yPostExc_uid162_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal invFirstQuadrant_uid163_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond2_uid164_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond1_uid165_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond0_uid167_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond_uid168_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstZeroForAddSub_uid170_sincosTest_q : STD_LOGIC_VECTOR (6 downto 0);
    signal invSinNegCond_uid171_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinPostNeg_uid172_sincosTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal sinPostNeg_uid172_sincosTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal sinPostNeg_uid172_sincosTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal sinPostNeg_uid172_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal sinPostNeg_uid172_sincosTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invCosNegCond_uid173_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cosPostNeg_uid174_sincosTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal cosPostNeg_uid174_sincosTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal cosPostNeg_uid174_sincosTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal cosPostNeg_uid174_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cosPostNeg_uid174_sincosTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal xPostRR_uid175_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xPostRR_uid175_sincosTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal xPostRR_uid176_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xPostRR_uid176_sincosTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cos_uid177_sincosTest_in : STD_LOGIC_VECTOR (6 downto 0);
    signal cos_uid177_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal sin_uid178_sincosTest_in : STD_LOGIC_VECTOR (6 downto 0);
    signal sin_uid178_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal redist0_aip1E_uid98_sincosTest_b_1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal redist1_xMSB_uid83_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_yip1_3_uid81_sincosTest_b_1_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist3_xip1_3_uid80_sincosTest_b_1_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist4_firstQuadrant_uid15_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_invSignA_uid8_sincosTest_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_signA_uid7_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- invFirstQuadrant_uid163_sincosTest(LOGICAL,162)@1
    invFirstQuadrant_uid163_sincosTest_q <= not (redist4_firstQuadrant_uid15_sincosTest_b_1_q);

    -- signA_uid7_sincosTest(BITSELECT,6)@0
    signA_uid7_sincosTest_b <= STD_LOGIC_VECTOR(a(9 downto 9));

    -- redist6_signA_uid7_sincosTest_b_1(DELAY,184)
    redist6_signA_uid7_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signA_uid7_sincosTest_b, xout => redist6_signA_uid7_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- sinNegCond2_uid164_sincosTest(LOGICAL,163)@1
    sinNegCond2_uid164_sincosTest_q <= redist6_signA_uid7_sincosTest_b_1_q and invFirstQuadrant_uid163_sincosTest_q;

    -- sinNegCond1_uid165_sincosTest(LOGICAL,164)@1
    sinNegCond1_uid165_sincosTest_q <= redist6_signA_uid7_sincosTest_b_1_q and redist4_firstQuadrant_uid15_sincosTest_b_1_q;

    -- invSignA_uid8_sincosTest(LOGICAL,7)@0
    invSignA_uid8_sincosTest_q <= not (signA_uid7_sincosTest_b);

    -- redist5_invSignA_uid8_sincosTest_q_1(DELAY,183)
    redist5_invSignA_uid8_sincosTest_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignA_uid8_sincosTest_q, xout => redist5_invSignA_uid8_sincosTest_q_1_q, clk => clk, aclr => areset );

    -- sinNegCond0_uid167_sincosTest(LOGICAL,166)@1
    sinNegCond0_uid167_sincosTest_q <= redist5_invSignA_uid8_sincosTest_q_1_q and invFirstQuadrant_uid163_sincosTest_q;

    -- sinNegCond_uid168_sincosTest(LOGICAL,167)@1
    sinNegCond_uid168_sincosTest_q <= sinNegCond0_uid167_sincosTest_q or sinNegCond1_uid165_sincosTest_q or sinNegCond2_uid164_sincosTest_q;

    -- invSinNegCond_uid171_sincosTest(LOGICAL,170)@1
    invSinNegCond_uid171_sincosTest_q <= not (sinNegCond_uid168_sincosTest_q);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- xMSB_uid99_sincosTest(BITSELECT,98)@1
    xMSB_uid99_sincosTest_b <= STD_LOGIC_VECTOR(redist0_aip1E_uid98_sincosTest_b_1_q(12 downto 12));

    -- cstArcTan2Mi_4_uid106_sincosTest(CONSTANT,105)
    cstArcTan2Mi_4_uid106_sincosTest_q <= "01111111111";

    -- xMSB_uid83_sincosTest(BITSELECT,82)@0
    xMSB_uid83_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid82_sincosTest_b(13 downto 13));

    -- cstArcTan2Mi_3_uid90_sincosTest(CONSTANT,89)
    cstArcTan2Mi_3_uid90_sincosTest_q <= "011111110101";

    -- xMSB_uid67_sincosTest(BITSELECT,66)@0
    xMSB_uid67_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid66_sincosTest_b(14 downto 14));

    -- cstArcTan2Mi_2_uid74_sincosTest(CONSTANT,73)
    cstArcTan2Mi_2_uid74_sincosTest_q <= "0111110101110";

    -- xMSB_uid51_sincosTest(BITSELECT,50)@0
    xMSB_uid51_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid50_sincosTest_b(15 downto 15));

    -- cstArcTan2Mi_1_uid58_sincosTest(CONSTANT,57)
    cstArcTan2Mi_1_uid58_sincosTest_q <= "01110110101100";

    -- invSignOfSelectionSignal_uid36_sincosTest(LOGICAL,35)@0
    invSignOfSelectionSignal_uid36_sincosTest_q <= not (VCC_q);

    -- cstArcTan2Mi_0_uid26_sincosTest(CONSTANT,25)
    cstArcTan2Mi_0_uid26_sincosTest_q <= "011001001000100";

    -- constantZero_uid6_sincosTest(CONSTANT,5)
    constantZero_uid6_sincosTest_q <= "0000000000";

    -- absAE_uid9_sincosTest(ADDSUB,8)@0
    absAE_uid9_sincosTest_s <= invSignA_uid8_sincosTest_q;
    absAE_uid9_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => constantZero_uid6_sincosTest_q(9)) & constantZero_uid6_sincosTest_q));
    absAE_uid9_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => a(9)) & a));
    absAE_uid9_sincosTest_combproc: PROCESS (absAE_uid9_sincosTest_a, absAE_uid9_sincosTest_b, absAE_uid9_sincosTest_s)
    BEGIN
        IF (absAE_uid9_sincosTest_s = "1") THEN
            absAE_uid9_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(absAE_uid9_sincosTest_a) + SIGNED(absAE_uid9_sincosTest_b));
        ELSE
            absAE_uid9_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(absAE_uid9_sincosTest_a) - SIGNED(absAE_uid9_sincosTest_b));
        END IF;
    END PROCESS;
    absAE_uid9_sincosTest_q <= absAE_uid9_sincosTest_o(10 downto 0);

    -- absAR_uid10_sincosTest(BITSELECT,9)@0
    absAR_uid10_sincosTest_in <= absAE_uid9_sincosTest_q(8 downto 0);
    absAR_uid10_sincosTest_b <= absAR_uid10_sincosTest_in(8 downto 0);

    -- absARE_bottomRange_uid17_sincosTest(BITSELECT,16)@0
    absARE_bottomRange_uid17_sincosTest_in <= absAR_uid10_sincosTest_b(7 downto 0);
    absARE_bottomRange_uid17_sincosTest_b <= absARE_bottomRange_uid17_sincosTest_in(7 downto 0);

    -- padACst_uid12_sincosTest(CONSTANT,11)
    padACst_uid12_sincosTest_q <= "00";

    -- absARE_mergedSignalTM_uid18_sincosTest(BITJOIN,17)@0
    absARE_mergedSignalTM_uid18_sincosTest_q <= absARE_bottomRange_uid17_sincosTest_b & padACst_uid12_sincosTest_q;

    -- cstPiO2_uid11_sincosTest(CONSTANT,10)
    cstPiO2_uid11_sincosTest_q <= "1100100100";

    -- aPostPad_uid13_sincosTest(BITJOIN,12)@0
    aPostPad_uid13_sincosTest_q <= absAR_uid10_sincosTest_b & padACst_uid12_sincosTest_q;

    -- argMPiO2_uid14_sincosTest(SUB,13)@0
    argMPiO2_uid14_sincosTest_a <= STD_LOGIC_VECTOR("0" & aPostPad_uid13_sincosTest_q);
    argMPiO2_uid14_sincosTest_b <= STD_LOGIC_VECTOR("00" & cstPiO2_uid11_sincosTest_q);
    argMPiO2_uid14_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(argMPiO2_uid14_sincosTest_a) - UNSIGNED(argMPiO2_uid14_sincosTest_b));
    argMPiO2_uid14_sincosTest_q <= argMPiO2_uid14_sincosTest_o(11 downto 0);

    -- argMPiO2_uid20_sincosTest(BITSELECT,19)@0
    argMPiO2_uid20_sincosTest_in <= argMPiO2_uid14_sincosTest_q(9 downto 0);
    argMPiO2_uid20_sincosTest_b <= argMPiO2_uid20_sincosTest_in(9 downto 0);

    -- firstQuadrant_uid15_sincosTest(BITSELECT,14)@0
    firstQuadrant_uid15_sincosTest_b <= STD_LOGIC_VECTOR(argMPiO2_uid14_sincosTest_q(11 downto 11));

    -- absA_uid21_sincosTest(MUX,20)@0
    absA_uid21_sincosTest_s <= firstQuadrant_uid15_sincosTest_b;
    absA_uid21_sincosTest_combproc: PROCESS (absA_uid21_sincosTest_s, argMPiO2_uid20_sincosTest_b, absARE_mergedSignalTM_uid18_sincosTest_q)
    BEGIN
        CASE (absA_uid21_sincosTest_s) IS
            WHEN "0" => absA_uid21_sincosTest_q <= argMPiO2_uid20_sincosTest_b;
            WHEN "1" => absA_uid21_sincosTest_q <= absARE_mergedSignalTM_uid18_sincosTest_q;
            WHEN OTHERS => absA_uid21_sincosTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- aip1E_1CostZeroPaddingA_uid37_sincosTest(CONSTANT,36)
    aip1E_1CostZeroPaddingA_uid37_sincosTest_q <= "00000";

    -- aip1E_1NA_uid38_sincosTest(BITJOIN,37)@0
    aip1E_1NA_uid38_sincosTest_q <= absA_uid21_sincosTest_q & aip1E_1CostZeroPaddingA_uid37_sincosTest_q;

    -- aip1E_1sumAHighB_uid39_sincosTest(ADDSUB,38)@0
    aip1E_1sumAHighB_uid39_sincosTest_s <= invSignOfSelectionSignal_uid36_sincosTest_q;
    aip1E_1sumAHighB_uid39_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & aip1E_1NA_uid38_sincosTest_q));
    aip1E_1sumAHighB_uid39_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 15 => cstArcTan2Mi_0_uid26_sincosTest_q(14)) & cstArcTan2Mi_0_uid26_sincosTest_q));
    aip1E_1sumAHighB_uid39_sincosTest_combproc: PROCESS (aip1E_1sumAHighB_uid39_sincosTest_a, aip1E_1sumAHighB_uid39_sincosTest_b, aip1E_1sumAHighB_uid39_sincosTest_s)
    BEGIN
        IF (aip1E_1sumAHighB_uid39_sincosTest_s = "1") THEN
            aip1E_1sumAHighB_uid39_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_1sumAHighB_uid39_sincosTest_a) + SIGNED(aip1E_1sumAHighB_uid39_sincosTest_b));
        ELSE
            aip1E_1sumAHighB_uid39_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_1sumAHighB_uid39_sincosTest_a) - SIGNED(aip1E_1sumAHighB_uid39_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_1sumAHighB_uid39_sincosTest_q <= aip1E_1sumAHighB_uid39_sincosTest_o(16 downto 0);

    -- aip1E_uid50_sincosTest(BITSELECT,49)@0
    aip1E_uid50_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_1sumAHighB_uid39_sincosTest_q(15 downto 0));
    aip1E_uid50_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid50_sincosTest_in(15 downto 0));

    -- aip1E_2_uid63_sincosTest(ADDSUB,62)@0
    aip1E_2_uid63_sincosTest_s <= xMSB_uid51_sincosTest_b;
    aip1E_2_uid63_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => aip1E_uid50_sincosTest_b(15)) & aip1E_uid50_sincosTest_b));
    aip1E_2_uid63_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 14 => cstArcTan2Mi_1_uid58_sincosTest_q(13)) & cstArcTan2Mi_1_uid58_sincosTest_q));
    aip1E_2_uid63_sincosTest_combproc: PROCESS (aip1E_2_uid63_sincosTest_a, aip1E_2_uid63_sincosTest_b, aip1E_2_uid63_sincosTest_s)
    BEGIN
        IF (aip1E_2_uid63_sincosTest_s = "1") THEN
            aip1E_2_uid63_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2_uid63_sincosTest_a) + SIGNED(aip1E_2_uid63_sincosTest_b));
        ELSE
            aip1E_2_uid63_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2_uid63_sincosTest_a) - SIGNED(aip1E_2_uid63_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_2_uid63_sincosTest_q <= aip1E_2_uid63_sincosTest_o(16 downto 0);

    -- aip1E_uid66_sincosTest(BITSELECT,65)@0
    aip1E_uid66_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_2_uid63_sincosTest_q(14 downto 0));
    aip1E_uid66_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid66_sincosTest_in(14 downto 0));

    -- aip1E_3_uid79_sincosTest(ADDSUB,78)@0
    aip1E_3_uid79_sincosTest_s <= xMSB_uid67_sincosTest_b;
    aip1E_3_uid79_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => aip1E_uid66_sincosTest_b(14)) & aip1E_uid66_sincosTest_b));
    aip1E_3_uid79_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 13 => cstArcTan2Mi_2_uid74_sincosTest_q(12)) & cstArcTan2Mi_2_uid74_sincosTest_q));
    aip1E_3_uid79_sincosTest_combproc: PROCESS (aip1E_3_uid79_sincosTest_a, aip1E_3_uid79_sincosTest_b, aip1E_3_uid79_sincosTest_s)
    BEGIN
        IF (aip1E_3_uid79_sincosTest_s = "1") THEN
            aip1E_3_uid79_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_3_uid79_sincosTest_a) + SIGNED(aip1E_3_uid79_sincosTest_b));
        ELSE
            aip1E_3_uid79_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_3_uid79_sincosTest_a) - SIGNED(aip1E_3_uid79_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_3_uid79_sincosTest_q <= aip1E_3_uid79_sincosTest_o(15 downto 0);

    -- aip1E_uid82_sincosTest(BITSELECT,81)@0
    aip1E_uid82_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_3_uid79_sincosTest_q(13 downto 0));
    aip1E_uid82_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid82_sincosTest_in(13 downto 0));

    -- aip1E_4_uid95_sincosTest(ADDSUB,94)@0
    aip1E_4_uid95_sincosTest_s <= xMSB_uid83_sincosTest_b;
    aip1E_4_uid95_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => aip1E_uid82_sincosTest_b(13)) & aip1E_uid82_sincosTest_b));
    aip1E_4_uid95_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 12 => cstArcTan2Mi_3_uid90_sincosTest_q(11)) & cstArcTan2Mi_3_uid90_sincosTest_q));
    aip1E_4_uid95_sincosTest_combproc: PROCESS (aip1E_4_uid95_sincosTest_a, aip1E_4_uid95_sincosTest_b, aip1E_4_uid95_sincosTest_s)
    BEGIN
        IF (aip1E_4_uid95_sincosTest_s = "1") THEN
            aip1E_4_uid95_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_4_uid95_sincosTest_a) + SIGNED(aip1E_4_uid95_sincosTest_b));
        ELSE
            aip1E_4_uid95_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_4_uid95_sincosTest_a) - SIGNED(aip1E_4_uid95_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_4_uid95_sincosTest_q <= aip1E_4_uid95_sincosTest_o(14 downto 0);

    -- aip1E_uid98_sincosTest(BITSELECT,97)@0
    aip1E_uid98_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_4_uid95_sincosTest_q(12 downto 0));
    aip1E_uid98_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid98_sincosTest_in(12 downto 0));

    -- redist0_aip1E_uid98_sincosTest_b_1(DELAY,178)
    redist0_aip1E_uid98_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 13, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => aip1E_uid98_sincosTest_b, xout => redist0_aip1E_uid98_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- aip1E_5_uid111_sincosTest(ADDSUB,110)@1
    aip1E_5_uid111_sincosTest_s <= xMSB_uid99_sincosTest_b;
    aip1E_5_uid111_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => redist0_aip1E_uid98_sincosTest_b_1_q(12)) & redist0_aip1E_uid98_sincosTest_b_1_q));
    aip1E_5_uid111_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 11 => cstArcTan2Mi_4_uid106_sincosTest_q(10)) & cstArcTan2Mi_4_uid106_sincosTest_q));
    aip1E_5_uid111_sincosTest_combproc: PROCESS (aip1E_5_uid111_sincosTest_a, aip1E_5_uid111_sincosTest_b, aip1E_5_uid111_sincosTest_s)
    BEGIN
        IF (aip1E_5_uid111_sincosTest_s = "1") THEN
            aip1E_5_uid111_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_5_uid111_sincosTest_a) + SIGNED(aip1E_5_uid111_sincosTest_b));
        ELSE
            aip1E_5_uid111_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_5_uid111_sincosTest_a) - SIGNED(aip1E_5_uid111_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_5_uid111_sincosTest_q <= aip1E_5_uid111_sincosTest_o(13 downto 0);

    -- aip1E_uid114_sincosTest(BITSELECT,113)@1
    aip1E_uid114_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_5_uid111_sincosTest_q(11 downto 0));
    aip1E_uid114_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid114_sincosTest_in(11 downto 0));

    -- xMSB_uid115_sincosTest(BITSELECT,114)@1
    xMSB_uid115_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid114_sincosTest_b(11 downto 11));

    -- cstArcTan2Mi_5_uid122_sincosTest(CONSTANT,121)
    cstArcTan2Mi_5_uid122_sincosTest_q <= "0100000000";

    -- highABits_uid128_sincosTest(BITSELECT,127)@1
    highABits_uid128_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid114_sincosTest_b(11 downto 1));

    -- aip1E_6high_uid129_sincosTest(ADDSUB,128)@1
    aip1E_6high_uid129_sincosTest_s <= xMSB_uid115_sincosTest_b;
    aip1E_6high_uid129_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => highABits_uid128_sincosTest_b(10)) & highABits_uid128_sincosTest_b));
    aip1E_6high_uid129_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => cstArcTan2Mi_5_uid122_sincosTest_q(9)) & cstArcTan2Mi_5_uid122_sincosTest_q));
    aip1E_6high_uid129_sincosTest_combproc: PROCESS (aip1E_6high_uid129_sincosTest_a, aip1E_6high_uid129_sincosTest_b, aip1E_6high_uid129_sincosTest_s)
    BEGIN
        IF (aip1E_6high_uid129_sincosTest_s = "1") THEN
            aip1E_6high_uid129_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_6high_uid129_sincosTest_a) + SIGNED(aip1E_6high_uid129_sincosTest_b));
        ELSE
            aip1E_6high_uid129_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_6high_uid129_sincosTest_a) - SIGNED(aip1E_6high_uid129_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_6high_uid129_sincosTest_q <= aip1E_6high_uid129_sincosTest_o(11 downto 0);

    -- lowRangeA_uid127_sincosTest(BITSELECT,126)@1
    lowRangeA_uid127_sincosTest_in <= aip1E_uid114_sincosTest_b(0 downto 0);
    lowRangeA_uid127_sincosTest_b <= lowRangeA_uid127_sincosTest_in(0 downto 0);

    -- aip1E_6_uid130_sincosTest(BITJOIN,129)@1
    aip1E_6_uid130_sincosTest_q <= aip1E_6high_uid129_sincosTest_q & lowRangeA_uid127_sincosTest_b;

    -- aip1E_uid133_sincosTest(BITSELECT,132)@1
    aip1E_uid133_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_6_uid130_sincosTest_q(10 downto 0));
    aip1E_uid133_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid133_sincosTest_in(10 downto 0));

    -- xMSB_uid134_sincosTest(BITSELECT,133)@1
    xMSB_uid134_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid133_sincosTest_b(10 downto 10));

    -- signOfSelectionSignal_uid136_sincosTest(LOGICAL,135)@1
    signOfSelectionSignal_uid136_sincosTest_q <= not (xMSB_uid134_sincosTest_b);

    -- signOfSelectionSignal_uid101_sincosTest(LOGICAL,100)@1
    signOfSelectionSignal_uid101_sincosTest_q <= not (xMSB_uid99_sincosTest_b);

    -- redist1_xMSB_uid83_sincosTest_b_1(DELAY,179)
    redist1_xMSB_uid83_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid83_sincosTest_b, xout => redist1_xMSB_uid83_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- signOfSelectionSignal_uid69_sincosTest(LOGICAL,68)@0
    signOfSelectionSignal_uid69_sincosTest_q <= not (xMSB_uid67_sincosTest_b);

    -- xMSB_uid44_sincosTest(BITSELECT,43)@0
    xMSB_uid44_sincosTest_b <= STD_LOGIC_VECTOR(yip1E_1sumAHighB_uid35_sincosTest_q(17 downto 17));

    -- cstOneOverK_uid22_sincosTest(CONSTANT,21)
    cstOneOverK_uid22_sincosTest_q <= "1001101101110101";

    -- yip1E_1CostZeroPaddingA_uid33_sincosTest(CONSTANT,32)
    yip1E_1CostZeroPaddingA_uid33_sincosTest_q <= "0000000000000000";

    -- yip1E_1NA_uid34_sincosTest(BITJOIN,33)@0
    yip1E_1NA_uid34_sincosTest_q <= GND_q & yip1E_1CostZeroPaddingA_uid33_sincosTest_q;

    -- yip1E_1sumAHighB_uid35_sincosTest(ADDSUB,34)@0
    yip1E_1sumAHighB_uid35_sincosTest_s <= VCC_q;
    yip1E_1sumAHighB_uid35_sincosTest_a <= STD_LOGIC_VECTOR("00" & yip1E_1NA_uid34_sincosTest_q);
    yip1E_1sumAHighB_uid35_sincosTest_b <= STD_LOGIC_VECTOR("000" & cstOneOverK_uid22_sincosTest_q);
    yip1E_1sumAHighB_uid35_sincosTest_combproc: PROCESS (yip1E_1sumAHighB_uid35_sincosTest_a, yip1E_1sumAHighB_uid35_sincosTest_b, yip1E_1sumAHighB_uid35_sincosTest_s)
    BEGIN
        IF (yip1E_1sumAHighB_uid35_sincosTest_s = "1") THEN
            yip1E_1sumAHighB_uid35_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1sumAHighB_uid35_sincosTest_a) + UNSIGNED(yip1E_1sumAHighB_uid35_sincosTest_b));
        ELSE
            yip1E_1sumAHighB_uid35_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1sumAHighB_uid35_sincosTest_a) - UNSIGNED(yip1E_1sumAHighB_uid35_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_1sumAHighB_uid35_sincosTest_q <= yip1E_1sumAHighB_uid35_sincosTest_o(17 downto 0);

    -- yip1_1_mergedSignalTM_uid48_sincosTest(BITJOIN,47)@0
    yip1_1_mergedSignalTM_uid48_sincosTest_q <= xMSB_uid44_sincosTest_b & yip1E_1sumAHighB_uid35_sincosTest_q;

    -- twoToMiSiYip_uid57_sincosTest(BITSELECT,56)@0
    twoToMiSiYip_uid57_sincosTest_b <= STD_LOGIC_VECTOR(yip1_1_mergedSignalTM_uid48_sincosTest_q(18 downto 1));

    -- xip1E_1_uid32_sincosTest(BITJOIN,31)@0
    xip1E_1_uid32_sincosTest_q <= STD_LOGIC_VECTOR((2 downto 1 => GND_q(0)) & GND_q) & cstOneOverK_uid22_sincosTest_q;

    -- xip1_1_topRange_uid41_sincosTest(BITSELECT,40)@0
    xip1_1_topRange_uid41_sincosTest_in <= xip1E_1_uid32_sincosTest_q(17 downto 0);
    xip1_1_topRange_uid41_sincosTest_b <= xip1_1_topRange_uid41_sincosTest_in(17 downto 0);

    -- xip1_1_mergedSignalTM_uid42_sincosTest(BITJOIN,41)@0
    xip1_1_mergedSignalTM_uid42_sincosTest_q <= GND_q & xip1_1_topRange_uid41_sincosTest_b;

    -- xip1E_2_uid60_sincosTest(ADDSUB,59)@0
    xip1E_2_uid60_sincosTest_s <= xMSB_uid51_sincosTest_b;
    xip1E_2_uid60_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => xip1_1_mergedSignalTM_uid42_sincosTest_q(18)) & xip1_1_mergedSignalTM_uid42_sincosTest_q));
    xip1E_2_uid60_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => twoToMiSiYip_uid57_sincosTest_b(17)) & twoToMiSiYip_uid57_sincosTest_b));
    xip1E_2_uid60_sincosTest_combproc: PROCESS (xip1E_2_uid60_sincosTest_a, xip1E_2_uid60_sincosTest_b, xip1E_2_uid60_sincosTest_s)
    BEGIN
        IF (xip1E_2_uid60_sincosTest_s = "1") THEN
            xip1E_2_uid60_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2_uid60_sincosTest_a) + SIGNED(xip1E_2_uid60_sincosTest_b));
        ELSE
            xip1E_2_uid60_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2_uid60_sincosTest_a) - SIGNED(xip1E_2_uid60_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_2_uid60_sincosTest_q <= xip1E_2_uid60_sincosTest_o(19 downto 0);

    -- xip1_2_uid64_sincosTest(BITSELECT,63)@0
    xip1_2_uid64_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_2_uid60_sincosTest_q(18 downto 0));
    xip1_2_uid64_sincosTest_b <= STD_LOGIC_VECTOR(xip1_2_uid64_sincosTest_in(18 downto 0));

    -- twoToMiSiXip_uid72_sincosTest(BITSELECT,71)@0
    twoToMiSiXip_uid72_sincosTest_b <= STD_LOGIC_VECTOR(xip1_2_uid64_sincosTest_b(18 downto 2));

    -- signOfSelectionSignal_uid53_sincosTest(LOGICAL,52)@0
    signOfSelectionSignal_uid53_sincosTest_q <= not (xMSB_uid51_sincosTest_b);

    -- twoToMiSiXip_uid56_sincosTest(BITSELECT,55)@0
    twoToMiSiXip_uid56_sincosTest_b <= STD_LOGIC_VECTOR(xip1_1_mergedSignalTM_uid42_sincosTest_q(18 downto 1));

    -- yip1E_2_uid61_sincosTest(ADDSUB,60)@0
    yip1E_2_uid61_sincosTest_s <= signOfSelectionSignal_uid53_sincosTest_q;
    yip1E_2_uid61_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => yip1_1_mergedSignalTM_uid48_sincosTest_q(18)) & yip1_1_mergedSignalTM_uid48_sincosTest_q));
    yip1E_2_uid61_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => twoToMiSiXip_uid56_sincosTest_b(17)) & twoToMiSiXip_uid56_sincosTest_b));
    yip1E_2_uid61_sincosTest_combproc: PROCESS (yip1E_2_uid61_sincosTest_a, yip1E_2_uid61_sincosTest_b, yip1E_2_uid61_sincosTest_s)
    BEGIN
        IF (yip1E_2_uid61_sincosTest_s = "1") THEN
            yip1E_2_uid61_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2_uid61_sincosTest_a) + SIGNED(yip1E_2_uid61_sincosTest_b));
        ELSE
            yip1E_2_uid61_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2_uid61_sincosTest_a) - SIGNED(yip1E_2_uid61_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_2_uid61_sincosTest_q <= yip1E_2_uid61_sincosTest_o(19 downto 0);

    -- yip1_2_uid65_sincosTest(BITSELECT,64)@0
    yip1_2_uid65_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_2_uid61_sincosTest_q(18 downto 0));
    yip1_2_uid65_sincosTest_b <= STD_LOGIC_VECTOR(yip1_2_uid65_sincosTest_in(18 downto 0));

    -- yip1E_3_uid77_sincosTest(ADDSUB,76)@0
    yip1E_3_uid77_sincosTest_s <= signOfSelectionSignal_uid69_sincosTest_q;
    yip1E_3_uid77_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => yip1_2_uid65_sincosTest_b(18)) & yip1_2_uid65_sincosTest_b));
    yip1E_3_uid77_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 17 => twoToMiSiXip_uid72_sincosTest_b(16)) & twoToMiSiXip_uid72_sincosTest_b));
    yip1E_3_uid77_sincosTest_combproc: PROCESS (yip1E_3_uid77_sincosTest_a, yip1E_3_uid77_sincosTest_b, yip1E_3_uid77_sincosTest_s)
    BEGIN
        IF (yip1E_3_uid77_sincosTest_s = "1") THEN
            yip1E_3_uid77_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3_uid77_sincosTest_a) + SIGNED(yip1E_3_uid77_sincosTest_b));
        ELSE
            yip1E_3_uid77_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3_uid77_sincosTest_a) - SIGNED(yip1E_3_uid77_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_3_uid77_sincosTest_q <= yip1E_3_uid77_sincosTest_o(19 downto 0);

    -- yip1_3_uid81_sincosTest(BITSELECT,80)@0
    yip1_3_uid81_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_3_uid77_sincosTest_q(18 downto 0));
    yip1_3_uid81_sincosTest_b <= STD_LOGIC_VECTOR(yip1_3_uid81_sincosTest_in(18 downto 0));

    -- redist2_yip1_3_uid81_sincosTest_b_1(DELAY,180)
    redist2_yip1_3_uid81_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_3_uid81_sincosTest_b, xout => redist2_yip1_3_uid81_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- twoToMiSiYip_uid89_sincosTest(BITSELECT,88)@1
    twoToMiSiYip_uid89_sincosTest_b <= STD_LOGIC_VECTOR(redist2_yip1_3_uid81_sincosTest_b_1_q(18 downto 3));

    -- twoToMiSiYip_uid73_sincosTest(BITSELECT,72)@0
    twoToMiSiYip_uid73_sincosTest_b <= STD_LOGIC_VECTOR(yip1_2_uid65_sincosTest_b(18 downto 2));

    -- xip1E_3_uid76_sincosTest(ADDSUB,75)@0
    xip1E_3_uid76_sincosTest_s <= xMSB_uid67_sincosTest_b;
    xip1E_3_uid76_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => xip1_2_uid64_sincosTest_b(18)) & xip1_2_uid64_sincosTest_b));
    xip1E_3_uid76_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 17 => twoToMiSiYip_uid73_sincosTest_b(16)) & twoToMiSiYip_uid73_sincosTest_b));
    xip1E_3_uid76_sincosTest_combproc: PROCESS (xip1E_3_uid76_sincosTest_a, xip1E_3_uid76_sincosTest_b, xip1E_3_uid76_sincosTest_s)
    BEGIN
        IF (xip1E_3_uid76_sincosTest_s = "1") THEN
            xip1E_3_uid76_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3_uid76_sincosTest_a) + SIGNED(xip1E_3_uid76_sincosTest_b));
        ELSE
            xip1E_3_uid76_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3_uid76_sincosTest_a) - SIGNED(xip1E_3_uid76_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_3_uid76_sincosTest_q <= xip1E_3_uid76_sincosTest_o(19 downto 0);

    -- xip1_3_uid80_sincosTest(BITSELECT,79)@0
    xip1_3_uid80_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_3_uid76_sincosTest_q(18 downto 0));
    xip1_3_uid80_sincosTest_b <= STD_LOGIC_VECTOR(xip1_3_uid80_sincosTest_in(18 downto 0));

    -- redist3_xip1_3_uid80_sincosTest_b_1(DELAY,181)
    redist3_xip1_3_uid80_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_3_uid80_sincosTest_b, xout => redist3_xip1_3_uid80_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- xip1E_4_uid92_sincosTest(ADDSUB,91)@1
    xip1E_4_uid92_sincosTest_s <= redist1_xMSB_uid83_sincosTest_b_1_q;
    xip1E_4_uid92_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => redist3_xip1_3_uid80_sincosTest_b_1_q(18)) & redist3_xip1_3_uid80_sincosTest_b_1_q));
    xip1E_4_uid92_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 16 => twoToMiSiYip_uid89_sincosTest_b(15)) & twoToMiSiYip_uid89_sincosTest_b));
    xip1E_4_uid92_sincosTest_combproc: PROCESS (xip1E_4_uid92_sincosTest_a, xip1E_4_uid92_sincosTest_b, xip1E_4_uid92_sincosTest_s)
    BEGIN
        IF (xip1E_4_uid92_sincosTest_s = "1") THEN
            xip1E_4_uid92_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4_uid92_sincosTest_a) + SIGNED(xip1E_4_uid92_sincosTest_b));
        ELSE
            xip1E_4_uid92_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4_uid92_sincosTest_a) - SIGNED(xip1E_4_uid92_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_4_uid92_sincosTest_q <= xip1E_4_uid92_sincosTest_o(19 downto 0);

    -- xip1_4_uid96_sincosTest(BITSELECT,95)@1
    xip1_4_uid96_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_4_uid92_sincosTest_q(18 downto 0));
    xip1_4_uid96_sincosTest_b <= STD_LOGIC_VECTOR(xip1_4_uid96_sincosTest_in(18 downto 0));

    -- twoToMiSiXip_uid104_sincosTest(BITSELECT,103)@1
    twoToMiSiXip_uid104_sincosTest_b <= STD_LOGIC_VECTOR(xip1_4_uid96_sincosTest_b(18 downto 4));

    -- signOfSelectionSignal_uid85_sincosTest(LOGICAL,84)@1
    signOfSelectionSignal_uid85_sincosTest_q <= not (redist1_xMSB_uid83_sincosTest_b_1_q);

    -- twoToMiSiXip_uid88_sincosTest(BITSELECT,87)@1
    twoToMiSiXip_uid88_sincosTest_b <= STD_LOGIC_VECTOR(redist3_xip1_3_uid80_sincosTest_b_1_q(18 downto 3));

    -- yip1E_4_uid93_sincosTest(ADDSUB,92)@1
    yip1E_4_uid93_sincosTest_s <= signOfSelectionSignal_uid85_sincosTest_q;
    yip1E_4_uid93_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => redist2_yip1_3_uid81_sincosTest_b_1_q(18)) & redist2_yip1_3_uid81_sincosTest_b_1_q));
    yip1E_4_uid93_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 16 => twoToMiSiXip_uid88_sincosTest_b(15)) & twoToMiSiXip_uid88_sincosTest_b));
    yip1E_4_uid93_sincosTest_combproc: PROCESS (yip1E_4_uid93_sincosTest_a, yip1E_4_uid93_sincosTest_b, yip1E_4_uid93_sincosTest_s)
    BEGIN
        IF (yip1E_4_uid93_sincosTest_s = "1") THEN
            yip1E_4_uid93_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4_uid93_sincosTest_a) + SIGNED(yip1E_4_uid93_sincosTest_b));
        ELSE
            yip1E_4_uid93_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4_uid93_sincosTest_a) - SIGNED(yip1E_4_uid93_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_4_uid93_sincosTest_q <= yip1E_4_uid93_sincosTest_o(19 downto 0);

    -- yip1_4_uid97_sincosTest(BITSELECT,96)@1
    yip1_4_uid97_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_4_uid93_sincosTest_q(18 downto 0));
    yip1_4_uid97_sincosTest_b <= STD_LOGIC_VECTOR(yip1_4_uid97_sincosTest_in(18 downto 0));

    -- yip1E_5_uid109_sincosTest(ADDSUB,108)@1
    yip1E_5_uid109_sincosTest_s <= signOfSelectionSignal_uid101_sincosTest_q;
    yip1E_5_uid109_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => yip1_4_uid97_sincosTest_b(18)) & yip1_4_uid97_sincosTest_b));
    yip1E_5_uid109_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 15 => twoToMiSiXip_uid104_sincosTest_b(14)) & twoToMiSiXip_uid104_sincosTest_b));
    yip1E_5_uid109_sincosTest_combproc: PROCESS (yip1E_5_uid109_sincosTest_a, yip1E_5_uid109_sincosTest_b, yip1E_5_uid109_sincosTest_s)
    BEGIN
        IF (yip1E_5_uid109_sincosTest_s = "1") THEN
            yip1E_5_uid109_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5_uid109_sincosTest_a) + SIGNED(yip1E_5_uid109_sincosTest_b));
        ELSE
            yip1E_5_uid109_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5_uid109_sincosTest_a) - SIGNED(yip1E_5_uid109_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_5_uid109_sincosTest_q <= yip1E_5_uid109_sincosTest_o(19 downto 0);

    -- yip1_5_uid113_sincosTest(BITSELECT,112)@1
    yip1_5_uid113_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_5_uid109_sincosTest_q(18 downto 0));
    yip1_5_uid113_sincosTest_b <= STD_LOGIC_VECTOR(yip1_5_uid113_sincosTest_in(18 downto 0));

    -- twoToMiSiYip_uid121_sincosTest(BITSELECT,120)@1
    twoToMiSiYip_uid121_sincosTest_b <= STD_LOGIC_VECTOR(yip1_5_uid113_sincosTest_b(18 downto 5));

    -- twoToMiSiYip_uid105_sincosTest(BITSELECT,104)@1
    twoToMiSiYip_uid105_sincosTest_b <= STD_LOGIC_VECTOR(yip1_4_uid97_sincosTest_b(18 downto 4));

    -- xip1E_5_uid108_sincosTest(ADDSUB,107)@1
    xip1E_5_uid108_sincosTest_s <= xMSB_uid99_sincosTest_b;
    xip1E_5_uid108_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => xip1_4_uid96_sincosTest_b(18)) & xip1_4_uid96_sincosTest_b));
    xip1E_5_uid108_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 15 => twoToMiSiYip_uid105_sincosTest_b(14)) & twoToMiSiYip_uid105_sincosTest_b));
    xip1E_5_uid108_sincosTest_combproc: PROCESS (xip1E_5_uid108_sincosTest_a, xip1E_5_uid108_sincosTest_b, xip1E_5_uid108_sincosTest_s)
    BEGIN
        IF (xip1E_5_uid108_sincosTest_s = "1") THEN
            xip1E_5_uid108_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5_uid108_sincosTest_a) + SIGNED(xip1E_5_uid108_sincosTest_b));
        ELSE
            xip1E_5_uid108_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5_uid108_sincosTest_a) - SIGNED(xip1E_5_uid108_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_5_uid108_sincosTest_q <= xip1E_5_uid108_sincosTest_o(19 downto 0);

    -- xip1_5_uid112_sincosTest(BITSELECT,111)@1
    xip1_5_uid112_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_5_uid108_sincosTest_q(18 downto 0));
    xip1_5_uid112_sincosTest_b <= STD_LOGIC_VECTOR(xip1_5_uid112_sincosTest_in(18 downto 0));

    -- xip1E_6_uid124_sincosTest(ADDSUB,123)@1
    xip1E_6_uid124_sincosTest_s <= xMSB_uid115_sincosTest_b;
    xip1E_6_uid124_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => xip1_5_uid112_sincosTest_b(18)) & xip1_5_uid112_sincosTest_b));
    xip1E_6_uid124_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 14 => twoToMiSiYip_uid121_sincosTest_b(13)) & twoToMiSiYip_uid121_sincosTest_b));
    xip1E_6_uid124_sincosTest_combproc: PROCESS (xip1E_6_uid124_sincosTest_a, xip1E_6_uid124_sincosTest_b, xip1E_6_uid124_sincosTest_s)
    BEGIN
        IF (xip1E_6_uid124_sincosTest_s = "1") THEN
            xip1E_6_uid124_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6_uid124_sincosTest_a) + SIGNED(xip1E_6_uid124_sincosTest_b));
        ELSE
            xip1E_6_uid124_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6_uid124_sincosTest_a) - SIGNED(xip1E_6_uid124_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_6_uid124_sincosTest_q <= xip1E_6_uid124_sincosTest_o(19 downto 0);

    -- xip1_6_uid131_sincosTest(BITSELECT,130)@1
    xip1_6_uid131_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_6_uid124_sincosTest_q(18 downto 0));
    xip1_6_uid131_sincosTest_b <= STD_LOGIC_VECTOR(xip1_6_uid131_sincosTest_in(18 downto 0));

    -- twoToMiSiXip_uid139_sincosTest(BITSELECT,138)@1
    twoToMiSiXip_uid139_sincosTest_b <= STD_LOGIC_VECTOR(xip1_6_uid131_sincosTest_b(18 downto 6));

    -- signOfSelectionSignal_uid117_sincosTest(LOGICAL,116)@1
    signOfSelectionSignal_uid117_sincosTest_q <= not (xMSB_uid115_sincosTest_b);

    -- twoToMiSiXip_uid120_sincosTest(BITSELECT,119)@1
    twoToMiSiXip_uid120_sincosTest_b <= STD_LOGIC_VECTOR(xip1_5_uid112_sincosTest_b(18 downto 5));

    -- yip1E_6_uid125_sincosTest(ADDSUB,124)@1
    yip1E_6_uid125_sincosTest_s <= signOfSelectionSignal_uid117_sincosTest_q;
    yip1E_6_uid125_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => yip1_5_uid113_sincosTest_b(18)) & yip1_5_uid113_sincosTest_b));
    yip1E_6_uid125_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 14 => twoToMiSiXip_uid120_sincosTest_b(13)) & twoToMiSiXip_uid120_sincosTest_b));
    yip1E_6_uid125_sincosTest_combproc: PROCESS (yip1E_6_uid125_sincosTest_a, yip1E_6_uid125_sincosTest_b, yip1E_6_uid125_sincosTest_s)
    BEGIN
        IF (yip1E_6_uid125_sincosTest_s = "1") THEN
            yip1E_6_uid125_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6_uid125_sincosTest_a) + SIGNED(yip1E_6_uid125_sincosTest_b));
        ELSE
            yip1E_6_uid125_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6_uid125_sincosTest_a) - SIGNED(yip1E_6_uid125_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_6_uid125_sincosTest_q <= yip1E_6_uid125_sincosTest_o(19 downto 0);

    -- yip1_6_uid132_sincosTest(BITSELECT,131)@1
    yip1_6_uid132_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_6_uid125_sincosTest_q(18 downto 0));
    yip1_6_uid132_sincosTest_b <= STD_LOGIC_VECTOR(yip1_6_uid132_sincosTest_in(18 downto 0));

    -- yip1E_7_uid144_sincosTest(ADDSUB,143)@1
    yip1E_7_uid144_sincosTest_s <= signOfSelectionSignal_uid136_sincosTest_q;
    yip1E_7_uid144_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => yip1_6_uid132_sincosTest_b(18)) & yip1_6_uid132_sincosTest_b));
    yip1E_7_uid144_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 13 => twoToMiSiXip_uid139_sincosTest_b(12)) & twoToMiSiXip_uid139_sincosTest_b));
    yip1E_7_uid144_sincosTest_combproc: PROCESS (yip1E_7_uid144_sincosTest_a, yip1E_7_uid144_sincosTest_b, yip1E_7_uid144_sincosTest_s)
    BEGIN
        IF (yip1E_7_uid144_sincosTest_s = "1") THEN
            yip1E_7_uid144_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7_uid144_sincosTest_a) + SIGNED(yip1E_7_uid144_sincosTest_b));
        ELSE
            yip1E_7_uid144_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7_uid144_sincosTest_a) - SIGNED(yip1E_7_uid144_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_7_uid144_sincosTest_q <= yip1E_7_uid144_sincosTest_o(19 downto 0);

    -- yip1_7_uid151_sincosTest(BITSELECT,150)@1
    yip1_7_uid151_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_7_uid144_sincosTest_q(18 downto 0));
    yip1_7_uid151_sincosTest_b <= STD_LOGIC_VECTOR(yip1_7_uid151_sincosTest_in(18 downto 0));

    -- ySumPreRnd_uid157_sincosTest(BITSELECT,156)@1
    ySumPreRnd_uid157_sincosTest_in <= yip1_7_uid151_sincosTest_b(17 downto 0);
    ySumPreRnd_uid157_sincosTest_b <= ySumPreRnd_uid157_sincosTest_in(17 downto 10);

    -- ySumPostRnd_uid160_sincosTest(ADD,159)@1
    ySumPostRnd_uid160_sincosTest_a <= STD_LOGIC_VECTOR("0" & ySumPreRnd_uid157_sincosTest_b);
    ySumPostRnd_uid160_sincosTest_b <= STD_LOGIC_VECTOR("00000000" & VCC_q);
    ySumPostRnd_uid160_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(ySumPostRnd_uid160_sincosTest_a) + UNSIGNED(ySumPostRnd_uid160_sincosTest_b));
    ySumPostRnd_uid160_sincosTest_q <= ySumPostRnd_uid160_sincosTest_o(8 downto 0);

    -- yPostExc_uid162_sincosTest(BITSELECT,161)@1
    yPostExc_uid162_sincosTest_in <= STD_LOGIC_VECTOR(ySumPostRnd_uid160_sincosTest_q(7 downto 0));
    yPostExc_uid162_sincosTest_b <= STD_LOGIC_VECTOR(yPostExc_uid162_sincosTest_in(7 downto 1));

    -- cstZeroForAddSub_uid170_sincosTest(CONSTANT,169)
    cstZeroForAddSub_uid170_sincosTest_q <= "0000000";

    -- sinPostNeg_uid172_sincosTest(ADDSUB,171)@1
    sinPostNeg_uid172_sincosTest_s <= invSinNegCond_uid171_sincosTest_q;
    sinPostNeg_uid172_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => cstZeroForAddSub_uid170_sincosTest_q(6)) & cstZeroForAddSub_uid170_sincosTest_q));
    sinPostNeg_uid172_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => yPostExc_uid162_sincosTest_b(6)) & yPostExc_uid162_sincosTest_b));
    sinPostNeg_uid172_sincosTest_combproc: PROCESS (sinPostNeg_uid172_sincosTest_a, sinPostNeg_uid172_sincosTest_b, sinPostNeg_uid172_sincosTest_s)
    BEGIN
        IF (sinPostNeg_uid172_sincosTest_s = "1") THEN
            sinPostNeg_uid172_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(sinPostNeg_uid172_sincosTest_a) + SIGNED(sinPostNeg_uid172_sincosTest_b));
        ELSE
            sinPostNeg_uid172_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(sinPostNeg_uid172_sincosTest_a) - SIGNED(sinPostNeg_uid172_sincosTest_b));
        END IF;
    END PROCESS;
    sinPostNeg_uid172_sincosTest_q <= sinPostNeg_uid172_sincosTest_o(7 downto 0);

    -- invCosNegCond_uid173_sincosTest(LOGICAL,172)@1
    invCosNegCond_uid173_sincosTest_q <= not (sinNegCond2_uid164_sincosTest_q);

    -- twoToMiSiYip_uid140_sincosTest(BITSELECT,139)@1
    twoToMiSiYip_uid140_sincosTest_b <= STD_LOGIC_VECTOR(yip1_6_uid132_sincosTest_b(18 downto 6));

    -- xip1E_7_uid143_sincosTest(ADDSUB,142)@1
    xip1E_7_uid143_sincosTest_s <= xMSB_uid134_sincosTest_b;
    xip1E_7_uid143_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => xip1_6_uid131_sincosTest_b(18)) & xip1_6_uid131_sincosTest_b));
    xip1E_7_uid143_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 13 => twoToMiSiYip_uid140_sincosTest_b(12)) & twoToMiSiYip_uid140_sincosTest_b));
    xip1E_7_uid143_sincosTest_combproc: PROCESS (xip1E_7_uid143_sincosTest_a, xip1E_7_uid143_sincosTest_b, xip1E_7_uid143_sincosTest_s)
    BEGIN
        IF (xip1E_7_uid143_sincosTest_s = "1") THEN
            xip1E_7_uid143_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7_uid143_sincosTest_a) + SIGNED(xip1E_7_uid143_sincosTest_b));
        ELSE
            xip1E_7_uid143_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7_uid143_sincosTest_a) - SIGNED(xip1E_7_uid143_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_7_uid143_sincosTest_q <= xip1E_7_uid143_sincosTest_o(19 downto 0);

    -- xip1_7_uid150_sincosTest(BITSELECT,149)@1
    xip1_7_uid150_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_7_uid143_sincosTest_q(18 downto 0));
    xip1_7_uid150_sincosTest_b <= STD_LOGIC_VECTOR(xip1_7_uid150_sincosTest_in(18 downto 0));

    -- xSumPreRnd_uid153_sincosTest(BITSELECT,152)@1
    xSumPreRnd_uid153_sincosTest_in <= xip1_7_uid150_sincosTest_b(17 downto 0);
    xSumPreRnd_uid153_sincosTest_b <= xSumPreRnd_uid153_sincosTest_in(17 downto 10);

    -- xSumPostRnd_uid156_sincosTest(ADD,155)@1
    xSumPostRnd_uid156_sincosTest_a <= STD_LOGIC_VECTOR("0" & xSumPreRnd_uid153_sincosTest_b);
    xSumPostRnd_uid156_sincosTest_b <= STD_LOGIC_VECTOR("00000000" & VCC_q);
    xSumPostRnd_uid156_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(xSumPostRnd_uid156_sincosTest_a) + UNSIGNED(xSumPostRnd_uid156_sincosTest_b));
    xSumPostRnd_uid156_sincosTest_q <= xSumPostRnd_uid156_sincosTest_o(8 downto 0);

    -- xPostExc_uid161_sincosTest(BITSELECT,160)@1
    xPostExc_uid161_sincosTest_in <= STD_LOGIC_VECTOR(xSumPostRnd_uid156_sincosTest_q(7 downto 0));
    xPostExc_uid161_sincosTest_b <= STD_LOGIC_VECTOR(xPostExc_uid161_sincosTest_in(7 downto 1));

    -- cosPostNeg_uid174_sincosTest(ADDSUB,173)@1
    cosPostNeg_uid174_sincosTest_s <= invCosNegCond_uid173_sincosTest_q;
    cosPostNeg_uid174_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => cstZeroForAddSub_uid170_sincosTest_q(6)) & cstZeroForAddSub_uid170_sincosTest_q));
    cosPostNeg_uid174_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => xPostExc_uid161_sincosTest_b(6)) & xPostExc_uid161_sincosTest_b));
    cosPostNeg_uid174_sincosTest_combproc: PROCESS (cosPostNeg_uid174_sincosTest_a, cosPostNeg_uid174_sincosTest_b, cosPostNeg_uid174_sincosTest_s)
    BEGIN
        IF (cosPostNeg_uid174_sincosTest_s = "1") THEN
            cosPostNeg_uid174_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(cosPostNeg_uid174_sincosTest_a) + SIGNED(cosPostNeg_uid174_sincosTest_b));
        ELSE
            cosPostNeg_uid174_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(cosPostNeg_uid174_sincosTest_a) - SIGNED(cosPostNeg_uid174_sincosTest_b));
        END IF;
    END PROCESS;
    cosPostNeg_uid174_sincosTest_q <= cosPostNeg_uid174_sincosTest_o(7 downto 0);

    -- redist4_firstQuadrant_uid15_sincosTest_b_1(DELAY,182)
    redist4_firstQuadrant_uid15_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => firstQuadrant_uid15_sincosTest_b, xout => redist4_firstQuadrant_uid15_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- xPostRR_uid176_sincosTest(MUX,175)@1
    xPostRR_uid176_sincosTest_s <= redist4_firstQuadrant_uid15_sincosTest_b_1_q;
    xPostRR_uid176_sincosTest_combproc: PROCESS (xPostRR_uid176_sincosTest_s, cosPostNeg_uid174_sincosTest_q, sinPostNeg_uid172_sincosTest_q)
    BEGIN
        CASE (xPostRR_uid176_sincosTest_s) IS
            WHEN "0" => xPostRR_uid176_sincosTest_q <= cosPostNeg_uid174_sincosTest_q;
            WHEN "1" => xPostRR_uid176_sincosTest_q <= sinPostNeg_uid172_sincosTest_q;
            WHEN OTHERS => xPostRR_uid176_sincosTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sin_uid178_sincosTest(BITSELECT,177)@1
    sin_uid178_sincosTest_in <= STD_LOGIC_VECTOR(xPostRR_uid176_sincosTest_q(6 downto 0));
    sin_uid178_sincosTest_b <= STD_LOGIC_VECTOR(sin_uid178_sincosTest_in(6 downto 0));

    -- xPostRR_uid175_sincosTest(MUX,174)@1
    xPostRR_uid175_sincosTest_s <= redist4_firstQuadrant_uid15_sincosTest_b_1_q;
    xPostRR_uid175_sincosTest_combproc: PROCESS (xPostRR_uid175_sincosTest_s, sinPostNeg_uid172_sincosTest_q, cosPostNeg_uid174_sincosTest_q)
    BEGIN
        CASE (xPostRR_uid175_sincosTest_s) IS
            WHEN "0" => xPostRR_uid175_sincosTest_q <= sinPostNeg_uid172_sincosTest_q;
            WHEN "1" => xPostRR_uid175_sincosTest_q <= cosPostNeg_uid174_sincosTest_q;
            WHEN OTHERS => xPostRR_uid175_sincosTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cos_uid177_sincosTest(BITSELECT,176)@1
    cos_uid177_sincosTest_in <= STD_LOGIC_VECTOR(xPostRR_uid175_sincosTest_q(6 downto 0));
    cos_uid177_sincosTest_b <= STD_LOGIC_VECTOR(cos_uid177_sincosTest_in(6 downto 0));

    -- xOut(GPOUT,4)@1
    c <= cos_uid177_sincosTest_b;
    s <= sin_uid178_sincosTest_b;

END normal;
