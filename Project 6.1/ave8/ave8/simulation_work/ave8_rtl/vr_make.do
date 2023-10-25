quit -sim
onbreak {resume}
vlib work

######################
# Compile
######################
vlog +acc -incr ave8_E_tb.v ave8_E.v

######################
# Simulation
######################
vsim work.T_ave8_00

view structure
view signals
view wave

do ./vr_signal.do

set StdArithNoWarnings 1
set WaveSignalNameWidth 2
set DefaultRadix hex

run -all

quit

