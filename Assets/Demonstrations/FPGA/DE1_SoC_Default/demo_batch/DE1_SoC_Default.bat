@ REM ######################################
@ echo off
set project_sof=DE1_SoC_Default.sof
set project_jic=DE1_SoC_Default.jic
set device_sfl_sof=sfl_enhanced_01_02d120dd.sof
set fpga_device=5csema5 


@ set QUARTUS_BIN=%QUARTUS_ROOTDIR%\bin
@ if not exist "%QUARTUS_BIN%" set QUARTUS_BIN=%QUARTUS_ROOTDIR%\bin64

if not exist "%QUARTUS_BIN%\\quartus.exe" (
	echo Your default Quartus specified by system variable QUARTUS_ROOT must be Quartus Standard. Edition for programming Cyclone V FPGA device.
	goto :Exit
)


:main
echo **********************************
echo Please choose your operation
echo "1" for programming .sof to FPGA.
echo "2" for converting .sof to .jic 
echo "3" for programming .jic to EPCS.
echo "4" for erasing .jic from EPCS.
echo "5" for EXIT batch.
echo **********************************
choice /C 12345 /M "Please enter your choise:" 
if errorlevel 5 goto exit 
if errorlevel 4 goto d 
if errorlevel 3 goto c  
if errorlevel 2 goto b  
if errorlevel 1 goto a 


:a
echo ===========================================================
echo "Progrming .sof to FPGA"
echo ===========================================================
%QUARTUS_BIN%\\quartus_pgm.exe -m jtag -c 1 -o "p;%project_sof%@2""
@ set SOPC_BUILDER_PATH=%SOPC_KIT_NIOS2%+%SOPC_BUILDER_PATH%
goto end


:b 
echo ===========================================================
echo "Convert .sof to .jic"
echo ===========================================================
%QUARTUS_BIN%\\quartus_cpf -c -d epcs128 -s %fpga_device% %project_sof% %project_jic%
goto end

:c
echo ===========================================================
echo "Programming EPCS with .jic"
echo ===========================================================
%QUARTUS_BIN%\\quartus_pgm.exe -m jtag -c 1 -o "p;%device_sfl_sof%@2""
%QUARTUS_BIN%\\quartus_pgm.exe -m jtag -c 1 -o "p;%project_jic%@2""
goto end

:d
echo ===========================================================
echo "Erasing EPCS with .jic"
echo ===========================================================
%QUARTUS_BIN%\\quartus_pgm.exe -m jtag -c 1 -o "p;%device_sfl_sof%@2""
%QUARTUS_BIN%\\quartus_pgm.exe -m jtag -c 1 -o "r;%project_jic%@2""
goto end

:error
echo Please Check your USB Blaster!!


:end
echo Goodbye!!
goto main

:exit

endlocal



pause