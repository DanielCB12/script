#!/bin/bash

# Función para iniciar servicios de XAMPP
iniciar_xampp() {
    echo "Iniciando servicios de XAMPP..."
    sudo /opt/lampp/lampp start
    if [ $? -eq 0 ]; then
        echo "Servicios de XAMPP iniciados correctamente."
    else
        echo "Hubo un problema al iniciar los servicios de XAMPP."
    fi
}

# Función para finalizar servicios de XAMPP
finalizar_xampp() {
    echo "Finalizando servicios de XAMPP..."
    sudo /opt/lampp/lampp stop
    if [ $? -eq 0 ]; then
        echo "Servicios de XAMPP finalizados correctamente."
    else
        echo "Hubo un problema al finalizar los servicios de XAMPP."
    fi
}

# Función para mostrar el menú
menu() {
    clear
    echo "========================="
    echo "       MENÚ XAMPP        "
    echo "========================="
    echo "Autor: Daniel Carralero Benito"
    echo "========================="
    echo "1. Iniciar servicios de XAMPP"
    echo "2. Finalizar servicios de XAMPP"
    echo "3. Salir"
    echo "========================="
}

# Bucle principal del menú
while true; do
    menu
    read -p "Selecciona una opción: " opcion

    case $opcion in
        1)
            iniciar_xampp
            ;;
        2)
            finalizar_xampp
            ;;
        3)
            echo "Saliendo del script. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción no válida. Por favor, intenta de nuevo."
            ;;
    esac
done

