<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Fresh Food</title>
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

</head>
<body class="account-register col-2">
	<div class="preloader loader"
		style="display: block; background: #f2f2f2;">
		<img src="image/loader.gif" alt="#" />
	</div>
	<!--#include virtual="index.html" -->

	<header>
		<%@ include file="header.jsp"%>
	</header>

	<nav id="menu" class="navbar">
		<%@ include file="menu.jsp"%>
	</nav>

	<div class="container">
		<ul class="breadcrumb">
			<li><a href="index.jsp"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Account</a></li>
			<li><a href="userRegistration.jsp">Inserimento Prodotto</a></li>
		</ul>
		<div class="row">
			<div class="col-sm-3 hidden-xs column-left" id="column-left"></div>
			<div class="col-sm-9" id="content">
				<h1>Inserimento Prodotto</h1>
				
				<form class="form-horizontal" method="POST" action="insertproduct" enctype="multipart/form-data">

					<div class="form-group required">
						<label for="input-nome" class="col-sm-2 control-label">Nome</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-nome"
								placeholder="Nome" name="nome">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-categoria" class="col-sm-2 control-label">Categoria</label>
						
						<div class="col-sm-10">
							<select name="categoria">
								<c:forEach items="${categories}" var="category">
									<option value="${category.categoria}">${category.categoria}</option>
							</c:forEach>
							
							</select>
						</div>
					</div>
					<div class="form-group required">
						<label for="input-quantitaMagazzino" class="col-sm-2 control-label">Quantità Magazzino</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-quantitaMagazzino"
								placeholder="Quantita Magazzino" name="quantitaMagazzino">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-quantitaMinima" class="col-sm-2 control-label">Quantità Minima</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-quantitaMinima"
								placeholder="Quantita Minima" name="quantitaMinima">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-descrizione" class="col-sm-2 control-label">Descrizione</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inpur-descrizione"
								placeholder="Descrizone" name="descrizione">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-prezzo" class="col-sm-2 control-label">Prezzo</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="input-prezzo"
								placeholder="Prezzo" name="prezzo">
						</div>
					</div>
					<div class="form-group required">
						<label for="input-immagine" class="col-sm-2 control-label">Immagine Prodotto</label>
						<div class="col-sm-10">
							<input type="file" class="form-control" id="input-immagine" accept="image/jpeg"
								placeholder="Immagine" name="immagine">
						</div>
					</div>
					

					
					</fieldset>
					<div class="buttons">
						<div class="pull-right">
							I have read and agree to the <a class="agree" href="#"><b>Privacy
									Policy</b></a> <input type="checkbox" value="1" name="agree">
							&nbsp;
							<button type="submit" class="btn btn-primary"
								value="InserimentoProdotto">Continue</button>
						</div>
					</div>
				</form>
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
										Warehouse & Offices,<br> 12345 Street name, California<br>
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
