@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 374454d074b14369a7d0018ae9c32564 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot BinaryCounter_behav xil_defaultlib.BinaryCounter -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
