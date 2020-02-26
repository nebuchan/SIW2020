$(document).ready(function() {
	
	$("#input-telephone").change(function() {
		var pattern=/^[0-9]{10}$/;
		var numeroTelefono = document.getElementById("input-telephone");
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
	
	
	
$("#input-oldpwd").change(function() {
		var password = document.getElementById("input-oldpwd");
	
		if($("#input-oldpwd").val() != "" && ($("#input-oldpwd").val() != $("#oldPwd").val())){
			$("#success-modifyPwd").hide();
			$("#warning2-modifyPwd").show("slow").delay(3500).fadeOut();
			 password.value="";
			 password.focus();
		}
		
		if($("#input-oldpwd").val() != "" && ($("#input-oldpwd").val() == $("#oldPwd").val())){
			$("#warning2-modifyPwd").hide();
			$("#success-modifyPwd").show("slow").delay(3500).fadeOut();
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
	
	else if($("#input-confirm-password").val()!="" && $("#input-password").val() !=  $("#input-confirm-password").val())
	{
		$("#alert-success").hide();
		$("#alert-unsuccess").show("slow").delay(3500).fadeOut();
	    
	    confirmPassword.value="";
	    confirmPassword.focus();
	}
	else if($("#input-password").val() ==  $("#input-confirm-password").val())
	{
		$("#alert-unsuccess").hide();
		$("#alert-success").show("slow").delay(3500).fadeOut();
	}
	
});

$("#input-confirm-password").change(function() {
	var confirmPassword = document.getElementById("input-confirm-password");
	
	if($("#input-password").val() !=  $("#input-confirm-password").val())
	{
		$("#alert-confirm-success").hide();
		$("#alert-confirm-unsuccess").show("slow").delay(3500).fadeOut();
	    
	    confirmPassword.value="";
	    confirmPassword.focus();
	}
	else if($("#input-password").val()!="" && $("#input-password").val() ==  $("#input-confirm-password").val())
	{
		$("#alert-confirm-unsuccess").hide();
		$("#alert-confirm-success").show("slow").delay(3500).fadeOut();
	}
});
});