<%@ page import="mx.mtk.Collaborator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'collaborator.label', default: 'Collaborator')}" />
		<title><g:message code="default.edit.collaborator.label" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="index"><g:message code="default.list.collaborator.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.collaborator.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-collaborator" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.collaborator.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${collaboratorInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${collaboratorInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:collaboratorInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${collaboratorInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>