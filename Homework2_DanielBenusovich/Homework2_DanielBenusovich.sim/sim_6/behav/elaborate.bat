@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto a706328456c94f46863427e3d2d1dad9 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Shift_Register_TB_behav xil_defaultlib.Shift_Register_TB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
