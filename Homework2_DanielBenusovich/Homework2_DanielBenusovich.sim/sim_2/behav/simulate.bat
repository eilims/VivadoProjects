@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim JK_FF_DB_tb_behav -key {Behavioral:sim_2:Functional:JK_FF_DB_tb} -tclbatch JK_FF_DB_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
