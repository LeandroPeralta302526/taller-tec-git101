# Entrega Nombre Apellido - NumeroDeEstudiante

#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
    clear
    echo "=================================="
    echo "           Menú Principal         "
    echo "=================================="
    echo "1. Mostrar fecha y hora actual"
    echo "2. Listar archivos en el directorio actual"
    echo "3. Mostrar el espacio en disco"
    echo "4. Salir"
    echo "=================================="
}

# Función fecha y hora
mostrar_fecha_hora() {
    echo "Fecha y hora actual:"
    date
}

# Función de lista de archivos
listar_archivos() {
    echo "Archivos en el directorio actual:"
    ls -la
}

# Función espacio disco
mostrar_espacio_disco() {
    echo "Espacio en disco:"
    df -h
}

# Bucle del menu principal
while true; do
    mostrar_menu
    read -p "Seleccione una opción [1-4]: " opcion

    case $opcion in
        1)
            mostrar_fecha_hora
            ;;
        2)
            listar_archivos
            ;;
        3)
            mostrar_espacio_disco
            ;;
        4)
            echo "Saliendo del programa..."
            break
            ;;
        *)
            echo "Opción no válida, por favor seleccione una opción del 1 al 4."
            ;;
    esac

    read -p "Presione Enter para continuar..."
done

echo "Programa finalizado."
