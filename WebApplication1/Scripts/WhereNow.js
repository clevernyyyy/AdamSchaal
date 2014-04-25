$(document).ready(function () {

    document.getElementById('divOmaha2Boston').style.display = 'none';
    document.getElementById('divRivieraMaya').style.display = 'none';

    $("[id*='O2BPlus']").click(function (e) {
        if ($("[id*='O2BPlus']").text() == "+") {
            document.getElementById('divOmaha2Boston').style.display = 'block';
            $("[id*='O2BPlus']").text("-");
        }
        else {
            document.getElementById('divOmaha2Boston').style.display = 'none';
            $("[id*='O2BPlus']").text("+");
        }
    });

    $("[id*='RMPlus']").click(function (e) {
        if ($("[id*='RMPlus']").text() == "+") {
            document.getElementById('divRivieraMaya').style.display = 'block';
            $("[id*='RMPlus']").text("-");
        }
        else {
            document.getElementById('divRivieraMaya').style.display = 'none';
            $("[id*='RMPlus']").text("+");
        }
    });

    $(".fancybox:visible").fancybox();
});



function getNow(lbl) {
    // Fill stuff
    if (true)
        loadResults("GetNow", lbl);
    else
        loadFail();
}


function getAll(accord) {
    document.getElementById('MainContent_divCheater').style.display = 'block';

    // Fill stuff
    if (true)
        loadResults("GetAll", accord);
    else
        loadFail();
}


function loadResults(strType, ctrl)
{
    
    $.ajax({
        type: "POST",
        url: "/WhereNow_WS.asmx/" + strType,
        //data: "{str : '" + "hi" + "' }",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: fillSuccess(strType, ctrl),
        error: fillFail()
    });
}

function loadFail() {

}

function fillSuccess(strType, ctrl) {
    return function (jqXhr, textStatus) {
        if (textStatus == "success") {
            if (strType == "GetAll") {
                fillAllMultiple(jqXhr, ctrl);
            }
            else
                fillAll(jqXhr, ctrl);
        }
    };
}

function fillFail(results) {

}

function fillAll(results, lbl) {

    var lblDisplay = $(lbl);

    var obj = jQuery.parseJSON(results.d);

    //Date Inception
    var date_unix_I = obj.dInception; //.replace(/\//g, '');
    var date_I = new Date(parseInt(date_unix_I.substr(6)));

    //Date Expiration
    var date_unix_E = obj.dExpiration; //.replace(/\//g, '');
    var date_E = new Date(parseInt(date_unix_E.substr(6)));

    //Location
    var loc = obj.cLocation;

    //Content
    var cont = obj.cContent;

    //Image
    var img = obj.cImage;         

    lblDisplay.html(date_I.toDateString() + '  -  ' + date_E.toDateString() + '  -  ' + loc + '  <br/>  '  + cont);

}

function fillAllMultiple(results, accrd) {

    var accord = $(accrd);
    var obj = jQuery.parseJSON(results.d);

    $.each(obj, function (index, value) {

        var ctrl = accord.find("[id*='uctrlDay'][id*='uctrlTable']").get(value.nDay - 1);
        var tbl = $(ctrl).closest("[id*='uctrlTable']").find(".table");

        var dateLong = new Date(parseInt(value.dInception.substr(6)));
        var dateString = dateLong.toString();
        var dateFormatted = dateString.replace("GMT-0500 (Central Standard Time)", "");
        dateFormatted = dateFormatted.replace("GMT-0500 (Central Daylight Time)", "");

        if (dateFormatted.indexOf("1900") > -1)
            dateFormatted = "Pre-May 1st, 2014";

        var image = "";
        if (value.cImage != "") {
            image = "<a class='fancybox' style='display:inline-block;' href='" + value.cImage + "'><img class='img img-rounded whereImage' src='" + value.cImage + "' alt=''></a>";
        }

        if (dateLong.getDate() == value.nDay + 1) {

            var str = "<tbody>" +
                        "<tr>" +
                            "<td>"
                                + dateFormatted +
                            "</td>" +
                            "<td>"
                                + value.cContent +
                            "</td>" +
                            "<td>"
                                + value.cLocation +
                            "</td>" +
                            "<td style='text-align: center; vertical-align:middle;'>"
                                + image +
                            "</td>" +
                        "</tr>" +
                      "</tbody>";

            tbl.append(str);

        }
    });
}
