# file: nios2_sdk_shell_bashrc

touch $project_elf.srec
"$SOPC_KIT_NIOS2/nios2_command_shell.sh" nios2-download $project_elf -c 1 -r -g -w 1
"$SOPC_KIT_NIOS2/nios2_command_shell.sh" nios2-terminal.exe -c 1

# End of file
