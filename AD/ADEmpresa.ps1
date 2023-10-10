Import-Module ActiveDirectory
#Crear unidad organizativa
$Path= "DC=EMPRESA,DC=LOCAL"
New-ADOrganizationalUnit -Name "Empresa" -Path "$Path" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "FINANZAS" -Path "OU=EMPRESA,$Path" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "PERSONAL" -Path "OU=EMPRESA,$Path" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "PRODUCCION" -Path "OU=EMPRESA,$Path" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "VENTAS" -Path "OU=EMPRESA,$Path" -ProtectedFromAccidentalDeletion $false


$dep = Import-Csv C:\Users\Administrador\Documents\archivos\departamentos.csv -delimiter ";"
foreach ($departamento in $dep)
{
    Write-Host $($departamento.departamento), $($departamento.descripcion)
    New-ADGroup -Name $($departamento.departamento) -GroupCategory Security -GroupScope Global -Path "OU=$($departamento.departamento), OU=EMPRESA, $Path" -Description $($departamento.descripcion)
    
}


$empl=Import-Csv C:\Users\Administrador\Documents\archivos\empleados.csv -delimiter ";"

foreach ($empleados in $empl)
{
    Write-Host $($empleados.departamento), $($empleados.nombre), $($empleados.apellido)
    New-ADUser -Name $($empleados.nombre) -Path "OU=$($empleados.Departamento),OU=Empresa, $Path" -SamAccountName "$($empleados.nombre).$($empleados.apellido)" -UserPrincipalName "$($empleados.nombre).$($empleados.apellido)@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2021." -AsPlainText -Force) -GivenName "$($empleados.nombre)" -Surname "$($empleados.apellido)" -ChangePasswordAtLogon $true -Enabled $true
    Add-ADGroupMember -Identity "$($empleados.departamento)" -Members "$($empleados.nombre).$($empleados.apellido)"
}