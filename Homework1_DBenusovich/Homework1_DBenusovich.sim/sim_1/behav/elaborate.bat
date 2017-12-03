@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 9a1fc4df1d7d4c1ab484b340dcb71a98 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot MUX_4_DB_tb_behav xil_defaultlib.MUX_4_DB_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
