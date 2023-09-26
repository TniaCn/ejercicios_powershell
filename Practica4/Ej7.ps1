#tiangulo con una altura igual al número introducido
[int]$num= Read-Host "Dime la altura del triangulo"
$aster="*"
for ($cont=1; $cont -le $num; $cont=$cont+1){
 Write-Host "$aster"
 $aster=$aster+"*"
}