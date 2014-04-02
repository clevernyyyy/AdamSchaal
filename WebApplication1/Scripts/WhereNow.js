$(document).ready(function () {


});


function getNow(lbl) {
    // Fill stuff
    if (true)
        loadResults("GetNow", lbl);
    else
        loadFail();
}


function getAll(accord) {
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



}
