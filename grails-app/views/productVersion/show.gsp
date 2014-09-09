
<%@ page import="com.wll.ProductVersion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productVersion.label', default: 'ProductVersion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <ol class="breadcrumb">
        <li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><a href="${createLink(uri: '/product')}"><g:message code="default.list.label" args="[message(code:'product.label')]" /></a></li>
        <li><g:link action="index" id="${productVersionInstance?.product?.id}"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
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
                
                <g:if test="${productVersionInstance?.ver}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="ver-label"><g:message code="productVersion.ver.label" default="Ver" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${productVersionInstance}" field="ver"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productVersionInstance?.versionCode}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="versionCode-label"><g:message code="productVersion.versionCode.label" default="Version Code" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${productVersionInstance}" field="versionCode"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productVersionInstance?.size}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="size-label"><g:message code="productVersion.size.label" default="Size" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${productVersionInstance}" field="size"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productVersionInstance?.onlineDate}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="onlineDate-label"><g:message code="productVersion.onlineDate.label" default="Online Date" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatDate date="${productVersionInstance?.onlineDate}" format="yyyy-MM-dd HH:mm:ss" /></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productVersionInstance?.message}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="message-label"><g:message code="productVersion.message.label" default="Message" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:fieldValue bean="${productVersionInstance}" field="message"/></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productVersionInstance?.forceUpdate}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="forceUpdate-label"><g:message code="productVersion.forceUpdate.label" default="Force Update" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatBoolean boolean="${productVersionInstance?.forceUpdate}" /></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productVersionInstance?.enabled}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="enabled-label"><g:message code="productVersion.enabled.label" default="Enabled" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatBoolean boolean="${productVersionInstance?.enabled}" /></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productVersionInstance?.dateCreated}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="dateCreated-label"><g:message code="productVersion.dateCreated.label" default="Date Created" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatDate date="${productVersionInstance?.dateCreated}" format="yyyy-MM-dd HH:mm:ss" /></p>
                        
                    </div>
                </div>
                </g:if>
                
                <g:if test="${productVersionInstance?.lastUpdated}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="lastUpdated-label"><g:message code="productVersion.lastUpdated.label" default="Last Updated" /></label>
                    <div class="col-sm-10">
                        
                        <p class="form-control-static"><g:formatDate date="${productVersionInstance?.lastUpdated}" format="yyyy-MM-dd HH:mm:ss" /></p>
                        
                    </div>
                </div>
                </g:if>


            </form>
            <p>
                <g:link class="btn btn-info" action="edit" resource="${productVersionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <a href="javascript:void 0"  class="delete btn btn-danger" rel="${createLink(action: 'delete',id:productVersionInstance.id,params: [t:'list']) }">
                    <g:message code="default.button.delete.label" default="Delete"/></a>
            </p>
        </div>

    </div>

	</body>
</html>
