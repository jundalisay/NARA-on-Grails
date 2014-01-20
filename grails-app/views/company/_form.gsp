<%@ page import="org.nara.Company" %>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="company.name.label" default="Name" />
	</label>
	<g:textField name="name" value="${companyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="company.description.label" default="Description" />
	</label>
	<g:textField name="description" value="${companyInstance?.description}"/>
</div>

<!--  removed extra sku
<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'sku', 'error')} ">
	<label for="sku">
		<g:message code="company.sku.label" default="Sku" />
	</label>
	<g:select id="sku" name="sku.id" from="${org.nara.Sku.list()}" optionKey="id" value="${companyInstance?.sku?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>  -->

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'skus', 'error')} ">
  	<label for="skus">
		<g:message code="company.skus.label" default="Skus" />
	</label> 
	
<ul class="one-to-many">
<g:each in="${companyInstance?.skus?}" var="s">
    <li><g:link controller="sku" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sku" action="create" params="['company.id': companyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sku.label', default: 'Sku')])}</g:link>
</li>
</ul>

</div>