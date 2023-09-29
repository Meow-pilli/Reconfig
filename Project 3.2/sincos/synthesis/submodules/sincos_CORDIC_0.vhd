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
-- VHDL created on Fri Sep 29 17:54:53 2023


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
        c : out std_logic_vector(2 downto 0);  -- sfix3_en1
        s : out std_logic_vector(2 downto 0);  -- sfix3_en1
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
    signal cstPiO2_uid11_sincosTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal padBCst_uid12_sincosTest_q : STD_LOGIC_VECTOR (2 downto 0);
    signal bPostPad_uid13_sincosTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal argMPiO2_uid14_sincosTest_a : STD_LOGIC_VECTOR (9 downto 0);
    signal argMPiO2_uid14_sincosTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal argMPiO2_uid14_sincosTest_o : STD_LOGIC_VECTOR (9 downto 0);
    signal argMPiO2_uid14_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal firstQuadrant_uid15_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal absARE_uid16_sincosTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal absARE_uid16_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal argMPiO2_uid17_sincosTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal argMPiO2_uid17_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal absA_uid18_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absA_uid18_sincosTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal cstOneOverK_uid19_sincosTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal cstArcTan2Mi_0_uid23_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal xip1E_1_uid29_sincosTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1E_1CostZeroPaddingA_uid30_sincosTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal yip1E_1NA_uid31_sincosTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_a : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_o : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal invSignOfSelectionSignal_uid33_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_1CostZeroPaddingA_uid34_sincosTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aip1E_1NA_uid35_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_a : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_o : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1_1_topRange_uid38_sincosTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1_1_topRange_uid38_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1_1_mergedSignalTM_uid39_sincosTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid41_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_1_mergedSignalTM_uid45_sincosTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_uid47_sincosTest_in : STD_LOGIC_VECTOR (10 downto 0);
    signal aip1E_uid47_sincosTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal xMSB_uid48_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid50_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid53_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal twoToMiSiYip_uid54_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal cstArcTan2Mi_1_uid55_sincosTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal xip1E_2_uid57_sincosTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2_uid57_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2_uid57_sincosTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_2_uid57_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2_uid57_sincosTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_2_uid58_sincosTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2_uid58_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2_uid58_sincosTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_2_uid58_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2_uid58_sincosTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_2_uid60_sincosTest_a : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_2_uid60_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_2_uid60_sincosTest_o : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_2_uid60_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_2_uid60_sincosTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1_2_uid61_sincosTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1_2_uid61_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_2_uid62_sincosTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_2_uid62_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_uid63_sincosTest_in : STD_LOGIC_VECTOR (9 downto 0);
    signal aip1E_uid63_sincosTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal xMSB_uid64_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid66_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid69_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal twoToMiSiYip_uid70_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_3_uid73_sincosTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_3_uid73_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_3_uid73_sincosTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_3_uid73_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3_uid73_sincosTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_3_uid74_sincosTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_3_uid74_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_3_uid74_sincosTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_3_uid74_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3_uid74_sincosTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1_3_uid77_sincosTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1_3_uid77_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_3_uid78_sincosTest_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_3_uid78_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal xSumPreRnd_uid80_sincosTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xSumPreRnd_uid80_sincosTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal xSumPostRnd_uid83_sincosTest_a : STD_LOGIC_VECTOR (4 downto 0);
    signal xSumPostRnd_uid83_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal xSumPostRnd_uid83_sincosTest_o : STD_LOGIC_VECTOR (4 downto 0);
    signal xSumPostRnd_uid83_sincosTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal ySumPreRnd_uid84_sincosTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal ySumPreRnd_uid84_sincosTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal ySumPostRnd_uid87_sincosTest_a : STD_LOGIC_VECTOR (4 downto 0);
    signal ySumPostRnd_uid87_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal ySumPostRnd_uid87_sincosTest_o : STD_LOGIC_VECTOR (4 downto 0);
    signal ySumPostRnd_uid87_sincosTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xPostExc_uid88_sincosTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal xPostExc_uid88_sincosTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal yPostExc_uid89_sincosTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal yPostExc_uid89_sincosTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal invFirstQuadrant_uid90_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond2_uid91_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond1_uid92_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond0_uid94_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond_uid95_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSinNegCond_uid98_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinPostNeg_uid99_sincosTest_a : STD_LOGIC_VECTOR (4 downto 0);
    signal sinPostNeg_uid99_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal sinPostNeg_uid99_sincosTest_o : STD_LOGIC_VECTOR (4 downto 0);
    signal sinPostNeg_uid99_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal sinPostNeg_uid99_sincosTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal invCosNegCond_uid100_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cosPostNeg_uid101_sincosTest_a : STD_LOGIC_VECTOR (4 downto 0);
    signal cosPostNeg_uid101_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal cosPostNeg_uid101_sincosTest_o : STD_LOGIC_VECTOR (4 downto 0);
    signal cosPostNeg_uid101_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cosPostNeg_uid101_sincosTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xPostRR_uid102_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xPostRR_uid102_sincosTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xPostRR_uid103_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xPostRR_uid103_sincosTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal cos_uid104_sincosTest_in : STD_LOGIC_VECTOR (2 downto 0);
    signal cos_uid104_sincosTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal sin_uid105_sincosTest_in : STD_LOGIC_VECTOR (2 downto 0);
    signal sin_uid105_sincosTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist0_xMSB_uid64_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_xMSB_uid48_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_firstQuadrant_uid15_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_invSignA_uid8_sincosTest_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_signA_uid7_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- invFirstQuadrant_uid90_sincosTest(LOGICAL,89)@1
    invFirstQuadrant_uid90_sincosTest_q <= not (redist2_firstQuadrant_uid15_sincosTest_b_1_q);

    -- signA_uid7_sincosTest(BITSELECT,6)@0
    signA_uid7_sincosTest_b <= STD_LOGIC_VECTOR(a(9 downto 9));

    -- redist4_signA_uid7_sincosTest_b_1(DELAY,109)
    redist4_signA_uid7_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signA_uid7_sincosTest_b, xout => redist4_signA_uid7_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- sinNegCond2_uid91_sincosTest(LOGICAL,90)@1
    sinNegCond2_uid91_sincosTest_q <= redist4_signA_uid7_sincosTest_b_1_q and invFirstQuadrant_uid90_sincosTest_q;

    -- sinNegCond1_uid92_sincosTest(LOGICAL,91)@1
    sinNegCond1_uid92_sincosTest_q <= redist4_signA_uid7_sincosTest_b_1_q and redist2_firstQuadrant_uid15_sincosTest_b_1_q;

    -- invSignA_uid8_sincosTest(LOGICAL,7)@0
    invSignA_uid8_sincosTest_q <= not (signA_uid7_sincosTest_b);

    -- redist3_invSignA_uid8_sincosTest_q_1(DELAY,108)
    redist3_invSignA_uid8_sincosTest_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignA_uid8_sincosTest_q, xout => redist3_invSignA_uid8_sincosTest_q_1_q, clk => clk, aclr => areset );

    -- sinNegCond0_uid94_sincosTest(LOGICAL,93)@1
    sinNegCond0_uid94_sincosTest_q <= redist3_invSignA_uid8_sincosTest_q_1_q and invFirstQuadrant_uid90_sincosTest_q;

    -- sinNegCond_uid95_sincosTest(LOGICAL,94)@1
    sinNegCond_uid95_sincosTest_q <= sinNegCond0_uid94_sincosTest_q or sinNegCond1_uid92_sincosTest_q or sinNegCond2_uid91_sincosTest_q;

    -- invSinNegCond_uid98_sincosTest(LOGICAL,97)@1
    invSinNegCond_uid98_sincosTest_q <= not (sinNegCond_uid95_sincosTest_q);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- xMSB_uid48_sincosTest(BITSELECT,47)@0
    xMSB_uid48_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid47_sincosTest_b(10 downto 10));

    -- cstArcTan2Mi_1_uid55_sincosTest(CONSTANT,54)
    cstArcTan2Mi_1_uid55_sincosTest_q <= "011101101";

    -- invSignOfSelectionSignal_uid33_sincosTest(LOGICAL,32)@0
    invSignOfSelectionSignal_uid33_sincosTest_q <= not (VCC_q);

    -- cstArcTan2Mi_0_uid23_sincosTest(CONSTANT,22)
    cstArcTan2Mi_0_uid23_sincosTest_q <= "0110010010";

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

    -- absARE_uid16_sincosTest(BITSELECT,15)@0
    absARE_uid16_sincosTest_in <= absAR_uid10_sincosTest_b(7 downto 0);
    absARE_uid16_sincosTest_b <= absARE_uid16_sincosTest_in(7 downto 3);

    -- cstPiO2_uid11_sincosTest(CONSTANT,10)
    cstPiO2_uid11_sincosTest_q <= "11001";

    -- bPostPad_uid13_sincosTest(BITJOIN,12)@0
    bPostPad_uid13_sincosTest_q <= cstPiO2_uid11_sincosTest_q & padBCst_uid12_sincosTest_q;

    -- argMPiO2_uid14_sincosTest(SUB,13)@0
    argMPiO2_uid14_sincosTest_a <= STD_LOGIC_VECTOR("0" & absAR_uid10_sincosTest_b);
    argMPiO2_uid14_sincosTest_b <= STD_LOGIC_VECTOR("00" & bPostPad_uid13_sincosTest_q);
    argMPiO2_uid14_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(argMPiO2_uid14_sincosTest_a) - UNSIGNED(argMPiO2_uid14_sincosTest_b));
    argMPiO2_uid14_sincosTest_q <= argMPiO2_uid14_sincosTest_o(9 downto 0);

    -- argMPiO2_uid17_sincosTest(BITSELECT,16)@0
    argMPiO2_uid17_sincosTest_in <= argMPiO2_uid14_sincosTest_q(7 downto 0);
    argMPiO2_uid17_sincosTest_b <= argMPiO2_uid17_sincosTest_in(7 downto 3);

    -- firstQuadrant_uid15_sincosTest(BITSELECT,14)@0
    firstQuadrant_uid15_sincosTest_b <= STD_LOGIC_VECTOR(argMPiO2_uid14_sincosTest_q(9 downto 9));

    -- absA_uid18_sincosTest(MUX,17)@0
    absA_uid18_sincosTest_s <= firstQuadrant_uid15_sincosTest_b;
    absA_uid18_sincosTest_combproc: PROCESS (absA_uid18_sincosTest_s, argMPiO2_uid17_sincosTest_b, absARE_uid16_sincosTest_b)
    BEGIN
        CASE (absA_uid18_sincosTest_s) IS
            WHEN "0" => absA_uid18_sincosTest_q <= argMPiO2_uid17_sincosTest_b;
            WHEN "1" => absA_uid18_sincosTest_q <= absARE_uid16_sincosTest_b;
            WHEN OTHERS => absA_uid18_sincosTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- aip1E_1CostZeroPaddingA_uid34_sincosTest(CONSTANT,33)
    aip1E_1CostZeroPaddingA_uid34_sincosTest_q <= "00000";

    -- aip1E_1NA_uid35_sincosTest(BITJOIN,34)@0
    aip1E_1NA_uid35_sincosTest_q <= absA_uid18_sincosTest_q & aip1E_1CostZeroPaddingA_uid34_sincosTest_q;

    -- aip1E_1sumAHighB_uid36_sincosTest(ADDSUB,35)@0
    aip1E_1sumAHighB_uid36_sincosTest_s <= invSignOfSelectionSignal_uid33_sincosTest_q;
    aip1E_1sumAHighB_uid36_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & aip1E_1NA_uid35_sincosTest_q));
    aip1E_1sumAHighB_uid36_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => cstArcTan2Mi_0_uid23_sincosTest_q(9)) & cstArcTan2Mi_0_uid23_sincosTest_q));
    aip1E_1sumAHighB_uid36_sincosTest_combproc: PROCESS (aip1E_1sumAHighB_uid36_sincosTest_a, aip1E_1sumAHighB_uid36_sincosTest_b, aip1E_1sumAHighB_uid36_sincosTest_s)
    BEGIN
        IF (aip1E_1sumAHighB_uid36_sincosTest_s = "1") THEN
            aip1E_1sumAHighB_uid36_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_1sumAHighB_uid36_sincosTest_a) + SIGNED(aip1E_1sumAHighB_uid36_sincosTest_b));
        ELSE
            aip1E_1sumAHighB_uid36_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_1sumAHighB_uid36_sincosTest_a) - SIGNED(aip1E_1sumAHighB_uid36_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_1sumAHighB_uid36_sincosTest_q <= aip1E_1sumAHighB_uid36_sincosTest_o(11 downto 0);

    -- aip1E_uid47_sincosTest(BITSELECT,46)@0
    aip1E_uid47_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_1sumAHighB_uid36_sincosTest_q(10 downto 0));
    aip1E_uid47_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid47_sincosTest_in(10 downto 0));

    -- aip1E_2_uid60_sincosTest(ADDSUB,59)@0
    aip1E_2_uid60_sincosTest_s <= xMSB_uid48_sincosTest_b;
    aip1E_2_uid60_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => aip1E_uid47_sincosTest_b(10)) & aip1E_uid47_sincosTest_b));
    aip1E_2_uid60_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 9 => cstArcTan2Mi_1_uid55_sincosTest_q(8)) & cstArcTan2Mi_1_uid55_sincosTest_q));
    aip1E_2_uid60_sincosTest_combproc: PROCESS (aip1E_2_uid60_sincosTest_a, aip1E_2_uid60_sincosTest_b, aip1E_2_uid60_sincosTest_s)
    BEGIN
        IF (aip1E_2_uid60_sincosTest_s = "1") THEN
            aip1E_2_uid60_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2_uid60_sincosTest_a) + SIGNED(aip1E_2_uid60_sincosTest_b));
        ELSE
            aip1E_2_uid60_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2_uid60_sincosTest_a) - SIGNED(aip1E_2_uid60_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_2_uid60_sincosTest_q <= aip1E_2_uid60_sincosTest_o(11 downto 0);

    -- aip1E_uid63_sincosTest(BITSELECT,62)@0
    aip1E_uid63_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_2_uid60_sincosTest_q(9 downto 0));
    aip1E_uid63_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid63_sincosTest_in(9 downto 0));

    -- xMSB_uid64_sincosTest(BITSELECT,63)@0
    xMSB_uid64_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid63_sincosTest_b(9 downto 9));

    -- redist0_xMSB_uid64_sincosTest_b_1(DELAY,105)
    redist0_xMSB_uid64_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid64_sincosTest_b, xout => redist0_xMSB_uid64_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- signOfSelectionSignal_uid66_sincosTest(LOGICAL,65)@1
    signOfSelectionSignal_uid66_sincosTest_q <= not (redist0_xMSB_uid64_sincosTest_b_1_q);

    -- redist1_xMSB_uid48_sincosTest_b_1(DELAY,106)
    redist1_xMSB_uid48_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid48_sincosTest_b, xout => redist1_xMSB_uid48_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- xMSB_uid41_sincosTest(BITSELECT,40)@1
    xMSB_uid41_sincosTest_b <= STD_LOGIC_VECTOR(yip1E_1sumAHighB_uid32_sincosTest_q(13 downto 13));

    -- cstOneOverK_uid19_sincosTest(CONSTANT,18)
    cstOneOverK_uid19_sincosTest_q <= "100110110111";

    -- yip1E_1CostZeroPaddingA_uid30_sincosTest(CONSTANT,29)
    yip1E_1CostZeroPaddingA_uid30_sincosTest_q <= "000000000000";

    -- yip1E_1NA_uid31_sincosTest(BITJOIN,30)@1
    yip1E_1NA_uid31_sincosTest_q <= GND_q & yip1E_1CostZeroPaddingA_uid30_sincosTest_q;

    -- yip1E_1sumAHighB_uid32_sincosTest(ADDSUB,31)@1
    yip1E_1sumAHighB_uid32_sincosTest_s <= VCC_q;
    yip1E_1sumAHighB_uid32_sincosTest_a <= STD_LOGIC_VECTOR("00" & yip1E_1NA_uid31_sincosTest_q);
    yip1E_1sumAHighB_uid32_sincosTest_b <= STD_LOGIC_VECTOR("000" & cstOneOverK_uid19_sincosTest_q);
    yip1E_1sumAHighB_uid32_sincosTest_combproc: PROCESS (yip1E_1sumAHighB_uid32_sincosTest_a, yip1E_1sumAHighB_uid32_sincosTest_b, yip1E_1sumAHighB_uid32_sincosTest_s)
    BEGIN
        IF (yip1E_1sumAHighB_uid32_sincosTest_s = "1") THEN
            yip1E_1sumAHighB_uid32_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1sumAHighB_uid32_sincosTest_a) + UNSIGNED(yip1E_1sumAHighB_uid32_sincosTest_b));
        ELSE
            yip1E_1sumAHighB_uid32_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1sumAHighB_uid32_sincosTest_a) - UNSIGNED(yip1E_1sumAHighB_uid32_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_1sumAHighB_uid32_sincosTest_q <= yip1E_1sumAHighB_uid32_sincosTest_o(13 downto 0);

    -- yip1_1_mergedSignalTM_uid45_sincosTest(BITJOIN,44)@1
    yip1_1_mergedSignalTM_uid45_sincosTest_q <= xMSB_uid41_sincosTest_b & yip1E_1sumAHighB_uid32_sincosTest_q;

    -- twoToMiSiYip_uid54_sincosTest(BITSELECT,53)@1
    twoToMiSiYip_uid54_sincosTest_b <= STD_LOGIC_VECTOR(yip1_1_mergedSignalTM_uid45_sincosTest_q(14 downto 1));

    -- xip1E_1_uid29_sincosTest(BITJOIN,28)@1
    xip1E_1_uid29_sincosTest_q <= STD_LOGIC_VECTOR((2 downto 1 => GND_q(0)) & GND_q) & cstOneOverK_uid19_sincosTest_q;

    -- xip1_1_topRange_uid38_sincosTest(BITSELECT,37)@1
    xip1_1_topRange_uid38_sincosTest_in <= xip1E_1_uid29_sincosTest_q(13 downto 0);
    xip1_1_topRange_uid38_sincosTest_b <= xip1_1_topRange_uid38_sincosTest_in(13 downto 0);

    -- xip1_1_mergedSignalTM_uid39_sincosTest(BITJOIN,38)@1
    xip1_1_mergedSignalTM_uid39_sincosTest_q <= GND_q & xip1_1_topRange_uid38_sincosTest_b;

    -- xip1E_2_uid57_sincosTest(ADDSUB,56)@1
    xip1E_2_uid57_sincosTest_s <= redist1_xMSB_uid48_sincosTest_b_1_q;
    xip1E_2_uid57_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => xip1_1_mergedSignalTM_uid39_sincosTest_q(14)) & xip1_1_mergedSignalTM_uid39_sincosTest_q));
    xip1E_2_uid57_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 14 => twoToMiSiYip_uid54_sincosTest_b(13)) & twoToMiSiYip_uid54_sincosTest_b));
    xip1E_2_uid57_sincosTest_combproc: PROCESS (xip1E_2_uid57_sincosTest_a, xip1E_2_uid57_sincosTest_b, xip1E_2_uid57_sincosTest_s)
    BEGIN
        IF (xip1E_2_uid57_sincosTest_s = "1") THEN
            xip1E_2_uid57_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2_uid57_sincosTest_a) + SIGNED(xip1E_2_uid57_sincosTest_b));
        ELSE
            xip1E_2_uid57_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2_uid57_sincosTest_a) - SIGNED(xip1E_2_uid57_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_2_uid57_sincosTest_q <= xip1E_2_uid57_sincosTest_o(15 downto 0);

    -- xip1_2_uid61_sincosTest(BITSELECT,60)@1
    xip1_2_uid61_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_2_uid57_sincosTest_q(14 downto 0));
    xip1_2_uid61_sincosTest_b <= STD_LOGIC_VECTOR(xip1_2_uid61_sincosTest_in(14 downto 0));

    -- twoToMiSiXip_uid69_sincosTest(BITSELECT,68)@1
    twoToMiSiXip_uid69_sincosTest_b <= STD_LOGIC_VECTOR(xip1_2_uid61_sincosTest_b(14 downto 2));

    -- signOfSelectionSignal_uid50_sincosTest(LOGICAL,49)@1
    signOfSelectionSignal_uid50_sincosTest_q <= not (redist1_xMSB_uid48_sincosTest_b_1_q);

    -- twoToMiSiXip_uid53_sincosTest(BITSELECT,52)@1
    twoToMiSiXip_uid53_sincosTest_b <= STD_LOGIC_VECTOR(xip1_1_mergedSignalTM_uid39_sincosTest_q(14 downto 1));

    -- yip1E_2_uid58_sincosTest(ADDSUB,57)@1
    yip1E_2_uid58_sincosTest_s <= signOfSelectionSignal_uid50_sincosTest_q;
    yip1E_2_uid58_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => yip1_1_mergedSignalTM_uid45_sincosTest_q(14)) & yip1_1_mergedSignalTM_uid45_sincosTest_q));
    yip1E_2_uid58_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 14 => twoToMiSiXip_uid53_sincosTest_b(13)) & twoToMiSiXip_uid53_sincosTest_b));
    yip1E_2_uid58_sincosTest_combproc: PROCESS (yip1E_2_uid58_sincosTest_a, yip1E_2_uid58_sincosTest_b, yip1E_2_uid58_sincosTest_s)
    BEGIN
        IF (yip1E_2_uid58_sincosTest_s = "1") THEN
            yip1E_2_uid58_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2_uid58_sincosTest_a) + SIGNED(yip1E_2_uid58_sincosTest_b));
        ELSE
            yip1E_2_uid58_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2_uid58_sincosTest_a) - SIGNED(yip1E_2_uid58_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_2_uid58_sincosTest_q <= yip1E_2_uid58_sincosTest_o(15 downto 0);

    -- yip1_2_uid62_sincosTest(BITSELECT,61)@1
    yip1_2_uid62_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_2_uid58_sincosTest_q(14 downto 0));
    yip1_2_uid62_sincosTest_b <= STD_LOGIC_VECTOR(yip1_2_uid62_sincosTest_in(14 downto 0));

    -- yip1E_3_uid74_sincosTest(ADDSUB,73)@1
    yip1E_3_uid74_sincosTest_s <= signOfSelectionSignal_uid66_sincosTest_q;
    yip1E_3_uid74_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => yip1_2_uid62_sincosTest_b(14)) & yip1_2_uid62_sincosTest_b));
    yip1E_3_uid74_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 13 => twoToMiSiXip_uid69_sincosTest_b(12)) & twoToMiSiXip_uid69_sincosTest_b));
    yip1E_3_uid74_sincosTest_combproc: PROCESS (yip1E_3_uid74_sincosTest_a, yip1E_3_uid74_sincosTest_b, yip1E_3_uid74_sincosTest_s)
    BEGIN
        IF (yip1E_3_uid74_sincosTest_s = "1") THEN
            yip1E_3_uid74_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3_uid74_sincosTest_a) + SIGNED(yip1E_3_uid74_sincosTest_b));
        ELSE
            yip1E_3_uid74_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3_uid74_sincosTest_a) - SIGNED(yip1E_3_uid74_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_3_uid74_sincosTest_q <= yip1E_3_uid74_sincosTest_o(15 downto 0);

    -- yip1_3_uid78_sincosTest(BITSELECT,77)@1
    yip1_3_uid78_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_3_uid74_sincosTest_q(14 downto 0));
    yip1_3_uid78_sincosTest_b <= STD_LOGIC_VECTOR(yip1_3_uid78_sincosTest_in(14 downto 0));

    -- ySumPreRnd_uid84_sincosTest(BITSELECT,83)@1
    ySumPreRnd_uid84_sincosTest_in <= yip1_3_uid78_sincosTest_b(13 downto 0);
    ySumPreRnd_uid84_sincosTest_b <= ySumPreRnd_uid84_sincosTest_in(13 downto 10);

    -- ySumPostRnd_uid87_sincosTest(ADD,86)@1
    ySumPostRnd_uid87_sincosTest_a <= STD_LOGIC_VECTOR("0" & ySumPreRnd_uid84_sincosTest_b);
    ySumPostRnd_uid87_sincosTest_b <= STD_LOGIC_VECTOR("0000" & VCC_q);
    ySumPostRnd_uid87_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(ySumPostRnd_uid87_sincosTest_a) + UNSIGNED(ySumPostRnd_uid87_sincosTest_b));
    ySumPostRnd_uid87_sincosTest_q <= ySumPostRnd_uid87_sincosTest_o(4 downto 0);

    -- yPostExc_uid89_sincosTest(BITSELECT,88)@1
    yPostExc_uid89_sincosTest_in <= STD_LOGIC_VECTOR(ySumPostRnd_uid87_sincosTest_q(3 downto 0));
    yPostExc_uid89_sincosTest_b <= STD_LOGIC_VECTOR(yPostExc_uid89_sincosTest_in(3 downto 1));

    -- padBCst_uid12_sincosTest(CONSTANT,11)
    padBCst_uid12_sincosTest_q <= "000";

    -- sinPostNeg_uid99_sincosTest(ADDSUB,98)@1
    sinPostNeg_uid99_sincosTest_s <= invSinNegCond_uid98_sincosTest_q;
    sinPostNeg_uid99_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((4 downto 3 => padBCst_uid12_sincosTest_q(2)) & padBCst_uid12_sincosTest_q));
    sinPostNeg_uid99_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((4 downto 3 => yPostExc_uid89_sincosTest_b(2)) & yPostExc_uid89_sincosTest_b));
    sinPostNeg_uid99_sincosTest_combproc: PROCESS (sinPostNeg_uid99_sincosTest_a, sinPostNeg_uid99_sincosTest_b, sinPostNeg_uid99_sincosTest_s)
    BEGIN
        IF (sinPostNeg_uid99_sincosTest_s = "1") THEN
            sinPostNeg_uid99_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(sinPostNeg_uid99_sincosTest_a) + SIGNED(sinPostNeg_uid99_sincosTest_b));
        ELSE
            sinPostNeg_uid99_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(sinPostNeg_uid99_sincosTest_a) - SIGNED(sinPostNeg_uid99_sincosTest_b));
        END IF;
    END PROCESS;
    sinPostNeg_uid99_sincosTest_q <= sinPostNeg_uid99_sincosTest_o(3 downto 0);

    -- invCosNegCond_uid100_sincosTest(LOGICAL,99)@1
    invCosNegCond_uid100_sincosTest_q <= not (sinNegCond2_uid91_sincosTest_q);

    -- twoToMiSiYip_uid70_sincosTest(BITSELECT,69)@1
    twoToMiSiYip_uid70_sincosTest_b <= STD_LOGIC_VECTOR(yip1_2_uid62_sincosTest_b(14 downto 2));

    -- xip1E_3_uid73_sincosTest(ADDSUB,72)@1
    xip1E_3_uid73_sincosTest_s <= redist0_xMSB_uid64_sincosTest_b_1_q;
    xip1E_3_uid73_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => xip1_2_uid61_sincosTest_b(14)) & xip1_2_uid61_sincosTest_b));
    xip1E_3_uid73_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 13 => twoToMiSiYip_uid70_sincosTest_b(12)) & twoToMiSiYip_uid70_sincosTest_b));
    xip1E_3_uid73_sincosTest_combproc: PROCESS (xip1E_3_uid73_sincosTest_a, xip1E_3_uid73_sincosTest_b, xip1E_3_uid73_sincosTest_s)
    BEGIN
        IF (xip1E_3_uid73_sincosTest_s = "1") THEN
            xip1E_3_uid73_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3_uid73_sincosTest_a) + SIGNED(xip1E_3_uid73_sincosTest_b));
        ELSE
            xip1E_3_uid73_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3_uid73_sincosTest_a) - SIGNED(xip1E_3_uid73_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_3_uid73_sincosTest_q <= xip1E_3_uid73_sincosTest_o(15 downto 0);

    -- xip1_3_uid77_sincosTest(BITSELECT,76)@1
    xip1_3_uid77_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_3_uid73_sincosTest_q(14 downto 0));
    xip1_3_uid77_sincosTest_b <= STD_LOGIC_VECTOR(xip1_3_uid77_sincosTest_in(14 downto 0));

    -- xSumPreRnd_uid80_sincosTest(BITSELECT,79)@1
    xSumPreRnd_uid80_sincosTest_in <= xip1_3_uid77_sincosTest_b(13 downto 0);
    xSumPreRnd_uid80_sincosTest_b <= xSumPreRnd_uid80_sincosTest_in(13 downto 10);

    -- xSumPostRnd_uid83_sincosTest(ADD,82)@1
    xSumPostRnd_uid83_sincosTest_a <= STD_LOGIC_VECTOR("0" & xSumPreRnd_uid80_sincosTest_b);
    xSumPostRnd_uid83_sincosTest_b <= STD_LOGIC_VECTOR("0000" & VCC_q);
    xSumPostRnd_uid83_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(xSumPostRnd_uid83_sincosTest_a) + UNSIGNED(xSumPostRnd_uid83_sincosTest_b));
    xSumPostRnd_uid83_sincosTest_q <= xSumPostRnd_uid83_sincosTest_o(4 downto 0);

    -- xPostExc_uid88_sincosTest(BITSELECT,87)@1
    xPostExc_uid88_sincosTest_in <= STD_LOGIC_VECTOR(xSumPostRnd_uid83_sincosTest_q(3 downto 0));
    xPostExc_uid88_sincosTest_b <= STD_LOGIC_VECTOR(xPostExc_uid88_sincosTest_in(3 downto 1));

    -- cosPostNeg_uid101_sincosTest(ADDSUB,100)@1
    cosPostNeg_uid101_sincosTest_s <= invCosNegCond_uid100_sincosTest_q;
    cosPostNeg_uid101_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((4 downto 3 => padBCst_uid12_sincosTest_q(2)) & padBCst_uid12_sincosTest_q));
    cosPostNeg_uid101_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((4 downto 3 => xPostExc_uid88_sincosTest_b(2)) & xPostExc_uid88_sincosTest_b));
    cosPostNeg_uid101_sincosTest_combproc: PROCESS (cosPostNeg_uid101_sincosTest_a, cosPostNeg_uid101_sincosTest_b, cosPostNeg_uid101_sincosTest_s)
    BEGIN
        IF (cosPostNeg_uid101_sincosTest_s = "1") THEN
            cosPostNeg_uid101_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(cosPostNeg_uid101_sincosTest_a) + SIGNED(cosPostNeg_uid101_sincosTest_b));
        ELSE
            cosPostNeg_uid101_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(cosPostNeg_uid101_sincosTest_a) - SIGNED(cosPostNeg_uid101_sincosTest_b));
        END IF;
    END PROCESS;
    cosPostNeg_uid101_sincosTest_q <= cosPostNeg_uid101_sincosTest_o(3 downto 0);

    -- redist2_firstQuadrant_uid15_sincosTest_b_1(DELAY,107)
    redist2_firstQuadrant_uid15_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => firstQuadrant_uid15_sincosTest_b, xout => redist2_firstQuadrant_uid15_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- xPostRR_uid103_sincosTest(MUX,102)@1
    xPostRR_uid103_sincosTest_s <= redist2_firstQuadrant_uid15_sincosTest_b_1_q;
    xPostRR_uid103_sincosTest_combproc: PROCESS (xPostRR_uid103_sincosTest_s, cosPostNeg_uid101_sincosTest_q, sinPostNeg_uid99_sincosTest_q)
    BEGIN
        CASE (xPostRR_uid103_sincosTest_s) IS
            WHEN "0" => xPostRR_uid103_sincosTest_q <= cosPostNeg_uid101_sincosTest_q;
            WHEN "1" => xPostRR_uid103_sincosTest_q <= sinPostNeg_uid99_sincosTest_q;
            WHEN OTHERS => xPostRR_uid103_sincosTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sin_uid105_sincosTest(BITSELECT,104)@1
    sin_uid105_sincosTest_in <= STD_LOGIC_VECTOR(xPostRR_uid103_sincosTest_q(2 downto 0));
    sin_uid105_sincosTest_b <= STD_LOGIC_VECTOR(sin_uid105_sincosTest_in(2 downto 0));

    -- xPostRR_uid102_sincosTest(MUX,101)@1
    xPostRR_uid102_sincosTest_s <= redist2_firstQuadrant_uid15_sincosTest_b_1_q;
    xPostRR_uid102_sincosTest_combproc: PROCESS (xPostRR_uid102_sincosTest_s, sinPostNeg_uid99_sincosTest_q, cosPostNeg_uid101_sincosTest_q)
    BEGIN
        CASE (xPostRR_uid102_sincosTest_s) IS
            WHEN "0" => xPostRR_uid102_sincosTest_q <= sinPostNeg_uid99_sincosTest_q;
            WHEN "1" => xPostRR_uid102_sincosTest_q <= cosPostNeg_uid101_sincosTest_q;
            WHEN OTHERS => xPostRR_uid102_sincosTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cos_uid104_sincosTest(BITSELECT,103)@1
    cos_uid104_sincosTest_in <= STD_LOGIC_VECTOR(xPostRR_uid102_sincosTest_q(2 downto 0));
    cos_uid104_sincosTest_b <= STD_LOGIC_VECTOR(cos_uid104_sincosTest_in(2 downto 0));

    -- xOut(GPOUT,4)@1
    c <= cos_uid104_sincosTest_b;
    s <= sin_uid105_sincosTest_b;

END normal;
