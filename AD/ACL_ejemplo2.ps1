
$acl = Get-Acl -Path C:\prueba2

#Deshabilita la herencia y elimina todas las reglas de acceso

$acl.SetAccessRuleProtection($true, $false)

#Añadir al grupo administrador con control total

$permisos = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos
$ace | Format-Table

$permisos2 = 'Todos','Read','ContainerInherit,ObjectInherit','None','Allow'
$ace2 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisos2
$ace2 | Format-Table


#Establece los permisos $ace en la acl

$acl.SetAccessRule($ace)
$acl.SetAccessRule($ace2)

<#
#Aplica los permisos

$acl | Set-Acl -Path C:\prueba2
#>

