
<%@ page import="mx.mtk.Collaborator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'collaborator.label', default: 'Collaborator')}" />
		<title><g:message code="default.show.collaborator.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-collaborator" class="container" role="main">
			
			<div class="page-header"> 
				<h2> <i class="fa fa-credit-card-alt"></i> <g:message code="default.show.collaborator.label"/> </h2> 
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
			<br>
			<br>
			<div class="form-group">
				<div class="row">
					<div class="col-lg-6">
						<g:if test="${collaboratorInstance?.name}">
							<div class="form-group ${hasErrors(bean: collaboratorInstance, field: 'name', 'error')} required">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"><g:message code="collaborator.name.label" default="Name" /></span>
									<input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" readOnly value="${collaboratorInstance?.name}">
								</div>

							</div>
						</g:if>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<g:if test="${collaboratorInstance?.lastName}">
							<div class="form-group ${hasErrors(bean: collaboratorInstance, field: 'name', 'error')} required">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"><g:message code="collaborator.lastName.label" default="Name" /></span>
									<input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" readOnly value="${collaboratorInstance?.lastName}">
								</div>
							</div>
						</g:if>
					</div>
				</div>
				<div class="row"> 
					<div class="col-lg-6">
						<g:if test="${collaboratorInstance?.area?.name}">
							<div class="form-group ${hasErrors(bean: collaboratorInstance, field: 'name', 'error')} required">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"><g:message code="collaborator.name.label" default="Name" /></span>
									<input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" readOnly value="${collaboratorInstance?.area?.name}">
								</div>

							</div>
						</g:if>
					</div>		
				</div>

				<div class="row"> 
					<div class="form-inline form"> 
						<g:form url="[resource:collaboratorInstance, action:'delete']" method="DELETE">
							<g:link class="btn btn-primary" action="edit" resource="${collaboratorInstance}"><g:message code="default.button.edit.label" default="Edit" /> <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> </g:link>
							<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /> 
						</g:form>		
					</div>
				</div>			
			</div>
		</div>
	</body>
</html>
