@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim Johnson_4_DB_TB_behav -key {Behavioral:sim_4:Functional:Johnson_4_DB_TB} -tclbatch Johnson_4_DB_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
