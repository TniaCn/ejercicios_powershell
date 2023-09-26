#pedir contra y preguntarla.Repetir hasta que pongas bien la contra.
$contra= "contraseña"
$adiv=Read-Host "Introduce contraseña"
while ($adiv -ne $contra){
    Write-Host "Contraseña incorrecta"
    $adiv=Read-Host "Introduce contraseña"
}
Write-Host "Contraseña correcta"