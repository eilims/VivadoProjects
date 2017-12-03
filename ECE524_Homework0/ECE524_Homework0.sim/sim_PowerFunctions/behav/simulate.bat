@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim PowerFunctions_tb_behav -key {Behavioral:sim_PowerFunctions:Functional:PowerFunctions_tb} -tclbatch PowerFunctions_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
