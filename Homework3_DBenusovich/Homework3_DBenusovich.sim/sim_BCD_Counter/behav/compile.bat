@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.1\\bin
echo "xvhdl -m64 --relax -prj BCD_Counter_8_tb_vhdl.prj"
call %xv_path%/xvhdl  -m64 --relax -prj BCD_Counter_8_tb_vhdl.prj -log xvhdl.log
call type xvhdl.log > compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
