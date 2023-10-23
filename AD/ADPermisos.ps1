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


#ACL

$dep = Import-Csv C:\Users\Administrador\Documents\archivos\departamentos.csv -delimiter ";"
foreach ($departamento in $dep)
{
    Write-Host $($departamento.departamento), $($departamento.descripcion)
    $acl = Get-Acl -Path C:\Empresa\$($departamento.departamento)
    $acl.SetAccessRuleProtection($true, $false)
    $permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $ace | Format-List
    $permisos2 = "$($departamento.departamento)",'Modify','ContainerInherit,ObjectInherit','None','Allow'
    $ace2 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos2
    $ace2 | Format-List
    $permisos3 = 'Usuarios del dominio','Read','ContainerInherit,ObjectInherit','None','Allow'
    $ace3 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos3
    $ace3 | Format-List
    $acl.SetAccessRule($ace)
    $acl.SetAccessRule($ace2)
    $acl.SetAccessRule($ace3)
    $acl | Set-Acl -Path C:\Empresa\$($departamento.departamento)
}

