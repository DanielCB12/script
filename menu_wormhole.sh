#!/bin/bash

# Función para instalar Wormhole en diferentes distribuciones
instalar_wormhole_menu() {
    while true; do
        clear
        echo "============================="
        echo "    Instalar Magic Wormhole "
        echo "============================="
        echo "1. Instalar en distros basadas en Red Hat (Fedora, CentOS, Rocky, etc.)"
        echo "2. Instalar en distros basadas en Debian (Ubuntu, Kali, Kubuntu, Deepin, etc.)"
        echo "3. Instalar en distros basadas en Gentoo"
        echo "4. Instalar en distros basadas en Arch Linux"
        echo "5. Volver al menú principal"
        echo "============================="
        echo -n "Selecciona una opción: "
        read opcion_instalar

        case $opcion_instalar in
            1)
                echo "Instalando en Red Hat y derivados..."
                sudo yum install -y magic-wormhole || echo "Error al instalar Wormhole en Red Hat y derivados."
                ;;
            2)
                echo "Instalando en Debian y derivados..."
                sudo apt update && sudo apt install -y magic-wormhole || echo "Error al instalar Wormhole en Debian y derivados."
                ;;
            3)
                echo "Instalando en Gentoo..."
                sudo emerge --ask net-misc/magic-wormhole || echo "Error al instalar Wormhole en Gentoo."
                ;;
            4)
                echo "Instalando en Arch Linux..."
                sudo pacman -Syu magic-wormhole || echo "Error al instalar Wormhole en Arch Linux."
                ;;
            5)
                echo "Volviendo al menú principal..."
                break
                ;;
            *)
                echo "Opción inválida. Por favor, selecciona una opción válida."
                ;;
        esac
        echo "Pulsa Enter para continuar..."
        read
    done
}

# Función para enviar archivos
enviar_archivo() {
    echo "Introduce la ruta del archivo a enviar:"
    read archivo
    if [ -f "$archivo" ]; then
        echo "Enviando archivo: $archivo"
        wormhole send "$archivo"
    else
        echo "Archivo no encontrado: $archivo"
    fi
}

# Función para recibir archivos
recibir_archivo() {
    echo "Esperando para recibir un archivo..."
    wormhole receive
}
# Menú principal
while true; do
    clear
    echo "============================="
    echo "       Magic Wormhole       "
    echo "============================="
    echo "          Autor:            "
    echo "  Daniel Carralero Benito   "
    echo "============================="
    echo "1. Instalar Wormhole"
    echo "2. Enviar archivo"
    echo "3. Recibir archivo"
    echo "4. Salir"
    echo "============================="
    echo -n "Selecciona una opción: "
    read opcion

    case $opcion in
        1)
            instalar_wormhole_menu

        2)
            enviar_archivo
            ;;
        3)
            recibir_archivo
            ;;
        4)
            echo "Saliendo del programa. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, selecciona una opción válida."
            ;;
    esac
    echo "Pulsa Enter para continuar..."
    read
done


                  



