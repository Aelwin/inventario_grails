package jlr.inventario

import jlr.inventario.enumerado.Formato
import jlr.inventario.enumerado.Idioma

class FiltroCommand implements grails.validation.Validateable {

	String titulo
	List<Autor> autores
	String propietario	
	Date fechaInicioLectura
	Date fechaFinLectura	
	Date fechaCompra
	String categoria
	Formato formato
	Idioma idioma

	static boolean defaultNullable() {
        true
    }

}