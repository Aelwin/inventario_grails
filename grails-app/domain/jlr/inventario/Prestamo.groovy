package jlr.inventario

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
