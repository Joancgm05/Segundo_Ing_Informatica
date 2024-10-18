#!/bin/bash
# para dar permisos de ejecución chmod u+x "nombre_del_script"
# La salida de este script se puede redirigir: ./sysinfo > sysinfo.txt

# sysinfo - Un script que informa del estado del sistema

##### Constantes

TITLE="Información del sistema para $HOSTNAME"
RIGHT_NOW=$(date +"%x %r%Z")
TIME_STAMP="Actualizada el $RIGHT_NOW por $USER"

##### Estilos

TEXT_BOLD=$(tput bold)  # Poner texto en negrita.
TEXT_ULINE=$(tput sgr 0 1)  # Poner texto subrayado.
TEXT_RED=$(tput setaf 1)  # Poner texto en rojo.
TEXT_GREEN=$(tput setaf 2)  # Poner texto en verde.
TEXT_YELLOW=$(tput setaf 3)  # Poner texto en amarillo.
TEXT_RESET=$(tput sgr0)  # Restear texto a valores originales.

##### Funciones

system_info() {
  echo "${TEXT_ULINE}Versión del sistema${TEXT_RESET}"
  echo
  uname -a  # El comando uname se utiliza para mostrar información 
            # del sistema, la opción -a la muestra toda.
}

show_uptime() {
  echo "${TEXT_ULINE}Tiempo de encendido del sistema${TEXT_RESET}"
  echo
  uptime 
}

drive_space() {
  echo "Mostrando espacio ocupado por las particiones / discos duros del sitema..."
  df -h | tr -s ' ' | cut -d ' ' -f 3,5,6
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