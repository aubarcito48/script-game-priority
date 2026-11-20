# Scripts de prioridad de procesos en Windows

Dos automatizaciones para ajustar la prioridad de CPU de procesos seleccionados
mientras están ejecutándose. Permiten experimentar con la distribución de CPU
entre juegos y aplicaciones de fondo.

**No son un limpiador de RAM ni garantizan más FPS.** El resultado depende del
equipo y su carga. Una prioridad menor puede hacer menos fluida la aplicación
afectada; compará el resultado en tu caso.

## Qué incluye

| Carpeta | Comportamiento actual |
| --- | --- |
| [PrioridadAlta](PrioridadAlta/README.md) | Aplica High a los juegos listados en GamePriorityBooster.ps1. |
| [PrioridadBaja](PrioridadBaja/README.md) | Aplica Idle a Chrome, Brave, Discord y procesos de Steam listados en AppsPrioridadBaja.ps1. |

Ambos comprueban los procesos cada **5 segundos**. No cambian gráficos,
frecuencias de CPU ni configuración del juego. Usan PowerShell, lanzadores Batch
y un iniciador opcional en VBScript; no necesitan Python ni Node.js.

## Descargar y probar

Requiere Windows con Windows PowerShell. Los iniciadores piden permisos de
administrador para modificar los procesos correspondientes.

~~~powershell
git clone https://github.com/aubarcito48/script-game-priority.git
cd script-game-priority
~~~

También podés descargar el ZIP desde GitHub y extraerlo antes de ejecutar.

1. Revisá el archivo .ps1 de la carpeta elegida y su lista de procesos.
2. Hacé clic derecho sobre su ProbarScript.bat y elegí **Ejecutar como administrador**.
3. Iniciá una aplicación incluida. La consola muestra su nombre y PID cuando
   consigue cambiar la prioridad.
4. En **Administrador de tareas → Detalles → Establecer prioridad**, comprobá que
   el proceso tenga Alta o Baja, según el script.
5. Usá **Ctrl+C** en la consola para terminar la prueba.

**ProbarScript.bat cambia prioridades realmente**: es una ejecución visible del
monitor, no una simulación ni una prueba automática aislada.

Después de comprobarlo, podés usar IniciarGameBooster.bat o
IniciarAppsPrioridadBaja.bat como administrador para iniciar el monitor oculto.
Evitá abrir varias instancias. Los iniciadores .vbs son opcionales y dependen de
que tu Windows permita ejecutar VBScript.

## Detener y restaurar

DetenerGameBooster.bat y DetenerAppsPrioridadBaja.bat intentan cerrar el monitor
usando **WMIC**. Si tu Windows no tiene WMIC, no confíes en su mensaje final:
comprobá que se haya detenido. El modo visible y Ctrl+C permiten controlar la
ejecución sin depender de esos botones.

**Detener el monitor no restaura las prioridades que ya cambió.** Con el monitor
detenido, podés volver a Normal desde el Administrador de tareas, o cerrar y
volver a abrir la aplicación. No termines otros procesos de PowerShell que estén
haciendo trabajos diferentes.

## Personalizar y resolver problemas

Editá $gamProcesses en el script de juegos o $appProcesses en el de apps.
Usá el nombre real del proceso sin .exe. Guardá y reiniciá el monitor.

| Problema | Qué revisar |
| --- | --- |
| No detecta la app | Nombre real del proceso y su inclusión en la lista. |
| No cambia la prioridad | Permisos o protección del proceso; algunos juegos rechazan el cambio y el script omite errores. |
| La app de fondo responde más lento | Detené el monitor y restaurá la prioridad o retirala de la lista. |
| El botón de detener falla | Disponibilidad de WMIC y si el monitor sigue activo. |
| No mejora el rendimiento | El límite puede estar en GPU, memoria u otra parte del sistema; no hay mejora garantizada. |

Para [reportar un problema](https://github.com/aubarcito48/script-game-priority/issues),
indicá versión de Windows, nombre del proceso y los pasos que seguiste.
