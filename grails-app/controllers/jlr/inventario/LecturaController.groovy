package jlr.inventario

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class LecturaController {

    LecturaService lecturaService    

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {        
        redirect action: "list", params: params
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond lecturaService.list(params), model:[lecturaCount: lecturaService.count()]
    }

    def show(Long id) {
        respond lecturaService.get(id)
    }

    def create() {
        respond new Lectura(params)
    }

    def save(Lectura lectura) {
       if (lectura == null) {
            notFound()
            return
        }

        try {
            lecturaService.save(lectura)
        } catch (ValidationException e) {
            respond lectura.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'lectura.label'), lectura.id])
                redirect lectura
            }
            '*' { respond lectura, [status: CREATED] }
        }
    }

    def edit(Long id) {        
        respond lecturaService.get(id)
    }

    def update(Lectura lectura) {
        if (lectura == null) {
            notFound()
            return
        }

        try {
            lecturaService.save(lectura)
        } catch (ValidationException e) {
            respond lectura.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'lectura.label'), lectura.id])
                redirect lectura
            }
            '*'{ respond lectura, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        lecturaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'lectura.label'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'lectura.label'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
