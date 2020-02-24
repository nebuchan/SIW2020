<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

</head>

<body>

	<!-- HEADER -->
	<%@ include file="header.jsp"%>

	<!-- NAVBAR MENU -->
	<%@ include file="navbar.jsp"%>

	<div class="container" style="border-style: solid; border-radius: 25px; border-color: green; min-height: 500px; margin-top: 10px;">
		<h1 align="center" style="color: green; margin-top: 50px;">Pagamento avvenuto con successo!</h1>
		<div class="container" align="center" style="margin-top: 5%">
			<a href="/GrowHealthy/" class="btn btn-default">OK! </a>
		</div>
	</div>
	
	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>

</body>
</html>