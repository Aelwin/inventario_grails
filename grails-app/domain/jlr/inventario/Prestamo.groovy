package jlr.inventario

import jlr.inventario.enumerado.SiNo

class Prestamo {

    String nombre
	Date fechaPrestamo
	SiNo devuelto

	static belongsTo = [libro: Libro]

    static constraints = {
    }

    static mapping = {		
		version false
	}
}
