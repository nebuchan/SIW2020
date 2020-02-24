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
		var form = document.getElementById("formInsertTerrain").id;
		if(ValidateForm(form))
		{
			var posizione=document.getElementById('inputPosizione').value;
			var dimensione=document.getElementById('inputDimensione').value;
			var servizioOfferto=document.getElementById('inputServizioOfferto').value;
			var costo=document.getElementById('inputCostoTerreno').value;
			var descrizione=document.getElementById('inputDescrizione').value;
			
			var w = 640;
			var h = 480;
			var l = Math.floor((screen.width-w)/2);
			var t = Math.floor((screen.height-h)/2);
			var newWindow = window.open("","","width=" + w + ",height=" + h + ",top=" + t + ",left=" + l);
			
			$.ajax({
		         type: 'GET',
		         url: 'checkterrain',
		         data : {
		        	 	"posizione": posizione,
		        	 	"dimensione": dimensione,
		        	 	"servizioOfferto": servizioOfferto,
		        	 	"costo": costo,
		        	 	"descrizione": descrizione,
		         },
		         success: function(result) {
		        		newWindow.location.href = "popupInsertTerrain.jsp";
		        		location.href = "insertterrain";
		        		
		        		}
		         });
			}
		else{
			$("#alert-form").show("slow").delay(3500).fadeOut();
			
		}
	}