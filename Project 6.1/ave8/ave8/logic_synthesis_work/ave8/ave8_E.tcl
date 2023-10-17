load_package flow
project_new ave8_E
set_global_assignment -name VERILOG_FILE ave8_E.v
set_global_assignment -name DEVICE 5CSEMA5F31C6
set_global_assignment -name FAMILY cycloneV
set_global_assignment -name TOP_LEVEL_ENTITY ave8
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name SDC_FILE ave8_E.sdc
execute_module -tool map
execute_module -tool fit
execute_module -tool sta -args "--multicorner=on --report_script=ave8_E.sta.tcl"
project_close
