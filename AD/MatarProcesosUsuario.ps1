#Matar proceso de un usuario
$nom = Read-Host "De que usuario quieres matar todos los procesos?"
Get-Process -IncludeUserName | Where-Object { $_.UserName -eq "EMPRESA\$nom" } | Stop-Process -Force