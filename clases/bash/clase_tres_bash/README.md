### Entrada de usuario en terminal desde un Script

Para la entrada de usuario usaremos las siguientes instrucciones

### Entrada de usuario con (read)

```bash
    read <variable>
```

Aqui se usa la opcion -p que nos da la posibilidad de agregar un mensaje personalizado antes de la entrada de usuario

```bash
    read -p "> " <variable>

    #Example

    read -p "container name? >" container_name

    # la salida de este comando es
    # $ container name? <entrada de usuario>
    # la entrada de usuario se guardara dentro de la variable container_name
```

### Entrada de usuario con (select)

select nos permite seleccionar entre varias opciones en la consola

```bash
    select yes_no in yes no
    do
        if [ $yes_no = "yes" ]; then
           echo "do something"
        fi
        break
    done

    # la salida deste comando es una seleccion entre yes y no donde 1 es yes y 2 es no

    # 1) yes  
    # 2) no
    # #? <entrada de usuario>
```

### Swtich

La sintaxis de switch es la siguiente
```bash
    read -e -p "> " valor

    # primero abrimos el bloque con case
    case $valor in
        some) # definimos los case con <valor>)
            echo "do some"
        ;; # cerrar case con ;;

        *) # utilizar *) para indicar el case default
            echo "do something"
        ;;
    esac # cerrar el bloque con esac
```

#### aqui terminan las clases de bash - proximo tema: git


