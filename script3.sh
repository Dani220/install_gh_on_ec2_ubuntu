#!/bin/bash

comprobar_sourceslist() {
    if grep -q "https://cli.github.com/packages stable main" /etc/apt/sources.list; then
        return 0
    else
        echo "El repositorio https://cli.github.com/packages stable main todavía no forma parte de la lista de repositorios"
        return 1
    fi
}

comprobar_carpeta_sourceslist_d() {
    if grep -r -q "https://cli.github.com/packages" /etc/apt/sources.list.d/ 2>/dev/null; then
        return 1
    else
        return 0
    fi
}

comprobar_sourceslist
resultado_sourceslist=$?

echo "Resultado de comprobar_sourceslist: $resultado_sourceslist"

comprobar_carpeta_sourceslist_d
resultado_sourceslist_d=$?

echo "Resultado de comprobar_carpeta_sourceslist_d: $resultado_sourceslist_d"
