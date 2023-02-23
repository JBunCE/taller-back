function copy(){
    mkdir ./directorio_prueba/copias
    cp ./directorio_prueba/archivo1.txt ./directorio_prueba/copias
    cp ./directorio_prueba/archivo2.txt ./directorio_prueba/copias

    local archivo1=$( cat ./directorio_prueba/copias/archivo1.txt )
    local archivo2=$( cat ./directorio_prueba/copias/archivo2.txt )

    echo $archivo1 >> ./directorio_prueba/copias/archivo2.txt
    echo $archivo2 >> ./directorio_prueba/copias/archivo1.txt
}

copy