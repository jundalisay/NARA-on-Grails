<%@ page import="org.nara.Sku" %>

<div class="fieldcontain ${hasErrors(bean: skuInstance, field: 'skuName', 'error')} required">
	<label for="name">
		<g:message code="sku.name.label" default="Sku Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${skuInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: skuInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="sku.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${skuInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: skuInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="sku.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${skuInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: skuInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="sku.company.label" default="Company" />
		
	</label>
	<g:select id="company" name="company.id" from="${org.nara.Company.list()}" optionKey="id" value="${skuInstance?.company?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

