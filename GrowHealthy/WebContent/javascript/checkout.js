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
		
		$("#hDeliveryOption").html("Standard (7 gg)");
		
	}
	else if(spedizione == "prime"){
		$("#sped").text("EUR 3,99");
		
		totale += 3.99;
		
		$("#totale1").text(totale.toFixed(2));
		
		$("#hDeliveryOption").html("Prime (5 gg)");
	}
	else{
		$("#sped").text("EUR 6,99");
		
		totale += 6.99;
		
		$("#totale1").text(totale.toFixed(2));
		
		$("#hDeliveryOption").html("PrimeUltra (2 gg)");
	}
	
};

function fillDeliveryData() {
	
	var form = document.getElementById("formDeliveryData").id;
	
	if(ValidateForm(form)){
		
		var nome = $("#input-nome").val();
		var cognome = $("#input-cognome").val();
		var cap = $("#input-cap").val();
		var regione = $("#input-regione").val();
		var provincia = $("#input-provincia").val();
		var citta = $("#input-citta").val();
		var via = $("#input-via").val();
		var telefono = $("#input-telefono").val();
	
		$.ajax({
			url: "deliveryData",
			type: "post",
			data: {
				"nome": nome,
				"cognome": cognome,
				"cap": cap,
				"regione": regione,
				"provincia": provincia,
				"citta": citta,
				"via": via,
				"telefono": telefono
			},
			success: function(res) {
				$("#success-form").show("slow").delay(3500).fadeOut();
				$("#hDeliveryData").html(res);
			}
		
		});
	}else{
		$("#alert-form").show("slow").delay(3500).fadeOut();
		
	}
		
};

function ValidateForm(form) {
	
	var isValid = true;

	  $("#" + form + " input").each(function() {
	    if ($(this).val() == "") {
	    	isValid = false;
	    	
	    }
	  });
	  
	  return isValid;
	};
	
function showCardDiv() {
	$("#divCardPayment").show("slow");
	
}

function fillCardPayment() {
	var form = document.getElementById("formCardData").id;
	
	if(ValidateForm(form)){
		$("#success-formPayment").show("slow").delay(3500).fadeOut();
		
		titolare = $("#input-titolare").val();
		numCarta = $("#input-numeroCarta").val();
		
		$("#paymentMethod").html("<h2>Carta numero: <h3 style='color : green;'>" + numCarta + "</h3></h2> <h2>Titolare: <h3 style='color : green;'>" + titolare + "</h3></h2>");
	}else{
		$("#alert-formPayment").show("slow").delay(3500).fadeOut();
	}
};
