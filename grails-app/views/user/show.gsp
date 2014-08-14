
<%@ page import="com.wll.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <ol class="breadcrumb">
        <li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ol>
    <g:if test="${flash.message}">
        <div class="alert alert-danger">${flash.message}</div>
    </g:if>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
        </div>
        <div class="panel-body">
            <form class="form-horizontal" role="form">
                
                <g:if test="${userInstance?.username}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="username-label"><g:message code="user.username.label" default="Username" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${userInstance}" field="username"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${userInstance?.password}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="password-label"><g:message code="user.password.label" default="Password" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${userInstance}" field="password"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${userInstance?.accountExpired}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="accountExpired-label"><g:message code="user.accountExpired.label" default="Account Expired" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${userInstance?.accountLocked}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="accountLocked-label"><g:message code="user.accountLocked.label" default="Account Locked" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${userInstance?.enabled}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="enabled-label"><g:message code="user.enabled.label" default="Enabled" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatBoolean boolean="${userInstance?.enabled}" /></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${userInstance?.passwordExpired}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="passwordExpired-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></p>
                        
                    </div>
                </div>
                </g:if>
                

            </form>
            <p>
                <g:link class="btn btn-info" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <a href="javascript:void 0"  class="delete btn btn-danger" rel="${createLink(action: 'delete',id:userInstance.id,params: [t:'list']) }">
                    <g:message code="default.button.delete.label" default="Delete"/></a>
            </p>
        </div>

    </div>

	</body>
</html>
