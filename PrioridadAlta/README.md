# Prioridad alta para juegos

GamePriorityBooster.ps1 comprueba cada 5 segundos los procesos de $gamProcesses
y les aplica la prioridad de CPU **High**.

La lista incluye procesos de Valorant, CS2, Fortnite, Arena Breakout, League of
Legends, Rocket League y PUBG. Los nombres deben coincidir con el proceso real;
un juego protegido puede rechazar el cambio.

## Uso

1. Ejecutá ProbarScript.bat como administrador para ver las acciones en consola.
2. Abrí un juego de la lista y comprobá su prioridad en el Administrador de tareas.
3. Usá Ctrl+C para detener el modo visible.
4. Para iniciar oculto, ejecutá IniciarGameBooster.bat como administrador.

El modo de prueba cambia prioridades realmente. DetenerGameBooster.bat depende
de WMIC y no restaura los valores anteriores. Con el monitor detenido, restaurá
la prioridad manualmente o cerrá y volvé a abrir el juego.

No se garantizan aumentos de FPS ni ausencia de efectos sobre otras aplicaciones.
Consultá [la guía completa](../README.md) para requisitos y límites.
