#!/bin/bash
# para dar permisos de ejecución chmod u+x "nombre_del_script"
# La salida de este script se puede redirigir: ./sysinfo > sysinfo.txt

# sysinfo - Un script que informa del estado del sistema

##### Constantes

TITLE="Información del sistema para $HOSTNAME"
RIGHT_NOW=$(date +"%x %r%Z")
TIME_STAMP="Actualizada el $RIGHT_NOW por $USER"

##### Estilos

TEXT_BOLD=$(tput bold)
TEXT_RED=$(tput setaf 1)
TEXT_GREEN=$(tput setaf 2)
TEXT_YELLOW=$(tput setaf 3)
TEXT_RESET=$(tput sgr0)

##### Funciones

system_info() {
  # Función de stub temporal
  echo "función system_info"
}

show_uptime() {
  echo "${TEXT_ULINE}Tiempo de encendido del sistema${TEXT_RESET}"
  echo
  uptime 
}

drive_space() {
  # Función de stub temporal
  echo "función drive_space"
}

home_space() {
  # Función de stub temporal
  echo "función home_space"
}

##### Programa principal

cat << _EOF_
${TEXT_RED}$TITLE${TEXT_RESET}

${TEXT_YELLOW}$TIME_STAMP${TEXT_RESET}
_EOF_

system_info
show_uptime
drive_space
home_space