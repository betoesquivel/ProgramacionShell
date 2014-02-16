#!/bin/bash

#objetivo: unir dos archivos de texto divididos en la misma cantidad de columnas y filas
#en un archivo de el doble de columnas y la misma cantidad de filas

paste -d \  $1 $2 > ArchivoJunta.txt
