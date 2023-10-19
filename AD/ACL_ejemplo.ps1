#Muestra los permisos declarados en el recurso indicado

<#
Get-Acl -Path C:\prueba | Format-Table
Get-Acl -Path C:\prueba | Format-List
#>

#Obtener los permisos del directorio prueba, en formato tabla

<#
$acl.Access | Format-Table
#>

#Quitar la herencia, dentro de seraccessruleprotection
#puede ir $true/$false, $true/$false; el primer true quiere decir
#que dehabilitaré la herencia, el primer false quiere decir
#que se habilitará la herencia;
#el segundo true quiere decir que preservarán las reglas heredadas
#el false eliminará las reglas heredadas

<#
$acl.SetAccessRuleProtection($true, $true)
#>

#añador permisos a la carpeta
#establece las reglas de acceso de $acl a la carpeta prueba

<#
$acl | Set-Acl -Path C:\prueba
#>

#quitar ACL/ reglas de acceso mediante un bucle foreach
#leemos nuestras acl con $acl.Access (sería como nuestro documento)
#esto de aquí es necesario para que me funcione el resto
$acl = Get-Acl -Path C:\prueba

$listaace = $acl.Access

foreach ($ace in $listaace){
    $ace | Format-List
    $acl.RemoveAccessRule($ace)
}


#añadir reglas de acceso; que el grupo administradores tenga control total
#grupo, tipo de permiso, herencia hijos, propagación,tipo
$permiso = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'

#
$ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
$acl.SetAccessRule($ace)

$acl | Set-Acl -Path C:\prueba