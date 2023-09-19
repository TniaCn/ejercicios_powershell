#Saber el fichero existe o no
$ruta= Read-Host "Dime una carpeta o archivo, metiendo la ruta entera."
if (Test-Path -Path $ruta){
    Write-Host "La carpeta/archivo existe"
    }
else {
    Write-Host "La carpeta/archivo no existe"
    }