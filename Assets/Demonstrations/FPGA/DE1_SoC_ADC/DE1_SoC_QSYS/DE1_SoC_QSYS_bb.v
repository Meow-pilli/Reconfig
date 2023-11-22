
module DE1_SoC_QSYS (
	clk_clk,
	reset_reset_n,
	sw_export,
	adc_ltc2308_CONVST,
	adc_ltc2308_SCK,
	adc_ltc2308_SDI,
	adc_ltc2308_SDO,
	pll_sys_outclk2_clk,
	pll_sys_locked_export);	

	input		clk_clk;
	input		reset_reset_n;
	input	[9:0]	sw_export;
	output		adc_ltc2308_CONVST;
	output		adc_ltc2308_SCK;
	output		adc_ltc2308_SDI;
	input		adc_ltc2308_SDO;
	output		pll_sys_outclk2_clk;
	output		pll_sys_locked_export;
endmodule
