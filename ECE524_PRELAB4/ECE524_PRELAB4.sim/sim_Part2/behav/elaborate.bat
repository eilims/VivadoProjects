@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto f54d17d08ced49c58afedfb579a83400 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_7 -L xbip_pipe_v3_0_3 -L xbip_dsp48_macro_v3_0_14 -L secureip -L xpm --snapshot Part2_tb_behav xil_defaultlib.Part2_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
