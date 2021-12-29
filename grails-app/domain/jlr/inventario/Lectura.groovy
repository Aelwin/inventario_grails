package jlr.inventario

class Lectura {

	String lector
	Date fechaInicio
	Date fechaFin
	Integer valoracion

	static belongsTo = [libro: Libro]

    static constraints = {
    	fechaFin nullable: true, validator: { Date val, Lectura obj -> obj.validarFechaFinMayorIgualFechaInicio(val, obj) }
    	valoracion nullable: true, range: 1..5, validator: { Integer val, Lectura obj -> obj.validarHaSidoLeido(val, obj) }
    }

    static mapping = {		
		version false
		id generator: 'increment'
		sort "libro.titulo"
	}

	def beforeValidate() {
		//Si no se asigna un lector asumimos que es el propietario del libro
		if (!lector) {
			lector = libro.propietario
		}
		valoracion = valoracion == 0 ? null : valoracion
	}

	def validarFechaFinMayorIgualFechaInicio(valorFechaFin, instancia) {
		if (valorFechaFin && valorFechaFin < instancia.fechaInicio) {
			'menorFechaInicio'
		}
	}

	def validarHaSidoLeido(valorValoracion, instancia) {
		if (valorValoracion && !instancia.fechaFin) {
			'libroNoLeido'
		}
	}

}