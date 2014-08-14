
<%@ page import="com.wll.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
		<div id="list-user" class="panel panel-default" role="main">

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
                        
                            <g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
                        
                            <g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />
                        
                            <g:sortableColumn property="accountExpired" title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}" />
                        
                            <g:sortableColumn property="accountLocked" title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}" />
                        
                            <g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />
                        
                            <g:sortableColumn property="passwordExpired" title="${message(code: 'user.passwordExpired.label', default: 'Password Expired')}" />
                        
                            <th class="operator"><g:message code="default.operator.label" default="Operator"/></th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        
                            <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
                        
                            <td>${fieldValue(bean: userInstance, field: "password")}</td>
                        
                            <td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
                        
                            <td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
                        
                            <td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
                        
                            <td><g:formatBoolean boolean="${userInstance.passwordExpired}" /></td>
                        
                            <td class="popover-demo">
                                <g:link action="edit" class="edit btn btn-info" id="${userInstance.id}">
                                    <g:message code="default.button.edit.label" default="Edit"/></g:link>
                                <a href="javascript:void 0"  class="delete btn btn-danger" rel="${createLink(action: 'delete',id:userInstance.id) }">
                                    <g:message code="default.button.delete.label" default="Delete"/></a>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
                <ul class="pagination">
                    <g:paginate total="${userInstanceCount ?: 0}" />
                </ul>
            </div>
		</div>
	</body>
</html>
