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
</head>

<body class="category col-2 left-col">

	<div class="preloader loader"
		style="display: block; background: #f2f2f2;">
		<img src="image/loader.gif" alt="#" />
	</div>

	<header>
		<%@ include file="header.jsp"%>
	</header>

	<nav id="menu" class="navbar">
		<%@ include file="menu.jsp"%>
	</nav>

	<div class="container">

		<ul class="breadcrumb">
			<li><a href="index.jsp"><i class="fa fa-home"></i></a></li>
			<li><a href="categories.jsp">I Nostri Prodotti</a></li>
		</ul>

		<div class="row">

			<div id="column-left" class="col-sm-3 hidden-xs column-left">

				<div class="column-block">
					<div class="columnblock-title">Categorie</div>
					<div class="category_block">
						<ul class="box-category treeview-list treeview">
							<li><a href="#" class="activSub">Ortaggi</a>
								<ul>
									<li><a href="#">PC</a></li>
									<li><a href="#">MAC</a></li>
								</ul></li>
							<li><a href="#" class="activSub">Latticini</a>
								<ul>
									<li><a href="#">Macs</a></li>
									<li><a href="#">Windows</a></li>
								</ul></li>
							<!-- 
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
							 -->

						</ul>
					</div>
				</div>
				<!--  <div class="panel panel-default filter">
					<div class="panel-heading columnblock-title">Refine Search</div>
					<div class="filter-block">
						<div class="list-group">
							<a class="list-group-item">Color</a>
							<div class="list-group-item">
								<div id="filter-group1">
									<label class="checkbox"> <input name="filter[]"
										type="checkbox" value="1" /> Black (7)
									</label> <label class="checkbox"> <input name="filter[]"
										type="checkbox" value="2" /> Blue (6)
									</label> <label class="checkbox"> <input name="filter[]"
										type="checkbox" value="3" /> Red (6)
									</label>
								</div>
							</div>
							<a class="list-group-item">Price</a>
							<div class="list-group-item">
								<div id="filter-group2">
									<label class="checkbox"> <input name="filter[]"
										type="checkbox" value="4" /> $100-$300 (6)
									</label> <label class="checkbox"> <input name="filter[]"
										type="checkbox" value="5" /> $301-$1000 (6)
									</label>
								</div>
							</div>
							<a class="list-group-item">Size</a>
							<div class="list-group-item">
								<div id="filter-group3">
									<label class="checkbox"> <input name="filter[]"
										type="checkbox" value="6" /> Big (3)
									</label> <label class="checkbox"> <input name="filter[]"
										type="checkbox" value="7" /> Medium (3)
									</label> <label class="checkbox"> <input name="filter[]"
										type="checkbox" value="8" /> Small (1)
									</label>
								</div>
							</div>
						</div>
						<div class="panel-footer text-right">
							<button type="button" id="button-filter" class="btn btn-primary">Refine
								Search</button>
						</div>
					</div>
				</div>
				
				
				<div class="banner">
					<div class="item">
						<a href="#"><img src="image/banners/LeftBanner.jpg"
							alt="Left Banner" class="img-responsive" /></a>
					</div>
				</div>
				<h3 class="productblock-title">Specials</h3>
				<div class="row special-grid product-grid">
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
						<div class="product-thumb transition">
							<div class="image product-imageblock">
								<a href="#"><img src="image/product/5product50x59.jpg"
									alt="women's clothing" title="women's clothing"
									class="img-responsive" /></a>
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
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
						<div class="product-thumb transition">
							<div class="image product-imageblock">
								<a href="#"><img src="image/product/1product50x59.jpg"
									alt="women's clothing" title="women's clothing"
									class="img-responsive" /></a>
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
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
						<div class="product-thumb transition">
							<div class="image product-imageblock">
								<a href="#"><img src="image/product/2product50x59.jpg"
									alt="women's clothing" title="women's clothing"
									class="img-responsive" /></a>
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
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
						<div class="product-thumb transition">
							<div class="image product-imageblock">
								<a href="#"><img src="image/product/5product50x59.jpg"
									alt="women's clothing" title="women's clothing"
									class="img-responsive" /></a>
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
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 product-grid-item">
						<div class="product-thumb transition">
							<div class="image product-imageblock">
								<a href="#"><img src="image/product/4product50x59.jpg"
									alt="women's clothing" title="women's clothing"
									class="img-responsive" /></a>
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
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				-->

			</div>
			<div id="content" class="col-sm-9">
				<h2 class="category-title">Desktops</h2>
				<div class="row category-banner">
					<div class="col-sm-12 category-image">
						<img src="image/banners/category-banner.jpg" alt="Desktops"
							title="Desktops" class="img-thumbnail" />
					</div>
					<div class="col-sm-12 category-desc">Lorem ipsum dolomagna
						aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
						laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
						dolor in reprehenderit in voluptate.</div>
				</div>
				<div class="category-page-wrapper">
					<div class="col-md-6 list-grid-wrapper">
						<div class="btn-group btn-list-grid">
							<button type="button" id="list-view" class="btn btn-default list"
								data-toggle="tooltip" title="List">
								<i class="fa fa-th-list"></i>
							</button>
							<button type="button" id="grid-view" class="btn btn-default grid"
								data-toggle="tooltip" title="Grid">
								<i class="fa fa-th"></i>
							</button>
						</div>
						<a href="#" id="compare-total">Product Compare (0)</a>
					</div>
					<div class="col-md-1 text-right page-wrapper">
						<label class="control-label" for="input-limit">Show :</label>
						<div class="limit">
							<select id="input-limit" class="form-control">
								<option value="8" selected="selected">8</option>
								<option value="25">25</option>
								<option value="50">50</option>
								<option value="75">75</option>
								<option value="100">100</option>
							</select>
						</div>
					</div>
					<div class="col-md-2 text-right sort-wrapper">
						<label class="control-label" for="input-sort">Sort By :</label>
						<div class="sort-inner">
							<select id="input-sort" class="form-control">
								<option value="ASC" selected="selected">Default</option>
								<option value="ASC">Name (A - Z)</option>
								<option value="DESC">Name (Z - A)</option>
								<option value="ASC">Price (Low &gt; High)</option>
								<option value="DESC">Price (High &gt; Low)</option>
								<option value="DESC">Rating (Highest)</option>
								<option value="ASC">Rating (Lowest)</option>
								<option value="ASC">Model (A - Z)</option>
								<option value="DESC">Model (Z - A)</option>
							</select>
						</div>
					</div>
				</div>
				<br />
				<div class="grid-list-wrapper">
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-2-220x294.jpg"
									alt="women's clothing stores" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									<span class="price-old">$272.00</span> $122.00 <span
										class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-3-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									<span class="price-old">$272.00</span> $122.00 <span
										class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-4-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									<span class="price-old">$272.00</span> $122.00 <span
										class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-5-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									<span class="price-old">$272.00</span> $122.00 <span
										class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-6-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									<span class="price-old">$272.00</span> $122.00 <span
										class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-7-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									<span class="price-old">$272.00</span> $122.00 <span
										class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-8-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									<span class="price-old">$272.00</span> $122.00 <span
										class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-2-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									<span class="price-old">$272.00</span> $122.00 <span
										class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-4-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									<span class="price-old">$272.00</span> $122.00 <span
										class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-2-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									$122.00 <span class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-3-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									$122.00 <span class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-4-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									$122.00 <span class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-5-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									$122.00 <span class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-6-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									$122.00 <span class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-7-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									$122.00 <span class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="product-layout product-list col-xs-12">
						<div class="product-thumb">
							<div class="image product-imageblock">
								<a href="product.html"> <img
									src="image/product/pro-8-220x294.jpg"
									alt="lorem ippsum dolor dummy" title="lorem ippsum dolor dummy"
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
									<a href="product.html" title="lorem ippsum dolor dummy">
										lorem ippsum dolor dummy </a>
								</h4>
								<p class="product-desc">More room to move. With 80GB or
									160GB of storage and up to 40 hours of battery life, the new
									lorem ippsum dolor dummy lets you enjoy up to 40,000 songs or
									up to 200 hours of video or any combination wherever you go.

									Cover Flow. Browse through your music collection by flipping..</p>
								<p class="price product-price">
									$122.00 <span class="price-tax">Ex Tax: $100.00</span>
								</p>
								<div class="rating">
									<span class="fa fa-stack"><i
										class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
										class="fa fa-star-o fa-stack-2x"></i></span> <span
										class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<span class="fa fa-stack"><i
										class="fa fa-star-o fa-stack-2x"></i></span>
								</div>
							</div>
							<div class="button-group">
								<button type="button" class="wishlist" data-toggle="tooltip"
									title="Add to Wish List">
									<i class="fa fa-heart-o"></i>
								</button>
								<button type="button" class="addtocart-btn">Add to Cart</button>
								<button type="button" class="compare" data-toggle="tooltip"
									title="Compare this Product">
									<i class="fa fa-exchange"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="category-page-wrapper">
					<div class="result-inner">Showing 1 to 8 of 10 (2 Pages)</div>
					<div class="pagination-inner">
						<ul class="pagination">
							<li class="active"><span>1</span></li>
							<li><a href="category.html">2</a></li>
							<li><a href="category.html">&gt;</a></li>
							<li><a href="category.html">&gt;|</a></li>
						</ul>
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
