import golosinas.*

object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	const property golosinasCompradas = []
	var golosinaBaniada = new GolosinaBaniada()
	
	method bolsaDeGolosinas(){
		return golosinasCompradas
	}
	method comprar(golosina) { 
		return golosinasCompradas.add(golosina)
		/* completar */ 
	}
	method  desechar(unaGolosina) {
		return golosinasCompradas.remove(unaGolosina)
	}
	
	method probarGolosinas() { 
	 	return golosinasCompradas.forEach({golosina => golosina.mordisco())}) 
	}
	 
	method hayGolosinaSinTACC(){ // indica si hay al menos una golosina sin gluten en la bolsa de golosinas compradas.
		return golosinasCompradas.any({golosina=> golosina.libreGluten()})
	}
	method preciosCuidados() {//indica si todas las golosinas compradas tienen un precio menor o igual a 10 pesos.
		return golosinasCompradas.all({golosina=> golosina.precio() <= 10})
	}
	method golosinaDeSabor(unSabor){//devuelve la primer golosina que encuentra en la bolsa del sabor escogido.
		return golosinasCompradas.find({golosina=> golosina.gusto() == unSabor })
	}
	method golosinasDeSabor(unSabor){//devuelve las golosinas que encuentre dentro de la bolsa del sabor escogido.
		return golosinasCompradas.filter({golosina=> golosina.gusto() == unSabor})
	}
	method sabores(){// que devuelve los sabores de las golosinas de la bolsa, idealmente sin repetidos. 
  		return golosinasCompradas.map({golosina=> golosina.gusto()}.asSet())
  	}
  	
 	method golosinaMasCara(){
		return golosinasCompradas.max({golosina=> golosina.precio()})
	}
	method pesoGolosinas(){ 
		return golosinasCompradas.map({golosina=> golosina.peso()}.sum())
	}
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(golosinasCompradas)
	}
 	method gustosFaltantes(gustosDeseados){
 		return gustosDeseados.difference(golosinasCompradas.map({golosina=> golosina.gusto()}))
 	}
  

 /*
Bañar Golosina
Hacer que Mariano entienda el mensaje  baniar(unaGolosina). 
* El método construye una nueva golosina bañada y la agrega a la colección de las golosinas que compró Mariano.
Pensar, haciendo un diagrama de objetos, qué pasa si:
1.la golosina ya era parte de la colección.
2.se baña una golosina ya bañada.
*/
	method baniarGolosina(golosina){
		golosinaBaniada.baniaA(golosina)
		golosinasCompradas.add (golosina)
	}
} 