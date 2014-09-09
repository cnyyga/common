package com.wll


import grails.converters.JSON

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductVersionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max,String id) {
        params.max = Math.min(max ?: 10, 100)
        def product = Product.get(id)
        def list = ProductVersion.findAllByProduct(product,params)
        def total = ProductVersion.countByProduct(product)
        respond list, model: [product:product,productVersionInstanceCount: total]
    }

    def show(ProductVersion productVersionInstance) {
        respond productVersionInstance
    }

    def create(String id) {
        def product
        if(id){
            product = Product.get(id)
        }
        def productVersion = new ProductVersion(params)
        productVersion.product = product
        respond productVersion
    }

    @Transactional
    def save(ProductVersion productVersionInstance) {
        if (productVersionInstance == null) {
            notFound()
            return
        }

        if (productVersionInstance.hasErrors()) {
            respond productVersionInstance.errors, view: 'create'
            return
        }

        productVersionInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productVersion.label', default: 'ProductVersion'), productVersionInstance.id])
                redirect productVersionInstance
            }
            '*' { respond productVersionInstance, [status: CREATED] }
        }
    }

    def edit(ProductVersion productVersionInstance) {
        respond productVersionInstance
    }

    @Transactional
    def update(ProductVersion productVersionInstance) {
        if (productVersionInstance == null) {
            notFound()
            return
        }

        if (productVersionInstance.hasErrors()) {
            respond productVersionInstance.errors, view: 'edit'
            return
        }

        productVersionInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'productVersion.label', default: 'ProductVersion'), productVersionInstance.id])
                redirect productVersionInstance
            }
            '*' { respond productVersionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductVersion productVersionInstance) {

        if (productVersionInstance == null) {
            def message = message(code: 'default.not.found.message', args: [message(code: 'productVersion.label', default: 'ProductVersion'), productVersionInstance.id])
            render(([status: 0, msg: message] as JSON) as String)
            return
        }

        productVersionInstance.delete flush: true
        def message = message(code: 'default.deleted.message', args: [message(code: 'productVersion.label', default: 'ProductVersion'), productVersionInstance.id])
        render(([status: 1, msg: message] as JSON) as String)
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productVersion.label', default: 'ProductVersion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
