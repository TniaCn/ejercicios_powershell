#triangulo con * y -
[int]$num= Read-Host "Dime la altura del triangulo"
for ($i=1; $i -le $num; $i=$i+1){
    Write-Host ""
    for ($j=1; $j -le $i; $j=$j+1){
        if ($j -eq $i){
            Write-Host -NoNewline "*"
        }
        else{
            Write-Host -NoNewline "-"
        }
    }
}