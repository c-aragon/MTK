package mx.mtk

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class CollaboratorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        def collaboratorList;

        if(params.area?.id && Integer.valueOf(params.area?.id) != 0){
            def areaInstance = Area.get(Integer.valueOf(params.area?.id))
            collaboratorList = Collaborator.findAllByArea(areaInstance)
            params.area.id = params.area?.id
            [collaboratorInstanceCount: collaboratorList.size(), collaboratorInstanceList : collaboratorList, params: params]
        }else{
            respond Collaborator.list(params), model:[collaboratorInstanceCount: Collaborator.count()]
        }

    }

    def show(Collaborator collaboratorInstance) {
        respond collaboratorInstance
    }

    def search() { 
         respond Collaborator.list()       
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Collaborator(params)
    }

    @Transactional
    def save(Collaborator collaboratorInstance) {
        if (collaboratorInstance == null) {
            notFound()
            return
        }

        if (collaboratorInstance.hasErrors()) {
            respond collaboratorInstance.errors, view:'create'
            return
        }

        collaboratorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.collaborator.message')
                redirect collaboratorInstance
            }
            '*' { respond collaboratorInstance, [status: CREATED] }
        }
    }

    def edit(Collaborator collaboratorInstance) {
        respond collaboratorInstance
    }

    @Transactional
    def update(Collaborator collaboratorInstance) {
        if (collaboratorInstance == null) {
            notFound()
            return
        }

        if (collaboratorInstance.hasErrors()) {
            respond collaboratorInstance.errors, view:'edit'
            return
        }

        collaboratorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.collaborator.message')
                redirect collaboratorInstance
            }
            '*'{ respond collaboratorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Collaborator collaboratorInstance) {

        if (collaboratorInstance == null) {
            notFound()
            return
        }

        collaboratorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.collaborator.message')
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.collaborator.message', args: [params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
