package inventario

import jlr.inventario.AutorService
import jlr.inventario.Autor
import jlr.inventario.Libro
import jlr.inventario.Lectura
import jlr.inventario.Prestamo
import jlr.inventario.enumerado.Formato
import jlr.inventario.enumerado.Idioma
import jlr.inventario.enumerado.SiNo

import grails.util.Environment

class BootStrap {

	AutorService autorService

    def init = { servletContext ->
		if (Environment.current == Environment.DEVELOPMENT) {
			Autor tolkien = new Autor(nombre: "J.R.R. Tolkien")
			Autor sanderson = new Autor(nombre: "Brandon Sanderson")
			Autor asimov = new Autor(nombre: "Isaac Asimov")
			Autor preston = new Autor(nombre: "Douglas Preston")
			Autor child = new Autor(nombre: "Lincoln Child")

			Libro esdla = new Libro(titulo: "El señor de los anillos", propietario: "Izaskun", formato: Formato.FISICO, 
				idioma: Idioma.CASTELLANO)			
			esdla.addToLecturas(new Lectura(fechaInicio: Date.parse("dd/MM/yyyy", "01/11/2021"), 
				fechaFin: Date.parse("dd/MM/yyyy", "12/11/2021"), valoracion: 4))		
			tolkien.addToLibros(esdla)

			Libro camino = new Libro(titulo: "El camino de los reyes", propietario: "Juan", formato: Formato.DIGITAL, 
				idioma: Idioma.CASTELLANO)
			camino.addToLecturas(fechaInicio: Date.parse("dd/MM/yyyy", "31/10/2020"), 
				fechaFin: Date.parse("dd/MM/yyyy", "05/12/2020"), valoracion: 5)
			camino.addToPrestamos(nombre: "Egoitz", fecha: Date.parse("dd/MM/yyyy", "27/02/2021"), devuelto: SiNo.SI)
			sanderson.addToLibros(camino)

			Libro palabras = new Libro(titulo: "Palabras radiantes", propietario: "Juan", formato: Formato.DIGITAL, 
				idioma: Idioma.CASTELLANO)
			palabras.addToLecturas(fechaInicio: Date.parse("dd/MM/yyyy", "06/12/2020"), 
				fechaFin: Date.parse("dd/MM/yyyy", "12/01/2021"), valoracion: 5)
			sanderson.addToLibros(palabras)

			Libro juramentada =  new Libro(titulo: "Juramentada", propietario: "Juan", formato: Formato.DIGITAL, 
				idioma: Idioma.CASTELLANO)
			sanderson.addToLibros(juramentada)

			Libro fundacion = new Libro(titulo: "Fundación", propietario: "Juan", formato: Formato.FISICO, 
				idioma: Idioma.CASTELLANO)
			fundacion.addToLecturas(fechaInicio: Date.parse("dd/MM/yyyy", "07/08/2020"), 
				fechaFin: Date.parse("dd/MM/yyyy", "20/08/2020"), valoracion: 5)
			asimov.addToLibros(fundacion)

			Libro elRelicario = new Libro(titulo: "El relicario", propietario: "Izaskun", formato: Formato.FISICO, 
				idioma: Idioma.CASTELLANO)
			elRelicario.addToLecturas(fechaInicio: Date.parse("dd/MM/yyyy", "04/05/2020"), 
				fechaFin: Date.parse("dd/MM/yyyy", "23/05/2020"), valoracion: 3)
			preston.addToLibros(elRelicario)
			child.addToLibros(elRelicario)		

			autorService.save(tolkien)
			autorService.save(sanderson)
			autorService.save(asimov)
			autorService.save(preston)
			autorService.save(child)
		}
    }
    def destroy = {
    }
}
