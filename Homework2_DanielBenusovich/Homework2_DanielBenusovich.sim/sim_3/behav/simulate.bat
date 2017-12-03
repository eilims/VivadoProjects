@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim DB_8x64_RAM_TB_behav -key {Behavioral:sim_3:Functional:DB_8x64_RAM_TB} -tclbatch DB_8x64_RAM_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0