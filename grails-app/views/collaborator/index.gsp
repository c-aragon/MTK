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
		<div id="list-collaborator" class="container" role="main">
			<h1><g:message code="default.list.collaborator.label" args="[entityName]" /></h1>
			<br>
			<div class="row">
				<div class="col-md-9"> 
					<div class="form-inline form"> 
						<g:form name="myForm" url="[action:'index',controller:'collaborator']">
							<div class="form-group"> 
								<label><g:message code="default.combo.collaborator.label" /></label> 
								<g:select class="form-control" 
									id="area" 
									name="area.id" 
									from="${mx.mtk.Area.list()}" 
									optionKey="id" 
									required="" 
									value="${params?.area?.id}" 
									optionValue="name"
									noSelection="['0':'Todas las áreas']"/>
							</div> 
							<button class="btn btn-primary" ><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button> 

							<g:link class="btn btn-primary" action="index" resource="${collaboratorInstance}">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 								  
							</g:link>

							<g:link class="btn btn-primary" action="search" resource="${collaboratorInstance}">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>Búsqueda perzonalizada
							</g:link>

						</g:form>
					</div> 
				</div>
				<div class="col-md-3">
					<g:link class="btn btn-primary" action="create" resource="${collaboratorInstance}"> Crear </g:link>					
				</div>
			</div>

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<br>

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
