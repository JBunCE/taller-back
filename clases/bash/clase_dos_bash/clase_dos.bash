parametro_uno=$1
parametro_dos_nombre=$2

function init(){
    echo -e "\e[32m[INFO]\e[0m - generando arbol del proyecto"
    mkdir $parametro_dos_nombre
    mkdir $parametro_dos_nombre/main
    mkdir $parametro_dos_nombre/main/pojos
    mkdir $parametro_dos_nombre/resources


    echo ""
    echo -e "\e[32m[INFO]\e[0m - generando archivos java"
    touch $parametro_dos_nombre/main/Main.java
    touch $parametro_dos_nombre/resources/application.env

    echo "public class Main {
        public static void main(String[] args){

        }
    }" > $parametro_dos_nombre/main/Main.java
}

function gen(){
    echo -e "\e[32m[INFO]\e[0m - generando clase"
    touch ./main/pojos/$parametro_dos_nombre.java
    
    echo " public class $parametro_dos_nombre {

    } " > ./main/pojos/$parametro_dos_nombre.java
}

if [ $parametro_uno == "init" ];
then
    init
else
    if [ $parametro_uno == "gen" ];
    then
        gen
    else
        echo -e "\e[33m[WARN]\e[0m - comando desconocido "
    fi
fi




