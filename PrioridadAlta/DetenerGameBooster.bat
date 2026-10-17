@echo off
title Detener Game Priority Booster

echo ================================================
echo   Deteniendo Game Priority Booster...
echo ================================================
echo.

REM Buscar y detener todos los procesos PowerShell que ejecutan el script
for /f "tokens=2" %%i in ('tasklist ^| findstr /i "powershell.exe"') do (
    wmic process where "ProcessId=%%i AND CommandLine like '%%GamePriorityBooster%%'" delete >nul 2>&1
)

echo.
echo El script ha sido detenido.
echo.
pause
