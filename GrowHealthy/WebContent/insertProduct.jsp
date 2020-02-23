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

	<script src="javascript/insertProduct.js" type="text/javascript"></script>
	
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
		<ul class="breadcrumb">
			<li><a href="index.jsp"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Account</a></li>
			<li><a href="userRegistration.jsp">Inserimento Prodotto</a></li>
		</ul>
		<div class="row">
			<div class="col-sm-3 hidden-xs column-left"  id="column-left"></div>
			<div class="col-sm-9" id="content">
				<h1>Inserimento Prodotto</h1>
				
				<form class="form-horizontal" id="formInsertProduct" name="formInsertProduct" enctype="multipart/form-data">
					<div class="form-group required">
						<label for="input-nome" class="col-sm-2 control-label">Nome</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputnome"
								placeholder="Nome" name="nome">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-categoria" class="col-sm-2 control-label">Categoria</label>
						<div class="col-sm-10">
							<select name="categoria" id="inputcategoria">
								<c:forEach items="${categories}" var="category">
									<option value="${category.categoria}">${category.categoria}</option>
							</c:forEach>
							
							</select>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-quantitaMagazzino" class="col-sm-2 control-label">Quantità Magazzino</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputquantitamagazzino"
								placeholder="Quantita Magazzino" name="quantitaMagazzino">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-quantitaMinima" class="col-sm-2 control-label">Quantità Minima</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputquantitaminima"
								placeholder="Quantita Minima" name="quantitaMinima">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-descrizione" class="col-sm-2 control-label">Descrizione</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputdescrizione"
								placeholder="Descrizone" name="descrizione">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-prezzo" class="col-sm-2 control-label">Prezzo</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputprezzo"
								placeholder="Prezzo" name="prezzo">
						</div>
					</div>
					<div class="buttons">
									<div class="alert alert-warning" id="alert-form"
										style="display: none !important;">
										<strong>Prego inserire tutti i campi!</strong>
									</div>
							
									<div class="pull-right">
										I have read and agree to the <a class="agree" href="#"><b>Privacy
										Policy</b></a> <input type="checkbox" value="1" name="agree">
										&nbsp;
											<button type="button" data-loading-text="Loading..."
												class="btn btn-primary" id="button-confirm"
												onclick="javascript:popup()">Conferma</button>
	
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