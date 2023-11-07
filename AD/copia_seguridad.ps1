#Directorio/archivo de quien queremos hacer la copia de seguridad
$directorio = Read-Host "Ingresa el directorio que deseas respaldar (por ejemplo, C:\Datos):"

#Directorio donde estará la copia de seguridad
$CopiaSeguridad = "C:\CopiasDeSeguridad"

#Hacer copia de seguridad
Copy-Item -Path $directorio -Destination $CopiaSeguridad -Recurse
