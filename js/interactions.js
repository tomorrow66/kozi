jQuery(function()
{
	$(document).ready(function() {
		
		$('div#subcontent a').hover(function(){
			hovered = $(this).attr('id');	
			$('#' + hovered).children('p.label.index').animate({backgroundColor: '#b6f621', color: '#000000', opacity: 0.7}, 1300);
			$('#' + hovered).children('img.fade').fadeOut(1000);
		}, function() {
			$('#' + hovered).children('img.fade').fadeIn(1000);
			$('#' + hovered).children('p.label.index').animate({backgroundColor: '#dedede', color: '#232323', opacity: 0.65}, 1300);

		});
		
		$('.accordian a').hover(function(){
			$(this).children('img.fade').fadeOut(1000);
		}, function() {
			$(this).children('img.fade').fadeIn(1000);
		});
		
	});
});