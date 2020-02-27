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

<script src="https://kit.fontawesome.com/efd0a43034.js"
	crossorigin="anonymous"></script>

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
	<%@ include file="navbar.jsp"%>

	<br>
	<div style="border-bottom: 3px solid #000000;">
		<h1
			style="color: green; font-style: oblique; font-size: 35px; font-family: serif; margin-bottom: 45px; margin-top: 25px;"
			align="center">Scopri un nuovo mondo, di alimentazione sana, in
			pieno rispetto dell'ambiente, per un nuovo modo di rispettare noi
			stessi e il mondo che ci circonda.</h1>
	</div>
	<br>

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
	<div class="container">
		<div class="row">
			<div id="content" class="col-sm-12">

				<div
					style="border-bottom: 3px solid #000000; margin-bottom: 30px; margin-top: 15px;">
					<h1
						style="color: green; font-style: oblique; font-size: 35px; font-family: serif; margin-bottom: 25px;"
						align="center">I nostri prodotti sono selezionati
						scrupolosamente, insieme alle aziende affiliate con noi, per
						offrire una vasta scelta di prodotti freschi, coltivati nel pieno
						rispetto dell'ambiente, per un'alimentazione sana ed equilibrata</h1>
				</div>

				<div class="cms_banner ">
					<div class="col-md-4 cms-banner-left">
						<a href="#"><img alt="#" src="image/banners/subbanner1.jpg"></a>
					</div>
					<div class="col-md-4 cms-banner-middle-top">
						<div class="md1">
							<a href="#"> <img alt="#" src="image/banners/subbanner2.jpg"></a>
						</div>
						<div class="md2">
							<a href="#"> <img alt="#"
								src="image/banners/subbanner2-1.jpg"></a>
						</div>
					</div>
					<div class="col-md-4 cms-banner-right">
						<a href="#"><img alt="#" src="image/banners/subbanner3.jpg"></a>
					</div>
				</div>

				<div class="buttons">

					<div class="pull-center">

						<a class="btn btn-default" href="categories" style="margin-left: 500px;">Esplora i nostri
							prodotti</a>

					</div>

				</div>



				<!-- FEED RSS -->
				<div class="blog">
					<div class="blog-heading">
						<h3 align="center">Ultime Notizie dal mondo dell'agricoltura</h3>
					</div>
					<div class="blog-inner box">
						<ul class="list-unstyled blog-wrapper" id="latest-blog">
							<c:forEach items="${feeder}" var="item">
								<div class="item blog-slider-item"
									style="display: inline-block;">
									<div class="panel-default">
										<div class="blog-image">
											<a href="${item.link}" class="blog-imagelink"> <img
												src="${item.image}" alt="#"
												style="width: 400px; height: 266px;">
											</a> <span class="blog-hover"></span> <span class="blog-date">28/02/2020</span>
											<span class="blog-readmore-outer"><a
												href="${item.link}" target="_blank" class="blog-readmore">Read
													More</a> </span>
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
					<c:forEach var="i" begin="1" end="9">
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