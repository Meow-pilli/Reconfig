	audio_nios u0 (
		.clk_clk                    (<connected-to-clk_clk>),                    //                 clk.clk
		.reset_reset_n              (<connected-to-reset_reset_n>),              //               reset.reset_n
		.altpll_audio_locked_export (<connected-to-altpll_audio_locked_export>), // altpll_audio_locked.export
		.audio_XCK                  (<connected-to-audio_XCK>),                  //               audio.XCK
		.audio_ADCDAT               (<connected-to-audio_ADCDAT>),               //                    .ADCDAT
		.audio_ADCLRC               (<connected-to-audio_ADCLRC>),               //                    .ADCLRC
		.audio_DACDAT               (<connected-to-audio_DACDAT>),               //                    .DACDAT
		.audio_DACLRC               (<connected-to-audio_DACLRC>),               //                    .DACLRC
		.audio_BCLK                 (<connected-to-audio_BCLK>),                 //                    .BCLK
		.i2c_sda_export             (<connected-to-i2c_sda_export>),             //             i2c_sda.export
		.i2c_scl_export             (<connected-to-i2c_scl_export>),             //             i2c_scl.export
		.pio_sw_export              (<connected-to-pio_sw_export>),              //              pio_sw.export
		.pio_led_export             (<connected-to-pio_led_export>),             //             pio_led.export
		.pio_key_export             (<connected-to-pio_key_export>),             //             pio_key.export
		.sdram_wire_addr            (<connected-to-sdram_wire_addr>),            //          sdram_wire.addr
		.sdram_wire_ba              (<connected-to-sdram_wire_ba>),              //                    .ba
		.sdram_wire_cas_n           (<connected-to-sdram_wire_cas_n>),           //                    .cas_n
		.sdram_wire_cke             (<connected-to-sdram_wire_cke>),             //                    .cke
		.sdram_wire_cs_n            (<connected-to-sdram_wire_cs_n>),            //                    .cs_n
		.sdram_wire_dq              (<connected-to-sdram_wire_dq>),              //                    .dq
		.sdram_wire_dqm             (<connected-to-sdram_wire_dqm>),             //                    .dqm
		.sdram_wire_ras_n           (<connected-to-sdram_wire_ras_n>),           //                    .ras_n
		.sdram_wire_we_n            (<connected-to-sdram_wire_we_n>),            //                    .we_n
		.pll_sdram_clk              (<connected-to-pll_sdram_clk>),              //           pll_sdram.clk
		.pll_locked_export          (<connected-to-pll_locked_export>),          //          pll_locked.export
		.hex5_hex0_export           (<connected-to-hex5_hex0_export>)            //           hex5_hex0.export
	);

