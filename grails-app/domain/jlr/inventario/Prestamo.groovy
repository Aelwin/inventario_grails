package jlr.inventario

import jlr.inventario.enumerado.SiNo

class Prestamo {

    String nombre
	Date fecha
	SiNo devuelto

	static belongsTo = [libro: Libro]

    static constraints = {
    }

    static mapping = {		
		version false
		id generator: 'increment'
	}
}
