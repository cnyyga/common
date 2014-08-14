<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <ol class="breadcrumb">
            <li><a href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li  class="active"><g:message code="default.list.label" args="[entityName]" /></li>
        </ol>
		<div id="list-${domainClass.propertyName}" class="panel panel-default" role="main">

            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h3>
            </div>

            <div class="panel-body">
                <p>
                    <g:link action="create" class=" btn btn-info"><g:message code="default.button.create.label" default="Create"/></g:link>
                </p>
                <g:if test="\${flash.message}">
                    <div class="alert alert-danger" role="status">\${flash.message}</div>
                </g:if>
                <table class="table table-striped table-bordered table-hover">
                <thead>
                        <tr>
                        <%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
                            allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
                            props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) && (domainClass.constrainedProperties[it.name] ? domainClass.constrainedProperties[it.name].display : true) }
                            Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
                            props.eachWithIndex { p, i ->
                                if (i < 6) {
                                    if (p.isAssociation()) { %>
                            <th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
                        <%      } else { %>
                            <g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}" />
                        <%  }   }   } %>
                            <th class="operator"><g:message code="default.operator.label" default="Operator"/></th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
                        <tr class="\${(i % 2) == 0 ? 'even' : 'odd'}">
                        <%  props.eachWithIndex { p, i ->
                                if (i == 0) { %>
                            <td><g:link action="show" id="\${${propertyName}.id}">\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</g:link></td>
                        <%      } else if (i < 6) {
                                    if (p.type == Boolean || p.type == boolean) { %>
                            <td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
                        <%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
                            <td><g:formatDate date="\${${propertyName}.${p.name}}" format="yyyy-MM-dd HH:mm:ss" /></td>
                        <%          } else { %>
                            <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
                        <%  }   }   } %>
                            <td class="popover-demo">
                                <g:link action="edit" class="edit btn btn-info" id="\${${propertyName}.id}">
                                    <g:message code="default.button.edit.label" default="Edit"/></g:link>
                                <a href="javascript:void 0"  class="delete btn btn-danger" rel="\${createLink(action: 'delete',id:${propertyName}.id) }">
                                    <g:message code="default.button.delete.label" default="Delete"/></a>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
			<ul class="pagination">
				<g:paginate total="\${${propertyName}Count ?: 0}" />
			</ul>
		</div>
	</body>
</html>
