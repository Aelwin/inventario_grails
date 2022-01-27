package jlr.inventario

class Autor {

    String nombre

	static hasMany = [libros: Libro]

    static constraints = {
    }

    static mapping = {		
		version false
		id generator: 'increment'
		libros cascade: 'all-delete-orphan'
		sort nombre: "asc"
	}

	@Override
	String toString() {
		"${nombre}"
	}
}
