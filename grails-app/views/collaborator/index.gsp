s
<%@ page import="mx.mtk.Collaborator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'collaborator.label')}" />
		<title><g:message code="default.list.collaborator.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.collaborator.label" /></g:link></li>
			</ul>
		</div>
		<div id="list-collaborator" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.collaborator.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-hover">
			<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'collaborator.name.id', default: 'Id')}" />
						<g:sortableColumn property="name" title="${message(code: 'collaborator.name.label', default: 'Name')}" />
						<g:sortableColumn property="lastName" title="${message(code: 'collaborator.lastName.label', default: 'Last Name')}" />
						<th><g:message code="collaborator.area.label" default="Area" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${collaboratorInstanceList}" status="i" var="collaboratorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${collaboratorInstance.id}">${fieldValue(bean: collaboratorInstance, field: "id")}</g:link></td>
						<td>${fieldValue(bean: collaboratorInstance, field: "name")}</td>
						<td>${fieldValue(bean: collaboratorInstance, field: "lastName")}</td>
						<td>${fieldValue(bean: collaboratorInstance, field: "area.name")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${collaboratorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
