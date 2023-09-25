#Escribe todos los años anteriores a los tuyos
$edad= Read-Host "Dime tu edad"
$contador=1
do {
    Write-Host "$contador"
    $contador=$contador+1}
until ($contador -gt $edad)