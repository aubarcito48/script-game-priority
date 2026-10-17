@echo off
title Game Priority Booster - Modo de Prueba
color 0A

echo ================================================
echo   Game Priority Booster - MODO DE PRUEBA
echo ================================================
echo.
echo Este modo muestra lo que el script esta haciendo.
echo Util para verificar que funciona correctamente.
echo.
echo Presiona Ctrl+C para detener el script.
echo.
pause

REM Ejecutar PowerShell con ventana visible
powershell.exe -ExecutionPolicy Bypass -File "%~dp0GamePriorityBooster.ps1"
