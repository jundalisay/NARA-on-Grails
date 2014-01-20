<%@page import="sun.security.ssl.HandshakeMessage.Finished"%>
<%@ page import="org.nara.Sku" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'sku.label', default: 'Sku')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>
	<a href="#show-sku" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
		<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
	</ul>
	</div>

	<div id="show-sku" class="content scaffold-show" role="main">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>

		<ol class="property-list sku">
		<g:if test="${skuInstance?.name}">
			<li class="fieldcontain">
				<span id="name-label" class="property-label"><g:message code="sku.name.label" default="Sku Name" /></span>
				<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${skuInstance}" field="name"/></span>
			</li>
		</g:if>
		
		<g:if test="${skuInstance?.description}">
			<li class="fieldcontain">
				<span id="description-label" class="property-label"><g:message code="sku.description.label" default="Description" /></span>
				<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${skuInstance}" field="description"/></span>
			</li>
		</g:if>
			
		<g:if test="${skuInstance?.quantity}">
			<li class="fieldcontain">
				<span id="quantity-label" class="property-label"><g:message code="sku.quantity.label" default="Quantity" /></span>
				<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${skuInstance}" field="quantity"/></span>
			</li>
		</g:if>

		<g:if test="${skuInstance?.company}">
			<li class="fieldcontain">
				<span id="company-label" class="property-label"><g:message code="sku.company.label" default="Company" /></span>
				<span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${skuInstance?.company?.id}">${skuInstance?.company?.encodeAsHTML()}</g:link></span>
			</li>
		</g:if>
			
		</ol>

		<g:form url="[resource:skuInstance, action:'delete']" method="DELETE">
		<fieldset class="buttons">
			<g:link class="edit" action="edit" resource="${skuInstance}">
				<g:message code="default.button.edit.label" default="Edit" />
			</g:link>
			<g:actionSubmit class="delete" action="delete" 
				value="${message(code: 'default.button.delete.label', default: 'Delete')}" 
				onclick="return confirm('${message(code: 'default.button.delete.confirm.message', 
				default: 'Are you sure?')}');" />
				
<!--  <g:actionSubmit class="save" action="trade" value="Trade" /> -->			
			
			<g:link class="save" action="trade" resource="${skuInstance}">
				<g:message code="Trade" />
			</g:link>
		</fieldset>
		</g:form>
	</div>
</body>
</html>
