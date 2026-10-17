# Script para establecer prioridad alta en juegos específicos
# Se ejecuta en segundo plano y monitorea constantemente los procesos

# Lista de procesos de juegos a monitorear
$gamProcesses = @(
    "VALORANT-Win64-Shipping",
    "VALORANT",
    "cs2",
    "FortniteClient-Win64-Shipping",
    "ArenaBreakoutInfinite-Win64-Shipping",
    "ArenaBreakoutInfinite",
    "UAGame",
    "League of Legends",
    "LeagueClient",
    "LeagueClientUx",
    "RocketLeague",
    "TslGame"
)

# Función para establecer prioridad alta
function Set-GamePriority {
    param (
        [string]$processName
    )
    
    try {
        $processes = Get-Process -Name $processName -ErrorAction SilentlyContinue
        
        foreach ($process in $processes) {
            # Verificar si la prioridad ya está en High
            if ($process.PriorityClass -ne "High") {
                $process.PriorityClass = "High"
                Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Prioridad establecida a HIGH para: $($process.ProcessName) (PID: $($process.Id))"
            }
        }
    }
    catch {
        # Ignorar errores silenciosamente (proceso podría haber terminado)
    }
}

# Log de inicio
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Game Priority Booster - Iniciado" -ForegroundColor Green
Write-Host "  $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Monitoreando los siguientes juegos:" -ForegroundColor White
foreach ($game in $gamProcesses) {
    Write-Host "  - $game" -ForegroundColor Gray
}
Write-Host ""
Write-Host "Presiona Ctrl+C para detener el monitoreo" -ForegroundColor DarkGray
Write-Host ""

# Bucle infinito para monitorear procesos
while ($true) {
    foreach ($processName in $gamProcesses) {
        Set-GamePriority -processName $processName
    }
    
    # Esperar 5 segundos antes de la siguiente verificación
    Start-Sleep -Seconds 5
}
