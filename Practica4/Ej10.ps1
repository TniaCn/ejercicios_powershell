
do{
    Write-Host "a) Crear carpeta
b) Crear un fichero nuevo
c) Cambiar el nombre de un fichero o carpeta
d) Borrar un archivo o carpeta
e) Verifica si existe un fichero o carpeta
f) Mostrar el contenido de un direcctorio
g) Mostrar la fecha y hora actuales
x) Salir"
    $resp= Read-Host "Introduce una opción"
switch ($resp){
    "a" {
            $carpeta=Read-Host "Introduce el nombre de la carpeta"
            New-Item $carpeta -ItemType Directory
            Read-Host
            Clear-Host
        }
    "b" {
            $fichero=Read-Host "Introduce el nombre del fichero"
            New-Item $fichero -ItemType File
            Read-Host
            Clear-Host
        }
    "c" {
            $nom=Read-Host "Introduce la ruta del fichero/carpeta a cambiar"
            $newname=Read-Host "Introduce nuevo nombre"
            Rename-Item -Path "$nom" -NewName "$newname"
            Read-Host
            Clear-Host
        }
    "d" {
            $borrar=Read-Host "Introduce ruta del fichero/carpeta a borrar"
            Remove-Item $borrar -Recurse
            Read-Host
            Clear-Host
        }
    "e" {
            $verif=Read-Host "Introduce la ruta del fichero/directorio a verificar"
            Test-Path -Path "$verif"
            Read-Host
            Clear-Host
        }
    "f" {
            Read-Host ""
            Read-Host
            Clear-Host
        }
    "g" {
            Read-Host ""
            Read-Host
            Clear-Host
        }
}
} while ($resp -ne "x")