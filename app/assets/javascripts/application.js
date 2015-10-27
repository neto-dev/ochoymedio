// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// $(document).ready(function(){
//     	var contentLoader = $('#content-loader');
//         var loader = contentLoader.parent();
//         var percentValue = contentLoader.find("#percent-value");
//         var is100 = false;
//         var loaded = 0;

//         var intervalId = setInterval(function(){
//             loaded += 1;
//             is100 = loaded == 100;

//             percentValue.text(loaded + '%');

//             if ( is100 )
//             {
//                 clearInterval(intervalId);

//                 setTimeout(function(){
//                     loader.fadeOut(400)                   
//                 }, 200);
//             }
//         }, 50);
// });

$("#uploadBtn").change(function(){
	var val = $(this).val()
    $("#uploadFile").val(val)
});

$(".description").click(function(){
	var url = $(this).parent().find("img").attr("src")
	$(".cortina").show(300)
	$(".insert-url").attr("src", url)
	$(".show").show(400)
})

$(".cortina, .close").click(function(){
	$(".show").hide(300)
	$(".cortina").hide(400)
})

$(".hover-photo").mouseenter(function(){
	var sel = $(this).find(".description")
	$( sel ).animate({
		opacity : 1
	}, 300)
})

$(".hover-photo").mouseleave(function(){
	var sel = $(this).find(".description")
	$( sel ).animate({
		opacity : 0
	}, 300)
})

$("#open-options").click(function(){
	$(".menu-admin").slideToggle()
})

$(".menu-open").click(function(){
	$("#menu").show(300)
})
$(".close-menu").click(function(){
	$("#menu").hide(300)
})

$(".small").click(function(){
	$(".gallery").fadeOut(600);
	setTimeout(function(){
		$("#photography .gallery").removeClass("gallery").addClass("gallery-small")
		$(".gallery-small").fadeIn(600);
		$(".small").removeClass("unselected").addClass("selected")
		$(".big").removeClass("selected").addClass("unselected")
	},600);
})

$(".big").click(function(){
	$(".gallery-small").fadeOut(600);
	setTimeout(function(){
		$("#photography .gallery-small").removeClass("gallery-small").addClass("gallery")
		$(".gallery").fadeIn(600);
		$(".big").removeClass("unselected").addClass("selected")
		$(".small").removeClass("selected").addClass("unselected")
	},600);
})




