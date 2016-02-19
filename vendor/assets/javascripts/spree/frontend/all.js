// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require spree/frontend

//= require_tree .

$("a#fancybox").fancybox({
    	openEffect	: 'elastic',
    	closeEffect	: 'elastic',

    	helpers : {
    		title : {
    			type : 'inside'
    		}
    	}
    });

function setImage() {
		var img = $('#fancybox').find('img')[0].src;
		console.log($('#fancybox'));
		$('#fancybox')[0].href = img;
		console.log($('#fancybox'));
	}

$(document).ready(function(){
	setImage();
});