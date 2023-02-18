@echo off 　　
if "%1" == "h" goto begin 
　　  mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit 
:begin 

set issend=0
:RESTART
tasklist  |find /C "进程名称" > task.txt
set /p num= < task.txt
del /F task.txt
echo start======num=%num%,issend=%issend%

if %num% == 0 if %issend% == 0 ( 
systeminfo > log.txt
tasklist >> log.txt
call sendmail.bat
 ) 

if %num% == 0 (
	set issend=1
) else (
	set issend=0
)

echo end=====num=%num%,issend=%issend%
ping -n 10 -w 2000 0.0.0.1> task.txt
del /F task.txt
goto RESTART
