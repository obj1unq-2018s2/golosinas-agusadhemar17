// Esto esta bien, test completo.
object bombon {
	var peso = 15
	
	method precio() { 
		return 5
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = peso * 0.8 - 1
	}
	method gusto() { 
		return "frutilla"
	}
	method libreGluten() { 
		return true
	}
}

// Esto esta bien, test completo.
object alfajor {
	var peso = 300
	
	method precio() { 
		return 12
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = peso * 0.8 
	}
	method gusto() { 
		return "chocolate"
	}
	method libreGluten() { 
		return false
	}
 }

// Esto esta bien, test completo.
object caramelo {
	var peso = 5
	
	method precio() { 
		return 1
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = peso - 1
	}
	method gusto() { 
		return "frutilla"
	}
	method libreGluten() { 
		return true
	}// definir
}

// Esto esta bien, test completo.
object chupetin {/*Vale 2 pesos y pesa inicialmente 7 gramos. Su gusto es naranja. Es libre de gluten.
 *  Cuando recibe un mordisco, pierde el 10 % de su peso, a excepción de que su peso actual 
 * sea menor a 2 gramos: en tal caso, no pierde nada. */
	var peso = 7
	
	method precio() { 
		return 2
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = if (peso>2) peso * 0.9 else peso
	}
	method gusto() { 
		return "naranja"
	}
	method libreGluten() { 
		return true
	}// definir
}

// Esto esta bien, test completo.
object oblea {

	var peso = 250
	
	method precio() { 
		return 5
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = if (peso>70) peso * 0.5 else peso * 0.75
	}
	method gusto() { 
		return "vainilla"
	}
	method libreGluten() { 
		return false
	}// definir
}

// Esto esta bien, test completo.
object chocolatin {	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio() { 
		return 0.5 * pesoInicial
	}
	method peso() { 
		return pesoActual
	}
	method mordisco() { 
		pesoActual = pesoActual - 2
	}
	method gusto() { 
		return "chocolate"
	}
	method libreGluten() { 
		return false
	}
}

// Esto esta bien, test completo.
object golosinaBaniada {/*El peso inicial es el de la golosina de base más 4 gramos que es 
 * lo que pesa el bañado. 
 * El precio es el de la golosina de base más 2 pesos. 
 * El gusto es el de la golosina de base. De la misma manera, es libre de gluten si lo es su golosina base.
 Con cada mordisco se da un mordisco a la golosina de base. Además, en el primer mordisco pierde 2 gramos de bañado, y en el segundo los otros dos. */
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { 
		golosinaInterior = unaGolosina
	}
	method precio() { 
		return golosinaInterior.precio()+ 2 
	 }
	method peso() { 
		return golosinaInterior.peso()+pesoBanio 
	}
	method mordisco() {
		golosinaInterior.mordisco()
		pesoBanio = (pesoBanio - 2).max(0) 
	//if (pesoBanio > 0) { pesoBanio -= 2
	}
		// otra forma de hacer la cuenta: }	
	method gusto() { 
		return golosinaInterior.gusto()
	}
	method libreGluten() { 
		return golosinaInterior.libreGluten() /* completar */
	}	
}

// Esto esta bien, test completo.
object tuttifrutti {
	var peso = 5
	var property conGluten = false
	var sabores = ["frutilla","chocolate","naranja"]
	var saborActual
	
	method precio() { 
		return if (conGluten) 7 else 10
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		saborActual = sabores.first()
		sabores = sabores.drop(1)
		sabores.add(saborActual)
	}
	method gusto() {
		return saborActual 
	}// definir

	method libreGluten() { 
		return conGluten /* completar */
	}
}/*Pesa inicialmente 5 gramos. La pastilla puede ser libre de gluten o no (se configura). 
	 * Si es libre de gluten el precio es $7; si no, es de $10.
 En cada mordisco cambia el sabor, pasa de frutilla a chocolate, 
 * de ahí a naranja, de ahí vuelve a frutilla. */
	 // como manejar el cambio de sabor ??


