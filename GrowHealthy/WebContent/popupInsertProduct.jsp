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

	<!-- HEADER -->
	<header>
		<%@ include file="header.jsp"%>
	</header>
	
	<!-- NAVBAR MENU -->
	<nav id="menu" class="navbar">
		<%@ include file= "navbar.jsp"%>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-sm-3 hidden-xs column-left" id="column-left"></div>
			<div class="col-sm-9" id="content">
				<strong><br>RIEPILOGO DATI PRODOTTO</strong>
				<form class="form-horizontal" method="POST" action="insertproduct" enctype="multipart/form-data">
					<div class="form-group required">
						<label for="input-nome" class="col-sm-2 control-label">Nome:&nbsp;&nbsp; <strong>
								${name}</strong> </label>
						<div class="col-sm-10"></div>
					</div>
					<div class="form-group required">
						<label for="input-categoria" class="col-sm-2 control-label">Categoria:&nbsp;&nbsp;<strong>
								${category}</strong></label>						
					</div>
					<div class="form-group required">
						<label for="input-quantitaMagazzino" class="col-sm-2 control-label">Qty Magazzino:&nbsp;&nbsp;<strong>
								${stockQuantity}</strong></label>
					</div>
					<div class="form-group required">
						<label for="input-quantitaMinima" class="col-sm-2 control-label">Qty Minima:&nbsp;&nbsp;<strong>
								${minimumQuantity}</strong></label>
					</div>
					<div class="form-group required">
						<label for="input-descrizione" class="col-sm-2 control-label">Descrizione:&nbsp;&nbsp;<strong>
								${description}</strong></label>
					</div>
					<div class="form-group required">
						<label for="input-prezzo" class="col-sm-2 control-label">Prezzo:&nbsp;&nbsp;<strong>
								${price}</strong></label>
					</div>
					
					<div class="buttons">
						<div class="form-group required">
							<br>
							<label for="input-immagine" class="col-sm-2 control-label"><strong>INSERISCI IMMAGINE PRODOTTO</strong></label>
							<div class="col-sm-10">
								<input type="file" class="form-control" id="input-immagine" accept="image/jpeg"
									placeholder="Immagine" name="immagine">
							</div>
						</div>
						<div class="pull-right">
							<br>
							<strong>Prima di CONFERMARE si scelga l'immagine che si vuole inserire</strong>
							&nbsp;
							<button type="submit" class="btn btn-primary"
								value="InserimentoProdotto">Conferma</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>
	
</body>
</html>
