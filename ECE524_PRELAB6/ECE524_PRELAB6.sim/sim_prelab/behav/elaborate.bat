@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 56f8fc49463543a7b9bafbab0751dfe2 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Prelab_tb_behav xil_defaultlib.Prelab_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
