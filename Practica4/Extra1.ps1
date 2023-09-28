#triangulo con números
[int]$num= Read-Host "Dime la altura del triangulo"
for ($i=1; $i -le $num; $i=$i+1){
    Write-Host ""
    for ($j=$i; $j -ge 1; $j=$j-1){
        Write-Host -NoNewline "$j "
        }
}