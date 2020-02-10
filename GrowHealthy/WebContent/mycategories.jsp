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
	<script src="javascript/mycategories.js" type="text/javascript"></script>
	
	<script src="https://kit.fontawesome.com/efd0a43034.js" crossorigin="anonymous"></script>

</head>

<body class="category col-2 left-col">

	<!-- HEADER -->
	<header>
		<%@ include file="header.jsp"%>
	</header>
	
	<!-- NAVBAR MENU -->
	<nav id="menu" class="navbar">
		<%@ include file= "navbar.jsp"%>
	</nav>
	
	<div class="container">
	<ul>
		<li><a href="index.jsp"><i class="fa fa-home"></i></a></li>
			<li><a href="mycategories">I miei Prodotti</a></li>
		</ul>
		<div class="row">
			<div id="column-left" class="col-sm-3 hidden-xs column-left">
				<div class="column-block">
					<div class="columnblock-title">Categorie</div>
					<div class="category_block">
						<ul class="box-category treeview-list treeview">
						<li><a href="#"
									id="mieiProdotti" onclick="myProducts()">I miei prodotti </a></li>
									
						<li><a href="javascript:void(0);"
									id="mieiTerreni">I miei Terreni </a></li>
									
						<li><a href="fillproduct?"
									id="inserisciProdotto">Inserisci Prodotto </a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="content" class="col-sm-9">
				<div class="category-page-wrapper">
					<div class="col-md-6 list-grid-wrapper">
						<div class="btn-group btn-list-grid">
							<button type="button" id="list-view"
								class="btn btn-default list active" data-toggle="tooltip" title="List">
								<i class="fa fa-th-list"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="grid-list-wrapper" id="divProdotti"></div>
			</div>				
		</div>
	</div>
		<br/>
		
	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>

</body>
</html>
