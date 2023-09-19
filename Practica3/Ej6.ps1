#Saber si la ruta es un directorio o no
$ruta= Read-Host "Dime una ruta"
if (Test-Path $ruta -PathType Container){
    Write-Host "Es un directorio"
    Get-ChildItem -Recurse $ruta
    }
elseif (Test-Path -Path $ruta){
    Write-Host "La ruta existe pero no es un directorio"
    }
else {
    Write-Host "La ruta no existe"
    }