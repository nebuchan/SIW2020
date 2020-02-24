<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
	<title>Grow Healthy</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description"
		content="e-commerce site well design with responsive view." />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
		media="screen" />
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
		type="text/css" />
	<link
		href='https://fonts.googleapis.com/css?family=Work+Sans:100,300,400,500,700,900'
		rel='stylesheet' type='text/css'>
	<link href="css/stylesheet.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link href="owl-carousel/owl.carousel.css" type="text/css"
		rel="stylesheet" media="screen" />
	<link href="owl-carousel/owl.transitions.css" type="text/css"
		rel="stylesheet" media="screen" />
	
	<script src="javascript/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="javascript/jstree.min.js"></script>
	<script type="text/javascript" src="javascript/template.js"></script>
	<script src="javascript/common.js" type="text/javascript"></script>
	<script src="javascript/global.js" type="text/javascript"></script>
	<script src="owl-carousel/owl.carousel.min.js" type="text/javascript"></script>

	<script src="https://kit.fontawesome.com/efd0a43034.js" crossorigin="anonymous"></script>

</head>

<body class="account-register col-2">
	
	<div class="container">
		<div class="row">
			<div class="col-sm-3 hidden-xs column-left" id="column-left"></div>
			<div class="col-sm-9" id="content">
				<form class="form-horizontal">
					
					<div class="form-group required">
						<label for="input-posizione" class="col-sm-2 control-label">Posizione :&nbsp;&nbsp; <strong>
								${position}</strong> </label>
					</div>
					<div class="form-group required">
						<label for="input-dimensione" class="col-sm-2 control-label">Dimensione :&nbsp;&nbsp;<strong>
								${dimension}</strong></label>
					</div>
					<div class="form-group required">
						<label for="input-servizio" class="col-sm-2 control-label">Servizio :&nbsp;&nbsp;<strong>
								${service}</strong></label>
					</div>
					<div class="form-group required">
						<label for="input-costo" class="col-sm-2 control-label">Costo :&nbsp;&nbsp;<strong>
								${price}</strong></label>
					</div>
					<div class="form-group required">
						<label for="input-descrizione" class="col-sm-2 control-label">Descrizione :&nbsp;&nbsp;<strong>
								${description}</strong></label>
					</div>
					<div class="buttons">
						<div class="pull-right">
							&nbsp;
							<button type="submit" class="btn btn-primary"
								value="InserimentoTerreno" onclick="window.close()">Chiudi Popup</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>