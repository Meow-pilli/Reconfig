load_package flow
project_new sobel_E -overwrite
set_global_assignment -name VERILOG_FILE sobel_E.v
set_global_assignment -name DEVICE 5CSEMA5F31C6
set_global_assignment -name FAMILY cycloneV
set_global_assignment -name TOP_LEVEL_ENTITY sobel
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name SDC_FILE sobel_E.sdc
execute_module -tool map
execute_module -tool fit
execute_module -tool sta -args "--multicorner=on --report_script=sobel_E.sta.tcl"
project_close
