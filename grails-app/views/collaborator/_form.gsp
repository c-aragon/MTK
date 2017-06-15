<%@ page import="mx.mtk.Collaborator" %>



<div class="fieldcontain ${hasErrors(bean: collaboratorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="collaborator.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="100" required="" value="${collaboratorInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collaboratorInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="collaborator.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="100" required="" value="${collaboratorInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collaboratorInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="collaborator.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="area" name="area.id" from="${mx.mtk.Area.list()}" optionKey="id" required="" value="${collaboratorInstance?.area?.id}" class="many-to-one"/>

</div>

