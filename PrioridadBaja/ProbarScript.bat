@echo off
title Apps Prioridad Baja - Modo de Prueba
color 0A

echo ================================================
echo   Apps Prioridad Baja - MODO DE PRUEBA
echo ================================================
echo.
echo Este modo muestra lo que el script esta haciendo.
echo Util para verificar que funciona correctamente.
echo.
echo Presiona Ctrl+C para detener el script.
echo.
pause

REM Ejecutar PowerShell con ventana visible
powershell.exe -ExecutionPolicy Bypass -File "%~dp0AppsPrioridadBaja.ps1"
