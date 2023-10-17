#Crear estructura de carpetas


#Carpeta principal
New-Item -Path C:\ -Name Empresa -ItemType Directory

#Subcarpetas
$dep = Import-Csv C:\Users\Administrador\Documents\archivos\departamentos.csv -delimiter ";"
foreach ($departamento in $dep)
{
    Write-Host $($departamento.departamento), $($departamento.descripcion)
    New-Item -Path C:\Empresa -Name $($departamento.departamento) -ItemType Directory
}



#Dar permisos


$dep = Import-Csv C:\Users\Administrador\Documents\archivos\departamentos.csv -delimiter ";"
foreach ($departamento in $dep)
{
    Write-Host $($departamento.departamento), $($departamento.descripcion)
    New-SmbShare -Path C:\Empresa\$($departamento.departamento) -Name $($departamento.departamento)
}


$dep = Import-Csv C:\Users\Administrador\Documents\archivos\departamentos.csv -delimiter ";"
foreach ($departamento in $dep)
{
    Write-Host $($departamento.departamento), $($departamento.descripcion)
    Grant-SmbShareAccess -Name $($departamento.departamento) -AccountName Administradores -AccessRight Full -Force
    Grant-SmbShareAccess -Name $($departamento.departamento) -AccountName $($departamento.departamento) -AccessRight Change -Force 
    Revoke-SmbShareAccess -Name $($departamento.departamento) -AccountName Todos -Force
    Grant-SmbShareAccess -Name $($departamento.departamento) -AccountName "Usuarios del dominio" -AccessRight Read -Force 
      
}