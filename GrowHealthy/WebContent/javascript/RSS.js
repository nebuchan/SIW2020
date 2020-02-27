/**
 * 
 */

$(document)
		.ready(
				function() {

					$.ajax({
								type : "GET",
								url : "rssController",
								success : function(results) 
								{
									window.location("index.jsp");
								}
							})
				})
