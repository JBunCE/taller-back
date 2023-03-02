readonly parametro_uno=$1
#parametro_dos_nombre=$2

echo -e "\e[32m[INFO]\e[0m - introduzca nombre del paquete"
read -p "> " parametro_dos_nombre

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

function comand_selection(){

    case $parametro_uno in

        init)
            init
        ;;

        gen)
            gen
        ;;

        *)
            echo -e "\e[33m[WARN]\e[0m - comando desconocido "
        ;;

    esac

}

comand_selection
