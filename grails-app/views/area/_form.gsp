<%@ page import="mx.mtk.Area" %>



<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="area.name.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="150" required="" value="${areaInstance?.name}"/>

</div>

