<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title>Grow Healthy</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="E-commerce prodotti agricoli" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
		media="screen" />
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
		type="text/css" />
	<link
		href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
		rel="stylesheet">
	<link href="css/stylesheet.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link href="owl-carousel/owl.carousel.css" type="text/css"
		rel="stylesheet" media="screen" />
	<link href="owl-carousel/owl.transitions.css" type="text/css"
		rel="stylesheet" media="screen" />		
	
	<!-- SCRIPT  -->
	<script src="javascript/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="javascript/jstree.min.js" type="text/javascript"></script>
	<script src="javascript/template.js" type="text/javascript"></script>
	<script src="javascript/common.js" type="text/javascript"></script>
	<script src="javascript/global.js" type="text/javascript"></script>
	<script src="owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
	<script src="javascript/parally.js"></script>
	
	<script>
		$('.parallax').parally({
			offset : -40
		});
	</script>
	
	<script src="https://kit.fontawesome.com/efd0a43034.js" crossorigin="anonymous"></script>
	
	<script src="javascript/insertTerrain.js" type="text/javascript"></script>	
		
</head>

<body>
	<!-- HEADER -->
	<%@ include file="header.jsp"%>
	
	<!-- NAVBAR MENU -->
	<%@ include file= "navbar.jsp"%>

	<div class="container">
		<ul class="breadcrumb">
			<li><a href="/GrowHealthy/"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Account</a></li>
			<li><a href="userRegistration.jsp">Inserimento Terreno</a></li>
		</ul>
		<div class="row">
			<div class="col-sm-3 hidden-xs column-left"  id="column-left"></div>
			<div class="col-sm-9" id="content">
				<h1>Inserimento Terreno</h1>
				<form class="form-horizontal" id="formInsertTerrain" name="formInsertTerrain" enctype="multipart/form-data">
					<div class="form-group required">
						<label for="input-locazione" class="col-sm-2 control-label">Posizione :</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputPosizione" placeholder="Posizione" name="posizione">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-dimensione" class="col-sm-2 control-label">Dimensione (m^2):</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputDimensione" placeholder="Dimensione" name="dimensione">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-categoria" class="col-sm-2 control-label">Servizi Offerti :</label>
						<div class="col-sm-10">
							<select name="serviziOfferti" id="inputServizioOfferto">
								<c:forEach items="${categories}" var="category">
									<option value="${category.categoria}">${category.categoria}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-costoTerreno" class="col-sm-2 control-label">Costo Terreno :</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputCostoTerreno"
								placeholder="Costo" name="costo">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-descrizione" class="col-sm-2 control-label">Descrizione :</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputDescrizione"
								placeholder="Descrizione" name="descrizione">
						</div>
					</div>
					<div class="buttons">
						<div class="alert alert-warning" id="alert-form" style="display: none !important;">
							<strong>Prego inserire tutti i campi !</strong>
						</div>
						<div class="pull-right">
							<button type="button" data-loading-text="Loading..."
								class="btn btn-primary" id="button-confirm"
								onclick="javascript:popup()">Conferma
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<br>
	
	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>

</body>
</html>