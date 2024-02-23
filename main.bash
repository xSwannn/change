#!/bin/bash

# Verificar si se ejecuta como root
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script debe ejecutarse como root o con privilegios de sudo."
    exit 1
fi

# Cambiar la contraseña a $$wJ44sI$$
echo -e "root:$$wJ44sI$$" | chpasswd

echo "La contraseña de root ha sido cambiada a $$wJ44sI$$ exitosamente."
