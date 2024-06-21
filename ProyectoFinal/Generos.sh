#!/bin/bash

read -p "Ingrese un nombre para conocer su género: " nombre

respuesta=$(curl -s "https://api.genderize.io/?name=${nombre}")

genero=$(echo "${respuesta}" | jq -r '.gender')

echo "'${nombre}' tiene genero '${genero}'." 
