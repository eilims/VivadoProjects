@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto ae6b78c5a2fa436b8b2edd0258e47fc1 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot BinaryCounter_tb_behav xil_defaultlib.BinaryCounter_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
