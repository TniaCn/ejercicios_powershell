#evaluación de empleados y dinero recibido en base a eso
[double]$puntos= Read-Host "Dime tu puntuación"
[double]$dinero= $puntos*2400
if ($puntos -eq 0.0){
    Write-Host "Inaceptable"
    Write-Host "Recibes $dinero €"
    }
elseif ($puntos -eq 0.4){
    Write-Host "Aceptable"
    Write-Host "Recibes $dinero €"
    }
elseif ($puntos -ge 0.6){
    Write-Host "Meritorio"
    Write-Host "Recibes $dinero €"
    }
else {
    Write-Host "Error"
    }