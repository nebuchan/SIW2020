$(document).ready(function() {
	
	$("#input-piva").change(function() {
		var pattern=/^[0-9]{11}$/;
		
		var piva = document.getElementById("input-piva");
		
		  if (piva.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputpiva").hide();
			  $("#alert-inputpiva").show("slow").delay(3500).fadeOut();
			  piva.value = "";
		    piva.focus();
		  }
		  else
		  {
			  $("#alert-inputpiva").hide();
			  $("#alert-success-inputpiva").show("slow").delay(3500).fadeOut();
		  }
	});
	
	$("#input-cf").change(function() {
		var pattern = /^[a-zA-Z]{6}[0-9]{2}[a-zA-Z][0-9]{2}[a-zA-Z][0-9]{3}[a-zA-Z]$/;

		var CodiceFiscale = document.getElementById("input-cf");
		  
		  
		  if (CodiceFiscale.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputcf").hide();
			  $("#alert-inputcf").show("slow").delay(3500).fadeOut();
		    CodiceFiscale.value = "";
		    CodiceFiscale.focus();
		  }
		  else
		  {
			  $("#alert-inputcf").hide();
			  $("#alert-success-inputcf").show("slow").delay(3500).fadeOut();
		  }
	});
	
	$("#input-telephone").change(function() {
		var pattern=/^[0-9]{10}$/;
		var numeroTelefono = document.getElementById("input-telephone");
	  
		  if (numeroTelefono.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputtelephone").hide();
			  $("#alert-inputtelephone").show("slow").delay(3500).fadeOut();
		    numeroTelefono.value = "";
		    numeroTelefono.focus();
		  }
		  else
		  {
			  $("#alert-inputtelephone").hide();
			  $("#alert-success-inputtelephone").show("slow").delay(3500).fadeOut();
		  }
	});
	
	$("#input-postcode").change(function() {
		var pattern=/^[0-9]{5}$/;
		var cap = document.getElementById("input-postcode");
	  
		  if (cap.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputpostcode").hide();
			  $("#alert-inputpostcode").show("slow").delay(3500).fadeOut();
		    cap.value = "";
		    cap.focus();
		  }
		  else
		  {
			  $("#alert-inputpostcode").hide();
			  $("#alert-success-inputpostcode").show("slow").delay(3500).fadeOut();
		  }
	});
	
	$("#input-password").change(function() {
		var pattern=/^[a-z0-9]{6,25}$/;
		var password = document.getElementById("input-password");
		var confirmPassword = document.getElementById("input-confirm-password");
		
		
		if (password.value.search(pattern) == -1)
		  {
			  $("#alert-minus-password").show("slow").delay(3500).fadeOut();
			  password.value="";
		    password.focus();
		  }
		
		if($("#input-confirm-password").val()!="" && $("#input-password").val() !=  $("#input-confirm-password").val())
		{
			$("#alert-confirm-success").hide();
			$("#alert-confirm-unsuccess").show("slow").delay(3500).fadeOut();
			confirmPassword.value="";
		    confirmPassword.focus();
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


