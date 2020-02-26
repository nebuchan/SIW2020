var products = {
				cart: []
};


var cliente;

$(document).ready(function() {

	cliente = $("#emailUtente").val();

	console.log(cliente);
	
	if(cliente != null){
		if (Cookies.getJSON('products'+cliente).length == 0) {
			products = {
							cart: []
			}
		} else {
			products = {
							cart: Cookies.getJSON('products'+cliente)
			}
		}
		if(products.cart.length > 0){
			$("#totalCart").html(products.cart.length+" prodotto(i)");
		}else{
			$("#totalCart").html("0 prodotto(i)");
		}
	}
});

$(document).ready(function() {
	
	if(products.cart.length == 0){
		$("#tableCart tbody").append("<tr><td></td><td></td><td></td><td class='text-center'><span><strong>Nessun prodotto nel carrello</strong></span></td><td></td><td></td><td></td></tr>");
	}else{
		for(var i = 0; i<products.cart.length; i++){
			var $productTr = (
					"<tr>"
						+ "<td class='text-center'>" 
						+ "<a href='product.html'>"
						+ "<img class='img-thumbnail' title='women's clothing' alt='women's clothing' src='image/product/2product50x59.jpg'>"
						+"</a></td>" 
						+ "<td class='text-center'><a href='javascript:void(0);'>"+products.cart[i].nome+"</a></td>"
						+ "<td class='text-center'>"+products.cart[i].categoria+"</td>"
						+ "<td class='text-center'>"+products.cart[i].azienda+"</td>"
						+ "<td class='text-left'>"
						+ "<div style='max-width: 200px; left: 30px;' class='input-group btn-block'>"
							+ "<input type='text' class='form-control quantity' size='1' value='"+products.cart[i].quantita+"' id='q"+i+"'>" 
							+ "<span class='input-group-btn'>"
								+ "<button class='btn btn-primary' title='' data-toggle='tooltip' type='button' data-original-title='Update' onclick='updateQuantity("+products.cart[i].id+")'>"
									+ "<i class='fa fa-refresh'></i>"
								+ "</button>"
								+ "<button class='btn btn-danger' title='' data-toggle='tooltip' type='button' data-original-title='Remove' onclick='removeFromCart(this,"+products.cart[i].id+")'>"
									+ "<i class='fa fa-times-circle'></i>"
								+ "</button>"
							+ "</span>"
						+ "</div>"
					+ "</td>"
					+ "<td class='text-center'>"+products.cart[i].prezzo+" €</td>"
					+ "<td class='text-center'>"+parseFloat(products.cart[i].prezzo) * parseInt(products.cart[i].quantita)+" €</td>"
				+ "</tr>")
				
			$("#tableCart tbody").append($productTr);
		
		}
	
	}
	
	calcolaImporti();
});

$(document).ready(function(){
	if(products.cart.length > 0){
		$("#btnCheckout").show();
	}
	else if(products.cart.lenght == 0){
		$("#btnCheckout").hide();
	}
	
});



function addToCart() {

	var id = $("#idProduct").text();

	var name = $("#productName").text();
	
	var category = $("#productCategory").val();

	var quantity = $("#input-quantity").val();
	
	var maxQ = $("#sQMax").text();
	
	var minQ = $("#sQMin").text();

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
	}else if(parseInt(quantity) < parseInt($("#sQMin").text())){
		$("#alert_quantita_min").show("slow").delay(3500).fadeOut();
	}else if(parseInt(quantity) > parseInt($("#sQMax").text())){
		$("#alert_quantita_max").show("slow").delay(3500).fadeOut();
	}else if(quantity==""){
		$("#alert_quantita_null").show("slow").delay(3500).fadeOut();
	}
	else{
		products.cart.push({
			"id" : id,
			"nome" : name,
			"categoria" : category,
			"quantita" : quantity,
			"maxQuantity" : maxQ,
			"minQuantity" : minQ,
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
	
	$(row).closest("tr").remove();
	
	for(var i = 0; i<products.cart.length; i++){
		
		if(products.cart[i].id == id){
			
			products.cart.splice(i,1);
		}
	}
	
	Cookies.set('products'+cliente, products.cart, { expires: 7 });
	
	if(products.cart.length > 0){
		$("#totalCart").html(products.cart.length+" prodotto(i)");
		
	}else{
		$("#tableCart tbody").empty();
		$("#tableCart tbody").append("<tr><td></td><td></td><td></td><td class='text-center'><span><strong>Nessun prodotto nel carrello</strong></span></td><td></td><td></td><td></td></tr>");
		$("#btnCheckout").hide();
		$('#productsincart tbody').append("<span><strong>Nessun prodotto nel carrello</strong></span>");
		$("#totalCart").html("0 prodotto(i)");
	}
	
	calcolaImporti();
	
};

function updateQuantity(id) {
	
	
	for(var i = 0; i < products.cart.length; i++){
		if(products.cart[i].id == id){
			if(parseInt($("#q"+i).val()) > parseInt(products.cart[i].maxQuantity)){
				$("#alert_updateQuantita_max").show("slow").delay(3500).fadeOut();
				$("#alert_updateQuantitaCheckout_max").show("slow").delay(3500).fadeOut();
				
			}else if(parseInt($("#q"+i).val()) < parseInt(products.cart[i].minQuantity)){
				$("#alert_updateQuantita_min").show("slow").delay(3500).fadeOut();
				$("#alert_updateQuantitaCheckout_min").show("slow").delay(3500).fadeOut();
			
			}else{
				$("#alert_conferma_update").show("slow").delay(3500).fadeOut();
				$("#alert_conferma_updateCheckout").show("slow").delay(3500).fadeOut();
				products.cart[i].quantita = $("#q"+i).val();
			
			}
		}
		
	}
	
	Cookies.set('products'+cliente, products.cart, { expires: 7 });
	
	calcolaImporti();
	
}

function showCart() {
	
	$("#productsincart tbody").empty();
	
	cliente = $("#emailUtente").val();
	
	if(cliente == null){
		$("#productsincart tbody").append("<span><strong style='color: red;'>Devi effettuare l'accesso sul sito per usufruire del carrello</strong></span>");
	}
	else if(products.cart.length == 0){
		$('#productsincart tbody').append("<span><strong>Nessun prodotto nel carrello</strong></span>");
	}else{
		for (var i = 0; i < products.cart.length; i++) {
			var $product = (
					"<tr>"
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
					+ "</tr>")
						
					$("#productsincart tbody").append($product);
		}
	}
	
	calcolaImporti();
};

function calcolaImporti() {
	
	var somma = 0;
	
	for(var i = 0; i<products.cart.length; i++){
		var tmp = parseFloat(products.cart[i].prezzo) * parseInt(products.cart[i].quantita);
		
		somma+=tmp;
	}
	
	var tax = (somma * 3) / 100;
	
	var totale = somma + tax;
	
	$("#parziale").text("EUR "+somma.toFixed(2));
	$("#tax").text("EUR "+tax.toFixed(2));
	$("#totale").text("EUR "+totale.toFixed(2));
	
	$("#parziale1").text("EUR "+somma.toFixed(2));
	$("#tax1").text("EUR "+tax.toFixed(2));
	$("#totale1").text(totale.toFixed(2));
	
};