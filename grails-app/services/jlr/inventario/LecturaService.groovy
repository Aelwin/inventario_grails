package jlr.inventario

import grails.gorm.services.Service

@Service(Lectura)
interface LecturaService {

    Lectura get(Serializable id)

    List<Lectura> list(Map args)

    Long count()

    void delete(Serializable id)

    Lectura save(Lectura lectura)

}