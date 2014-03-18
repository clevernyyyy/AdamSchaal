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
        template: '<div class="popover special-class"><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title"></h3><div class="popover-content"><p></p></div></div></div>'
    });

});


    function setTrigger(href) {
        window.location = href;
    }


