#!/bin/bash

nueva_contrasena="$$wJ44sI$$"

# Intenta cambiar la contraseña y guarda el resultado
resultado=$(echo -e "$nueva_contrasena\n$nueva_contrasena" | sudo passwd root 2>&1)

if [[ $? -eq 0 ]]; then
    echo "Contraseña cambiada exitosamente."
    echo "Contraseña cambiada exitosamente." >> cambio_contrasena.log
else
    echo "Error al cambiar la contraseña: $resultado"
    echo "Error al cambiar la contraseña: $resultado" >> cambio_contrasena.log
fi
