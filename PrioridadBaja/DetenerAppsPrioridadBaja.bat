@echo off
title Detener Apps Prioridad Baja

echo ================================================
echo   Deteniendo Apps Prioridad Baja...
echo ================================================
echo.

REM Buscar y detener todos los procesos PowerShell que ejecutan el script
for /f "tokens=2" %%i in ('tasklist ^| findstr /i "powershell.exe"') do (
    wmic process where "ProcessId=%%i AND CommandLine like '%%AppsPrioridadBaja%%'" delete >nul 2>&1
)

echo.
echo El script ha sido detenido.
echo.
pause
