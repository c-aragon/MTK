
<%@ page import="mx.mtk.Area" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
		<title><g:message code="default.list.area.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.area.label"/></g:link></li>
			</ul>
		</div>
		<div id="list-area" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.area.label" args="[entityName]" /> <span class="glyphicon glyphicon-search" aria-hidden="true"></span></h1>
			<div class="panel panel-primary">

			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-hover">
			<thead>
					<tr>					
						<g:sortableColumn property="id" title="${message(code: 'area.id.label')}" />
						<g:sortableColumn property="name" title="${message(code: 'area.name.label')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${areaInstanceList}" status="i" var="areaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><center><g:link action="show" id="${areaInstance.id}">${fieldValue(bean: areaInstance, field: "id")}</g:link></center></td>
						<td>${fieldValue(bean: areaInstance, field: "name")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${areaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
