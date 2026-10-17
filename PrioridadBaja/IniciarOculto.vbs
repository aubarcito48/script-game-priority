Set WshShell = CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")
scriptPath = FSO.GetParentFolderName(WScript.ScriptFullName) & "\AppsPrioridadBaja.ps1"

' Ejecutar PowerShell en modo oculto
WshShell.Run "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File """ & scriptPath & """", 0, False

Set FSO = Nothing
Set WshShell = Nothing
