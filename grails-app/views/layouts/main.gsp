<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'icon30px.png')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'icon100px.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<g:javascript library="application"/>		
		<r:layoutResources />
	</head>
	
	<body>
	<div id="grailsLogo" role="banner">
		<p style="text-align:left;">
		<span class="naraLogo"><a class="home" href="${createLink(uri: '/')}">NARA</a>
		</span>
			<g:link controller="sku">Skus</g:link>
			<g:link controller="company">Companies</g:link>
			<span style="float:right;">
				<g:link controller="City">Disaster Map</g:link>
				<g:link controller="Person">Users</g:link>
				<g:link controller="Links" action="about">About</g:link>
			</span>
		</p>
	</div>

	<g:layoutBody/>
		
	<div class="footer" role="contentinfo"></div>
	<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	<r:layoutResources />
	</body>
</html>