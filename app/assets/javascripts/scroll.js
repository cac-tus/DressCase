$(document).ready(function(){
	$("#photo_wrapper").hover(
		function(){
			$(window).bind('mousewheel', function(event, delta){
				var sl = $('#photo_wrapper').scrollLeft();
				$('#photo_wrapper').scrollLeft( sl - delta*3 );
				return false;
			});
		},
		function(){
			$(window).unbind('mousewheel');
		}
	);
});