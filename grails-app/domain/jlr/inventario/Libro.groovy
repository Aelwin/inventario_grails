package jlr.inventario

import jlr.inventario.enumerado.Formato
import jlr.inventario.enumerado.Idioma
import jlr.inventario.enumerado.SiNo

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

	static belongsTo = Autor
	static hasMany = [autores: Autor, prestamos: Prestamo]

	static transients = ['leido']	

    static constraints = {
    	fechaInicioLectura nullable: true
    	fechaFinLectura nullable: true
    	isbn nullable: true
    	sinopsis nullable: true
    	valoracion nullable: true, range: 1..5
    	imagen nullable: true
    	editorial nullable: true
    	fechaCompra nullable: true
    	observaciones nullable: true
    	categoria nullable: true
    	prestamos nullable: true
    }

    static mapping = {		
		version false
		id generator: 'increment'
		prestamos cascade: 'all-delete-orphan'
	}

	SiNo getLeido() {
		fechaFinLectura ? SiNo.SI : SiNo.NO
	}

	@Override
	String toString() {
		"${titulo}"
	}
}
