#Funciones Calculadora
function suma ($num, $num2){
$suma=$num + $num2
Write-Host "La respuesta es $suma"
}
function resta ($num, $num2){
$resta=$num - $num2
Write-Host "La respuesta es $resta"
}
function multi ($num, $num2){
$multi=$num * $num2
Write-Host "La respuesta es $multi"
}
function div ($num, $num2){
$div=$num / $num2
Write-Host "La respuesta es $div"
}

#Programa principal

do{
[int]$calculadora=Read-Host "********** CALCULADORA **********
1.Sumar
2.Restar
3.Multiplicar
4.Dividir
5.Salir
¿Qué desea hacer? Elige una opción"
if ($calculadora -ne 5){
[int]$num=Read-Host "Dime un número"
[int]$num2=Read-Host "Dime otro número"
}
Switch ($calculadora){
    1 {
      suma $num $num2
      Read-Host
      Clear-Host
      }
    2 {
      resta $num $num2
      Read-Host
      Clear-Host
      }
    3 {
      multi $num $num2
      Read-Host
      Clear-Host
      }
    4 {
      div $num $num2
      Read-Host
      Clear-Host
      }
} 
}while ( $calculadora -ne "5")
