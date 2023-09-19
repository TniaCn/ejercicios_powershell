#Saber si alguien es mayor o menor de edad
[int]$edad = Read-Host "¿Cuál es tu edad?"
if ($edad -ge 18){
    Write-Host "Eres mayor de edad"
    }
else {
     Write-Host "Eres menor de edad"
     }