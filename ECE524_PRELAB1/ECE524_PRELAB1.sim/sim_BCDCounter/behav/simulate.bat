@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim BCDCounter_tb_behav -key {Behavioral:sim_BCDCounter:Functional:BCDCounter_tb} -tclbatch BCDCounter_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
