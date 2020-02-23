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