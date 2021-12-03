package inventario

import jlr.inventario.AutorService
import jlr.inventario.Autor
import jlr.inventario.Libro
import jlr.inventario.enumerado.Formato
import jlr.inventario.enumerado.Idioma

class BootStrap {

	AutorService autorService

    def init = { servletContext ->
    	Autor tolkien = new Autor(nombre: "J.R.R. Tolkien")
    	Autor sanderson = new Autor(nombre: "Brandon Sanderson")
    	Autor asimov = new Autor(nombre: "Isaac Asimov")
    	Autor preston = new Autor(nombre: "Douglas Preston")
    	Autor child = new Autor(nombre: "Lincoln Child")
    	tolkien.addToLibros(new Libro(titulo: "El señor de los anillos", propietario: "Izaskun", valoracion: 4,
    		formato: Formato.FISICO, idioma: Idioma.CASTELLANO))
    	sanderson.addToLibros(new Libro(titulo: "El camino de los reyes", propietario: "Juan", valoracion: 5,
    		formato: Formato.DIGITAL, idioma: Idioma.CASTELLANO))
    	sanderson.addToLibros(new Libro(titulo: "Palabras radiantes", propietario: "Juan", valoracion: 5,
    		formato: Formato.DIGITAL, idioma: Idioma.CASTELLANO))
    	asimov.addToLibros(new Libro(titulo: "Fundación", propietario: "Juan", valoracion: 4,
    		formato: Formato.FISICO, idioma: Idioma.CASTELLANO))
    	Libro elRelicario = new Libro(titulo: "El relicario", propietario: "Izaskun", valoracion: 3,
    		formato: Formato.FISICO, idioma: Idioma.CASTELLANO)
    	preston.addToLibros(elRelicario)
    	child.addToLibros(elRelicario)
    	
    	autorService.save(tolkien)
    	autorService.save(sanderson)
    	autorService.save(asimov)
    	autorService.save(preston)
    	autorService.save(child)
    }
    def destroy = {
    }
}
