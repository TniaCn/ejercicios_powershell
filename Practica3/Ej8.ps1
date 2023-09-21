#Saber a que grupo va el/la alumno/a
$nom= Read-Host "Dime tu nombre"
$sexo= Read-Host "Dime tu género"
if ( $sexo -eq "mujer"  -and  $nom -match "^[a-m].*" ){
    Write-Host "Estás en el grupo A"
    }
elseif ( $sexo -eq "hombre" -and $nom -match "^[n-z].*" ){
    Write-Host "Estás en el grupo A"}
else {
    Write-Host "Estás en el grupo B"}