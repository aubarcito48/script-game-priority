Set WshShell = CreateObject("WScript.Shell")
' Ejecutar PowerShell en modo oculto con permisos elevados
WshShell.Run "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File ""C:\Users\rocii\Desktop\script\GamePriorityBooster.ps1""", 0, False
Set WshShell = Nothing
