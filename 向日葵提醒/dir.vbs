Dim sFolder,i,state,Timevoid,r,i1
sFolder = "D:\openo\Desktop\向日葵隐藏项目\向日葵提醒"
Do
r=0
i=0
set fso=CreateObject("Scripting.FileSystemObject")
set fs=fso.getfolder(sFolder).files
for each f in fs
i=i+1
next
wscript.Sleep 2000
i1=0
for each f in fs
i1=i1+1
next

set ws=createobject("wscript.shell")
state=0
Timevoid=3

	
	if i1-i <> 0 Then 
	for each i in x
		wscript.Echo"存在"
		Timevoid=5000
		if state=0 Then
			'ws.Run chr(34) & "sendmail.bat" & Chr(34), 0
			wscript.Echo"发信"
			state=1
		end If
		wscript.Sleep Timevoid
		r=1
		return False
	next
		if r=0 then
			wscript.Echo"不存在"
			Timevoid=3
			state=0
			return False
			wscript.Sleep Timevoid
		end if
		end if
Loop

