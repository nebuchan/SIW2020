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

<script src="https://kit.fontawesome.com/efd0a43034.js"
	crossorigin="anonymous"></script>
	
<script src="javascript/checkDataRegistration.js" type="text/javascript"></script>

</head>

<body class="account-register col-2">

	<!-- HEADER -->
	<%@ include file="header.jsp"%>

	<!-- NAVBAR MENU -->
	<%@ include file="navbar.jsp"%>

	<div class="container">
		<ul class="breadcrumb">
			<li><a href="home"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Account</a></li>
			<li><a href="userRegistration.jsp">Registrazione Cliente</a></li>
		</ul>
		<div class="row">
			<div class="col-sm-3 hidden-xs column-left" id="column-left"></div>
			<div class="col-sm-9" id="content">
				<h1>Registrazione Cliente</h1>
				<p>Se sei un'azienda, clicca <a href="companyRegistration.jsp">qui !</a></p>
				
				<form class="form-horizontal" method="POST" action="clientRegister" id="formUserRegistration">
					<p> <strong>Dati Personali :</strong></p>
					
					<div class="form-group required">
						<label for="input-firstname" class="col-sm-2 control-label">Nome: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-firstname"
								placeholder="Nome" name="nome" required>
						</div>
					</div>
					
					<div class="form-group required">
						<label for="input-lastname" class="col-sm-2 control-label">Cognome: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-lastname"
								placeholder="Cognome" name="cognome" required >
						</div>
					</div>
					
					<div class="form-group required">
						<label for="input-cf" class="col-sm-2 control-label">Codice
							Fiscale: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-cf"
								placeholder="Codice Fiscale" name="cf" required>
						</div>
						
						<div class="alert alert-warning" id="alert-inputcf"
										style="display: none !important;">
										<strong>Codice fiscale inserito non valido!</strong>
						</div>
						
						<div class="alert alert-success" id="alert-success-inputcf"
										style="display: none !important;">
										<strong>Codice fiscale inserito valido!</strong>
						</div>
						
					</div>
					
					<div class="form-group required">
						<label for="input-date" class="col-sm-2 control-label">Data
							di Nascita: </label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="input-date"
								placeholder="Data di Nascita" name="data" style="padding-top: 0px; padding-bottom: 0px;" required>
						</div>
					</div>
					
					<div class="form-group required">
						<label for="input-telephone" class="col-sm-2 control-label">Numero
							Telefono: </label>
						<div class="col-sm-10">
							<input type="tel" class="form-control" id="input-telephone"
								placeholder="Numero Telefono" name="telefono" required>
						</div>
						
						<div class="alert alert-warning" id="alert-inputtelephone"
										style="display: none !important;">
										<strong>Numero telefono inserito non valido!</strong>
						</div>
						
						<div class="alert alert-success" id="alert-success-inputtelephone"
										style="display: none !important;">
										<strong>Numero telefono inserito valido!</strong>
						</div>
						
					</div>

					<p><strong>Indirizzo:</strong></p>
					
					<div class="form-group required">
						<label for="input-regione" class="col-sm-2 control-label">Regione: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-regione"
								placeholder="Regione" name="regione" required>
						</div>
					</div>
					
					<div class="form-group required">
						<label for="input-provincia" class="col-sm-2 control-label">Provincia: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-provincia"
								placeholder="Provincia" name="provincia" required>
						</div>
					</div>

					<div class="form-group required">
						<label for="input-city" class="col-sm-2 control-label">Città: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-city"
								placeholder="Città" name="citta" required>
						</div>
					</div>
					
					<div class="form-group required">
						<label for="input-address-1" class="col-sm-2 control-label">Via: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-address-1"
								placeholder="Via" name="via" required>
						</div>
					</div>
					
					<div class="form-group required">
						<label for="input-postcode" class="col-sm-2 control-label">CAP: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-postcode"
								placeholder="CAP" name="cap" required>
						</div>
						
						<div class="alert alert-warning" id="alert-inputpostcode"
										style="display: none !important;">
										<strong>CAP inserito non valido!</strong>
						</div>
						
						<div class="alert alert-success" id="alert-success-inputpostcode"
										style="display: none !important;">
										<strong>CAP inserito valido!</strong>
						</div>
					</div>

					<p><strong>Dati per l'accesso:</strong></p>

					<div class="form-group required">
						<label for="input-email" class="col-sm-2 control-label">E-Mail: </label>
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
