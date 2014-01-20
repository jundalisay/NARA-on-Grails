package org.nara
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SkuController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

//    def index(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        respond Sku.list(params), model:[skuInstanceCount: Sku.count()]
//    }
	
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)

			def skuList = Sku.createCriteria().list(params) {
			if (params.query) {
				ilike("name", "%${params.query}%")
			}
		}
		[skuInstanceList: skuList, skuInstanceTotal: skuList.totalCount]
	}
	
	
    def show(Sku skuInstance) {
        respond skuInstance
    }

    def create() {
        respond new Sku(params)
    }
	
	def trade() {
		flash.message = "Sorry, this feature is not yet available"
		render(view: 'show');
	}

    @Transactional
    def save(Sku skuInstance) {
        if (skuInstance == null) {
            notFound()
            return
        }

        if (skuInstance.hasErrors()) {
            respond skuInstance.errors, view:'create'
            return
        }

        skuInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'skuInstance.label', default: 'Sku'), skuInstance.id])
                redirect skuInstance
            }
            '*' { respond skuInstance, [status: CREATED] }
        }
    }

    def edit(Sku skuInstance) {
        respond skuInstance
    }

    @Transactional
    def update(Sku skuInstance) {
        if (skuInstance == null) {
            notFound()
            return
        }

        if (skuInstance.hasErrors()) {
            respond skuInstance.errors, view:'edit'
            return
        }

        skuInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sku.label', default: 'Sku'), skuInstance.id])
                redirect skuInstance
            }
            '*'{ respond skuInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sku skuInstance) {

        if (skuInstance == null) {
            notFound()
            return
        }

        skuInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sku.label', default: 'Sku'), skuInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'skuInstance.label', default: 'Sku'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
