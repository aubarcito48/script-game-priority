#  Prioridad Baja - App Priority Lower

Esta carpeta contiene los scripts para establecer **prioridad BAJA (BelowNormal)** en apps que consumen recursos.

##  Ventajas
- **Menos carga en CPU**: reduce impacto de apps en segundo plano
- **Mas rendimiento en juegos**: libera recursos para tus juegos
- **Automatico**: ajusta prioridad cada pocos segundos

##  Apps Incluidas
- Google Chrome
- Brave
- Discord

##  Como Usar

### Para Probar (Modo Visible)
```
1. Clic derecho en ProbarScript.bat
2. Ejecutar como administrador
3. Abre Chrome, Brave o Discord
4. Veras mensajes cuando detecte procesos
```

### Para Uso Normal (Segundo Plano)
```
1. Clic derecho en IniciarAppsPrioridadBaja.bat
2. Ejecutar como administrador
3. El script correra en segundo plano
```

### Para Modo Oculto (Sin Ventanas)
```
1. Doble clic en IniciarOculto.vbs
2. Se ejecutara completamente oculto
```

### Para Detener el Script
```
1. Doble clic en DetenerAppsPrioridadBaja.bat
```

##  Archivos
- `AppsPrioridadBaja.ps1` - Script principal
- `ProbarScript.bat` - Modo de prueba visible
- `IniciarAppsPrioridadBaja.bat` - Inicio en segundo plano
- `IniciarOculto.vbs` - Inicio oculto
- `DetenerAppsPrioridadBaja.bat` - Detener script

## ⚙️ Agregar Mas Apps
1. Abre `AppsPrioridadBaja.ps1` con un editor de texto
2. Busca la seccion `$appProcesses`
3. Agrega el nombre del proceso (sin .exe):
```powershell
$appProcesses = @(
    "chrome",
    "brave",
    "discord",
    "tu_app_aqui"  # <- Agregar aqui
)
```

##  Tip
Para encontrar el nombre exacto del proceso:
1. Abre la app
2. Abre Administrador de tareas (Ctrl+Shift+Esc)
3. Ve a la pestaña "Detalles"
4. Busca el proceso (sin el .exe)
