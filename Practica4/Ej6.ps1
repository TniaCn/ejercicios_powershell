#adivinar número fijo
[int]$numadv= 72
[int]$num= Read-Host "Adivina el número de 0 al 100"
while ($num -ne $numadv){
if ($num -lt $numadv){
    Write-Host "Es mayor"
    }
elseif ($num -gt $numadv -and $num -le 100){ 
     Write-Host "Es menor"}
else {
    Write-Host "Ese número no está dentro del rango"}
[int]$num= Read-Host "¿Qué número es?"
}
Write-Host "¡Enhorabuena has adivinado el número!"
