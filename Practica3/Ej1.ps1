#Saber si el número es par o impar
[int]$num1 = Read-Host "Dame un número"
$rest= $num1%2
If ($rest -eq 0){
    Write-Host "El número es par"
    }
Else {
    Write-Host "El número es impar"
    }