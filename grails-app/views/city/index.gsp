<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}" type="text/css"/>
	<title>Disaster Map</title>
</head>

<body> <div class="body"> <br>
  <p>---------Below is a map of ongoing disasters. The idea is that users can click and drill down to a specific city that has a disaster and choose to send resources there---------
  </p>
		<div align="center" id="container1" style="height: 500px; width: 960px"></div>
		<script type="text/javascript" src="${resource(dir: 'js', file: 'datamaps-all.js')}"></script> 
		<script type="text/javascript" src="${resource(dir: 'js', file: 'map.js')}"></script> 
  </div>
</body>
</html>