
function myProducts()
{
	$("#divProdotti").empty();
	
	$.ajax({
				type : "GET",
				url : "myproductsForCategories",
				datatype: "json",
				
				success : function(results) {

					var prodotti = JSON.parse(results);

					for (var i = 0; i < prodotti.length; i++) {
						var $product = ("<div class='product-layout product-list col-xs-12'>"
								+ "<div class='product-thumb'>"
								+ "<div class='image product-imageblock'>"
								+ "<a href='product?id="
								+ prodotti[i].id
								+ "'> <img src='"+prodotti[i].immagine+"' class='img-responsive' /> </a>"
								+ "<div class='button-group'>"
								+ "<button type='button' class='addtocart-btn'>Add to Cart</button>"
								+ "</div>"
								+ "</div>"
								+ "<div class='caption product-detail'>"
								+ "<h4 class='product-name'>"
								+ "<a href='product?id="
								+ prodotti[i].id
								+ "'>"
								+ prodotti[i].nome
								+ "</a>"
								+ "</h4>"
								+ "<p class='price product-price'> €"
								+ prodotti[i].prezzo
								+ "</p>"
								+ "<h1>"
								+ prodotti[i].azienda
								+ "</h1>"
								+ "<br>"
					 			+ "<br>"
								+ "</div>"
								+ "<div class='button-group'>"
								+"<a href='modificaprodotto?id="+prodotti[i].id+"'>"+"<button type='button' class='addtocart-btn'>Modifica</button></a>"
								+"<a href='eliminaprodotto?id="+prodotti[i].id+"'>"+"<button type='button' class='addtocart-btn'>Elimina</button></a>"
								+"</div>")
								+ "</div>"
									
						$("#divProdotti").append(
												$product);
									}
								}
							})
}


$(document).ready( function () {
	  myProducts();
	});