#!/bin/bash

# Pasta de destino no servidor remoto
DESTINO="rmiranda@ssh.ime.unicamp.br:~/public_html/"

# Lista e copia cada arquivo encontrado
find . -type f | while read -r arquivo; do
    echo "Copiando: $arquivo"
    scp "$arquivo" "$DESTINO"
done

cp -R * /Users/rmiranda/Documents/GitHub/RMiranda99.github.io/
