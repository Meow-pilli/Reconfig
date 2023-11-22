
module audio_nios (
	clk_clk,
	reset_reset_n,
	altpll_audio_locked_export,
	audio_XCK,
	audio_ADCDAT,
	audio_ADCLRC,
	audio_DACDAT,
	audio_DACLRC,
	audio_BCLK,
	i2c_sda_export,
	i2c_scl_export,
	pio_sw_export,
	pio_led_export,
	pio_key_export,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n,
	pll_sdram_clk,
	pll_locked_export,
	hex5_hex0_export);	

	input		clk_clk;
	input		reset_reset_n;
	output		altpll_audio_locked_export;
	output		audio_XCK;
	input		audio_ADCDAT;
	input		audio_ADCLRC;
	output		audio_DACDAT;
	input		audio_DACLRC;
	input		audio_BCLK;
	inout		i2c_sda_export;
	output		i2c_scl_export;
	input	[9:0]	pio_sw_export;
	output	[9:0]	pio_led_export;
	input	[3:0]	pio_key_export;
	output	[12:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[15:0]	sdram_wire_dq;
	output	[1:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
	output		pll_sdram_clk;
	output		pll_locked_export;
	output	[47:0]	hex5_hex0_export;
endmodule
