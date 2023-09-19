#Calculadora sencilla
Write-Host "********** CALCULADORA **********
1.Sumar
2.Restar
3.Multiplicar
4.Dividir"
[int]$op = Read-Host "Elige una opción de las anteriores."
Switch ($op){
    1 {
       [int]$num1 = Read-Host "Dame un número"
       [int]$num2 = Read-Host "Dame otro número"
       $res= $num1+$num2
       Write-Host "La suma de $num1 + $num2 es $res"
       }
    2 {
       [int]$num1 = Read-Host "Dame un número"
       [int]$num2 = Read-Host "Dame otro número"
       $res= $num1-$num2
       Write-Host "La resta de $num1 - $num2 es $res"
       }
    3 {
       [int]$num1 = Read-Host "Dame un número"
       [int]$num2 = Read-Host "Dame otro número"
       $res= $num1*$num2
       Write-Host "La suma de $num1 * $num2 es $res"
       }
    4 {
       [int]$num1 = Read-Host "Dame un número"
       [int]$num2 = Read-Host "Dame otro número"
       $res= $num1/$num2
       Write-Host "La suma de $num1 / $num2 es $res"
       }
    } 
