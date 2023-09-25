#Mostrar tabla de multiplicar de un número
[int]$num= Read-Host "Dime un número"
for ($cont=1; $cont -le 10; $cont=$cont+1)
{
    $mult=$cont*$num
    Write-Host "$num x $cont = $mult"
}
