@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto c25e211bd62244c3aa2a0e44db12cf1f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot CPA_tb_behav xil_defaultlib.CPA_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
