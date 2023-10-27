#Crear carpeta Empresa_users

New-Item -ItemType Directory -Path "C:\Empresa_users"

#Crear carpetas particulares de los usuarios
$empl=Import-Csv C:\Users\Administrador\Documents\archivos\empleados.csv -delimiter ";"

foreach ($empleados in $empl)
{
    Write-Host $($empleados.departamento), $($empleados.nombre), $($empleados.apellido)
    New-Item -ItemType Directory -Path "C:\Empresa_users\$($empleados.nombre).$($empleados.apellido)"
}

#Compartir carpeta Empresa_users de forma oculta y dar permisos

New-SmbShare -Path C:\Empresa_users -Name Empresa_users$

Grant-SmbShareAccess -Name Empresa_users$ -AccountName Administradores -AccessRight Full -Force
Grant-SmbShareAccess -Name Empresa_users$ -AccountName "Usuarios del dominio" -AccessRight Change -Force
Revoke-SmbShareAccess -Name Empresa_users$ -AccountName Todos -Force

#Permisos NTFS

foreach ($empleados in $empl)
{
    $nombre = "$($empleados.nombre).$($empleados.apellido)"

    Write-Host $($empleados.departamento), $($empleados.nombre), $($empleados.apellido)
    $acl = Get-Acl -Path C:\Empresa_users\$nombre
    $acl.SetAccessRuleProtection($true, $false)

    $permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
    $ace | Format-List

    
    Write-Output $nombre
    $permisos2 = "$nombre",'FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace2 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos2
    $ace2 | Format-List

    $acl.SetAccessRule($ace)
    $acl.SetAccessRule($ace2)
    
    $acl | Set-Acl -Path C:\Empresa_users\$nombre
   
}

#Montar la carpeta personal en la unidad Z: y montar la carpeta de empresas en la unidad Y:

foreach ($empleados in $empl)
{
Set-ADUser -Identity "$($empleados.nombre).$($empleados.apellido)" -ScriptPath "$($empleados.departamento).bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\Empresa_users$\$($empleados.nombre).$($empleados.apellido)"
}





