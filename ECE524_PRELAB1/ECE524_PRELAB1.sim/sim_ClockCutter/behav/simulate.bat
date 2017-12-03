@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim ClockCutter_tb_behav -key {Behavioral:sim_ClockCutter:Functional:ClockCutter_tb} -tclbatch ClockCutter_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
