<%@ page import="mx.mtk.Collaborator" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'collaborator.label')}" />
		<title><g:message code="default.create.collaborator.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-collaborator" class="container" role="main">
			<div class="page-header"> 
				<h2> <i class="fa fa-credit-card-alt"></i> <g:message code="default.create.collaborator.label"/> </h2> 
			</div>

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
			<g:hasErrors bean="${collaboratorInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${collaboratorInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:collaboratorInstance, action:'save']" >
				<div class="form-group">
					
						<div class="col-lg-offset-3 col-xs-5 form-horizontal"> 
							<div class="form-group ${hasErrors(bean: collaboratorInstance, field: 'name', 'error')} required">
								<label class"col-sm-3 control-label">
									<g:message code="collaborator.name.label" default="Name" />
								</label>
								<div class="col-sm-9"> 
									<g:textField class="form-control" name="name" maxlength="100" required="" value="${collaboratorInstance?.name}"/>
								</div>

							</div>

							<div class="form-group ${hasErrors(bean: collaboratorInstance, field: 'lastName', 'error')} required">
								<label class"col-sm-3 control-label" for="lastName">
									<g:message code="collaborator.lastName.label" default="Last Name" />
								</label>
								<div class="col-sm-9"> 
									<g:textField class="form-control" name="lastName" maxlength="100" required="" value="${collaboratorInstance?.lastName}"/>
								</div>
							</div>

							<div class="form-group">
								<label class"col-sm-3 control-label"> Área </label>
								<div class="col-sm-9">  
									<g:select class="form-control" id="area" name="area.id" from="${mx.mtk.Area.list()}" optionKey="id" required="" value="${collaboratorInstance?.area?.name}" optionValue="name"/>
								</div>
							</div>
						</div>

					
						<div class="form-group"> 
							<div class="col-lg-offset-3 col-xs-2"> 
								<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.create.collaborator.label')}" />
							</div>
						</div>
				</div>
			</g:form>
		</div>
	</body>
</html>
