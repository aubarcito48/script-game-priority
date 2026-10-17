# Script para establecer prioridad baja en apps seleccionadas
# Se ejecuta en segundo plano y monitorea constantemente los procesos

# Lista de procesos a monitorear
$appProcesses = @(
    "chrome",
    "brave",
    "Discord",
    "DiscordSystemHelper",
    "SteamService",
    "gameoverlayui64",
    "steam",
    "steamwebhelper"
)

# Funcion para establecer prioridad baja
function Set-AppLowPriority {
    param (
        [string]$processName
    )

    try {
        $processes = Get-Process -Name $processName -ErrorAction SilentlyContinue

        foreach ($process in $processes) {
            # Solo cambia si no esta ya en prioridad baja (Idle)
            if ($process.PriorityClass -ne "Idle") {
                $process.PriorityClass = "Idle"
                Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Prioridad establecida a BAJA para: $($process.ProcessName) (PID: $($process.Id))"
            }
        }
    }
    catch {
        # Ignorar errores silenciosamente
    }
}

# Log de inicio
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  App Priority Lower - Iniciado" -ForegroundColor Green
Write-Host "  $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Monitoreando los siguientes procesos:" -ForegroundColor White
foreach ($app in $appProcesses) {
    Write-Host "  - $app" -ForegroundColor Gray
}
Write-Host ""
Write-Host "Presiona Ctrl+C para detener el monitoreo" -ForegroundColor DarkGray
Write-Host ""

# Bucle infinito para monitorear procesos
while ($true) {
    foreach ($processName in $appProcesses) {
        Set-AppLowPriority -processName $processName
    }

    # Esperar 5 segundos antes de la siguiente verificacion
    Start-Sleep -Seconds 5
}
