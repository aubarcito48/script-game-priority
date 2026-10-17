#  Prioridad Alta - Game Priority Booster

Esta carpeta contiene los scripts para establecer **prioridad ALTA** en juegos competitivos.

##  Ventajas
- **Seguro**: No afecta el rendimiento del sistema
- **Estable**: Recomendado para uso diario
- **Efectivo**: Mejora notablemente el rendimiento en juegos

##  Juegos Incluidos
- Valorant
- Counter-Strike 2
- Fortnite
- Arena Breakout: Infinity
- League of Legends
- Rocket League
- PUBG: BATTLEGROUNDS

##  Cómo Usar

### Para Probar (Modo Visible)
```
1. Clic derecho en ProbarScript.bat
2. Ejecutar como administrador
3. Inicia tu juego
4. Verás mensajes cuando detecte el juego
```

### Para Uso Normal (Segundo Plano)
```
1. Clic derecho en IniciarGameBooster.bat
2. Ejecutar como administrador
3. El script correrá en segundo plano
```

### Para Modo Oculto (Sin Ventanas)
```
1. Doble clic en IniciarOculto.vbs
2. Se ejecutará completamente oculto
```

### Para Detener el Script
```
1. Doble clic en DetenerGameBooster.bat
```

## 📝 Archivos
- `GamePriorityBooster.ps1` - Script principal
- `ProbarScript.bat` - Modo de prueba visible
- `IniciarGameBooster.bat` - Inicio en segundo plano
- `IniciarOculto.vbs` - Inicio oculto
- `DetenerGameBooster.bat` - Detener script

## ⚙️ Agregar Más Juegos
1. Abre `GamePriorityBooster.ps1` con un editor de texto
2. Busca la sección `$gamProcesses`
3. Agrega el nombre del proceso (sin .exe):
```powershell
$gamProcesses = @(
    "VALORANT-Win64-Shipping",
    "cs2",
    "tu_juego_aqui"  # ← Agregar aquí
)
```

## 💡 Tip
Para encontrar el nombre del proceso de un juego:
1. Abre el juego
2. Abre Administrador de tareas (Ctrl+Shift+Esc)
3. Ve a la pestaña "Detalles"
4. Busca el proceso del juego (sin el .exe)
