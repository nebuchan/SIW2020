<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
 
<html>
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
	<script src="javascript/jstree.min.js" type="text/javascript"></script>
	<script src="javascript/template.js" type="text/javascript"></script>
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
		<ul class="breadcrumb">
			<li><a href="index.jsp"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Account</a></li>
			<li><a href="companyRegistration.jsp">Modifica Informazioni</a></li>
		</ul>
		<div class="row">
			<div class="col-sm-3 hidden-xs column-left" id="column-left"></div>
			<div class="col-sm-9" id="content">
				<h1>Modifica dati Profilo</h1>
				
				<form class="form-horizontal" method="POST" action="editInformationCompany">

					<p>INFORMAZIONI AZIENDALI</p>

					<div class="form-group required">
						<label for="input-pIva" class="col-sm-2 control-label">Partita
							Iva</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-pIva"
								 name="pIva" value="${utente.pIva}" readonly>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-ragioneSociale" class="col-sm-2 control-label">Ragione
							Sociale</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-ragioneSociale"
								 name="ragioneSociale" value="${utente.ragioneSociale}" readonly>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-sedeLegale" class="col-sm-2 control-label">Sede
							Legale</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-sedeLegale"
								 name="sedeLegale" value="${utente.sedeLegale}" required>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-referente" class="col-sm-2 control-label">Referente</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-referente"
								 name="referente" value="${utente.referente}" required>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-telephone" class="col-sm-2 control-label">Numero
							Telefono</label>
						<div class="col-sm-10">
							<input type="tel" class="form-control" id="input-telephone"
								 name="telefono" value="${utente.telefono}" required>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-descrizione" class="col-sm-2 control-label">Descrizione</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-descrizione"
								 name="descrizione" value="${utente.descrizione}">
						</div>
					</div>

					<p>DATI DI ACCESSO</p>
					<div class="form-group required">
						<label for="input-email" class="col-sm-2 control-label">E-Mail</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="input-email"
								 name="email" value="${utente.email}" readonly>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-password" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="input-password"
								 name="password" required value=${utente.password}>
						</div>
					</div>
					<!--   <div class="form-group required">
                        <label for="input-confirm" class="col-sm-2 control-label">Conferma Password</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="input-confirm" placeholder="Conferma Password" value="" name="confirm">
                        </div>
                    </div>-->
					<div class="buttons">
						<div class="pull-right">
							I have read and agree to the <a class="agree" href="#"><b>Privacy
									Policy</b></a> <input type="checkbox" value="1" name="agree">
							&nbsp;
							<button type="submit" class="btn btn-primary"
								value="Continue" onclick="return confirm('Sicuro di voler confermare la modifica dei dati?')">Continue</button>
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
