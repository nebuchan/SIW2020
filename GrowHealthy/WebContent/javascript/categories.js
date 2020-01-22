$(document)
		.ready(
				function() {

					var category = document.getElementById('Frutta').id;

					$("#divProdotti" + category).empty();

					$
							.ajax({
								type : "GET",
								url : "productsForCategories",
								data : {
									"categoria" : category
								},
								success : function(results) {

									var prodotti = JSON.parse(results);

									for (var i = 0; i < prodotti.length; i++) {
										var $product = ("<div class='product-layout product-list col-xs-12'>"
												+ "<div class='product-thumb'>"
												+ "<div class='image product-imageblock'>"
												+ "<a href='product.jsp'> <img src='image/product/pro-2-220x294.jpg' class='img-responsive'/> </a>"
												+ "<div class='button-group'>"
												+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
												+ "</div>"
												+ "</div>"
												+ "<div class='caption product-detail'>"
												+ "<h4 class='product-name'>"
												+ "<a href='product.jsp'>"
												+ prodotti[i].nome
												+ "</a>"
												+ "</h4>"
												+ "<p class='price product-price'> €"
												+ prodotti[i].prezzo
												+ "</p>"
												+ "</div>"
												+ "<div class='button-group'>"
												+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
												+ "</div>" + "</div>" + "</div>")

										$("#divProdotti" + category).append(
												$product);
									}
								}
							})
				})

$(document)
		.ready(
				function() {
					$("#Frutta")
							.click(
									function() {
										$("#divFrutta").show("slow");
										$("#divVerdura").hide("slow");
										$("#divLegumi").hide("slow");
										$("#divTuberi").hide("slow");

										var category = document
												.getElementById('Frutta').id;

										$("#divProdotti" + category).empty();

										$
												.ajax({
													type : "GET",
													url : "productsForCategories",
													data : {
														"categoria" : category
													},
													success : function(results) {

														var prodotti = JSON
																.parse(results);

														for (var i = 0; i < prodotti.length; i++) {
															var $product = ("<div class='product-layout product-list col-xs-12'>"
																	+ "<div class='product-thumb'>"
																	+ "<div class='image product-imageblock'>"
																	+ "<a href='product.jsp'> <img src='image/product/pro-2-220x294.jpg' class='img-responsive'/> </a>"
																	+ "<div class='button-group'>"
																	+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
																	+ "</div>"
																	+ "</div>"
																	+ "<div class='caption product-detail'>"
																	+ "<h4 class='product-name'>"
																	+ "<a href='product.jsp'>"
																	+ prodotti[i].nome
																	+ "</a>"
																	+ "</h4>"
																	+ "<p class='price product-price'> €"
																	+ prodotti[i].prezzo
																	+ "</p>"
																	+ "</div>"
																	+ "<div class='button-group'>"
																	+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
																	+ "</div>"
																	+ "</div>" + "</div>")

															$(
																	"#divProdotti"
																			+ category)
																	.append(
																			$product);
														}
													}
												})

									})

				})

$(document)
		.ready(
				function() {
					$("#Verdura")
							.click(
									function() {
										$("#divFrutta").hide("slow");
										$("#divVerdura").show("slow");
										$("#divLegumi").hide("slow");
										$("#divTuberi").hide("slow");

										var category = document
												.getElementById('Verdura').id;

										$("#divProdotti" + category).empty();

										$
												.ajax({
													type : "GET",
													url : "productsForCategories",
													data : {
														"categoria" : category
													},
													success : function(results) {

														var prodotti = JSON
																.parse(results);

														for (var i = 0; i < prodotti.length; i++) {
															var $product = ("<div class='product-layout product-list col-xs-12'>"
																	+ "<div class='product-thumb'>"
																	+ "<div class='image product-imageblock'>"
																	+ "<a href='product.jsp'> <img src='image/product/pro-2-220x294.jpg' class='img-responsive'/> </a>"
																	+ "<div class='button-group'>"
																	+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
																	+ "</div>"
																	+ "</div>"
																	+ "<div class='caption product-detail'>"
																	+ "<h4 class='product-name'>"
																	+ "<a href='product.jsp'>"
																	+ prodotti[i].nome
																	+ "</a>"
																	+ "</h4>"
																	+ "<p class='price product-price'> €"
																	+ prodotti[i].prezzo
																	+ "</p>"
																	+ "</div>"
																	+ "<div class='button-group'>"
																	+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
																	+ "</div>"
																	+ "</div>" + "</div>")

															$(
																	"#divProdotti"
																			+ category)
																	.append(
																			$product);
														}
													}
												})

									})

				})

