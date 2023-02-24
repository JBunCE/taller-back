# clase 2

### parametros 
podemos tomar parametros que nosotros escribamos a la hora de ejecutar cualquier comando
de la siguiente manera

```bash
    # el $1 simboliza el primer parametro despues del script o del alias
    variable=$1
    # de manera consecutiva los demas parametros
    variable_dos=$2
    variable_tres=$3

```
supongamos que queremos pasar un string desde afuera 
vamos a imprimir hola mundo pero vamos a pasar el "hola" mediante parametros
```bash
    # podemos hacerlo de estasformas
    texto=$1
    echo "$texo mundo"
    echo $texo "mundo"

    # ya que estamos usando el primer parametro utilizamos $1
    echo "$1 mundo"

    # el comando se veria mas o menos asi 
    # ./script.bash "hola"
    # y la salida seria hola mundo
```


### if/else en bashScript - 
```bash
    # primero declaramos una variable que reciba el primer parametro
    variable=$1

    #luego con un if imprimimos mundo si lo que pasamos como parametro es "hola"
    #si pasamos cualquier otra cosa a la variable imprimimos un mensaje de error
    if [ $variable == "hola" ]; 
    then
        echo "mundo"
    else
        echo "[ERROR] comando desconocido"
    fi

```

### secuencia de escape escial -e de el comando echo
### cambio de color

```bash

    # vamos a poner colores a nuestra salida de echo
    # utilizando la opcion -e que permite caracteres especiales

    echo -e "\e[32m[INFO] - hola soy un comando de color verde\e[0m"

    # notemos que para usar los colores tenemos que poner \e[ seguido de el codigo de el color
    # en este caso el codigo es 32m y la sintaxis por ende es \e[32m 
    # y cerramos con \e[0 para regresar los comandos al color original 

```

codigos de color de echo -e
```markdown

Negro: \e[30m
Rojo: \e[31m
Verde: \e[32m
Amarillo: \e[33m
Azul: \e[34m
Magenta: \e[35m
Cian: \e[36m
Blanco: \e[37m

```

