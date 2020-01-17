﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Grow Healthy</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="E-commerce prodotti agricoli" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen" />
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link href="css/stylesheet.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link href="css/loginForm.css" rel="stylesheet">
<link href="owl-carousel/owl.carousel.css" type="text/css"
	rel="stylesheet" media="screen" />
<link href="owl-carousel/owl.transitions.css" type="text/css"
	rel="stylesheet" media="screen" />



<!-- SCRIPT  -->
<script src="javascript/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="javascript/jstree.min.js" type="text/javascript"></script>
<script src="javascript/template.js" type="text/javascript"></script>
<script src="javascript/common.js" type="text/javascript"></script>
<script src="javascript/global.js" type="text/javascript"></script>
<script src="owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src="javascript/parally.js"></script>

<script>
	$('.parallax').parally({
		offset : -40
	});
</script>

</head>
<body>
<header>
<%@ include file="header.jsp" %>  
</header>
	<div class="preloader loader"
		style="display: block; background: #f2f2f2;">
		<img src="image/loader.gif" alt="#" />
	</div>
	<nav id="menu" class="navbar">
	<%@ include file="menu.jsp" %>  
	</nav>
	<div class="mainbanner">
		<div id="main-banner" class="owl-carousel home-slider">
			<div class="item">
				<a href="#"><img src="image/banners/Main-Banner1.jpg"
					alt="main-banner1" class="img-responsive" /></a>
			</div>
			<div class="item">
				<a href="#"><img src="image/banners/Main-Banner2.jpg"
					alt="main-banner2" class="img-responsive" /></a>
			</div>
			<div class="item">
				<a href="#"><img src="image/banners/Main-Banner3.jpg"
					alt="main-banner3" class="img-responsive" /></a>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">

			<div class="cms_banner ">
				<div class="col-md-4 cms-banner-left">
					<a href="#"><img alt="#" src="image/banners/subbanner1.jpg"></a>
				</div>
				<div class="col-md-4 cms-banner-middle-top">
					<div class="md1">
						<a href="#"> <img alt="#" src="image/banners/subbanner2.jpg"></a>
					</div>
					<div class="md2">
						<a href="#"> <img alt="#" src="image/banners/subbanner2-1.jpg"></a>
					</div>
				</div>
				<div class="col-md-4 cms-banner-right">
					<a href="#"><img alt="#" src="image/banners/subbanner3.jpg"></a>
				</div>
			</div>
		</div>
		<div class="row">
			<div id="content" class="col-sm-12">
				<div class="customtab">
					<div id="tabs" class="customtab-wrapper">
						<ul class='customtab-inner'>
							<li class='tab'><a href="#tab-latest">Latest Product</a></li>
							<li class='tab'><a href="#tab-special">Special Product</a></li>
							<li class='tab'><a href="#tab-bestseller">Bestseller
									Items</a></li>
						</ul>
					</div>
					<div id="tab-latest" class="tab-content">
						<div class="box">
							<div id="latest-slidertab"
								class="row owl-carousel product-slider">
								<div class="item">
									<div class="product-thumb transition">
										<div class="image product-imageblock">
											<a href="product.html"><img
												src="image/product/product1.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="#" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												$122.00<span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span>
											</div>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"><img
												src="image/product/product2.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="#" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												$122.00<span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span>
											</div>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"><img
												src="image/product/product3.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="#" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												$122.00<span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span>
											</div>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"><img
												src="image/product/product4.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="#" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												$122.00<span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span>
											</div>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"><img
												src="image/product/product5.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="#" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												$122.00<span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span>
											</div>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"><img
												src="image/product/product6.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="#" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												$122.00<span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<div class="rating">
												<span class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star fa-stack-2x"></i><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-2x"></i></span>
											</div>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
					<!-- tab-latest-->
					<div id="tab-special" class="tab-content">
						<div class="box">
							<div id="special-slidertab"
								class="row owl-carousel product-slider">
								<div class="item">
									<div class="product-thumb transition">
										<div class="image product-imageblock">
											<a href="product.html"> <img
												src="image/product/product4.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"> <img
												src="image/product/product5.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"> <img
												src="image/product/product5.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"> <img
												src="image/product/product6.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"> <img
												src="image/product/product7.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="#"> <img src="image/product/product6.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
					<!-- tab-special-->
					<div id="tab-bestseller" class="tab-content">
						<div class="box">
							<div id="bestseller-slidertab"
								class="row owl-carousel product-slider">
								<div class="item">
									<div class="product-thumb transition">
										<div class="image product-imageblock">
											<a href="#"> <img src="image/product/product7.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"> <img
												src="image/product/product8.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"> <img
												src="image/product/product1.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"> <img
												src="image/product/product2.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
											<a href="product.html"> <img
												src="image/product/product3.jpg"
												alt="lorem ippsum dolor dummy"
												title="lorem ippsum dolor dummy" class="img-responsive" />
											</a>
											<div class="button-group">
												<button type="button" class="wishlist" data-toggle="tooltip"
													title="Add to Wish List">
													<i class="fa fa-heart-o"></i>
												</button>
												<button type="button" class="addtocart-btn">Add To
													Cart</button>
												<button type="button" class="compare" data-toggle="tooltip"
													title="Compare this Product">
													<i class="fa fa-exchange"></i>
												</button>
											</div>
										</div>
										<div class="caption product-detail">
											<h4 class="product-name">
												<a href="product.html" title="lorem ippsum dolor dummy">lorem
													ippsum dolor dummy</a>
											</h4>
											<p class="price product-price">
												<span class="price-new">$254.00</span> <span
													class="price-old">$272.00</span> <span class="price-tax">Ex
													Tax: $210.00</span>
											</p>
										</div>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
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
					<h3 class="productblock-title">Weekly Top Products</h3>
					<div class="box">
						<div id="Weekly-slider" class="row owl-carousel product-slider">
							<div class="item product-slider-item">
								<div class="product-thumb transition">
									<div class="image product-imageblock">
										<a href="product.html"> <img
											src="image/product/product4.jpg"
											alt="lorem ippsum dolor dummy"
											title="lorem ippsum dolor dummy" class="img-responsive" />
										</a>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
												Cart</button>
											<button type="button" class="compare" data-toggle="tooltip"
												title="Compare this Product">
												<i class="fa fa-exchange"></i>
											</button>
										</div>
									</div>
									<div class="caption product-detail">
										<h4 class="product-name">
											<a href="product.html" title="lorem ippsum dolor dummy">lorem
												ippsum dolor dummy</a>
										</h4>
										<p class="price product-price">
											<span class="price-new">$254.00</span> <span
												class="price-old">$272.00</span> <span class="price-tax">Ex
												Tax: $210.00</span>
										</p>
									</div>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="item product-slider-item">
								<div class="product-thumb transition">
									<div class="image product-imageblock">
										<a href="product.html"> <img
											src="image/product/product5.jpg"
											alt="lorem ippsum dolor dummy"
											title="lorem ippsum dolor dummy" class="img-responsive" />
										</a>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
												Cart</button>
											<button type="button" class="compare" data-toggle="tooltip"
												title="Compare this Product">
												<i class="fa fa-exchange"></i>
											</button>
										</div>
									</div>
									<div class="caption product-detail">
										<h4 class="product-name">
											<a href="product.html" title="lorem ippsum dolor dummy">lorem
												ippsum dolor dummy</a>
										</h4>
										<p class="price product-price">
											<span class="price-new">$254.00</span> <span
												class="price-old">$272.00</span> <span class="price-tax">Ex
												Tax: $210.00</span>
										</p>
									</div>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="item product-slider-item">
								<div class="product-thumb transition">
									<div class="image product-imageblock">
										<a href="product.html"> <img
											src="image/product/product6.jpg"
											alt="lorem ippsum dolor dummy"
											title="lorem ippsum dolor dummy" class="img-responsive" />
										</a>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
												Cart</button>
											<button type="button" class="compare" data-toggle="tooltip"
												title="Compare this Product">
												<i class="fa fa-exchange"></i>
											</button>
										</div>
									</div>
									<div class="caption product-detail">
										<h4 class="product-name">
											<a href="product.html" title="lorem ippsum dolor dummy">lorem
												ippsum dolor dummy</a>
										</h4>
										<p class="price product-price">
											<span class="price-new">$254.00</span> <span
												class="price-old">$272.00</span> <span class="price-tax">Ex
												Tax: $210.00</span>
										</p>
									</div>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="item product-slider-item">
								<div class="product-thumb transition">
									<div class="image product-imageblock">
										<a href="#"> <img src="image/product/product7.jpg"
											alt="lorem ippsum dolor dummy"
											title="lorem ippsum dolor dummy" class="img-responsive" />
										</a>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
												Cart</button>
											<button type="button" class="compare" data-toggle="tooltip"
												title="Compare this Product">
												<i class="fa fa-exchange"></i>
											</button>
										</div>
									</div>
									<div class="caption product-detail">
										<h4 class="product-name">
											<a href="product.html" title="lorem ippsum dolor dummy">lorem
												ippsum dolor dummy</a>
										</h4>
										<p class="price product-price">
											<span class="price-new">$254.00</span> <span
												class="price-old">$272.00</span> <span class="price-tax">Ex
												Tax: $210.00</span>
										</p>
									</div>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="item product-slider-item">
								<div class="product-thumb transition">
									<div class="image product-imageblock">
										<a href="#"> <img src="image/product/product8.jpg"
											alt="lorem ippsum dolor dummy"
											title="lorem ippsum dolor dummy" class="img-responsive" />
										</a>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
												Cart</button>
											<button type="button" class="compare" data-toggle="tooltip"
												title="Compare this Product">
												<i class="fa fa-exchange"></i>
											</button>
										</div>
									</div>
									<div class="caption product-detail">
										<h4 class="product-name">
											<a href="product.html" title="lorem ippsum dolor dummy">lorem
												ippsum dolor dummy</a>
										</h4>
										<p class="price product-price">
											<span class="price-new">$254.00</span> <span
												class="price-old">$272.00</span> <span class="price-tax">Ex
												Tax: $210.00</span>
										</p>
									</div>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="item product-slider-item">
								<div class="product-thumb transition">
									<div class="image product-imageblock">
										<a href="#"> <img src="image/product/product1.jpg"
											alt="lorem ippsum dolor dummy"
											title="lorem ippsum dolor dummy" class="img-responsive" />
										</a>
										<div class="button-group">
											<button type="button" class="wishlist" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="fa fa-heart-o"></i>
											</button>
											<button type="button" class="addtocart-btn">Add To
												Cart</button>
											<button type="button" class="compare" data-toggle="tooltip"
												title="Compare this Product">
												<i class="fa fa-exchange"></i>
											</button>
										</div>
									</div>
									<div class="caption product-detail">
										<h4 class="product-name">
											<a href="product.html" title="lorem ippsum dolor dummy">lorem
												ippsum dolor dummy</a>
										</h4>
										<p class="price product-price">
											<span class="price-new">$254.00</span> <span
												class="price-old">$272.00</span> <span class="price-tax">Ex
												Tax: $210.00</span>
										</p>
									</div>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
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
				<div class="parallax">
					<ul id="testimonial" class="row owl-carousel product-slider">
						<li class="item">
							<div class="panel-default">
								<div class="testimonial-desc">Rem ipsum doLorem ipsum ut
									Rem ipsum doLorem ipsum ut labore et dolore malabore et dolore
									maipsum doLorem ipsum ut labore et dolore magna.Lorem ipsum
									doLorem ipsum dolor sit amet, consectetur adipisicing</div>
								<div class="testimonial-image">
									<img src="image/t1.jpg" alt="#">
								</div>
								<div class="testimonial-name">
									<h2>Nunc rutrum scel potent</h2>
								</div>
								<div class="testimonial-designation">
									<p>Web Designer</p>
								</div>

							</div>
						</li>
						<li class="item">
							<div class="panel-default">
								<div class="testimonial-desc">Rem ipsum doLoremRem ipsum
									doLorem ipsum ut labore et dolore ma ipsum ut labore et dolore
									Rem ipsum doLorem ipsum ut labore et dolore mamagna.Lorem ipsum
									doLorem ipsum dolor sit amet, consectetur adipisicing</div>
								<div class="testimonial-image">
									<img src="image/t2.jpg" alt="#">
								</div>
								<div class="testimonial-name">
									<h2>Nunc rutrum scel potent</h2>
								</div>
								<div class="testimonial-designation">
									<p>Web Deweloper</p>
								</div>

							</div>
						</li>
						<li class="item">
							<div class="panel-default">
								<div class="testimonial-desc">RemRem ipsum doLorem ipsum
									ut labore et dolore ma ipsum doLorem ipsum ut labore et dolore
									magna.Rem ipsum doLorem ipsum ut labore et dolore maLorem ipsum
									doLorem ipsum dolor sit amet, consectetur adipisicing</div>
								<div class="testimonial-image">
									<img src="image/t3.jpg" alt="#">
								</div>
								<div class="testimonial-name">
									<h2>Nunc rutrum scel potent</h2>
								</div>
								<div class="testimonial-designation">
									<p>Web Designer</p>
								</div>

							</div>
						</li>
						<li class="item">
							<div class="panel-default">
								<div class="testimonial-desc">Rem ipsum doLorem Rem ipsum
									doLorem ipsum ut labore et dolore maipsum ut Rem ipsum doLorem
									ipsum ut labore et dolore ma labore et dolore magna.Lorem ipsum
									doLorem ipsum dolor sit amet, consectetur adipisicing</div>
								<div class="testimonial-image">
									<img src="image/t4.jpg" alt="#">
								</div>
								<div class="testimonial-name">
									<h2>Nunc rutrum scel potent</h2>
								</div>
								<div class="testimonial-designation">
									<p>Web Deweloper</p>
								</div>

							</div>
						</li>
					</ul>
				</div>
				<div class="row">
					<div class="cms_banner">
						<div class="col-md-4 cms-banner-left">
							<a href="#"><img alt="#" src="image/banners/subbanner5.jpg"></a>
						</div>
						<div class="col-md-4 cms-banner-middle">
							<a href="#"><img alt="#" src="image/banners/subbanner6.jpg"></a>
						</div>
						<div class="col-md-4 cms-banner-right">
							<a href="#"><img alt="#" src="image/banners/subbanner7.jpg"></a>
						</div>
					</div>
				</div>
				<div id="subbanner4" class="banner">
					<div class="item">
						<a href="#"><img src="image/banners/subbanner4.jpg"
							alt="Sub Banner4" class="img-responsive" /></a>
					</div>
				</div>
				<h3 class="productblock-title">Featured Products</h3>
				<div class="box">
					<div id="feature-slider" class="row owl-carousel product-slider">
						<div class="item product-slider-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="product.html"> <img
										src="image/product/product4.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="lorem ippsum dolor dummy">lorem
											ippsum dolor dummy</a>
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
									<button type="button" class="addtocart-btn">Add To
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item product-slider-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="product.html"> <img
										src="image/product/product5.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="lorem ippsum dolor dummy">lorem
											ippsum dolor dummy</a>
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
									<button type="button" class="addtocart-btn">Add To
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item product-slider-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="product.html"> <img
										src="image/product/product6.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="lorem ippsum dolor dummy">lorem
											ippsum dolor dummy</a>
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
									<button type="button" class="addtocart-btn">Add To
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item product-slider-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/product7.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="lorem ippsum dolor dummy">lorem
											ippsum dolor dummy</a>
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
									<button type="button" class="addtocart-btn">Add To
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item product-slider-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/product8.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="lorem ippsum dolor dummy">lorem
											ippsum dolor dummy</a>
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
									<button type="button" class="addtocart-btn">Add To
										Cart</button>
									<button type="button" class="compare" data-toggle="tooltip"
										title="Compare this Product">
										<i class="fa fa-exchange"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="item product-slider-item">
							<div class="product-thumb transition">
								<div class="image product-imageblock">
									<a href="#"> <img src="image/product/product1.jpg"
										alt="lorem ippsum dolor dummy"
										title="lorem ippsum dolor dummy" class="img-responsive" />
									</a>
									<div class="button-group">
										<button type="button" class="wishlist" data-toggle="tooltip"
											title="Add to Wish List">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="addtocart-btn">Add To
											Cart</button>
										<button type="button" class="compare" data-toggle="tooltip"
											title="Compare this Product">
											<i class="fa fa-exchange"></i>
										</button>
									</div>
								</div>
								<div class="caption product-detail">
									<h4 class="product-name">
										<a href="product.html" title="lorem ippsum dolor dummy">lorem
											ippsum dolor dummy</a>
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
									<button type="button" class="addtocart-btn">Add To
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
				<div class="blog">
					<div class="blog-heading">
						<h3>Latest Blogs</h3>
					</div>
					<div class="blog-inner box">
						<ul class="list-unstyled blog-wrapper" id="latest-blog">
							<li class="item blog-slider-item">
								<div class="panel-default">
									<div class="blog-image">
										<a href="#" class="blog-imagelink"><img
											src="image/blog/blog_1.jpg" alt="#"></a> <span
											class="blog-hover"></span> <span class="blog-date">06/07/2015</span>
										<span class="blog-readmore-outer"><a href="#"
											class="blog-readmore">Read More</a></span>
									</div>
									<div class="blog-content">
										<a href="#" class="blog-name">
											<h2>Nunc rutrum scel potent</h2>
										</a>
										<div class="blog-desc">Rem ipsum doLorem ipsum ut labore
											et dolore magna.Lorem ipsum doLorem ipsum dolor sit amet,
											consectetur adipisicing...</div>
										<a href="#" class="blog-readmore">Read More</a> <span
											class="blog-date">06/07/2015</span>
									</div>
								</div>
							</li>
							<li class="item blog-slider-item">
								<div class="panel-default">
									<div class="blog-image">
										<a href="#" class="blog-imagelink"><img
											src="image/blog/blog_2.jpg" alt="#"></a> <span
											class="blog-hover"></span> <span class="blog-date">06/07/2015</span>
										<span class="blog-readmore-outer"><a href="#"
											class="blog-readmore">Read More</a></span>
									</div>
									<div class="blog-content">
										<a href="#" class="blog-name">
											<h2>Nunc rutrum scel potent</h2>
										</a>
										<div class="blog-desc">Rem ipsum doLorem ipsum ut labore
											et dolore magna.Lorem ipsum doLorem ipsum dolor sit amet,
											consectetur adipisicing...</div>
										<a href="singale-blog.html" class="blog-readmore">Read
											More</a> <span class="blog-date">06/07/2015</span>
									</div>
								</div>
							</li>
							<li class="item blog-slider-item">
								<div class="panel-default">
									<div class="blog-image">
										<a href="#" class="blog-imagelink"><img
											src="image/blog/blog_3.jpg" alt="#"></a> <span
											class="blog-hover"></span> <span class="blog-date">06/07/2015</span>
										<span class="blog-readmore-outer"><a
											href="singale-blog.html" class="blog-readmore">Read More</a></span>
									</div>
									<div class="blog-content">
										<a href="#" class="blog-name">
											<h2>Nunc rutrum scel potent</h2>
										</a>
										<div class="blog-desc">Rem ipsum doLorem ipsum ut labore
											et dolore magna.Lorem ipsum doLorem ipsum dolor sit amet,
											consectetur adipisicing...</div>
										<a href="singale-blog.html" class="blog-readmore">Read
											More</a> <span class="blog-date">06/07/2015</span>
									</div>
								</div>
							</li>
							<li class="item blog-slider-item">
								<div class="panel-default">
									<div class="blog-image">
										<a href="#" class="blog-imagelink"><img
											src="image/blog/blog_4.jpg" alt="#"></a> <span
											class="blog-hover"></span> <span class="blog-date">06/07/2015</span>
										<span class="blog-readmore-outer"><a href="#"
											class="blog-readmore">Read More</a></span>
									</div>
									<div class="blog-content">
										<a href="#" class="blog-name">
											<h2>Nunc rutrum scel potent</h2>
										</a>
										<div class="blog-desc">Rem ipsum doLorem ipsum ut labore
											et dolore magna.Lorem ipsum doLorem ipsum dolor sit amet,
											consectetur adipisicing...</div>
										<a href="#" class="blog-readmore">Read More</a> <span
											class="blog-date">06/07/2015</span>
									</div>
								</div>
							</li>
							<li class="item blog-slider-item">
								<div class="panel-default">
									<div class="blog-image">
										<a href="#" class="blog-imagelink"><img
											src="image/blog/blog_5.jpg" alt="#"></a> <span
											class="blog-hover"></span> <span class="blog-date">06/07/2015</span>
										<span class="blog-readmore-outer"><a href="#"
											class="blog-readmore">Read More</a></span>
									</div>
									<div class="blog-content">
										<a href="#" class="blog-name">
											<h2>Nunc rutrum scel potent</h2>
										</a>
										<div class="blog-desc">Rem ipsum doLorem ipsum ut labore
											et dolore magna.Lorem ipsum doLorem ipsum dolor sit amet,
											consectetur adipisicing...</div>
										<a href="#" class="blog-readmore">Read More</a> <span
											class="blog-date">06/07/2015</span>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div id="brand_carouse" class="owl-carousel brand-logo">
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand1.png" alt="Disney"
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand2.png" alt="Dell"
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand3.png" alt="Harley"
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand4.png" alt="Canon"
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand5.png" alt="Canon"
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand6.png" alt="Canon"
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand7.png" alt="Canon"
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand8.png" alt="Canon"
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand9.png" alt="Canon"
							class="img-responsive" /></a>
					</div>
					<div class="item text-center">
						<a href="#"><img src="image/brand/brand5.png" alt="Canon"
							class="img-responsive" /></a>
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
				Powered By &nbsp;<a class="yourstore" href="http://www.lionode.com/">lionode
					&copy; 2017 </a>
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