#!/bin/bash
# para dar permisos de ejecución chmod u+x "nombre_del_script"
# La salida de este script se puede redirigir: ./sysinfo > sysinfo.txt

# sysinfo - Un script que informa del estado del sistema

TITLE="Información de mi sistema para $HOSTNAME"
RIGHT_NOW=$(date +"% %r%Z") por $USER
TIME_STAMP="Actualizada el $RIGHT_NOW por $USER"
TEXT_BOLD=$(tput bold)
TEXT_GREEN=$(tput setaf 2)
TEXT_RESET=$(tput)

cat << _EOF_
=== $TITLE ===

$TIME_STAMP
_EOF_
