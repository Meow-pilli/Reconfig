	DE1_SoC_QSYS u0 (
		.clk_clk               (<connected-to-clk_clk>),               //             clk.clk
		.reset_reset_n         (<connected-to-reset_reset_n>),         //           reset.reset_n
		.sw_export             (<connected-to-sw_export>),             //              sw.export
		.adc_ltc2308_CONVST    (<connected-to-adc_ltc2308_CONVST>),    //     adc_ltc2308.CONVST
		.adc_ltc2308_SCK       (<connected-to-adc_ltc2308_SCK>),       //                .SCK
		.adc_ltc2308_SDI       (<connected-to-adc_ltc2308_SDI>),       //                .SDI
		.adc_ltc2308_SDO       (<connected-to-adc_ltc2308_SDO>),       //                .SDO
		.pll_sys_outclk2_clk   (<connected-to-pll_sys_outclk2_clk>),   // pll_sys_outclk2.clk
		.pll_sys_locked_export (<connected-to-pll_sys_locked_export>)  //  pll_sys_locked.export
	);

