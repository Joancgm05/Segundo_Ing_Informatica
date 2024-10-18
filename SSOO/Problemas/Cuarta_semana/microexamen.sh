#!/bin/bash

# Programa que se pide en la PA de la quinta semana

which_du() {
  echo "A continuación se mostrará la ruta del ejecutable du"
  which du
  if [ $? -ne 0 ]; then
    echo "No se encontro la ruta de du"
    return 1
  else
    echo "Se encontró la ruta del ejecutable du"
    return 0
  fi
}

home_ocupation() {
  echo "Se mostrará la información de la ocupación total del directorio $HOME"
  du -c -h /home | tr -s ' ' | cut -f 1 | tail -n1
  echo
}

cat << _EOF

Bienvendio ${USER}

$(which_du)

$(home_ocupation)

_EOF

exit 0