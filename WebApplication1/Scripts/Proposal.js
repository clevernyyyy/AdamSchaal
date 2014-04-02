$(document).ready(function () {


	$("a").not('[data-parent*="accordion"],.btn,.fancybox').click(function (event) {
		var href = $(this).attr("href");
		$("[id$='jumbotron']").toggle("slide", { direction: 'left' }, 600);
		$("[id$='gridDetails']").toggle("slide", { direction: 'right' }, 600);
		$(".propContent").removeClass('slideUp').addClass('slideLeft');
		setTimeout(function () {
			setTrigger(href)
		}, 600);

		event.preventDefault();
	});

 });


	function setTrigger(href) {
		window.location = href;
	}


