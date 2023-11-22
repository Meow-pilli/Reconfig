	component DE1_SoC_QSYS is
		port (
			clk_clk               : in  std_logic                    := 'X';             -- clk
			reset_reset_n         : in  std_logic                    := 'X';             -- reset_n
			sw_export             : in  std_logic_vector(9 downto 0) := (others => 'X'); -- export
			adc_ltc2308_CONVST    : out std_logic;                                       -- CONVST
			adc_ltc2308_SCK       : out std_logic;                                       -- SCK
			adc_ltc2308_SDI       : out std_logic;                                       -- SDI
			adc_ltc2308_SDO       : in  std_logic                    := 'X';             -- SDO
			pll_sys_outclk2_clk   : out std_logic;                                       -- clk
			pll_sys_locked_export : out std_logic                                        -- export
		);
	end component DE1_SoC_QSYS;

	u0 : component DE1_SoC_QSYS
		port map (
			clk_clk               => CONNECTED_TO_clk_clk,               --             clk.clk
			reset_reset_n         => CONNECTED_TO_reset_reset_n,         --           reset.reset_n
			sw_export             => CONNECTED_TO_sw_export,             --              sw.export
			adc_ltc2308_CONVST    => CONNECTED_TO_adc_ltc2308_CONVST,    --     adc_ltc2308.CONVST
			adc_ltc2308_SCK       => CONNECTED_TO_adc_ltc2308_SCK,       --                .SCK
			adc_ltc2308_SDI       => CONNECTED_TO_adc_ltc2308_SDI,       --                .SDI
			adc_ltc2308_SDO       => CONNECTED_TO_adc_ltc2308_SDO,       --                .SDO
			pll_sys_outclk2_clk   => CONNECTED_TO_pll_sys_outclk2_clk,   -- pll_sys_outclk2.clk
			pll_sys_locked_export => CONNECTED_TO_pll_sys_locked_export  --  pll_sys_locked.export
		);

