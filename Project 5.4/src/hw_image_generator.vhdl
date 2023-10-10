ARCHITECTURE behavior OF hw_image_generator IS
BEGIN
  PROCESS(disp_ena, row, column)
  BEGIN
    IF(disp_ena = '1') THEN        --display time
      -- Simplified 'U' representation
      IF(row >= 550 AND column >= 800 AND row <= 900 AND column <= 850) THEN
        red <= "11100101";
        green <= "10001100";
        blue <= "00000000";
      -- Simplified 'T' representation (top part of T)
      ELSIF(row >= 500 AND column >= 870 AND row <= 550 AND column <= 1000) THEN
        red <= "11100101";
        green <= "10001100";
        blue <= "00000000";
      -- Simplified 'T' representation (downward stem of T)
      ELSIF(row >= 550 AND column >= 930 AND row <= 900 AND column <= 950) THEN
        red <= "11100101";
        green <= "10001100";
        blue <= "00000000";
      -- Simplified 'D' representation
      ELSIF(row >= 550 AND column >= 1050 AND row <= 900 AND column <= 1100) THEN
        red <= "11100101";
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