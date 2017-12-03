@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto aa492dbd02c046cbb2707da745da0b3b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Problem3_tb_behav xil_defaultlib.Problem3_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
