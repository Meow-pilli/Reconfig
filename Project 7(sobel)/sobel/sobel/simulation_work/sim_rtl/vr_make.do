quit -sim
onbreak {resume}
vlib work

######################
# Compile
######################
vlog +acc -incr sobel_E_tb.v sobel_E.v

######################
# Simulation
######################
vsim work.T_sobel_00

view structure
view signals
view wave

do ./vr_signal.do

set StdArithNoWarnings 1
set WaveSignalNameWidth 2
set DefaultRadix hex

run -all

quit

