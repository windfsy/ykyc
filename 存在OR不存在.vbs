set y=getobject("winmgmts:\\.\root\cimv2")
set ws=createobject("wscript.shell")
Dim state,Timevoid,r
state=0
Timevoid=3
Do
	r=0
	on error resume next
	set x=y.execquery("select * from win32_process where name='Notepad.exe'")
	for each i in x
		wscript.Echo"���̴���"
		Timevoid=5000
		if state=0 Then
			'ws.Run chr(34) & "sendmail.bat" & Chr(34), 0
			wscript.Echo"����"
			state=1
		end If
		wscript.Sleep Timevoid
		r=1
		return False
	next
		if r=0 then
			wscript.Echo"���̲�����"
			Timevoid=3
			state=0
			return False
			wscript.Sleep Timevoid
		end if
Loop
