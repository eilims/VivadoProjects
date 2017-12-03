@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim FSM_tb_behav -key {Behavioral:sim_1:Functional:FSM_tb} -tclbatch FSM_tb.tcl -view D:/VivadoProjects/ECE524_PRELAB8/FSM_tb_behav.wcfg -view D:/VivadoProjects/ECE524_PRELAB8/TopLevel_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
