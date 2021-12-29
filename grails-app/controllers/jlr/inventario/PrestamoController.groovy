package jlr.inventario

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PrestamoController {

    PrestamoService prestamoService    

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {        
        redirect action: "list", params: params
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond prestamoService.list(params), model:[prestamoCount: prestamoService.count()]
    }

    def show(Long id) {
        respond prestamoService.get(id)
    }

    def create() {
        respond new Prestamo(params)
    }

    def save(Prestamo prestamo) {
       if (prestamo == null) {
            notFound()
            return
        }

        try {
            prestamoService.save(prestamo)
        } catch (ValidationException e) {
            respond prestamo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prestamo.label'), prestamo.id])
                redirect prestamo
            }
            '*' { respond prestamo, [status: CREATED] }
        }
    }

    def edit(Long id) {        
        respond prestamoService.get(id)
    }

    def update(Prestamo prestamo) {
        if (prestamo == null) {
            notFound()
            return
        }

        try {
            prestamoService.save(prestamo)
        } catch (ValidationException e) {
            respond prestamo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'prestamo.label'), prestamo.id])
                redirect prestamo
            }
            '*'{ respond prestamo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        prestamoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'prestamo.label'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prestamo.label'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
