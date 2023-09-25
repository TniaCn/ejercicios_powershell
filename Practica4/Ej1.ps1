#Repite el nombre las veces que te diga
$nom= Read-Host "Dime tu nombre"
$rep= Read-Host "Dime un número"
$contador=1
while ($contador -le $rep){
    Write-Host "$nom"
    $contador=$contador+1}
