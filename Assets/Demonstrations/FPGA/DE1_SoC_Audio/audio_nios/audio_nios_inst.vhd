	component audio_nios is
		port (
			clk_clk                    : in    std_logic                     := 'X';             -- clk
			reset_reset_n              : in    std_logic                     := 'X';             -- reset_n
			altpll_audio_locked_export : out   std_logic;                                        -- export
			audio_XCK                  : out   std_logic;                                        -- XCK
			audio_ADCDAT               : in    std_logic                     := 'X';             -- ADCDAT
			audio_ADCLRC               : in    std_logic                     := 'X';             -- ADCLRC
			audio_DACDAT               : out   std_logic;                                        -- DACDAT
			audio_DACLRC               : in    std_logic                     := 'X';             -- DACLRC
			audio_BCLK                 : in    std_logic                     := 'X';             -- BCLK
			i2c_sda_export             : inout std_logic                     := 'X';             -- export
			i2c_scl_export             : out   std_logic;                                        -- export
			pio_sw_export              : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			pio_led_export             : out   std_logic_vector(9 downto 0);                     -- export
			pio_key_export             : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			sdram_wire_addr            : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba              : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n           : out   std_logic;                                        -- cas_n
			sdram_wire_cke             : out   std_logic;                                        -- cke
			sdram_wire_cs_n            : out   std_logic;                                        -- cs_n
			sdram_wire_dq              : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm             : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n           : out   std_logic;                                        -- ras_n
			sdram_wire_we_n            : out   std_logic;                                        -- we_n
			pll_sdram_clk              : out   std_logic;                                        -- clk
			pll_locked_export          : out   std_logic;                                        -- export
			hex5_hex0_export           : out   std_logic_vector(47 downto 0)                     -- export
		);
	end component audio_nios;

	u0 : component audio_nios
		port map (
			clk_clk                    => CONNECTED_TO_clk_clk,                    --                 clk.clk
			reset_reset_n              => CONNECTED_TO_reset_reset_n,              --               reset.reset_n
			altpll_audio_locked_export => CONNECTED_TO_altpll_audio_locked_export, -- altpll_audio_locked.export
			audio_XCK                  => CONNECTED_TO_audio_XCK,                  --               audio.XCK
			audio_ADCDAT               => CONNECTED_TO_audio_ADCDAT,               --                    .ADCDAT
			audio_ADCLRC               => CONNECTED_TO_audio_ADCLRC,               --                    .ADCLRC
			audio_DACDAT               => CONNECTED_TO_audio_DACDAT,               --                    .DACDAT
			audio_DACLRC               => CONNECTED_TO_audio_DACLRC,               --                    .DACLRC
			audio_BCLK                 => CONNECTED_TO_audio_BCLK,                 --                    .BCLK
			i2c_sda_export             => CONNECTED_TO_i2c_sda_export,             --             i2c_sda.export
			i2c_scl_export             => CONNECTED_TO_i2c_scl_export,             --             i2c_scl.export
			pio_sw_export              => CONNECTED_TO_pio_sw_export,              --              pio_sw.export
			pio_led_export             => CONNECTED_TO_pio_led_export,             --             pio_led.export
			pio_key_export             => CONNECTED_TO_pio_key_export,             --             pio_key.export
			sdram_wire_addr            => CONNECTED_TO_sdram_wire_addr,            --          sdram_wire.addr
			sdram_wire_ba              => CONNECTED_TO_sdram_wire_ba,              --                    .ba
			sdram_wire_cas_n           => CONNECTED_TO_sdram_wire_cas_n,           --                    .cas_n
			sdram_wire_cke             => CONNECTED_TO_sdram_wire_cke,             --                    .cke
			sdram_wire_cs_n            => CONNECTED_TO_sdram_wire_cs_n,            --                    .cs_n
			sdram_wire_dq              => CONNECTED_TO_sdram_wire_dq,              --                    .dq
			sdram_wire_dqm             => CONNECTED_TO_sdram_wire_dqm,             --                    .dqm
			sdram_wire_ras_n           => CONNECTED_TO_sdram_wire_ras_n,           --                    .ras_n
			sdram_wire_we_n            => CONNECTED_TO_sdram_wire_we_n,            --                    .we_n
			pll_sdram_clk              => CONNECTED_TO_pll_sdram_clk,              --           pll_sdram.clk
			pll_locked_export          => CONNECTED_TO_pll_locked_export,          --          pll_locked.export
			hex5_hex0_export           => CONNECTED_TO_hex5_hex0_export            --           hex5_hex0.export
		);

