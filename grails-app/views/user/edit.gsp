<%@ page import="com.wll.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
    <ol class="breadcrumb">
        <li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ol>
    <g:if test="${flash.message}">
        <div class="alert alert-danger">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${userInstance}">
        <div class="alert alert-danger">
            <ul>
                <g:eachError bean="${userInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.edit.label" args="[entityName]" /></h3>
        </div>
        <div class="panel-body">
            <g:form url="[resource:userInstance, action:'update']" method="PUT"   role="form" class="form-horizontal">
            <g:hiddenField name="version" value="${userInstance?.version}" />
            <g:render template="form"/>
            <g:submitButton name="create" value="${message(code: 'default.button.update.label', default: 'Update')}" class="btn btn-primary" />
            <a href="javascript:history.back()" class="btn btn-link " role="button"><g:message code="default.button.cancel.label" default="Cancel"/></a>
            </g:form>
        </div>
    </div>
	</body>
</html>
