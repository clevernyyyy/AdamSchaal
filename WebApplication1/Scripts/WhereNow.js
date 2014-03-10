$(document).ready(function () {


});


function getNow(txt, lbl) {
    // Fill stuff
    if (true)
        loadResults("GetNow", txt, lbl);
    else
        loadFail();
}


function getAll(txt, lbl) {
    // Fill stuff
    if (true)
        loadResults("GetAll", txt, lbl);
    else
        loadFail();
}


function loadResults(strType, txt, lbl)
{
    
    $.ajax({
        type: "POST",
        url: "/WhereNow_WS.asmx/" + strType,
        //data: "{str : '" + "hi" + "' }",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: fillSuccess(txt, lbl),
        error: fillFail()
    });
}

function loadFail() {

}

function fillSuccess(txt, lbl) {
    return function (jqXhr, textStatus) {
        if (textStatus == "success") {
            fillAll(jqXhr, txt, lbl);
        }
    };
}

function fillFail(results) {

}

function fillAll(results, txt, lbl) {

    var txtBox = $(txt);
    var lblDisplay = $(lbl);

    txtBox.val(results.d);
    lblDisplay.val(results.d);

}
