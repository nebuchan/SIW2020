function addDeliveryCost() {
	
	var spedizione = $('input[name=spedizione]:checked').val();
	
	var somma = 0;
	
	for(var i = 0; i<products.cart.length; i++){
		var tmp = parseFloat(products.cart[i].prezzo) * parseInt(products.cart[i].quantita);
		
		somma+=tmp;
	}
	
	var tax = (somma * 3) / 100;
	
	var totale = somma + tax;
	
	if(spedizione == "standard"){
		
		$("#sped").text("EUR 0,99");
		
		totale += 0.99;
		
		$("#totale1").text(totale.toFixed(2));
		
	}
	else if(spedizione == "prime"){
		$("#sped").text("EUR 3,99");
		
		totale += 3.99;
		
		$("#totale1").text(totale.toFixed(2));
	}
	else{
		$("#sped").text("EUR 6,99");
		
		totale += 6.99;
		
		$("#totale1").text(totale.toFixed(2));
	}
	
};
