<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
    <ol class="breadcrumb">
        <li><a href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ol>
    <g:if test="\${flash.message}">
        <div class="alert alert-danger">\${flash.message}</div>
    </g:if>
    <g:hasErrors bean="\${${propertyName}}">
        <div class="alert alert-danger">
            <ul>
                <g:eachError bean="\${${propertyName}}" var="error">
                    <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.edit.label" args="[entityName]" /></h3>
        </div>
        <div class="panel-body">
            <g:form url="[resource:${propertyName}, action:'update']" method="PUT"  <%= multiPart ? ' enctype="multipart/form-data"' : '' %> role="form" class="form-horizontal">
            <g:hiddenField name="version" value="\${${propertyName}?.version}" />
            <g:render template="form"/>
            <g:submitButton name="create" value="\${message(code: 'default.button.update.label', default: 'Update')}" class="btn btn-primary" />
            <a href="javascript:history.back()" class="btn btn-link " role="button"><g:message code="default.button.cancel.label" default="Cancel"/></a>
            </g:form>
        </div>
    </div>
	</body>
</html>
