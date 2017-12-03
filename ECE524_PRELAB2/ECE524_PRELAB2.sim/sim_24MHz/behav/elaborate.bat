@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto c95119ba862046a29ea492d19fc04a83 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot cic_tb_behav xil_defaultlib.cic_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
