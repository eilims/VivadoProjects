@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 78444c20851740068fe991a56840245e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Q11_tb_behav xil_defaultlib.Q11_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
