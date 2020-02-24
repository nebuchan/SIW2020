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
	<%@ include file="header.jsp"%>
	
	<!-- NAVBAR MENU -->
	<%@ include file= "navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-sm-3 hidden-xs column-left" id="column-left"></div>
			<div class="col-sm-9" id="content">
				<strong><br>RIEPILOGO DATI PRODOTTO</strong>
				<form class="form-horizontal" method="GET" action="aggiornaProdotto">
					<div class="form-group required">
						<label for="input-name" class="col-sm-2 control-label">Nome Prodotto</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-name"
								 name="nomeProdotto" value="${name}" required>
						</div>	
					</div>
					
					<div class="form-group required">
						<label for="input-companyName" class="col-sm-2 control-label">Azienda</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-companyName"
								 name="nomeAzienda" value="${companyName}" readonly>
						</div>	
					</div>
					
					<div class="form-group required">
						<label for="input-category" class="col-sm-2 control-label">Categoria</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-category"
								 name="categoria" value="${category}" readonly >
						</div>							
					</div>
					<div class="form-group required">
						<label for="input-stockQuantity" class="col-sm-2 control-label">Quantità Disponibile</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-stockQuantity"
								 name="quantitaDisponibile" value="${stockQuantity}" required>
						</div>	
					</div>
					
					<div class="form-group required">
							<label for="input-minimumQuantity" class="col-sm-2 control-label">Quantità Minima </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-minimumQuantity"
								 name="quantitaMinima" value="${minimumQuantity}" required>
						</div>	
					</div>
					<div class="form-group required">
						<label for="input-dexcription" class="col-sm-2 control-label">Descrizione</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-description"
								 name="descrizione" value="${description}" >
						</div>	
					</div>
					<div class="form-group required">
							<label for="input-price" class="col-sm-2 control-label">Prezzo</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-price"
								 name="prezzo" value="${price}" required>
						</div>	
					</div>
					
					<div class="buttons">
						<div class="form-group required">
							<br>
							<label for="input-immagine" class="col-sm-2 control-label"><strong>Immagine Prodotto</strong></label>
							<div class="col-sm-10">
								<img alt="${name}" src="${image}">
							</div>
						</div>
						<div class="pull-right">
							<button type="submit" class="btn btn-primary"
								value="Conferma">Conferma</button>
						</div>
						<br>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>
</body>
</html>
