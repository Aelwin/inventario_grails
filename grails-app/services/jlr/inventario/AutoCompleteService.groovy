package jlr.inventario

import grails.gorm.transactions.Transactional

@Transactional
class AutoCompleteService {

   def recuperarLibros(texto) {
		def libros = Libro.findAllByTituloIlike("%${texto}%", [sort: 'titulo', order: 'asc'])
		
		def libroSelectList = []
		libros.each { libro ->
			def libroMap = [:] // add to map. jQuery autocomplete expects the JSON object to be with id/label/value.
			libroMap.id = libro.id
			libroMap.label = libro.titulo
			libroMap.value = libro.titulo
			libroSelectList << libroMap
		}
		libroSelectList
    }
}
