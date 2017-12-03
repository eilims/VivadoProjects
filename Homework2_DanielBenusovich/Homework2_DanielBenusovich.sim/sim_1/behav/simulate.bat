@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim SR_FF_DB_TB_behav -key {Behavioral:sim_1:Functional:SR_FF_DB_TB} -tclbatch SR_FF_DB_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