$(document)
		.ready(
				function() {
					$("#Legumi")
							.click(
									function() {
										$("#divFrutta").hide("slow");
										$("#divVerdura").hide("slow");
										$("#divLegumi").show("slow");
										$("#divTuberi").hide("slow");

										var category = document
												.getElementById('Legumi').id;

										$("#divProdotti" + category).empty();

										$
												.ajax({
													type : "GET",
													url : "productsForCategories",
													data : {
														"categoria" : category
													},
													success : function(results) {

														var prodotti = JSON
																.parse(results);

														for (var i = 0; i < prodotti.length; i++) {
															var $product = ("<div class='product-layout product-list col-xs-12'>"
																	+ "<div class='product-thumb'>"
																	+ "<div class='image product-imageblock'>"
																	+ "<a href='product.jsp'> <img src='image/product/pro-2-220x294.jpg' class='img-responsive'/> </a>"
																	+ "<div class='button-group'>"
																	+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
																	+ "</div>"
																	+ "</div>"
																	+ "<div class='caption product-detail'>"
																	+ "<h4 class='product-name'>"
																	+ "<a href='product.jsp'>"
																	+ prodotti[i].nome
																	+ "</a>"
																	+ "</h4>"
																	+ "<p class='price product-price'> €"
																	+ prodotti[i].prezzo
																	+ "</p>"
																	+ "</div>"
																	+ "<div class='button-group'>"
																	+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
																	+ "</div>"
																	+ "</div>" + "</div>")

															$(
																	"#divProdotti"
																			+ category)
																	.append(
																			$product);
														}
													}
												})

									})

				})

$(document)
		.ready(
				function() {
					$("#Tuberi")
							.click(
									function() {
										$("#divFrutta").hide("slow");
										$("#divVerdura").hide("slow");
										$("#divLegumi").hide("slow");
										$("#divTuberi").show("slow");

										var category = document
												.getElementById('Tuberi').id;

										$("#divProdotti" + category).empty();

										$
												.ajax({
													type : "GET",
													url : "productsForCategories",
													data : {
														"categoria" : category
													},
													success : function(results) {

														var prodotti = JSON
																.parse(results);

														for (var i = 0; i < prodotti.length; i++) {
															var $product = ("<div class='product-layout product-list col-xs-12'>"
																	+ "<div class='product-thumb'>"
																	+ "<div class='image product-imageblock'>"
																	+ "<a href='product.jsp'> <img src='image/product/pro-2-220x294.jpg' class='img-responsive'/> </a>"
																	+ "<div class='button-group'>"
																	+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
																	+ "</div>"
																	+ "</div>"
																	+ "<div class='caption product-detail'>"
																	+ "<h4 class='product-name'>"
																	+ "<a href='product.jsp'>"
																	+ prodotti[i].nome
																	+ "</a>"
																	+ "</h4>"
																	+ "<p class='price product-price'> €"
																	+ prodotti[i].prezzo
																	+ "</p>"
																	+ "</div>"
																	+ "<div class='button-group'>"
																	+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
																	+ "</div>"
																	+ "</div>" + "</div>")

															$(
																	"#divProdotti"
																			+ category)
																	.append(
																			$product);
														}
													}
												})

									})

				})
