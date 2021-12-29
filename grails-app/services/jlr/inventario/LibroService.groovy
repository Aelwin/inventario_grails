package jlr.inventario

import grails.gorm.transactions.Transactional
import grails.gorm.transactions.NotTransactional
import jlr.inventario.enumerado.Formato
import jlr.inventario.enumerado.Idioma

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
        Libro.get(id).delete()
    }

    Libro save(Libro libro, validar = true) {
        libro.save(flush: true, validate: validar)
    }

    @NotTransactional
    Libro findByTituloLike(String titulo) {
        Libro.findByTituloLike("%${titulo}%")
    }

    @NotTransactional
    def filtrarLibros(FiltroCommand filtroBusqueda) {
        def criteria = Libro.createCriteria()        
        def resultado = criteria.list(max: filtroBusqueda.max, offset: filtroBusqueda.offset) {            
            and {
                if (filtroBusqueda.titulo) {
                    log.debug "Filtramos por el titulo ${filtroBusqueda.titulo}"
                    ilike('titulo', "%${filtroBusqueda.titulo}%")
                }
                if (filtroBusqueda.autores) {
                    log.debug "Filtramos por los autores ${filtroBusqueda.autores}"
                    autores {
                        'in'('id', filtroBusqueda.autores*.id)
                    }                    
                }
                if (filtroBusqueda.propietario) {
                    log.debug "Filtramos por el propietario ${filtroBusqueda.propietario}"
                    ilike('propietario', "%${filtroBusqueda.propietario}%")
                }
                if (filtroBusqueda.fechaInicioLectura || filtroBusqueda.fechaFinLectura) {
                    Date fechaDesdeSinHora = filtroBusqueda.fechaInicioLectura?.clearTime()
                    filtroBusqueda.fechaFinLectura = filtroBusqueda.fechaFinLectura?: new Date()
                    log.debug "Filtramos entre las fechas de lectura ${filtroBusqueda.fechaInicioLectura}-${filtroBusqueda.fechaFinLectura}"
                    Date fechaHastaSinHora = filtroBusqueda.fechaFinLectura.clearTime()
                    if (fechaDesdeSinHora)
                        lecturas {
                            ge('fechaInicio', fechaDesdeSinHora)
                        }
                    lecturas {
                        lt('fechaInicio', fechaHastaSinHora + 1)
                    }
                }
                if (filtroBusqueda.lector) {
                    lecturas {
                        ilike('lector', "%${filtroBusqueda.lector}%")
                    }
                }
                if (filtroBusqueda.categoria) {
                    log.debug "Filtramos por la categoria ${filtroBusqueda.categoria}"
                    ilike('propietario', "%${filtroBusqueda.categoria}%")
                }
                if (filtroBusqueda.formato) {
                    log.debug "Filtramos por el formato ${filtroBusqueda.formato}"
                    eq('formato', Formato.values().find{ it == filtroBusqueda.formato })
                }
                if (filtroBusqueda.idioma) {
                    log.debug "Filtramos por el idioma ${filtroBusqueda.idioma}"
                    eq('idioma', Idioma.values().find{ it == filtroBusqueda.idioma })
                }
                
            }
            order("titulo", "asc")
        }
        resultado
    }

}