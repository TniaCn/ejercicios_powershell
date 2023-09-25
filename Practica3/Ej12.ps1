#saber si la pizza es vegetariana o no
$tipo=Read-Host "¿Quieres una pizza vegetariana o no?[si/no]"
if ($tipo -eq "si"){
Write-Host "***************INGREDIENTES***************
1.Pimiento
2.Tofu
"
[int]$ing=Read-Host "Elije un ingrediente"
Write-Host "La pizza es vegetaria"
Switch ($ing){
    1 {
        Write-Host "Ingredientes: mozzarella, tomate y pimiento"}
    2 {
        Write-Host "Ingredientes: mozzarella, tomate y tofu"}
    }
}
else {
Write-Host "***************INGREDIENTES***************
1.Peperoni
2.Jamón
3.Salmón
"
[int]$ing=Read-Host "Elije un ingrediente"
Write-Host "La pizza no es vegetaria"
Switch ($ing){
    1 {
        Write-Host "Ingredientes: mozzarella, tomate y peperoni"}
    2 {
        Write-Host "Ingredientes: mozzarella, tomate y jamón"}
    3 {
        Write-Host "Ingredientes: mozzarella, tomate y salmón"}
       }
}
