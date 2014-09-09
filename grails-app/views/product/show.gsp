
<%@ page import="com.wll.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
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
                
                <g:if test="${productInstance?.name}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="name-label"><g:message code="product.name.label" default="Name" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${productInstance}" field="name"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productInstance?.platform}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="platform-label"><g:message code="product.platform.label" default="Platform" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${productInstance}" field="platform"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productInstance?.url}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="url-label"><g:message code="product.url.label" default="Url" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${productInstance}" field="url"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productInstance?.description}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="description-label"><g:message code="product.description.label" default="Description" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${productInstance}" field="description"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productInstance?.enabled}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="enabled-label"><g:message code="product.enabled.label" default="Enabled" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatBoolean boolean="${productInstance?.enabled}" /></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productInstance?.dateCreated}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="dateCreated-label"><g:message code="product.dateCreated.label" default="Date Created" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatDate date="${productInstance?.dateCreated}" format="yyyy-MM-dd HH:mm:ss" /></p>
                        
                    </div>
                </div>
                </g:if>
            </form>
            <p>
                <g:link class="btn btn-info" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <a href="javascript:void 0"  class="delete btn btn-danger" rel="${createLink(action: 'delete',id:productInstance.id,params: [t:'list']) }">
                    <g:message code="default.button.delete.label" default="Delete"/></a>
            </p>
        </div>

    </div>

	</body>
</html>
