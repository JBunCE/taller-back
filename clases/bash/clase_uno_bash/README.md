# BASH #
## COMMANDOS 

## Dejo esta documentacion con lo utilizado en esta clase

## - echo -
## este comando escribe texto tanto en la consola como en archivos 
## su sintaxis es la siguiente, se utiliza <> para indicar los parametros de los comandos

### este comando imprime algo en consola
```bash
    echo <string>
```

### este comando escribe un string en un archivo de texto (>>)
```bash
    echo <string> >> <file>
```

### este comando sobreescribe un string en un archivo de texto (>)
```bash
    echo <string> > <file>
```

### este comando obtener el contenido de un archivo
```bash
    cat <file>
```

<h1>comandos basicos</h1>

### mover archivos
```bash
    mv <file or directory> <destination>
```

### copiar archivos
```bash
    cp <file or directory> <destination>
```

### eliminar archivos
recuerden que para eliminar carpeta con contenido utilizamos -r (recursivo)
```bash
    rm <file>
    rm -r <file or directory> 
```

### crear archivos
```bash
    touch <file name> 
```

### crear directorios
```bash
    mkdir <directory> 
```

### obener la salida de un comando y guardarlo en una variable
en este caso declaramos una variable y con $( ) le pasamos la salida de "pwd"
```bash
    variable=$( pwd )
```
con $( ) podemos obtener la salida de un comando

### funciones
para declarar funciones utilizamos la palabra reservada <b>function*</b> y para declarar variables locales
dentro de la funcion utilizaremos <b>local</b> para llamar a las variabes usamos <b>$</b> antes del nombre de 
la variable que vamos a usar
```bash
    function hola_soy_la_funcion(){
        local hola_soy_local="variable local"
        echo $hola_soy_local
    }
    hola_soy_la_funcion
```



