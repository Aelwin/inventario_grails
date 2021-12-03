package jlr.inventario

class Autor {

    String nombre

	static hasMany = [libros: Libro]

    static constraints = {
    }

    static mapping = {		
		version false
		libros cascade: 'all-delete-orphan'
	}

	@Override
	String toString() {
		"${nombre}"
	}
}
