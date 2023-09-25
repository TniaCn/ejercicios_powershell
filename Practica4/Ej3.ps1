#cuenta atrás, separado por comas
[int]$num= read-host "Dime un número entero positivo"
$contador=$num
do {
    Write-Host -NoNewline "$contador,"
    $contador=$contador-1}
until ($contador -lt 0)