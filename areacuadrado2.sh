echo "holaaaa"

# Solicitar al usuario que ingrese la longitud del lado del cuadrado
read -p "Introduce la longitud del lado del cuadrado: " lado

# Verificar si la entrada es un número positivo
if [[ ! "$lado" =~ ^[0-9]+([.][0-9]+)?$ ]] || (( $(echo "$lado <= 0" | bc -l) )); then
    echo "Por favor, introduce un número positivo válido."
    exit 1
fi

# Calcular el área del cuadrado
area=$(echo "$lado * $lado" | bc)

# Mostrar el resultado
echo "El área del cuadrado es: $area"