$(document).ready(function() {
	
	$("#input-telefono").change(function() {
		var pattern=/^[0-9]{10}$/;
		var numeroTelefono = document.getElementById("input-telefono");
		var oldNumber=document.getElementById("oldtelephone");
	  
		  if (numeroTelefono.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputtelephone").hide();
			  $("#alert-inputtelephone").show("slow").delay(3500).fadeOut();
		    numeroTelefono.value = oldNumber.value;
		    numeroTelefono.focus();
		  }
		  else
		  {
			  $("#alert-inputtelephone").hide();
			  $("#alert-success-inputtelephone").show("slow").delay(3500).fadeOut();
		  }
			  
	});
	
	$("#input-cap").change(function() {
		var pattern=/^[0-9]{5}$/;
		var cap = document.getElementById("input-cap");
		var oldcap=document.getElementById("oldcap");
	  
		  if (cap.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputpostcode").hide();
			  $("#alert-inputpostcode").show("slow").delay(3500).fadeOut();
		    cap.value = oldcap.value;
		    cap.focus();
		  }
		  else
		  {
			  $("#alert-inputpostcode").hide();
			  $("#alert-success-inputpostcode").show("slow").delay(3500).fadeOut();
		  }
	});
	
	$("#input-numeroCarta").change(function() {
		var pattern=/^[0-9]{16}$/;
		var numeroCarta = document.getElementById("input-numeroCarta");
	  
		  if (numeroCarta.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputcarta").hide();
			  $("#alert-inputcarta").show("slow").delay(3500).fadeOut();
		    numeroCarta.value = oldNumber.value;
		    numeroCarta.focus();
		  }
		  else
		  {
			  $("#alert-inputcarta").hide();
			  $("#alert-success-inputcarta").show("slow").delay(3500).fadeOut();
		  }
			  
	});
	
	$("#input-cvc").change(function() {
		var pattern=/^[0-9]{3}$/;
		var numeroCVC = document.getElementById("input-cvc");
	  
		  if (numeroCVC.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputcvc").hide();
			  $("#alert-inputcvc").show("slow").delay(3500).fadeOut();
		    numeroCarta.value = oldNumber.value;
		    numeroCarta.focus();
		  }
		  else
		  {
			  $("#alert-inputcvc").hide();
			  $("#alert-success-inputcvc").show("slow").delay(3500).fadeOut();
		  }
			  
	});
	
});