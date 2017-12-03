@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto af03045c10c14801b6870149a895d6a7 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip -L xpm --snapshot Serial_Implementation_FIR_tb_behav xil_defaultlib.Serial_Implementation_FIR_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
