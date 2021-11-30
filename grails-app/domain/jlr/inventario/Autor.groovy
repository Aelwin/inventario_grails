package jlr.inventario

class Autor {

    String nombre

	static hasMany = [libros: Libro]

    static constraints = {
    }

    static mapping = {		
		version false
	}

	@Override
	String toString() {
		"${nombre}"
	}
}
