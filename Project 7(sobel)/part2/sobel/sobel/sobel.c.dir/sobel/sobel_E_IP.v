// verilog_out version 6.89.1
// options:  veriloggen -EE sobel_E.IFF
// bdlpars options:  -EE -I../.. -I/proj/cad/cwb-6.1/linux_x86_64/include -info_base_name sobel ../../sobel.c -process=sobel
// bdltran options:  -EE -c2000 -s -Zresource_fcnt=GENERATE -Zresource_mcnt=GENERATE -Zdup_reset=YES -Zfolding_sharing=inter_stage -EE -lb /home/010/s/sx/sxc210186/Reconfig/Project_7.1/part2/part2" source_sobel_exploration/cycloneV.BLIB" -lfl /home/010/s/sx/sxc210186/Reconfig/Project_7.1/part2/part2" source_sobel_exploration/cycloneV.FLIB" +lfl sobel-auto.FLIB +lfl sobel-amacro-auto.FLIB -lfc sobel-auto.FCNT +lfc sobel-amacro-auto.FCNT -lml sobel-auto.MLIB -lmc sobel-auto.MCNT sobel.IFF 
// timestamp_0: 20231104164939_19906_58474
// timestamp_5: 20231104164940_19948_48341
// timestamp_9: 20231104164941_19948_98388
// timestamp_C: 20231104164941_19948_37066
// timestamp_E: 20231104164941_19948_74325
// timestamp_V: 20231104164942_20051_76661

module input_row1 ( RA1 ,RD1 ,RA2 ,RD2 ,RA3 ,RD3 );
input	[0:1]	RA1 ;
output	[0:7]	RD1 ;
input	[0:1]	RA2 ;
output	[0:7]	RD2 ;
input	[0:1]	RA3 ;
output	[0:7]	RD3 ;

endmodule
