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

	<div class="parallax">
		<ul id="testimonial" class="row owl-carousel product-slider">
			<li class="item">
				<div class="panel-default">
					<div class="testimonial-image">
						<img src="image/t1.jpg" alt="#">
					</div>
					<div class="testimonial-name">
						<h2>Andrea Castiello</h2>
					</div>
					<div class="testimonial-designation">
						<p>Web Designer</p>
					</div>
					<div class="testimonial-desc">
						Ciao a tutti, mi chiamo Andrea e sono uno studente Universitario del dipartimento di Informatica
						dell'Università della Calabria. Mi piace definirmi uno sviluppatore variabile, per via della
						capacità di adattamento e soprattutto per la spiccata propensione al lavoro di gruppo. Utilizzo
						diversi linguaggi di programmazione di alto livello, dal C++ al Java, mentre per quanto riguarda
						lo sviluppo back-end delle Web Application utilizzo HTML, JSP e Javascript.
					</div>
				</div>
			</li>
			<li class="item">
				<div class="panel-default">
					<div class="testimonial-image">
						<img src="image/t2.jpg" alt="#">
					</div>
					<div class="testimonial-name">
						<h2>Denis Martelli</h2>
					</div>
					<div class="testimonial-designation">
						<p>Web Deweloper</p>
					</div>
					<div class="testimonial-desc">
						Ciao! Mi chiamo Denis Martelli e sono uno studente dell'Università della Calabria regolarmente iscritto al
						CdL di Informatica. Mi piace considerare l'informatica come una disciplina a 360°, in quanto al
						giorno d'oggi la troviamo applicata in ogni ambito lavorativo. Le mie capacità spaziano dalla padronanza di
						linguaggi di alto livello come C++, Java e Python, mentre per quanto riguarda il mondo Internet trovo molto
						divertente e interessante anche lo sviluppo front-end delle Web Application e l'utilizzo dei linguaggi HTML,
						CSS e JSP.
					</div>
				</div>
			</li>
			<li class="item">
				<div class="panel-default">
					<div class="testimonial-image">
						<img src="image/t3.jpg" alt="#">
					</div>
					<div class="testimonial-name">
						<h2>Ivan Tarasi</h2>
					</div>
					<div class="testimonial-designation">
						<p>Web Designer</p>
					</div>
					<div class="testimonial-desc">
						Salve a tutti ragazzi! Mi chiamo Ivan Tarasi e sono uno studente del CdL di Informatica dell'Unical. Sono
						sempre stato un appassionato di Informatica fin dai tempi del Liceo, e penso che essa sia una delle
						realtà che più influenzerà il nostro futuro nei prossimi anni. Conosco svariati linguaggi di alto livello
						come C++ e Java, e per quanto riguarda lo sviluppo back-end delle Web Application padroneggio in modo interessante
						il JSP e il Javascript.
					</div>
				</div>
			</li>
			<li class="item">
				<div class="panel-default">
					<div class="testimonial-image">
						<img src="image/t4.jpg" alt="#">
					</div>
					<div class="testimonial-name">
						<h2>Francesco Amato</h2>
					</div>
					<div class="testimonial-designation">
						<p>Web Deweloper</p>
					</div>
					<div class="testimonial-desc">
						Ciao ragazzi! Mi chiamo Francesco Amato e anche io sono uno studente iscritto al CdL di Informatica
						dell'Università della Calabria. Mi definisco un programmatore abile nel dilettarmi con le varie
						tecnologia che la scienza informatica mette a disposizione. La mia propensione è soprattutto l'adattamento
						all'utilizzo di nuove tecnologie, in quanto mi piace l'idea di avere sempre a che fare con nuove tecnologie,
						metodologie e nuovi linguaggi di programmazione. Conosco bene C++ e Java, mentre per quanto riguarda lo
						sviluppo Web utilizzo HTML, CSS, JSP e Javascript, anche se, in questo ambito, preferisco definirmi uno
						sviluppatore back-end.
					</div>
				</div>
			</li>
		</ul>
	</div>

	<!-- FOOTER -->
	<%@ include file="footer.jsp"%>

</body>
</html>