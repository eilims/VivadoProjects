@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto f54d17d08ced49c58afedfb579a83400 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip -L xpm --snapshot Part1_tb_behav xil_defaultlib.Part1_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
