package com.wll




import grails.converters.JSON

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def a ="abcde"
        println(a)
        def aa = WllUtils.aesEncrypt(a)
        println(aa)
        def b = WllUtils.aesDecrypt(aa)
        println(b)
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        User.findByIdGreaterThanEqualsAndIdLessThanEquals()

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            def message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
            render (([status:0,msg:message] as JSON) as String)
            return
        }

        userInstance.delete flush:true
        def message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        render (([status:1,msg:message] as JSON) as String)
    }

    def springSecurityService
    def changePassword() {

    }

    def savePassword(String oldPassword, String newPassword, String newPassword1) {
        if(!newPassword || !newPassword1)   {
            flash.message = message(code: 'user.changePassword.not.message')
            redirect(action: 'changePassword')
            return
        }
        if(newPassword != newPassword1) {
            flash.message = message(code: 'user.changePassword.not.eq.message')
            redirect(action: 'changePassword')
            return
        }
        def user = springSecurityService.currentUser

        user.password = newPassword
        println("dddd")
        if(!user.save(flush: true)){
            println(user.errors)
            flash.message = message(code: 'user.changePassword.failure.message')
            redirect(action: 'changePassword')
            return
        }
        flash.message = message(code: 'user.changePassword.ok.message')
        redirect(action: 'changePassword')
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
