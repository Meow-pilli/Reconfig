@echo off
echo FPGA Configure...


set project_sof=my_first_fpga.sof

REM ########################################################################
REM # Download sof file
REM ########################################################################
@ set QUARTUS_BIN=%QUARTUS_ROOTDIR%\bin
@ if not exist "%QUARTUS_BIN%" set QUARTUS_BIN=%QUARTUS_ROOTDIR%\bin64

if not exist "%QUARTUS_BIN%\\quartus.exe" (
	echo Your default Quartus specified by system variable QUARTUS_ROOT must be Quartus Standard. Edition for programming Cyclone V FPGA device.
	goto :Exit
)

%QUARTUS_BIN%\\quartus_pgm.exe -m jtag -c 1 -o "p;%project_sof%@2"


:Exit

pause