$(document).ready(function () {


	$("a").not('[data-parent*="accordion"],.btn').click(function (event) {
		var href = $(this).attr("href");
		$("[id$='jumbotron']").toggle("slide", { direction: 'left' }, 600);
		$("[id$='gridDetails']").toggle("slide", { direction: 'right' }, 600);
		$(".propContent").removeClass('slideUp').addClass('slideLeft');
		setTimeout(function () {
			setTrigger(href)
		}, 600);

		event.preventDefault();
	});


	$('#btnSpecialThanks').popover({
	    template: '<div class="popover popover-medium"><div class="arrow"></div><div class="popover-inner popover-medium"><h3 class="popover-title popover-medium"></h3><div class="popover-content popover-medium"><p></p></div></div></div>',
		content: "<ul> <li>To Lauren - for all your Boston knowledge and help.</li> " +
		"<li>To Mom - for all your help in planning.</li>" +
		"<li>To Susan - for helping me secretly arrange Colleen's time off.</li>" +
		"<li>To Andrea - for your advice of things to do in Boston.</li>" +
		"<li>To My Coworkers - who's interest and advice helped me complete this site. </li> </ul>",
		html: true
	});

});


	function setTrigger(href) {
		window.location = href;
	}


