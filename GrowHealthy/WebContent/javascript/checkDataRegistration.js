$(document).ready(function() {
	
	$("#input-piva").change(function() {
		var pattern=/^[0-9]{11}$/;
		
		var piva = document.getElementById("input-piva");
		
		  if (piva.value.search(pattern) == -1)
		  {
			  $("#alert-inputpiva").show("slow").delay(3500).fadeOut();
			  piva.value = "";
		    piva.focus();
		  }
	});
	
	$("#input-cf").change(function() {
		var pattern = /^[a-zA-Z]{6}[0-9]{2}[a-zA-Z][0-9]{2}[a-zA-Z][0-9]{3}[a-zA-Z]$/;

		var CodiceFiscale = document.getElementById("input-cf");
		  
		  
		  if (CodiceFiscale.value.search(pattern) == -1)
		  {
			  $("#alert-inputcf").show("slow").delay(3500).fadeOut();
		    CodiceFiscale.value = "";
		    CodiceFiscale.focus();
		  }
	});
	
	$("#input-telephone").change(function() {
		var pattern=/^[0-9]{10}$/;
		var numeroTelefono = document.getElementById("input-telephone");
	  
		  if (numeroTelefono.value.search(pattern) == -1)
		  {
			  $("#alert-inputtelephone").show("slow").delay(3500).fadeOut();
		    numeroTelefono.value = "";
		    numeroTelefono.focus();
		  }
	});
	
	$("#input-postcode").change(function() {
		var pattern=/^[0-9]{5}$/;
		var cap = document.getElementById("input-postcode");
	  
		  if (cap.value.search(pattern) == -1)
		  {
			  $("#alert-inputpostcode").show("slow").delay(3500).fadeOut();
		    cap.value = "";
		    cap.focus();
		  }
	});
	
	$("#input-password").change(function() {
		var pattern=/^[a-z0-9]{6,25}$/;
		var password = document.getElementById("input-password");
		
		if (password.value.search(pattern) == -1)
		  {
			  $("#alert-minus-password").show("slow").delay(3500).fadeOut();
			  password.value="";
		    password.focus();
		  }
	});
	
	$("#input-confirm-password").change(function() {
		var password = document.getElementById("input-confirm-password");
		
		if($("#input-password").val() !=  $("#input-confirm-password").val())
		{
			$("#alert-confirm-success").hide();
			$("#alert-confirm-unsuccess").show("slow").delay(3500).fadeOut();
			password.value="";
		    password.focus();
		}
		else if($("#input-password").val() ==  $("#input-confirm-password").val())
		{
			$("#alert-confirm-unsuccess").hide();
			$("#alert-confirm-success").show("slow").delay(3500).fadeOut();
		}
	});
});


