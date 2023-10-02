#Lee los datos del archivo usuarios.csv
$usuarios=Import-Csv Z:\Practica5\usuarios.csv
foreach ($usu in $usuarios)
{
    Write-Host "$($usu.nombre), $($usu.apellidos), $($usu.grupo)"
}