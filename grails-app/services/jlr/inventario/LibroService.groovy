package jlr.inventario

import grails.gorm.transactions.Transactional

@Transactional
class LibroService {
        
    Libro get(Serializable id) {
        Libro.get(id)
    }
    
    List<Libro> list(Map args) {
        Libro.list(args)
    }
    
    Long count() {
        Libro.count()
    }

    void delete(Serializable id) {

    }

    Libro save(Libro libro) {
        libro.save(flush: true)
    }
    
    Libro findByTituloLike(String titulo) {
        Libro.findByTituloLike("%${titulo}%")
    }

}