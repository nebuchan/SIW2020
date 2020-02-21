
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html dir="ltr" lang="en">
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
	<script src="javascript/cart.js" type="text/javascript"></script>
	<script src="javascript/js.cookie.js" type="text/javascript"></script>

	<script src="https://kit.fontawesome.com/efd0a43034.js" crossorigin="anonymous"></script>

</head>

<body class="product col-2 left-col">

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
			<li><a href="index"><i class="fa fa-home"></i></a></li>
			<li><a href="categories">I Nostri Prodotti</a></li>
			<!--  <li><a href="#">I nostri prodotti</a></li>-->
		</ul>
		<div class="row">

			<!-- <div id="column-left" class="col-sm-3 hidden-xs column-left">
				<div class="column-block">
					<div class="column-block">
						<div class="columnblock-title">Categories</div>
						<div class="category_block">
							<ul class="box-category treeview-list treeview">
								<li><a href="#" class="activSub">Desktops</a>
									<ul>
										<li><a href="#">PC</a></li>
										<li><a href="#">MAC</a></li>
									</ul></li>
								<li><a href="#" class="activSub">Laptops &amp;
										Notebooks</a>
									<ul>
										<li><a href="#">Macs</a></li>
										<li><a href="#">Windows</a></li>
									</ul></li>
								<li><a href="#" class="activSub">Components</a>
									<ul>
										<li><a href="#">Mice and Trackballs</a></li>
										<li><a href="#" class="activSub">Monitors</a>
											<ul>
												<li><a href="#">test 1</a></li>
												<li><a href="#">test 2</a></li>
											</ul></li>
										<li><a href="#">Windows</a></li>
									</ul></li>
								<li><a href="#">Tablets</a></li>
								<li><a href="#">Software</a></li>
								<li><a href="#">Phones & PDAs</a></li>
								<li><a href="#">Cameras</a></li>
								<li><a href="#">MP3 Players</a></li>
							</ul>
						</div>
					</div>
					<h3 class="productblock-title">Bestsellers</h3>
					<div class="row bestseller-grid product-grid">
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/2product50x59.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">Clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span><span class="price-tax">Ex
											Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/3product50x59.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">Clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span><span class="price-tax">Ex
											Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/4product50x59.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">Clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span><span class="price-tax">Ex
											Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
					<h3 class="productblock-title">Latest</h3>
					<div class="row latest-grid product-grid">
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/1product50x59.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" />
									</a>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="#" title="lorem ippsum dolor dummy">Clothing</a>
									</h4>
									<p class="price product-price">
										$122.00<span class="price-tax">Ex Tax: $100.00</span>
									</p>
									<div class="rating">
										<span class="fa fa-stack"><i
											class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i
											class="fa fa-star-o fa-stack-2x"></i></span>
									</div>
								</div>
							</div>
						</div>
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"><img src="image/product/2product50x59.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" /></a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="#" title="lorem ippsum dolor dummy">Clothing</a>
									</h4>
									<p class="price product-price">
										$122.00<span class="price-tax">Ex Tax: $100.00</span>
									</p>
									<div class="rating">
										<span class="fa fa-stack"><i
											class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i
											class="fa fa-star-o fa-stack-2x"></i></span>
									</div>
								</div>
							</div>
						</div>
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"><img src="image/product/3product50x59.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" /></a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="#" title="lorem ippsum dolor dummy">Clothing</a>
									</h4>
									<p class="price product-price">
										$122.00<span class="price-tax">Ex Tax: $100.00</span>
									</p>
									<div class="rating">
										<span class="fa fa-stack"><i
											class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i
											class="fa fa-star-o fa-stack-2x"></i></span>
									</div>
								</div>
							</div>
						</div>
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"><img src="image/product/2product50x59.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" /></a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="#" title="lorem ippsum dolor dummy">Clothing</a>
									</h4>
									<p class="price product-price">
										$122.00<span class="price-tax">Ex Tax: $100.00</span>
									</p>
									<div class="rating">
										<span class="fa fa-stack"><i
											class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i
											class="fa fa-star-o fa-stack-2x"></i></span> <span
											class="fa fa-stack"><i
											class="fa fa-star-o fa-stack-2x"></i></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<h3 class="productblock-title">Specials</h3>
					<div class="row special-grid product-grid">
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"><img src="image/product/5product50x59.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" /></a>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="#" title="lorem ippsum dolor dummy">Clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-tax">Ex
											Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"><img src="image/product/6product50x59.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" /></a>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="#" title="lorem ippsum dolor dummy">Clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-tax">Ex
											Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"><img src="image/product/7product50x59.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" /></a>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="#" title="lorem ippsum dolor dummy">Clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-tax">Ex
											Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div
							class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"><img src="image/product/6product50x59.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" /></a>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="#" title="lorem ippsum dolor dummy">Clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-tax">Ex
											Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>-->
			<div id="content" class="col-sm-9" style="margin-left: 100px">
				<div class="row">
					<div class="col-sm-6">
						<div class="thumbnails">
							<div>
								<a class="thumbnail" href="${immagine}">
									<img
									src="${immagine}"
									alt="${nomeProdotto}" id="img_dim2"/></a>
							</div>
							<div id="product-thumbnail" class="owl-carousel">
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail  " href="${immagine}"
											title="lorem ippsum dolor dummy"> <img
											src="${immagine}"
											title="lorem ippsum dolor dummy"
											alt="lorem ippsum dolor dummy" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail  " href="image/product/product2.jpg"
											title="lorem ippsum dolor dummy"> <img
											src="image/product/pro-2-220x294.jpg"
											title="lorem ippsum dolor dummy"
											alt="lorem ippsum dolor dummy" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail  " href="image/product/product3.jpg"
											title="lorem ippsum dolor dummy"> <img
											src="image/product/pro-3-220x294.jpg"
											title="lorem ippsum dolor dummy"
											alt="lorem ippsum dolor dummy" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail  " href="image/product/product4.jpg"
											title="lorem ippsum dolor dummy"> <img
											src="image/product/pro-4-220x294.jpg"
											title="lorem ippsum dolor dummy"
											alt="lorem ippsum dolor dummy" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail  " href="image/product/product5.jpg"
											title="lorem ippsum dolor dummy"> <img
											src="image/product/pro-5-220x294.jpg"
											title="lorem ippsum dolor dummy"
											alt="lorem ippsum dolor dummy" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail  " href="image/product/product6.jpg"
											title="lorem ippsum dolor dummy"> <img
											src="image/product/pro-6-220x294.jpg"
											title="lorem ippsum dolor dummy"
											alt="lorem ippsum dolor dummy" /></a>
									</div>
								</div>
								<div class="item">
									<div class="image-additional">
										<a class="thumbnail  " href="image/product/product7.jpg"
											title="lorem ippsum dolor dummy"> <img
											src="image/product/pro-7-220x294.jpg"
											title="lorem ippsum dolor dummy"
											alt="lorem ippsum dolor dummy" /></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<input type="hidden" id="productCategory"
							value="${categoriaProdotto}">
						<h1 class="productpage-title" id="productName">${nomeProdotto}</h1>
						<ul class="list-unstyled productinfo-details-top">
							<li>
								<h2>
									&#8364; <span id="productPrice">${prezzoProdotto}</span> <span>/kg</span>
								</h2>
							</li>
						</ul>
						<hr>
						<ul class="list-unstyled product_info">
							<li><label>Azienda: </label> <span id="company">
										${nomeAziendaProdotto}</span></li>
										
							<li><label>Codice Prodotto:</label><span id="idProduct">
										${idProdotto}</span></li>

							<li><label>Quantità Minima Da Acquistare: </label> <span><strong
									id="sQMin"> ${quantitaMinimaProdotto}</strong></span><span>kg</span></li>

							<li><c:choose>
								<c:when test="${quantitaProdotto > 0 }">
									<label>Quantità disponibile: </label>
									<span><strong id="sQMax">${quantitaProdotto}</strong></span>
									<br>
									<h1 style="color: green;">DISPONIBILE</h1>
								</c:when>
								<c:otherwise>
									<h1 style="color: red;">NON DISPONIBILE</h1>
								</c:otherwise>
							</c:choose></li>
						</ul>
						<hr>
						<p class="product-desc">${descrizioneProdotto}</p>
						<c:if test="${utente == null }">
							<span><strong style="color: red;">Devi aver
									effettuato l'accesso al sito per poter acquistare prodotti</strong></span>
						</c:if>
						<c:if test="${utente != null }">
							<div id="product">
								<div class="form-group">
									<label class="control-label qty-label" for="input-quantity">Quantità</label>
									<input type="text" name="quantity" size="2" id="input-quantity"
										class="form-control productpage-qty" /> <span>/kg</span>
									<div class="btn-group">
										<button type="button" id="button-cart"
											data-loading-text="Loading..."
											class="btn btn-primary btn-lg btn-block addtocart"
											onclick="addToCart()">Aggiungi al carrello</button>
									</div>
									<br>
									<div class="alert alert-success"
										id="alert_conferma_inserimento"
										style="display: none !important; border-left: 25px;">
										<strong>Prodotto inserito nel carrello</strong>
									</div>
									<div class="alert alert-warning" id="alert_quantita_max"
										style="display: none !important; border-left: 25px;">
										<strong>La quantità selezionata supera quella
											disponibile</strong>
									</div>
									<div class="alert alert-warning" id="alert_quantita_min"
										style="display: none !important; border-left: 25px;">
										<strong>La quantità selezionata non raggiunge la
											quantità minima per questo prodotto</strong>
									</div>

									<div class="alert alert-warning" id="alert_gia_inserito"
										style="display: none !important; border-left: 25px;">
										<strong>Prodotto già inserito nel carrello</strong>
									</div>
								</div>
							</div>
						</c:if>
					</div>
				</div>
				<h3 class="productblock-title">Prodotti Correlati</h3>
				<div class="box">
					<div id="related-slidertab" class="row owl-carousel product-slider">
						<div class="item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/pro-1-220x294.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">women's
											clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-old">$272.00</span>
										<span class="price-tax">Ex Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/pro-2-220x294.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">women's
											clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-old">$272.00</span>
										<span class="price-tax">Ex Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/pro-3-220x294.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">women's
											clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-old">$272.00</span>
										<span class="price-tax">Ex Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/pro-4-220x294.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">women's
											clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-old">$272.00</span>
										<span class="price-tax">Ex Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/pro-5-220x294.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">women's
											clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-old">$272.00</span>
										<span class="price-tax">Ex Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/pro-6-220x294.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">women's
											clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-old">$272.00</span>
										<span class="price-tax">Ex Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/pro-7-220x294.jpg"
										alt="women's clothing" title="women's clothing"
										class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add to
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="women's clothing">women's
											clothing</a>
									</h4>
									<p class="price product-price">
										<span class="price-new">$254.00</span> <span class="price-old">$272.00</span>
										<span class="price-tax">Ex Tax: $210.00</span>
									</p>
								</div>
								<div class="button-group">
									<button type="button" class="wishlist" data-toggle="tooltip"
										title="Add to Wish List">
										<i class="fa fa-heart-o"></i>
									</button>
									<button type="button" class="addtocart-btn">Add to
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
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

