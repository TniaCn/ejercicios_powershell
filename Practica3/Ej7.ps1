#Saber si la contraseña es correcta o incorrecta
$a= Read-Host "Introduce la contraseña"
$contra= "contraseña"
if ($a -eq $contra){
    Write-Host "La contraseña es correcta"
    }
else{
    Write-Host "Contraseña incorrecta"}