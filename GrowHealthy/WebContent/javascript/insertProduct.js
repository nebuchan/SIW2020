function ValidateForm(form) 
{
		
	var isValid = true;

	  $("#" + form + " input").each(function() {
	    if ($(this).val() == "") {
	    	isValid = false;
	    	
	    }
	  });
	  
	  return isValid;
};

	function popup() 
	{
		var form = document.getElementById("formInsertProduct").id;
		
		if(ValidateForm(form))
		{
			var nomeProdotto=document.getElementById('inputnome').value;
			var categoriaProdotto=document.getElementById('inputcategoria').value;
			var quantitaMagazzino=document.getElementById('inputquantitamagazzino').value;
			var quantitaMinima=document.getElementById('inputquantitaminima').value;
			var descrizioneProdotto=document.getElementById('inputdescrizione').value;
			var prezzoProdotto=document.getElementById('inputprezzo').value;
		
		
			var w = 640;
			var h = 480;
			var l = Math.floor((screen.width-w)/2);
			var t = Math.floor((screen.height-h)/2);
			var newWindow = window.open("","","width=" + w + ",height=" + h + ",top=" + t + ",left=" + l);
			
			$.ajax({
		         type: 'GET',
		         url: 'checkproduct',
		         data : {"nomeProdotto": nomeProdotto,
		        	 	"categoriaProdotto": categoriaProdotto,
		        	 	"quantitaMagazzino": quantitaMagazzino,
		        	 	"quantitaMinima": quantitaMinima,
		        	 	"descrizioneProdotto": descrizioneProdotto,
		        	 	"prezzoProdotto": prezzoProdotto,},
		         success: function(result) {
		        		newWindow.location.href = "popupInsertProduct.jsp";
		        		location.href = "fillproduct?";
		        		
		        	}
		     });
		}
		else{
			$("#alert-form").show("slow").delay(3500).fadeOut();
			
		}
	}
	
	
$(document).ready(function() {
	$("#inputquantitamagazzino").change(function() {
		var pattern=/^[0-9]{0,7}$/;
		var qty = document.getElementById("inputquantitamagazzino");
		var qtyMin = document.getElementById("inputquantitaminima");
	  
		  if (qty.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputqty").hide();
			  $("#alert-inputqtycompare").hide();
			  $("#alert-inputqtylong").show("slow").delay(3500).fadeOut();
		    qty.value = "";
		    qty.focus();
		  }
		  else if(qtyMin.value != "" && qty.value < qtyMin.value)
		  {
			  
			  $("#alert-success-inputqty").hide();
			  $("#alert-inputqtylong").hide();
			  $("#alert-inputqtycompare").show("slow").delay(3500).fadeOut();
			  
			  qty.value="";
			  qty.focus();
		  }
		  else if(qty.value > qtyMin.value)
		  {
			  $("#alert-inputqtylong").hide();
			  $("#alert-inputqtycompare").hide();
			  $("#alert-success-inputqty").show("slow").delay(3500).fadeOut();
		  }
			  
	});
	
	$("#inputquantitaminima").change(function() {
		var pattern=/^[0-9]{0,7}$/;
		var qty = document.getElementById("inputquantitamagazzino");
		var qtyMin = document.getElementById("inputquantitaminima");
	  
		  if (qtyMin.value.search(pattern) == -1)
		  {
			  $("#alert-success-inputqtym").hide();
			  $("#alert-inputqtycomparem").hide();
			  $("#alert-inputqtylongm").show("slow").delay(3500).fadeOut();
		    qtyMin.value = "";
		    qtyMin.focus();
		  }
		  else if(qty.value != "" && qty.value < qtyMin.value)
		  {
			  
			  $("#alert-success-inputqtym").hide();
			  $("#alert-inputqtylongm").hide();
			  $("#alert-inputqtycomparem").show("slow").delay(3500).fadeOut();
			  
			  qtyMin.value="";
			  qtyMin.focus();
		  }
		  else if(qty.value > qtyMin.value)
		  {
			  $("#alert-inputqtylongm").hide();
			  $("#alert-inputqtycomparem").hide();
			  $("#alert-success-inputqtym").show("slow").delay(3500).fadeOut();
		  }
			  
	});
	
	
});
