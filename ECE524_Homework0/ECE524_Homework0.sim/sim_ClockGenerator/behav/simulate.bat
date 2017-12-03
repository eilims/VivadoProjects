@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim ClockGenerator_tb_behav -key {Behavioral:sim_ClockGenerator:Functional:ClockGenerator_tb} -tclbatch ClockGenerator_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
