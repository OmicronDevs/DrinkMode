set wshshell=CreateObject("wscript.shell")
scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
scdir = " " & scriptdir

A=InputBox("How often do you want to drink (in minutes)?" & VbNewline & VbNewline & "15 is default", "Drinking Mode | Pre-release 0.1", "15")
B=MsgBox("  NOTE! If you want to stop DrinkMode run STOP.BAT at" & scdir, 0+48, "FAQ:!")
SLEEP = A*60*1000

do
OK=MsgBox("You have to drink!", 0, "Drinking Mode | Pre-release 0.1")
wscript.sleep(SLEEP)
loop
