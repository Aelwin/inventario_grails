package jlr.inventario

import jlr.inventario.enumerado.Formato
import jlr.inventario.enumerado.Idioma
import jlr.inventario.enumerado.SiNo
import groovy.sql.Sql

class Libro {

    String titulo
	String propietario
	String isbn
	String sinopsis
	String imagen
	String editorial
	Date fechaCompra
	String observaciones
	String categoria
	Formato formato
	Idioma idioma
	BigDecimal precio

	static belongsTo = Autor
	static hasMany = [autores: Autor, prestamos: Prestamo, lecturas: Lectura]

	static transients = ['leido']

    static constraints = {
    	isbn nullable: true
    	sinopsis nullable: true
    	imagen nullable: true
    	editorial nullable: true
    	fechaCompra nullable: true
    	observaciones nullable: true
    	categoria nullable: true
    	prestamos nullable: true
    	lecturas nullable: true
    	precio nullable: true, scale: 2
    }

    static mapping = {		
		version false
		id generator: 'increment'
		prestamos cascade: 'all-delete-orphan'
		lecturas cascade: 'all-delete-orphan'
		sort titulo: "asc"
	}

	def beforeValidate() {
		lecturas?.removeAll { it.fechaInicio == null }
	}

	def beforeDelete() {
		//antes de borrar elimino manualmente la fila de la tabla que tiene la relación entre libro y autor
		def dataSource = ApplicationContextHolder.grailsApplication.mainContext.getBean('dataSource')		
		final Sql sql = new Sql(dataSource)
        sql.executeUpdate("DELETE FROM AUTOR_LIBROS WHERE LIBRO_ID = $id")
	}

	/**
	 * Devuelve si un libro ha sido leído por su propietario
	*/
	SiNo getLeido() {
		SiNo haSidoLeido = SiNo.NO
		lecturas.each { lectura ->
			if (lectura.lector == propietario && lectura.fechaFin) {
				haSidoLeido = SiNo.SI
			}
		}
		haSidoLeido
	}

	@Override
	String toString() {
		"${titulo}"
	}
}
