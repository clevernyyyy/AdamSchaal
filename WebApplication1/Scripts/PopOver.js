
$(document).ready(function () {

    $('#btnSpecialThanks').popover({
        template: '<div class="popover popover-medium"><div class="arrow"></div><div class="popover-inner popover-medium"><h3 class="popover-title popover-medium"></h3><div class="popover-content popover-medium"><p></p></div></div></div>',
        content: "<ul> <li>To Lauren - for all your Boston knowledge and help.</li> " +
        "<li>To Mom - for all your help in planning.</li>" +
        "<li>To Susan - for helping me secretly arrange Colleen's time off.</li>" +
        "<li>To Andrea - for your advice of things to do in Boston.</li>" +
        "<li>To My Coworkers - whose interest and advice helped me complete this site. </li> </ul>",
        html: true
    });

});