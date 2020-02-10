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
	<link rel="stylesheet" href="search-box/css/searchstyle.css" media="screen">
	
	<script src="javascript/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="javascript/jstree.min.js"></script>
	<script type="text/javascript" src="javascript/template.js"></script>
	<script src="javascript/common.js" type="text/javascript"></script>
	<script src="javascript/global.js" type="text/javascript"></script>
	<script src="owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
	<script src="javascript/checkout.js" type="text/javascript"></script>

	<script src="https://kit.fontawesome.com/efd0a43034.js" crossorigin="anonymous"></script>

</head>

<body class="checkout col-2 left-col">

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
												placeholder="Nome" value="" name="nome">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-cognome" class="col-sm-2 control-label">Cognome:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-cognome"
												placeholder="Cognome" value="" name="cognome">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-regione" class="col-sm-2 control-label">Regione:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-regione"
												placeholder="Regione" value="" name="regione">
										</div>

									</div>
									<div class="form-group required">
										<label for="input-provincia" class="col-sm-2 control-label">Provincia:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-provincia"
												placeholder="Provincia" value="" name="provincia">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-citta" class="col-sm-2 control-label">Città:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-citta"
												placeholder="Città" value="" name="citta">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-via" class="col-sm-2 control-label">Via:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-via"
												placeholder="Via" value="" name="via">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-cap" class="col-sm-2 control-label">CAP:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-cap"
												placeholder="CAP" value="" name="cap">
										</div>
									</div>
									<div class="form-group required">
										<label for="input-telefono" class="col-sm-2 control-label">Telefono:
										</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="input-telefono"
												placeholder="Telefono" value="" name="telefono">
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
								<p><strong>Inserire dati della carta</strong></p>

								<!--  <div class="radio">
									<label> <input type="radio" name="payment_method"
										value="cardPayment" onchange="showCardDiv()">
										Pagamento con carta
									</label> <label> <input type="radio" name="payment_method"
										value="cashOnDelivery"> Pagamento alla consegna
									</label>

								</div>-->

								<div id="divCardPayment">
									<form id="formCardData">
										<div class="form-group required">
											<label for="input-titolare">Titolare:</label> <input
												type="text" id="input-titolare" value="" name="titolare">
										</div>
										<div class="form-group required">
											<label for="input-dataScadenza">Scadenza:</label> <input
												type="date" id="input-dataScadenza" value=""
												name="dataScadenza">
										</div>
										<div class="form-group required">
											<label for="input-numeroCarta">Numero carta:</label> <input
												type="text" id="input-numeroCarta" value=""
												name="numeroCarta">
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
												<td class="text-center">Quantità</td>
												<td class="text-center">Prezzo(/kg)</td>
												<td class="text-center">Totale</td>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
								</div>
								<br>
								<div id="column-left">
									<h1>Dati per la spedizione:</h1>
									<h2 id="hDeliveryData" style="color: green;"></h2>
									<h1>
										Spedizione :
										<h2 id="hDeliveryOption" style="color: green;"></h2>
									</h1>
									<h1>
										Modalità di pagamento:
										<h1 id="paymentMethod"></h1>
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
									<div class="pull-right">
										<button type="button" data-loading-text="Loading..."
											class="btn btn-default" id="button-confirm" onclick="">Conferma
											ordine</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="container">
			<div class="row">
				<div class="footer-top-cms">
					<div class="col-sm-7">
						<div class="newslatter">
							<form>
								<h5>Newsletter</h5>
								<div class="input-group">
									<input type="text" class=" form-control"
										placeholder="Email Here......">
									<button type="submit" value="Sign up"
										class="btn btn-large btn-primary">Subscribe</button>
								</div>
							</form>
						</div>
					</div>
					<div class="col-sm-5">
						<div class="footer-social">
							<h5>Social</h5>
							<ul>
								<li class="facebook"><a href="#"><i
										class="fa fa-facebook"></i></a></li>
								<li class="linkedin"><a href="#"><i
										class="fa fa-linkedin"></i></a></li>
								<li class="twitter"><a href="#"><i
										class="fa fa-twitter"></i></a></li>
								<li class="gplus"><a href="#"><i
										class="fa fa-google-plus"></i></a></li>
								<li class="youtube"><a href="#"><i
										class="fa fa-youtube-play"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3 footer-block">
					<h5 class="footer-title">Information</h5>
					<ul class="list-unstyled ul-wrapper">
						<li><a href="about-us.html">About Us</a></li>
						<li><a href="checkout.html">Delivery Information</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms &amp; Conditions</a></li>
					</ul>
				</div>
				<div class="col-sm-3 footer-block">
					<h5 class="footer-title">Customer Service</h5>
					<ul class="list-unstyled ul-wrapper">
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Site Map</a></li>
						<li><a href="#">Wish List</a></li>
					</ul>
				</div>
				<div class="col-sm-3 footer-block">
					<h5 class="footer-title">Extras</h5>
					<ul class="list-unstyled ul-wrapper">
						<li><a href="#">Brands</a></li>
						<li><a href="gift.html">Gift Vouchers</a></li>
						<li><a href="affiliate.html">Affiliates</a></li>
						<li><a href="#">Specials</a></li>
					</ul>
				</div>
				<div class="col-sm-3 footer-block">
					<div class="content_footercms_right">
						<div class="footer-contact">
							<h5 class="contact-title footer-title">Contact Us</h5>
							<ul class="ul-wrapper">
								<li><i class="fa fa-map-marker"></i><span class="location2">
										Warehouse and Offices,<br> 12345 Street name, California<br>
										USA
								</span></li>
								<li><i class="fa fa-envelope"></i><span class="mail2"><a
										href="#">info@localhost.com</a></span></li>
								<li><i class="fa fa-mobile"></i><span class="phone2">+91
										0987-654-321</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a id="scrollup">Scroll</a>
	</footer>
	<div class="footer-bottom">
		<div class="container">
			<div class="copyright">
				Powered By<a class="yourstore" href="http://www.lionode.com/">lionode
					&copy; 2016 </a>
			</div>
			<div class="footer-bottom-cms">
				<div class="footer-payment">
					<ul>
						<li class="mastero"><a href="#"><img alt=""
								src="image/payment/mastero.jpg"></a></li>
						<li class="visa"><a href="#"><img alt=""
								src="image/payment/visa.jpg"></a></li>
						<li class="currus"><a href="#"><img alt=""
								src="image/payment/currus.jpg"></a></li>
						<li class="discover"><a href="#"><img alt=""
								src="image/payment/discover.jpg"></a></li>
						<li class="bank"><a href="#"><img alt=""
								src="image/payment/bank.jpg"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
