<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Sig</title>
		
		<link rel="stylesheet" href="https://openlayers.org/en/v4.6.5/css/ol.css" type="text/css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css">
		
		<script src="js/util.js" type="text/javascript"></script>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		
		<script type="text/javascript">
			$( document ).ready(function() {
				carregarIndicador('#indicador', 'api/indicadores');
			});
		</script>
	</head>
	<body>
		<main class="bd-content p-5" id="content" role="main">
			<div class="container">
	        	<label for="indicador">Indicador:</label>
				<select id="indicador"></select>
	        </div>
	        <div class="container">
	        	<div class="row">
	        		<div id="map" class="map"></div>
	        	</div>
	        </div>
		</main>
	</body>
</html>