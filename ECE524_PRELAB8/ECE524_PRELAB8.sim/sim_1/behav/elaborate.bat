@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 53f22c6405fc4547b3b7e9aa7ef392e5 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot FSM_tb_behav xil_defaultlib.FSM_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
