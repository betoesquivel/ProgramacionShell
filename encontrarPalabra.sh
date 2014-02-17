#!/bin/bash
archivoEntrada=$1
word=$2
archivoTemporal="tmp.txt"

cat $archivoEntrada | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' > $archivoTemporal
resultado=`cat $archivoTemporal | grep -o $word | wc -l`

echo $resultado
