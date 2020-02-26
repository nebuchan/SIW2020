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
<script type="text/javascript" src="javascript/jstree.min.js"></script>
<script type="text/javascript" src="javascript/template.js"></script>
<script src="javascript/common.js" type="text/javascript"></script>
<script src="javascript/global.js" type="text/javascript"></script>
<script src="owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src="javascript/checkout.js" type="text/javascript"></script>

<script src="https://kit.fontawesome.com/efd0a43034.js"
	crossorigin="anonymous"></script>

</head>

<body class="checkout col-2 left-col">

	<!-- HEADER -->
	<%@ include file="header.jsp"%>

	<!-- NAVBAR MENU -->
	<%@ include file="navbar.jsp"%>

	<div class="container">
		<ul class="breadcrumb">
			<li><a href="/GrowHealthy/"><i class="fa fa-home"></i></a></li>
			<li><a href="cart.jsp">Carrello</a></li>
		</ul>
		<div class="row">
			<div class="col-sm-9" id="content" style="margin-left: 100px;">
				<h1>Checkout</h1>
				<div id="accordion" class="panel-group">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a class="accordion-toggle" data-parent="#accordion"
									data-toggle="collapse" href="#collapse-shipping-data"
									aria-expanded="true">Step 1: Inserisci i dati per la
									consegna<i class="fa fa-caret-down"></i>
								</a>
							</h4>
						</div>
						<div id="collapse-shipping-data" role="heading"
							class="panel-collapse collapse in" aria-expanded="true" style="">
							<div class="panel-body">
								<form class="form-horizontal" id="formDeliveryData"
									name="formDeliveryData">
									<div class="form-group required">
										<label for="input-nome" class="col-sm-2 control-label">Nome:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-nome"
												placeholder="Nome" value="${utente.nome}" name="nome">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-cognome" class="col-sm-2 control-label">Cognome:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-cognome"
												placeholder="Cognome" value="${utente.cognome}" name="cognome">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-regione" class="col-sm-2 control-label">Regione:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-regione"
												placeholder="Regione" value="${utente.regione}" name="regione">
										</div>

									</div>
									<div class="form-group required">
										<label for="input-provincia" class="col-sm-2 control-label">Provincia:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-provincia"
												placeholder="Provincia" value="${utente.provincia}" name="provincia">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-citta" class="col-sm-2 control-label">Città:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-citta"
												placeholder="Città" value="${utente.citta}" name="citta">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-via" class="col-sm-2 control-label">Via:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-via"
												placeholder="Via" value="${utente.via}" name="via">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-cap" class="col-sm-2 control-label">CAP:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-cap"
												placeholder="CAP" value="${utente.cap}" name="cap">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-telefono" class="col-sm-2 control-label">Telefono:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-telefono"
												placeholder="Telefono" value="${utente.telefono}" name="telefono">
										</div>
									</div>
									<br>
									<div class="alert alert-warning" id="alert-form"
										style="display: none !important;">
										<strong>Prego inserire tutti i campi!</strong>
									</div>
									<div class="alert alert-success" id="success-form"
										style="display: none !important;">
										<strong>Dati per la spedizione correttamente
											inseriti!</strong>
									</div>
									<button class="btn btn-default pull-right" type="button"
										onclick="fillDeliveryData()">Conferma</button>
								</form>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a class="accordion-toggle collapsed" data-parent="#accordion"
									data-toggle="collapse" href="#collapse-payment-mod"
									aria-expanded="false">Step 2: Inserisci modalità di
									spedizione <i class="fa fa-caret-down"></i>
								</a>
							</h4>
						</div>
						<div id="collapse-payment-mod" role="heading"
							class="panel-collapse collapse" aria-expanded="false"
							style="height: 0px;">
							<div class="panel-body">
								<table>
									<tbody>
										<tr>
											<td><input type="radio" name="spedizione"
												value="standard" onchange="addDeliveryCost()" required><strong
												style="margin-left: 10px;">+ 0,99 &#8364;</strong></td>

											<td style="padding-left: 25px;"><strong>Standard</strong><strong
												style="color: green;">- 7gg lavorativi</strong></td>
										</tr>
										<tr>
											<td><input type="radio" name="spedizione" value="prime"
												onchange="addDeliveryCost()"><strong
												style="margin-left: 10px;">+ 3,99 &#8364;</strong></td>

											<td style="padding-left: 25px;"><strong>Prime</strong><strong
												style="color: green;">- 5gg lavorativi</strong></td>
										</tr>
										<tr>
											<td><input type="radio" name="spedizione"
												value="primeUltra" onchange="addDeliveryCost()"><strong
												style="margin-left: 10px;">+ 6,99 &#8364;</strong></td>

											<td style="padding-left: 25px;"><strong>PrimeUtra</strong><strong
												style="color: green;">- 2gg lavorativi</strong></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a class="accordion-toggle collapsed" data-parent="#accordion"
									data-toggle="collapse" href="#collapse-payment-method"
									aria-expanded="false">Step 3: Inserisci modalità di
									pagamento <i class="fa fa-caret-down"></i>
								</a>
							</h4>
						</div>
						<div id="collapse-payment-method" role="heading"
							class="panel-collapse collapse" aria-expanded="false"
							style="height: 0px;">
							<div class="panel-body">
								<p>
									<strong>Inserire dati della carta</strong>
								</p>
								<label> <input type="radio" value="Mastercard" name="cardType" checked>
									<img src="image/payment/mastercard.jpg">
								</label> <label> <input type="radio" value="Visa" name="cardType">
									<img src="image/payment/visa.jpg">
								</label>
								<div id="divCardPayment">
									<form id="formCardData">
										<div class="form-group required">
											<label for="input-titolare">Titolare:</label> <input
												type="text" id="input-titolare" value="" name="titolare">
										</div>
										<div class="form-group required">
											<label for="input-numeroCarta">Numero carta:</label> <input
												type="text" id="input-numeroCarta" value=""
												name="numeroCarta">
										</div>
										<div class="form-group required">
											<label for="input-dataScadenza">Scadenza:</label> <input
												type="date" id="input-dataScadenza" value=""
												name="dataScadenza">
										</div>
										<div class="form-group required">
											<label for="input-cvc">CVC:</label> <input
												type="text" id="input-cvc" size="1" value=""
												name="CVC">
										</div>
										<div class="alert alert-warning" id="alert-formPayment"
											style="display: none !important;">
											<strong>Prego inserire tutti i campi!</strong>
										</div>
										<div class="alert alert-success" id="success-formPayment"
											style="display: none !important;">
											<strong>Dati della carta inseriti correttamente!</strong>
										</div>

										<button class="btn btn-default pull-left" type="button"
											onclick="fillCardPayment()">Conferma</button>

									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a class="accordion-toggle collapsed" data-parent="#accordion"
									data-toggle="collapse" href="#collapse-checkout-confirm"
									aria-expanded="false">Step 4: Conferma ordine <i
									class="fa fa-caret-down"></i></a>
							</h4>
						</div>
						<div id="collapse-checkout-confirm" role="heading"
							class="panel-collapse collapse" aria-expanded="false"
							style="height: 0px;">
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-bordered" id="tableCart">
										<thead>
											<tr>
												<td class="text-center">Image</td>
												<td class="text-center">Nome</td>
												<td class="text-center">Categoria</td>
												<td class="text-center">Azienda</td>
												<td class="text-center">Quantità(/kg)</td>
												<td class="text-center">Prezzo(/kg)</td>
												<td class="text-center">Totale</td>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>

									<div class="alert alert-warning" id="alert_updateQuantitaCheckout_max"
										style="display: none !important; border-left: 25px;">
										<strong>La quantita inserita supera la disponibile</strong>
									</div>

									<div class="alert alert-warning" id="alert_updateQuantitaCheckout_min"
										style="display: none !important; border-left: 25px;">
										<strong>La quantità inserita è minore della minima da
											acquistare per questo prodotto</strong>
									</div>

									<div class="alert alert-success" id="alert_conferma_updateCheckout"
										style="display: none !important; border-left: 25px;">
										<strong>Quantita modificata con successo</strong>
									</div>


								</div>

								<br>

								<div align="left">

									<h1>Dati per la spedizione:</h1>
									<h2 id="hDeliveryData" style="color: green;"></h2>
									<h1>
										Spedizione :
										<h2 id="hDeliveryOption" style="color: green;"></h2>
									</h1>
									<h1>
										Modalità di pagamento:
										<h1 id="hPaymentMethod"></h1>
									</h1>

								</div>

								<div class="col-sm-4 col-sm-offset-8">

									<table class="table table-bordered">
										<tbody>
											<tr>
												<td class="text-center"><strong>Parziale: </strong></td>
												<td class="text-right" id="parziale1"></td>
											</tr>
											<tr>
												<td class="text-center"><strong>TAX (3%): </strong></td>
												<td class="text-right" id="tax1"></td>
											</tr>
											<tr>
												<td class="text-center"><strong>Spedizione: </strong></td>
												<td class="text-right" id="sped"></td>
											</tr>
											<tr>
												<td class="text-center"><strong>Totale: </strong></td>
												<td class="text-right">EUR <span id="totale1"></span></td>
											</tr>
										</tbody>
									</table>

								</div>
								<div class="buttons">
									<div class="alert alert-warning pull-right" id="alert-confirm"
										style="display: none !important;">
										<strong>Completare tutti gli step prima della
											conferma</strong>
									</div>
									<div class="pull-right">
										<button type="button" data-loading-text="Loading..."
											class="btn btn-default" id="button-confirm"
											onclick="salvaAcquisto()">Conferma ordine</button>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>

</body>
</html>
