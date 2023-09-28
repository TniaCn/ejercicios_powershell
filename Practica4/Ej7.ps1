#tiangulo con una altura igual al número introducido
[int]$num= Read-Host "Dime la altura del triangulo"
$aster="*"
for ($cont=1; $cont -le $num; $cont=$cont+1){
 Write-Host "$aster"
 $aster=$aster+"*"
}

#con dos bucles
#[int]$num= Read-Host "a"
#for ($i=1; $i -le $num; $i=$i+1){
#   Write-Host ""
#   for ($j=1; $j -le $i; $j=$j+1){
#       Write-Host -NoNewline "*"
#       }
#}