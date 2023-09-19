#Saber si un número es mayor, igual o menor que otro
[int]$num1 = Read-Host "Dame un número"
[int]$num2 = Read-Host "Dame otro número"
if ($num1 -gt $num2){
    Write-Host "$num1 es mayor que $num2"
    }
elseif ($num1 -lt $num2){
    Write-Host "$num1 es menor que $num2"
    }
else{
    Write-Host "$num1 es igual que $num2"
    }