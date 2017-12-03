@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim Generic_Shift_Register_tb_behav -key {Behavioral:sim_Generic_Shift_Register_tb:Functional:Generic_Shift_Register_tb} -tclbatch Generic_Shift_Register_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
