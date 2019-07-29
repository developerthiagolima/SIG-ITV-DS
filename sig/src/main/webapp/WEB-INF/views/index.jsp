<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Sig</title>
		
		<link rel="stylesheet" href="css/sig.css" type="text/css">
		<link rel="stylesheet" href="css/ol.css" type="text/css">
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
		
		<script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
		<script src="js/ol.js" type="text/javascript"></script>
		<script src="js/d3.v5.min.js" type="text/javascript"></script>
		<script src="js/sigMap.js" type="text/javascript"></script>
		<script src="js/sig.js" type="text/javascript"></script>
	</head>
	<body onload="init()">
		<main class="bd-content p-5" role="main">
			<div class="container">
	        	<label for="indicador">Indicador:</label>
				<select id="indicador" onchange="carregarIndicador(this.value)"></select>
	        </div>
	        <div class="container">
	        	<div class="row">
	        		<div id="mapa"></div>
	        	</div>
	        </div>
		</main>
	</body>
</html>
