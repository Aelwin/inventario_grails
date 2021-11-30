package jlr.inventario

class Libro {

    String titulo
	String propietario	
	Date fechaInicioLectura
	Date fechaFinLectura
	String isbn
	String sinopsis
	int valoracion
	String imagen
	String editorial
	Date fechaCompra
	String observaciones
	String categoria
	Formato formato
	Idioma idioma
	Prestamo prestamo

	static belongsTo = Autor
	static hasMany = [autores: Autor]

	static transients = ['leido']	

    static constraints = {
    	fechaInicioLectura nullable: true
    	fechaFinLectura nullable: true
    	isbn nullable: true
    	sinopsis nullable: true
    	valoracion nullable: true, range: 1..10
    	imagen nullable: true
    	editorial nullable: true
    	fechaCompra nullable: true
    	observaciones nullable: true
    	categoria nullable: true
    	prestamo nullable: true
    }

    static mapping = {		
		version false
	}

	SiNo getLeido() {
		fechaFinLectura ? SiNo.SI : SiNo.NO
	}

	@Override
	String toString() {
		"${titulo}"
	}
}
