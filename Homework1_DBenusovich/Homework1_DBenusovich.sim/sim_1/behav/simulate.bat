@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim MUX_4_DB_tb_behav -key {Behavioral:sim_1:Functional:MUX_4_DB_tb} -tclbatch MUX_4_DB_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
