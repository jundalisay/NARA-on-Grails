<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Welcome to NARAS</title>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}" type="text/css"/>
 		
 	<style>
		.node circle {
		  cursor: pointer;
		  stroke: #3182bd;
		  stroke-width: 1.5px;
		}
		.node text {
		  font: 10px sans-serif;
		  pointer-events: none;
		  text-anchor: middle;
		}
		line.link {
		  fill: none;
		  stroke: #9ecae1;
		  stroke-width: 1.5px;
		}
	</style>
	<r:require modules="d3"/>		
</head>

<body >
	<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	<div id="status" role="complementary"><br>
		<h2>View Our List</h2>
		<ul> <li class="controller">
				<g:link controller="sku">View Skus</g:link><br>
				<g:link controller="company">View Companies</g:link><br>
			</li>
		</ul>
		
		<h2>New SKUs</h2>
		<ul><li>Bread</li> <li>Flour</li>
		<!-- <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
				<li>${plugin.name} - ${plugin.version}</li>
			</g:each>  -->			
		</ul> 
		
		<h2>New Companies</h2>
		<ul><li>Bread Company</li>
			<g:each in="${companyInstanceList}" status="i" var="companyInstance">
				<li>${companyInstance.name}</li>
			</g:each>
		</ul>
			
		<h2>Disaster Updates</h2>
		<ul><li>Japan Tsunami</li>
		<li>Sudan War</li>
		<li>US Hurricane</li>
		</ul>
		
		<h2>How to Use </h2>
		<h3>(not yet working)</h3>
		<ul>
			<li>1 - Create a Company</li>
			<li>2 - Create an SKU for your Company</li>
			<li>3 - Search for SKUs to trade with</li>
		</ul>
		
	</div>
		
	<div id="page-body" role="main">
		<h1>Welcome to the NARA System</h1>
		<br>
		<p>NARAS stands for Non Arbitrary Resource Allocation System. This is a system that maps supply chain relationships (below) in order to facilitate transactions and monitor allocation of resources (called SKUs) between companies. </p>

<!-- 		<div id="controller-list" role="navigation"> </ul> 	</div> -->
<!-- 		<canvas id="canvas" width="800" height="600">No canvas.	</canvas>  -->

		<script type="text/javascript" src="${resource(dir: 'js', file: 'forcedir.js')}"></script>  
		</div>
	</body>
</html>