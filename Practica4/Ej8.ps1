#triangulo con números impares
[int]$num= Read-Host "Dime la altura del triangulo"
for ($i=1; $i -le $num; $i=$i+1){
    Write-Host ""
    $escriure=$i*2-1
    for ($j=1; $j -le $i; $j=$j+1){
        Write-Host -NoNewline "$escriure "
        $escriure=$escriure-2
        }
}