#Saber que tipo de impositivo tienes según tu renta
[int]$renta= Read-Host "Dime tu renta"
if ( $renta -le 10000 ){
    Write-Host "Tipo impositivo: 5%"
    }
elseif ( $renta -gt 10000 -and $renta -le 20000){
    Write-Host "Tipo impositivo: 15%"
    }
elseif ( $renta -gt 20000 -and $renta -le 35000){
    Write-Host "Tipo impositivo: 20%"
    }
elseif ( $renta -gt 35000 -and $renta -le 60000){
    Write-Host "Tipo impositivo: 30%"
    }
else {
    Write-Host "Tipo impositivo: 45%"
    }