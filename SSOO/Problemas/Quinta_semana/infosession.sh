# Hacer hasta el 2 b
show_sidzero=0
show_help=0

while [ -n "$1" ]; do

  case $1 in 
    -h)
      show_help=1
      ;;
    -z)
      show_sidzero=1
      ;;
    -u)
      shift
      if [[ $1 == -*]]; then
        echo "A la opción -u le falta un argumento"
        exit 1
      fi
      user=$1
    *)
      echo "Error. Opción desconocida '$1'"
      exit 1
  esac
  shift

done

if [ show_help =1 ], then
  echo "Ayuda..."
  exit 0
fi

processes=$(get_processes)
if [ $ show_sidzero=0 ]; then
  processes=$(filter_sidzero "$processes")
fi

if [ -n $user ]; then 
  processes=$(filter_by_user "$processes" "$user")
fi

# lsof -d .d// lista todos los procesos que tengan un fichero abierto en el directorio actual.