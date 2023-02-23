#crear un directorio con 2 archivos

function create(){
    echo "creando directorio" 
    mkdir directorio_prueba
    touch ./directorio_prueba/archivo1.txt
    touch ./directorio_prueba/archivo2.txt

    echo "hola fui escrito desde un script" >> ./directorio_prueba/archivo1.txt
    echo $( pwd ) >> ./directorio_prueba/archivo2.txt    
}

create