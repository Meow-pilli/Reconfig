transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/sxc210186/Documents/GitHub/Reconfig/Project\ 3.3/sincos/synthesis {C:/Users/sxc210186/Documents/GitHub/Reconfig/Project 3.3/sincos/synthesis/sincos.v}
vcom -93 -work work {C:/Users/sxc210186/Documents/GitHub/Reconfig/Project 3.3/sincos/synthesis/submodules/dspba_library_package.vhd}
vcom -93 -work work {C:/Users/sxc210186/Documents/GitHub/Reconfig/Project 3.3/sincos/synthesis/submodules/sincos_CORDIC_0.vhd}
vcom -93 -work work {C:/Users/sxc210186/Documents/GitHub/Reconfig/Project 3.3/sincos/synthesis/submodules/dspba_library.vhd}

