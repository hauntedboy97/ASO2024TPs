#!/bin/bash

numero_aleatorio=$(( RANDOM % 100 + 1 ))

echo "Bienvenido al juego Adivina el Número!"
echo "Te doy 3 intentos para adivinar el numero (entre 1 y 100) que voy a generar"

intentos=0
max_intentos=3
adivinado=false

while (( intentos < max_intentos && ! adivinado )); do
    echo -n "Intento #$(( intentos + 1 )): Ingresa el mumero que pensaste: "
    read numeroElegido

if ! [[ "$numeroElegido" =~ ^[0-9]+$ ]]; then
        echo "Por favor ingresa un número válido: "
        continue
    fi

intentos=$(( intentos + 1 ))

if (( numeroElegido < numero_aleatorio )); then
        echo "El numero que elegiste es muy bajo"
    elif (( numeroElegido > numero_aleatorio )); then
        echo "El numero que elegiste es muy alto"
    else
        echo "Perfecto! Adivinaste el numero en $intentos intentos!"
        adivinado=true
    fi
done

if ! $adivinado; then
    echo "Te quedaste sin intentos.El número generado era $numero_aleatorio. Mejor suerte a la proxima"
fi

echo "Gracias por jugar."
