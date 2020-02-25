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

	<script src="javascript/checkDataRegistration.js" type="text/javascript"></script>
	
	
</head>

<body class="account-register col-2">
	
	<!-- HEADER -->
	<%@ include file="header.jsp"%>
	
	<!-- NAVBAR MENU -->
	<%@ include file= "navbar.jsp"%>

	<div class="container">
		<ul class="breadcrumb">
			<li><a href="/GrowHealthy/"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Account</a></li>
			<li><a href="companyRegistration.jsp">Registrazione Azienda</a></li>
		</ul>
		<div class="row">
			<div class="col-sm-3 hidden-xs column-left" id="column-left"></div>
			<div class="col-sm-9" id="content">
				<h1>Registrazione Azienda</h1>
				<p>
					Se sei un cliente, clicca <a href="userRegistration.jsp">qui</a>.
				</p>
				<form class="form-horizontal" method="POST" action="companyRegister">

					<p>INFORMAZIONI AZIENDALI</p>

					<div class="form-group required">
						<label for="input-pIva" class="col-sm-2 control-label">Partita
							Iva</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-piva"
								placeholder="Partita Iva" name="pIva" required>
						</div>
						
						<div class="alert alert-warning" id="alert-inputpiva"
										style="display: none !important;">
										<strong>Partita iva inserita non valida!</strong>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-ragioneSociale" class="col-sm-2 control-label">Ragione
							Sociale</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-ragioneSociale"
								placeholder="Ragione Sociale" name="ragioneSociale" required>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-sedeLegale" class="col-sm-2 control-label">Sede
							Legale</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-sedeLegale"
								placeholder="Sede Legale" name="sedeLegale" required>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-referente" class="col-sm-2 control-label">Referente</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-referente"
								placeholder="Referente" name="referente" required>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-telephone" class="col-sm-2 control-label">Numero
							Telefono</label>
						<div class="col-sm-10">
							<input type="tel" class="form-control" id="input-telephone"
								placeholder="Numero Telefono" name="telefono" required>
						</div>
						
						<div class="alert alert-warning" id="alert-inputtelephone"
										style="display: none !important;">
										<strong>Numero telefono inserito non valido!</strong>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-descrizione" class="col-sm-2 control-label">Descrizione</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-descrizione"
								placeholder="Descrizione" name="descrizione">
						</div>
					</div>

					<p>DATI DI ACCESSO</p>
					<div class="form-group required">
						<label for="input-email" class="col-sm-2 control-label">E-Mail</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="input-email"
								placeholder="E-Mail" name="email" required>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-password" class="col-sm-2 control-label">Password: </label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="input-password"
								placeholder="Password" name="password" required>
						</div>
						
						<div class="alert alert-warning" id="alert-minus-password"
										style="display: none !important;">
										<strong>Attenzione, inserire una password di almeno 6 caratteri!</strong>
						</div>
					</div>
					
					<div class="form-group required">
                        <label for="input-confirm-password" class="col-sm-2 control-label">Conferma Password</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="input-confirm-password" 
                            placeholder="Conferma Password" name="confirm-password" required>
                        </div>
                        
                        <div class="alert alert-warning" id="alert-confirm-unsuccess"
										style="display: none !important;">
										<strong>Password immesse non coincidono!</strong>
						</div>
						
						 <div class="alert alert-success" id="alert-confirm-success"
										style="display: none !important;">
										<strong>Password immessa valida!</strong>
						</div>
                    </div>
					<div class="buttons">
						<div class="pull-right">
							Ho letto e accetto la <a class="agree" href="#"><b>Politica sulla Privacy
									</b></a> <input type="checkbox" value="1" name="agree" required>
							&nbsp;
							<input type="submit" class="btn btn-primary" value="Conferma" value="Controlla" />
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
