
# which bash

#!/usr/bin/bash

# Mi primer script
# chmod u+x miscript.sh

echo "iniciando el backup..."
tar cvzf $HOME/backup.tar.gz $HOME/Desktop $HOME/Documentos
echo "Backup terminado!!"

sleep 30