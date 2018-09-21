import golosinas.*

object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	const property golosinasCompradas = []
	
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
	
	/*method golosinas() {
		cambiar por la implementacion correcta 
		return [] 
	}*/
	method probarGolosinas() { 
	 	return golosinasCompradas.forEach({golosina => golosina.mordisco())} /* completar */ }
	 
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
  	
 /*P.ej. aunque Mariano tenga tres golosinas de sabor naranja, en lo que devuelve  sabores()  el naranja debería aparecer una sola vez. 
 Una orma de resolver esto es usando conjuntos; revolver en el apunte sobre colecciones y closures: https://objetos1wollokunq.gitlab.io/material/guia-colecciones-basicas.pdf.*/
	method golosinaMasCara(){// devuelve la golosina mas cara en la bolsa de golosinas compradas.
		return golosinasCompradas.max({golosina=> golosina.precio()})
	}
	method pesoGolosinas(){ //devuelve el peso de la bolsa de golosinas compradas, o sea, la suma del peso de cada golosina.
		return golosinasCompradas.map({golosina=> golosina.peso()}.sum())
	}
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(golosinasCompradas)
	}//Debe devolver las golosinas que están entre las  golosinasDeseadas , y que Mariano no compró.
 	method gustosFaltantes(gustosDeseados){
 		return gustosDeseados.difference(golosinasCompradas.map({golosina=> golosina.gusto()})
 	}  
}
 
