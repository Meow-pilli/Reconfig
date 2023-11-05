add wave -noupdate -divider {test signal}
add wave -noupdate -format Logic {/T_sobel_00/TB_ErrFlg}
add wave -noupdate -format Logic {/T_sobel_00/TB_SimEnd}
add wave -noupdate -divider {system clock , system reset}
add wave -noupdate -format Logic {/T_sobel_00/U_sobel/CLOCK}
add wave -noupdate -format Logic {/T_sobel_00/U_sobel/RESET}
add wave -noupdate -divider {input data}
add wave -noupdate -format Literal -radix unsigned {/T_sobel_00/U_sobel/input_row_a00}
add wave -noupdate -format Literal -radix unsigned {/T_sobel_00/U_sobel/input_row_a01}
add wave -noupdate -format Literal -radix unsigned {/T_sobel_00/U_sobel/input_row_a02}
add wave -noupdate -divider {output data}
add wave -noupdate -format Literal -radix unsigned {/T_sobel_00/U_sobel/sobel_ret}
add wave -noupdate -format Literal -radix unsigned {/T_sobel_00/TB_sobel_ret_E}
