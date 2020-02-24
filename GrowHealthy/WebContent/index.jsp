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
	<%@ include file="maincontent.jsp"%>

	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>

</body>
</html>