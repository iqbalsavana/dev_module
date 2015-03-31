$(document).ready(function() {        
			$(".form-small").fancybox({
				margin: [120, 60, 120, 60], // top, right, bottom, left
				closeClick  : false, // prevents closing when clicking INSIDE fancybox 
				openEffect  : 'none',
				closeEffect : 'none',
				'width'    	: 400,
				'height'   	: 100,
				helpers   : { 
				overlay : {closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
				}
			});
			$(".form-standard").fancybox({
				closeClick  : false, // prevents closing when clicking INSIDE fancybox 
				openEffect  : 'none',
				closeEffect : 'none',
				'width'    	: 400,
				'height'   	: 100,
				helpers   : { 
				overlay : {closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
				}
			});
			$(".form-large").fancybox({
				closeClick  : false, // prevents closing when clicking INSIDE fancybox 
				openEffect  : 'none',
				closeEffect : 'none',
				'width'    	: 800,
				'height'   	: 100,
				helpers   : { 
				overlay : {closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
				}
			});
			
			
			App.setPage("forms");  //Set current page
			App.setPage("dynamic_table");  //Set current page
			App.init(); //Initialise plugins and elements
});