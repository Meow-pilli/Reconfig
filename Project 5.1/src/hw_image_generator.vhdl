--------------------------------------------------------------------------------
--
--   FileName:         hw_image_generator.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 05/10/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hw_image_generator IS
  GENERIC(
    pixels_y :  INTEGER := 1920;   --row that first color will persist until
    pixels_x :  INTEGER := 1080);  --column that first color will persist until
  PORT(
    disp_ena :  IN   STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
    row      :  IN   INTEGER;    --row pixel coordinate
    column   :  IN   INTEGER;    --column pixel coordinate
    red      :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
    green    :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
    blue     :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
BEGIN
  PROCESS(disp_ena, row, column)
  BEGIN
    IF(disp_ena = '1') THEN        --display time
      -- Right 'U' representation
      IF(column >= 840 AND row >= 325 AND column <= 870 AND row <= 600) THEN
        red <= "11100101"; -- Right 'U'
        green <= "10001100";
        blue <= "00000000";
		  
		ELSIF(column >= 630 AND row >= 570 AND column <= 870 AND row <= 600) THEN
        red <= "11100101"; -- down 'U'
        green <= "10001100";
        blue <= "00000000";
		  
		  
		ELSIF(column >= 620 AND row >= 325 AND column <= 650 AND row <= 600) THEN
        red <= "11100101"; --left 'U'
        green <= "10001100";
        blue <= "00000000";

		  ELSIF(column >= 1110 AND row >= 325 AND column <= 1140 AND row <= 600) THEN
        red <= "11100101"; -- D first line
        green <= "10001100";
        blue <= "00000000";
		  
		  ELSIF(column >= 1110 AND row >= 325 AND column <= 1140 AND row <= 600) THEN
        red <= "11100101"; -- D first line
        green <= "10001100";
        blue <= "00000000";
		  
		ELSIF(column >= 930 AND row >= 0225 AND column <= 990 AND row <= 700) THEN 
        red <= "11100101";-- down 'T' representation
        green <= "10001100";
        blue <= "00000000"; 
		ELSIF(column >= 760 AND row >= 195 AND column <= 1160 AND row <= 255) THEN
        red <= "11100101";-- upper 'T' representation
        green <= "10001100";
        blue <= "00000000";
		  

      ELSE
        red <= (OTHERS => '1');
        green <= (OTHERS => '1');
        blue <= (OTHERS => '1');
      END IF;
    ELSE                           --blanking time
      red <= (OTHERS => '0');
      green <= (OTHERS => '0');
      blue <= (OTHERS => '0');
    END IF;
  END PROCESS;
END behavior;