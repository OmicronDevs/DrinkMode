set wshshell=CreateObject("wscript.shell")
scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
scdir = " " & scriptdir

A=InputBox("How often do you want to drink (in minutes)?" & VbNewline & VbNewline & "15 is default, 5 is minimum", "DrinkMode | Release 1.0", "15")
If A < 5 Then
  Y = MsgBox("  Minimum value is 5", 0+16, "DrinkMode | Release 1.0")
  wshshell.run "exit.bat", 6
  wscript.sleep(510)
End If
B=InputBox("How many mililiters does your cup have?" & VbNewline & VbNewline & "150 is default", "DrinkMode | Release 1.0", "150")
SLEEP = A*60*1000
X=0
do
X = X+1
D = B*X
OK=MsgBox("You have to drink!" , 0, "DrinkMode | Release 1.0")
S=MsgBox("You drinked " & D & "ml! - Still continue?", VbYesNo, "DrinkMode | Release 1.0")
If S=VbNo Then
  TTL = MsgBox("  You drinked total of " & D & "ml", 0+48, "Summary - DrinkMode | Release 1.0")
  wshshell.run "exit.bat", 6
End If
wscript.sleep(SLEEP)
loop
