
<%@ page import="mx.mtk.Area" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="index"><g:message code="default.list.area.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.area.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-area" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.area.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list area">
			
				<g:if test="${areaInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="area.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${areaInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:areaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${areaInstance}"><g:message code="default.button.edit.label" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
