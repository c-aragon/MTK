<%@ page import="mx.mtk.Collaborator" %>


<div class="col-lg-offset-3 col-xs-5 form-horizontal"> 
	<div class="form-group ${hasErrors(bean: collaboratorInstance, field: 'name', 'error')} required">
		<label class"col-sm-3 control-label" for="name">
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

	<div class="form-group ${hasErrors(bean: collaboratorInstance, field: 'area', 'error')} required">
		<label class"col-sm-3 control-label" for="area"> Área </label>
		<div class="col-sm-9"> 
			<g:select class="form-control" id="area" name="area.id" from="${mx.mtk.Area.list()}" optionKey="id" required="" value="${collaboratorInstance?.area?.name}" optionValue="name" class="many-to-one"/>
		</div>
	</div>
</div>

