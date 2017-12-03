@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim Serial_Implementation_FIR_tb_behav -key {Behavioral:sim_Serial_FIR:Functional:Serial_Implementation_FIR_tb} -tclbatch Serial_Implementation_FIR_tb.tcl -view D:/VivadoProjects/ECE524_PRELAB7/Serial_Implementation_FIR_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
