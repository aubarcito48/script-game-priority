# Prioridad baja para aplicaciones de fondo

AppsPrioridadBaja.ps1 comprueba cada 5 segundos los procesos de $appProcesses
y les aplica la prioridad de CPU **Idle**. Incluye Chrome, Brave, Discord y
procesos de Steam. No elimina procesos ni libera RAM.

## Uso

1. Revisá la lista y ejecutá ProbarScript.bat como administrador.
2. Abrí una app incluida y comprobá su prioridad en el Administrador de tareas.
3. Usá Ctrl+C para detener el modo visible.
4. Para iniciar oculto, ejecutá IniciarAppsPrioridadBaja.bat como administrador.

El modo de prueba modifica prioridades realmente. Las aplicaciones afectadas
pueden responder más lento. DetenerAppsPrioridadBaja.bat depende de WMIC y no
restaura los valores: con el monitor detenido, restauralos manualmente o cerrá
y volvé a abrir la aplicación.

Consultá [la guía completa](../README.md) para requisitos y límites.
