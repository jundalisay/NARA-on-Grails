<%@ page import="org.nara.Person" %>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name', 'error')} ">
<label for="name">
	<g:message code="person.name.label" default="Name" />
</label>
	<g:textField name="name" value="${personInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'description', 'error')} ">
<label for="description">
	<g:message code="person.description.label" default="Description" />
</label>
	<g:textField name="description" value="${personInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="person.company.label" default="Company" />
	</label>
	<g:select id="company" name="company.id" from="${org.nara.Company.list()}" optionKey="id" value="${personInstance?.company?.id}" noSelection="['null': '']"/>
</div>

