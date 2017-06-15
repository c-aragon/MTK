s
<%@ page import="mx.mtk.Collaborator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'collaborator.label')}" />
		<title><g:message code="default.list.collaborator.label" args="[entityName]" /></title>
		<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
		<link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
		
		<script>
			$(document).ready(function() {
			    $('#search').DataTable({
			    	"language": {
            			"url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json"
            		},
            		"pagingType": "simple_numbers",
            		"lengthMenu": [[5, 10, 50, 100, -1], [5, 10, 50, 100, "Todos"]]
        		});
			} );
		</script>
	</head>
	<body>
		<div id="list-collaborator" class="container" role="main">
			<h1><g:message code="default.search.collaborator.label" args="[entityName]" /></h1>
			<br>
			<div class="row"> 
				<div class="col-md-12"> 
					<g:link class="btn btn-primary" action="index" resource="${collaboratorInstance}">
						<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
						Regresar a la lista
						</g:link>

				</div>
			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<br>
			<table id="search" class="table table-striped table-bordered">
			<thead>
					<tr>
						<th><g:message code="collaborator.name.id" /></th>
						<th><g:message code="collaborator.name.label" /></th>
						<th><g:message code="collaborator.lastName.label" /></th>
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
		</div>
	</body>
</html>
