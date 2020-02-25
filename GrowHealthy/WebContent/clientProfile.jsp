<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
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
	<script src="javascript/clientProfile.js" type="text/javascript"></script>

</head>

<body>
	<!-- HEADER -->
	<%@ include file="header.jsp"%>

	<!-- NAVBAR MENU -->
	<%@ include file="navbar.jsp"%>

	<div class="container">
		<ul class="breadcrumb">
			<li><a href="/GrowHealthy/"><i class="fa fa-home"></i></a></li>
		</ul>
		<div class="row">
			<div id="column-left" class="col-sm-3 hidden-xs column-left">
				<div class="column-block" style="margin-top: 26px;">
					<div class="columnblock-title">Il Mio Profilo</div>
					<div class="category_block">
						<ul class="box-category treeview-list treeview">
							<li><a href="javascript:void(0);" id="myData" name="dio">I Miei
									Dati</a></li>
							<li><a href="javascript:void(0);" id="myData1" name="gesu">Il Mio
									Indirizzo</a></li>
							<li><a href="javascript:void(0);" id="myData2">I Miei
									Acquisti</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="content" class="col-sm-9" style="margin-bottom: 10px;">
			
				<div id="divMyData" style="display: none;">
					<h1 align="center">
						<strong>I Miei Dati</strong>
					</h1>
					<div align="left">
						<label>Nome: <strong>${utente.nome}</strong>
						</label> <br> <label>Cognome: <strong>${utente.cognome}</strong>
						</label> <br> <label>Codice Fiscale: <strong>${utente.codiceFiscale}</strong>
						</label> <br> <label>Data di nascita: <strong>${utente.dataDiNascita}</strong>
						</label> <br> <label>Telefono: <strong>${utente.telefono}</strong>
						</label> <br> <label>Email: <strong>${utente.email}</strong>
						</label> <br>
						<form class="form-vertical" id="formModifyPwd" method="post" action="">
							<h1 align="center">
								<strong>Cambio Password</strong>
							</h1>
							
							<div class="form-group required">
								<input type="hidden" id="oldPwd" value="${utente.password}">
								<label for="input-oldpwd" class="col-sm-2 control-label"
									style="padding-left: 0px;">Vecchia Password: </label> <input
									type="password" class="form-control" id="input-oldpwd"
									placeholder="Vecchia Password" name="oldpwd" required>
							</div>
							<div class="form-group required">
								<label for="input-newpwd" class="col-sm-2 control-label"
									style="padding-left: 0px;">Nuova Password: </label> <input
									type="password" class="form-control" id="input-newpwd"
									placeholder="Nuova Password" name="newpwd" required>
							</div>

							<div class="buttons">
								<div class="alert alert-warning" id="warning1-modifyPwd"
									style="display: none !important;">
									<strong>Inserire tutti i campi per la modifica</strong>
								</div>

								<div class="alert alert-warning" id="warning2-modifyPwd"
									style="display: none !important;">
									<strong>La vecchia password non corrisponde,prego
										inserire la password corretta</strong>
								</div>

								<div class="alert alert-warning" id="warning3-modifyPwd"
									style="display: none !important;">
									<strong>Inserire una nuova password diversa da quella
										precedente</strong>
								</div>

								<div class="alert alert-success" id="success-modifyPwd"
									style="display: none !important;">
									<strong>Password modificata con successo</strong>
								</div>

								<div class="pull-right">
									<button type="button" form="formModifyPwd"
										class="btn btn-default" id="changePwdBtn">Conferma</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div id="divMyData1" style="display: none;">
					<h1 align="center">
						<strong>Il Mio Indirizzo di Spedizione</strong>
					</h1>
					<div align="left">
						<form method="post" id="formDeliveryData">
							<div class="form-group required">
								<label for="input-regione" class="col-sm-2 control-label"
									style="padding-left: 0px;">Regione: </label> <input type="text"
									class="form-control" id="input-regione" name="regione"
									value="${utente.regione}" required>
							</div>
							<div class="form-group required">
								<label for="input-provincia" class="col-sm-2 control-label"
									style="padding-left: 0px;">Provincia: </label> <input
									type="text" class="form-control" id="input-provincia"
									name="provincia" value="${utente.provincia}" required>
							</div>
							<div class="form-group required">
								<label for="input-citta" class="col-sm-2 control-label"
									style="padding-left: 0px;">Città: </label> <input type="text"
									class="form-control" id="input-citta" name="citta"
									value="${utente.citta}" required>
							</div>
							<div class="form-group required">
								<label for="input-via" class="col-sm-2 control-label"
									style="padding-left: 0px;">Via: </label> <input type="text"
									class="form-control" id="input-via" name="via"
									value="${utente.via}" required>
							</div>
							<div class="form-group required">
								<label for="input-cap" class="col-sm-2 control-label"
									style="padding-left: 0px;">CAP: </label> <input type="text"
									class="form-control" id="input-cap" name="cap"
									value="${utente.cap}" required>
							</div>
							<div class="buttons">
								<div class="alert alert-success" id="success-modify"
									style="display: none !important;">
									<strong>Dati dell'indirizzo di spedizione
										correttamente modicati</strong>
								</div>
								<div class="pull-right">
									<button type="button" class="btn btn-default" id="modifyBtn"
										style="display: none;">Modifica</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div id="divMyData2" style="display: none;">
					<h1 align="center">
						<strong>I Miei Acquisti</strong>
					</h1>
					<table class="table table-bordered" id="tableMyData2">
						<thead>
							<tr>
								<th class="text-center">Codice</th>
								<th class="text-center">Prodotti</th>
								<th class="text-center">Indirizzo</th>
								<th class="text-center">Metodo Spedizione</th>
								<th class="text-center">Dati Pagamento</th>
								<th class="text-center">Data</th>
								<th class="text-center">Totale</th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>
</body>
</html>