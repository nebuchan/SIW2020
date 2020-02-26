<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
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
	
	<script src="https://kit.fontawesome.com/efd0a43034.js" crossorigin="anonymous"></script>
	
</head>

<body>
	<!-- PRELOAD GIF IMAGE -->
	<div class="preloader loader"
		style="display: block; background: #f2f2f2;">
		<img src="image/loader.gif" alt="#" />
	</div>
	
	<!-- HEADER -->
	<%@ include file="header.jsp"%>
	
	<!-- NAVBAR MENU -->
	<%@ include file= "navbar.jsp"%>
	
	<!-- MAINBANNER -->
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
	
	<!-- MAIN CONTENT -->
	<div class="container" >
		<div class="row">
			<div id="content" class="col-sm-12">
				<h3 class="productblock-title">Prodotti delle nostre aziende</h3>
				<div class="box">
					<div id="feature-slider" class="row owl-carousel product-slider" style="height: 325px;">
						<c:forEach items="${latestProduct}" var="item">
							<div class="item product-slider-item">
								<div class="product-thumb transition">
									<div class="image product-imageblock">
										<a href="product.html"> <img
											src="${item.getImmagine()}"
											alt=""
											title="lorem ippsum dolor dummy" class="img-responsive"
											style="height: 300px; width: 291px;" />
										</a>
										<div class="button-group">
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
											<a href="product.html" title="lorem ippsum dolor dummy">${item.getNome()}</a>
										</h4>
										<p class="price product-price">
											${item.getPrezzo()}<span class="price-tax"></span>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>			
					</div>
				</div>
				<br>
				<br>
				
				<div class="customtab">
					<div id="tabs" class="customtab-wrapper">
						<ul class='customtab-inner'>
							<li class='tab'><a href="#tab-vegetables">Vegetali</a></li>
							<li class='tab'><a href="#tab-legumes">Legumi</a></li>
							<li class='tab'><a href="#tab-tubers">Tuberi</a></li>
							<li class='tab'><a href="#tab-fruit">Frutta</a></li>
						</ul>
					</div>
					<!-- TAB VEGETABLES -->
					<div id="tab-vegetables" class="tab-content">
						<div class="box">
							<div id="latest-slidertab"
								class="row owl-carousel product-slider" style="height: 350px;">
								<c:forEach items="${vegetablesList}" var="item">
									<div class="item">
										<div class="product-thumb transition">
											<div class="image product-imageblock">
												<a href="product.html"><img
													src="${item.getImmagine()}"
													alt=""
													title="lorem ippsum dolor dummy" class="img-responsive"
													style="height: 300px; width: 291px;" />
												</a>
												<div class="button-group">

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
													<a href="#" title="lorem ippsum dolor dummy">${item.getNome()}</a>
												</h4>
												<p class="price product-price">
													${item.getPrezzo()}<span class="price-tax"></span>
												</p>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<!-- TAB LEGUMES -->
					<div id="tab-legumes" class="tab-content">
						<div class="box">
							<div id="special-slidertab"
								class="row owl-carousel product-slider">
									<c:forEach items="${legumesList}" var="item">
										<div class="item">
											<div class="product-thumb transition">
												<div class="image product-imageblock">
													<a href="product.html"> <img
														src="${item.getImmagine()}"
														alt=""
														title="lorem ippsum dolor dummy" class="img-responsive"
														style="height: 300px; width: 291px;" />
													</a>
													<div class="button-group">
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
														<a href="product.html" title="lorem ippsum dolor dummy">${item.getNome()}</a>
													</h4>
													<p class="price product-price">
														${item.getPrezzo()}<span class="price-tax"></span>
													</p>
												</div>
											</div>
										</div>
									</c:forEach>
							</div>
						</div>
					</div>
					<!-- TAB TUBERS -->
					<div id="tab-tubers" class="tab-content">
						<div class="box">
							<div id="bestseller-slidertab"
								class="row owl-carousel product-slider">
									<c:forEach items="${tubersList}" var="item">
										<div class="item">
											<div class="product-thumb transition">
												<div class="image product-imageblock">
													<a href="product.html"> <img
														src="${item.getImmagine()}"
														alt=""
														title="lorem ippsum dolor dummy" class="img-responsive"
														style="height: 300px; width: 291px;" />
													</a>
													<div class="button-group">
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
														<a href="product.html" title="lorem ippsum dolor dummy">${item.getNome()}</a>
													</h4>
													<p class="price product-price">
														${item.getPrezzo()}<span class="price-tax"></span>
													</p>
												</div>
											</div>
										</div>
									</c:forEach>
							</div>
						</div>
					</div>
					<!-- TAB FRUIT -->
					<div id="tab-fruit" class="tab-content">
						<div class="box">
							<div id="bestsellers-slidertab"
								class="row owl-carousel product-slider">
									<c:forEach items="${fruitList}" var="item">
										<div class="item">
											<div class="product-thumb transition">
												<div class="image product-imageblock">
													<a href="product.html"> <img
														src="${item.getImmagine()}"
														alt=""
														title="lorem ippsum dolor dummy" class="img-responsive"
														style="height: 300px; width: 291px;" />
													</a>
													<div class="button-group">
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
														<a href="product.html" title="lorem ippsum dolor dummy">${item.getNome()}</a>
													</h4>
													<p class="price product-price">
														${item.getPrezzo()}<span class="price-tax"></span>
													</p>
												</div>
											</div>
										</div>
									</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<br>
				<!-- FEED RSS -->
				<div class="blog">
					<div class="blog-heading">
						<h3>Ultime Notizie dal mondo dell'agricoltura</h3>
					</div>
					<div class="blog-inner box">
						<ul class="list-unstyled blog-wrapper" id="latest-blog">
							<c:forEach items="${feeder}" var="item">
								<div class="item blog-slider-item" style="display: inline-block;">
									<div class="panel-default">
										<div class="blog-image">
											<a href="${item.link}" class="blog-imagelink"> <img
												src="${item.image}" alt="#"
												style="width: 400px; height: 266px;">
											</a>
											<span class="blog-hover"></span>
											<span class="blog-date">28/02/2020</span>
											<span class="blog-readmore-outer"><a
												href="${item.link}" target="_blank" class="blog-readmore">Read
													More</a>
											</span>
										</div>
										<div class="blog-content">
											<a href="${item.link}" target="_blank" class="blog-name">
												<h2>${item.title}</h2>
											</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div id="brand_carouse" class="owl-carousel brand-logo">
				    <c:forEach var = "i" begin = "1" end = "9">
				    	<div class="item text-center">
							<a href="#"><img src="image/brand/brand${i}.png"
								class="img-responsive" /></a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>

</body>
</html>