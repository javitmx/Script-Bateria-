# 🔋 Btrfs Battery Guard - Hyprland Notification Script


<p align="center">
  <img src="img/image.png" width="100%">
</p> 

## 📝 Descripción
Este proyecto surge de una necesidad crítica de **integridad de datos**. En sistemas que utilizan el sistema de archivos **Btrfs** (como Fedora), un apagado repentino por batería baja puede provocar errores de escritura y dejar el sistema en modo "Solo lectura".

Este script en Bash monitorea el estado de la batería en tiempo real y lanza notificaciones visuales críticas en entornos **Hyprland** (o cualquier gestor que use `notify-send`), permitiendo al usuario guardar su trabajo y cerrar procesos de ciberseguridad (como sesiones SSH o herramientas de pentesting) antes de un apagado forzoso.

## 🛠️ Características
- **Monitoreo en tiempo real:** Consulta directamente la interfaz del kernel en `/sys/class/power_supply/`.
- **Alertas Críticas:** Utiliza niveles de urgencia para destacar sobre otras notificaciones.
- **Bajo consumo:** Ejecución ligera con intervalos de espera optimizados.
- **Prevención de Errores I/O:** Diseñado específicamente para evitar el bloqueo de particiones Btrfs.

## 📸 Demostración
### Interfaz de Terminal (PowerShell 7 & Linux)
Configuración del entorno de desarrollo con estética "Hacker Green" inspirada en CMD tradicional.
<p align="center">
  <img src="img/demostracion.png" width="100%">
</p>

### Automatización en Hyprland
Integración del script mediante el archivo de configuración `hyprland.conf` usando `exec-once`.
<p align="center">
  <img src="img/automatizacion.png" width="100%">
</p>

## 🚀 Instalación y Uso

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/tu-usuario/btrfs-battery-guard.git](https://github.com/tu-usuario/btrfs-battery-guard.git)
   cd btrfs-battery-guard

2. **Dar permisos de ejecución:**
   ``` bash
   chmod +x alerta_bateria.sh

3.**Configurar inicio automático en Hyprland:** 
Añade la siguiente línea a tu ~/.config/hypr/hyprland.conf
 ```bash
   exec-once = ~/ruta/al/script/alerta_bateria.sh
```  

## Análisis Técnico del Problema Resuelto
Durante el desarrollo, se diagnosticaron **6 errores de escritura y 3 de lectura** en el dispositivo /dev/sda4 tras un apagado inesperado. La solución incluyó:
- Reparación mediante btrfs check --repair. 
- Verificación de integridad con btrfs scrub.
- implementación de este script como medida de Seguridad Preventiva.

 <img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%"> 
 **Desarrollado por** ***Javi*** 
 Apasionado por la Ciberseguridad, Linux y la eficiencia en la administración de sistemas.
 <img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%">
