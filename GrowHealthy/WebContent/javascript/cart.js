var products = {
			cart: []
};


var cliente;

$(document).ready(function() {

	cliente = $("#emailUtente").val();

	console.log(cliente);

	if (Cookies.getJSON('products'+cliente).length == 0) {
		products = {
					cart: []
		};
	} else {
		products = {
					cart: Cookies.getJSON('products'+cliente)
		};
	}
	if(products.cart.length > 0){
		$("#totalCart").html(products.cart.length+" prodotto(i)");
	}else{
		$("#totalCart").html("0 prodotto(i)");
	}
	
});

function addToCart() {

	var id = $("#idProduct").text();

	var name = $("#productName").text();

	var quantity = $("#input-quantity").val();

	var price = $("#productPrice").text();

	var company = $("#company").text();
	
	var presente = false;
	
	for(var i = 0;i<products.cart.length;i++){
		if(products.cart[i].id == id){
			presente = true;
		}
	}
	
	if(presente == true){
		$("#alert_gia_inserito").show("slow").delay(3500).fadeOut();
	}
	else{
		products.cart.push({
			"id" : id,
			"nome" : name,
			"quantita" : quantity,
			"prezzo" : price,
			"azienda" : company
		});
		
		$("#alert_conferma_inserimento").show("slow").delay(3500).fadeOut();
		$("#totalCart").html(products.cart.length+" prodotto(i)");

		Cookies.set('products' + cliente, products.cart, {
			expires : 7
		});
	}
	
	calcolaImporti();
};

function removeFromCart(row,id) {
	
	$(row).closest("table").remove();
	
	for(var i = 0; i<products.cart.length; i++){
		
		if(products.cart[i].id == id){
			
			products.cart.splice(i,1);
		}
	}
	
	Cookies.set('products'+cliente, products.cart, { expires: 7 });
	
	if(products.cart.length > 0){
		$("#totalCart").html(products.cart.length+" prodotto(i)");
	}else{
		$("#totalCart").html("0 prodotto(i)");
	}
	
	calcolaImporti();
	
};

function showCart() {
	
	$("#productsincart").empty();
	
	for (var i = 0; i < products.cart.length; i++) {
		var $product = (
						" <table class='table table-striped' id='table" +
						+ products.cart[i].id
						+"'>"
							+ "<tbody>"
								+ "<tr>"
									+ "<td class='text-left'>"
									+ "<a href='#'><img class='img-thumbnail' src="
									+ "image/product/7product50x59.jpg"
									+ "></a>"
									+ "</td>"
									+ "<td class='text-left'><a href='javascript:void(0);'>"
									+ products.cart[i].nome
									+ "</a></td>"
									+ "<td class='text-left'>x "
									+ products.cart[i].quantita
									+ " kg</td>"
									+ "<td class='text-center'>&#8364; "
									+ products.cart[i].prezzo
									+ "</td>"
									+ "<td class='text-center'>"
									+ "<button class='btn btn-danger btn-xs' title='Remove' type='button' onclick='removeFromCart(this," 
									+ products.cart[i].id
									+")'>"
									+ "<i class='fa fa-times'></i>" + "</button></td>"
								+ "</tr>"
							+ "</tbody>" 
						+ "</table>")
						
						$("#productsincart").append($product);
	}
	
	calcolaImporti();
};

function calcolaImporti() {
	
	var somma = 0;
	
	for(var i = 0; i<products.cart.length; i++){
		var tmp = parseFloat(products.cart[i].prezzo) * parseInt(products.cart[i].quantita);
		somma+=tmp;
	}
	
	var vat = (somma * 3) / 100;
	var totale = somma + vat;
	
	$("#parziale").text("EUR "+somma);
	$("#vat").text("EUR "+vat);
	$("#totale").text("EUR "+totale);
	
};