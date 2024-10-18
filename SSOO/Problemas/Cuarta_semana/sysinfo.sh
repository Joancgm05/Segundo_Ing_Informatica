#!/bin/bash
# para dar permisos de ejecución chmod u+x "nombre_del_script"
# La salida de este script se puede redirigir: ./sysinfo > sysinfo.txt

# sysinfo - Un script que informa del estado del sistema

##### Constantes

TITLE="Información del sistema para $HOSTNAME"
RIGHT_NOW=$(date +"%x %r%Z")
TIME_STAMP="Actualizada el $RIGHT_NOW por $USER"
DRIVE_SPACE=$(df -h | tr -s ' ' | cut -d ' ' -f 3,5,6)

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
  echo      # del sistema, la opción -a la muestra toda.
}

show_uptime() {
  echo "${TEXT_ULINE}Tiempo de encendido del sistema${TEXT_RESET}"
  echo
  uptime 
  echo
}

drive_space() {
  echo "${TEXT_GREEN}Mostrando espacio ocupado por las particiones / discos duros del sitema...${TEXT_RESET}"
  df -h | tr -s ' ' | cut -d ' ' -f 3,5,6
  echo
}

home_space() {
  echo "${TEXT_RED}Mostrando espacio ocupado por cada uno de los subdirectorios en /home...${TEXT_RESET}"
  echo
  du -s /home/* | sort -r
  echo
}

is_a_file() {
  if [ -f clase.txt ]; then
    echo "${TEXT_GREEN}Tienes un archivo clase.txt Todo correcto${TEXT_RESET}"
    echo
  else
    echo "${TEXT_RED}No tienes un archivo clase.txt todo mal :(${TEXT_RESET}"
    echo
  fi
}

user_is_root() {
  if [ "$USER" != root ]; then
    echo "${TEXT_RED}No tienes permisos de superusuario${TEXT_RESET}"
    echo
  else
    echo "${TEXT_GREEN}Tienes permisos de superusuario${TEXT_RESET}"
    echo
  fi
}

##### Programa principal

cat << _EOF_

${TEXT_RED}$TITLE${TEXT_RESET}

${TEXT_YELLOW}$TIME_STAMP${TEXT_RESET}

$(system_info)

$(show_uptime)

$(drive_space)

$(is_a_file)

$(user_is_root)

$(home_space)

_EOF_

exit 0