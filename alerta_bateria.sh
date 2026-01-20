#!/bin/bash
# Umbral de batería baja
UMBRAL=20

while true; do
    # Obtenemos la capacidad actual y el estado
    CAPACIDAD=$(cat /sys/class/power_supply/BAT0/capacity)
    ESTADO=$(cat /sys/class/power_supply/BAT0/status)

    # Si la batería baja del umbral y no se está cargando
    if [ "$CAPACIDAD" -le "$UMBRAL" ] && [ "$ESTADO" == "Discharging" ]; then
        notify-send -u critical "⚠️ BATERÍA BAJA" "Te queda solo un $CAPACIDAD%. ¡Conecta el cargador para evitar errores de disco!"
        # Sonido de alerta (opcional si tienes papirus o similar)
        canberra-gtk-play -i battery-low
    fi
    
    # Revisa cada 2 minutos
    sleep 120
done
