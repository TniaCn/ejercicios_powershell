#Mostrar números impares, separados por comas
[int]$num= read-host "Dime un número entero positivo"
$contador=1
while ($contador -le $num){
    if ($contador%2){
        Write-Host -NoNewline "$contador, "}
    $contador=$contador+1
    }
