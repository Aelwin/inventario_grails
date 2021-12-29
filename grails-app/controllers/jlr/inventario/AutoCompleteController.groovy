package jlr.inventario

class AutoCompleteController {

	AutoCompleteService autoCompleteService

    def autoCompleteLibro(String term) {        
        respond autoCompleteService.recuperarLibros(term)
    }
}
