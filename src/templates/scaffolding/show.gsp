<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <ol class="breadcrumb">
        <li><a href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ol>
    <g:if test="\${flash.message}">
        <div class="alert alert-danger">\${flash.message}</div>
    </g:if>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
        </div>
        <div class="panel-body">
            <form class="form-horizontal" role="form">
                <%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
                allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
                props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) }
                Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
                props.each { p -> %>
                <g:if test="\${${propertyName}?.${p.name}}">
                <div class="form-group">
                    <label class="col-sm-2 control-label" id="${p.name}-label"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></label>
                    <div class="col-sm-10">
                        <%  if (p.isEnum()) { %>
                        <p class="form-control-static"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></p>
                        <%  } else if (p.oneToMany || p.manyToMany) { %>
                        <g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
                            <p class="form-control-static"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link></p>
                        </g:each>
                        <%  } else if (p.manyToOne || p.oneToOne) { %>
                        <p class="form-control-static"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link></p>
                        <%  } else if (p.type == Boolean || p.type == boolean) { %>
                        <p class="form-control-static"><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></p>
                        <%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
                        <p class="form-control-static"><g:formatDate date="\${${propertyName}?.${p.name}}" format="yyyy-MM-dd HH:mm:ss" /></p>
                        <%  } else if (!p.type.isArray()) { %>
                        <p class="form-control-static"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></p>
                        <%  } %>
                    </div>
                </div>
                </g:if>
                <%  } %>

            </form>
            <p>
                <g:link class="btn btn-info" action="edit" resource="\${${propertyName}}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <a href="javascript:void 0"  class="delete btn btn-danger" rel="\${createLink(action: 'delete',id:${propertyName}.id,params: [t:'list']) }">
                    <g:message code="default.button.delete.label" default="Delete"/></a>
            </p>
        </div>

    </div>

	</body>
</html>
