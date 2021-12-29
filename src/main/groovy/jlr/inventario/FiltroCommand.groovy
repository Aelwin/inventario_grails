package jlr.inventario

import jlr.inventario.enumerado.Formato
import jlr.inventario.enumerado.Idioma

class FiltroCommand implements grails.validation.Validateable {

	String titulo
	List<Autor> autores
	String propietario
	String lector	
	Date fechaInicioLectura
	Date fechaFinLectura	
	Date fechaCompra
	String categoria
	Formato formato
	Idioma idioma

	Integer max
	Integer offset

	static boolean defaultNullable() {
        true
    }

}