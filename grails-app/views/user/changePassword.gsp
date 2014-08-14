<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'default.modify.password.label', default: 'PointRule')}" />
		<title>${entityName}</title>
	</head>
	<body>
    <ol class="breadcrumb">
        <li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li>${entityName}</li>
    </ol>
    <g:if test="${flash.message}">
        <div class="alert alert-danger">${flash.message}</div>
    </g:if>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">${entityName}</h3>
        </div>
        <div class="panel-body">
            <g:form action="savePassword" role="form" class="form-horizontal">

                <div class="form-group">
                    <label for="newPassword" class="col-sm-2 control-label">
                        <g:message code="user.newPassword.label" default="New" />
                    </label>
                    <div class="col-sm-6">
                        <g:passwordField class="form-control" name="newPassword" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="newPassword1" class="col-sm-2 control-label">
                        <g:message code="user.newPassword1.label" default="New1" />

                    </label>
                    <div class="col-sm-6">
                        <g:passwordField class="form-control" name="newPassword1" />
                    </div>
                </div>
                <g:submitButton name="save" value="${message(code: 'default.button.save.label', default: 'Save')}" class="btn btn-primary" />
            </g:form>
            <hr/>

        </div>
    </div>

	</body>
</html>
