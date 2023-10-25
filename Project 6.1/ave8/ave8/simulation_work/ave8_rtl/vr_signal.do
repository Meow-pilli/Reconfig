add wave -noupdate -divider {test signal}
add wave -noupdate -format Logic {/T_ave8_00/TB_SimEnd}
add wave -noupdate -divider {system clock , system reset}
add wave -noupdate -format Logic {/T_ave8_00/U_ave8/CLOCK}
add wave -noupdate -format Logic {/T_ave8_00/U_ave8/RESET}
add wave -noupdate -divider {input data}
add wave -noupdate -format Literal -radix unsigned {/T_ave8_00/U_ave8/in0}
add wave -noupdate -divider {output data}
add wave -noupdate -format Literal -radix unsigned {/T_ave8_00/U_ave8/ave8_ret}
