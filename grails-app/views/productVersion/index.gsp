
<%@ page import="com.wll.ProductVersion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productVersion.label', default: 'ProductVersion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <ol class="breadcrumb">
            <li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><a href="${createLink(uri: '/product')}"><g:message code="default.list.label" args="[message(code:'product.label')]" /></a></li>
            <li  class="active"><g:message code="default.list.label" args="[entityName]" /></li>
        </ol>
    <g:if test="${flash.message}">
        <div class="alert alert-danger" role="status">${flash.message}</div>
    </g:if>
		<div id="list-productVersion" class="panel panel-default" role="main">

            <div class="panel-heading">
                <h3 class="panel-title">【${product?.name}】<g:message code="default.list.label" args="[entityName]" /></h3>
            </div>

            <div class="panel-body">
                <p>
                    <g:link action="create" id="${product?.id}" class=" btn btn-info"><g:message code="default.button.create.label" default="Create"/></g:link>
                </p>

                <table class="table table-striped table-bordered table-hover">
                <thead>
                        <tr>
                        
                            <g:sortableColumn property="ver" title="${message(code: 'productVersion.ver.label', default: 'Ver')}" />
                        
                            <g:sortableColumn property="versionCode" title="${message(code: 'productVersion.versionCode.label', default: 'Version Code')}" />
                        
                            <g:sortableColumn property="size" title="${message(code: 'productVersion.size.label', default: 'Size')}" />
                        
                            <g:sortableColumn property="onlineDate" title="${message(code: 'productVersion.onlineDate.label', default: 'Online Date')}" />
                        
                            <g:sortableColumn property="message" title="${message(code: 'productVersion.message.label', default: 'Message')}" />
                        
                            <g:sortableColumn property="forceUpdate" title="${message(code: 'productVersion.forceUpdate.label', default: 'Force Update')}" />
                        
                            <th class="operator"><g:message code="default.operator.label" default="Operator"/></th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${productVersionInstanceList}" status="i" var="productVersionInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        
                            <td><g:link action="show" id="${productVersionInstance.id}">${fieldValue(bean: productVersionInstance, field: "ver")}</g:link></td>
                        
                            <td>${fieldValue(bean: productVersionInstance, field: "versionCode")}</td>
                        
                            <td>${fieldValue(bean: productVersionInstance, field: "size")}</td>
                        
                            <td><g:formatDate date="${productVersionInstance.onlineDate}" format="yyyy-MM-dd HH:mm:ss" /></td>
                        
                            <td>${fieldValue(bean: productVersionInstance, field: "message")}</td>
                        
                            <td><g:formatBoolean boolean="${productVersionInstance.forceUpdate}" /></td>
                        
                            <td class="popover-demo">
                                <g:link action="edit" class="edit btn btn-info" id="${productVersionInstance.id}">
                                    <g:message code="default.button.edit.label" default="Edit"/></g:link>
                                <a href="javascript:void 0"  class="delete btn btn-danger" rel="${createLink(action: 'delete',id:productVersionInstance.id) }">
                                    <g:message code="default.button.delete.label" default="Delete"/></a>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
                <ul class="pagination">
                    <g:paginate total="${productVersionInstanceCount ?: 0}" />
                </ul>
            </div>
		</div>
	</body>
</html>
