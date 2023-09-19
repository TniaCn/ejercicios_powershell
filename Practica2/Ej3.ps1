[int]$horas = Read-Host "Cuantas horas has trabajado?"
[int]$coste = Read-Host "Cuanto cobras la hora?"
$salario=$horas*$coste
Write-Host "Tienes un salario de $salario euros"