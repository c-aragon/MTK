<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'collaborator.label')}" />
		<title><g:message code="default.create.collaborator.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="index"><g:message code="default.list.collaborator.label"/></g:link></li>
			</ul>
		</div>
		<div id="create-collaborator" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.collaborator.label" args="[entityName]" /></h1>
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
			<g:form url="[resource:collaboratorInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.create.collaborator.label')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
