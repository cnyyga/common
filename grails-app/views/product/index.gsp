
<%@ page import="com.wll.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <ol class="breadcrumb">
            <li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li  class="active"><g:message code="default.list.label" args="[entityName]" /></li>
        </ol>
    <g:if test="${flash.message}">
        <div class="alert alert-danger" role="status">${flash.message}</div>
    </g:if>
		<div id="list-product" class="panel panel-default" role="main">

            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
            </div>

            <div class="panel-body">
                <p>
                    <g:link action="create" class=" btn btn-info"><g:message code="default.button.create.label" default="Create"/></g:link>
                </p>

                <table class="table table-striped table-bordered table-hover">
                <thead>
                        <tr>
                        
                            <g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="platform" title="${message(code: 'product.platform.label', default: 'Platform')}" />
                        
                            <g:sortableColumn property="url" title="${message(code: 'product.url.label', default: 'Url')}" />
                        

                            <g:sortableColumn property="enabled" title="${message(code: 'product.enabled.label', default: 'Enabled')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'product.dateCreated.label', default: 'Date Created')}" />
                        
                            <th class="operator"><g:message code="default.operator.label" default="Operator"/></th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${productInstanceList}" status="i" var="productInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        
                            <td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link></td>
                        
                            <td>${productInstance.platform?.label}</td>
                        
                            <td>${fieldValue(bean: productInstance, field: "url")}</td>
                        
                            <td><g:formatBoolean boolean="${productInstance.enabled}" /></td>
                        
                            <td><g:formatDate date="${productInstance.dateCreated}" format="yyyy-MM-dd HH:mm:ss" /></td>
                        
                            <td class="popover-demo">

                                <g:link action="index" controller="productVersion" class="edit btn btn-info" id="${productInstance.id}">
                                    <g:message code="productVersion.label" default="productVersion"/></g:link>
                                <g:link action="edit" class="edit btn btn-info" id="${productInstance.id}">
                                    <g:message code="default.button.edit.label" default="Edit"/></g:link>
                                <a href="javascript:void 0"  class="delete btn btn-danger" rel="${createLink(action: 'delete',id:productInstance.id) }">
                                    <g:message code="default.button.delete.label" default="Delete"/></a>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
                <ul class="pagination">
                    <g:paginate total="${productInstanceCount ?: 0}" />
                </ul>
            </div>
		</div>
	</body>
</html>
