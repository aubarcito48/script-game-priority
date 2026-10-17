@echo off
REM Script para iniciar el GamePriorityBooster en segundo plano
REM Ejecutar como Administrador

REM Verificar si se está ejecutando como administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Este script requiere permisos de administrador.
    echo Por favor, ejecutalo como Administrador.
    pause
    exit /b 1
)

REM Iniciar PowerShell en segundo plano con ventana oculta
powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File "%~dp0GamePriorityBooster.ps1"

exit
