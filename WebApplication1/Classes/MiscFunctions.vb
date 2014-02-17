Imports System.Web.HttpContext
Imports System.Data.SqlClient

Module MiscFunctions
    Public Sub SetDisplay(ByVal strDisplay As String, ByVal ParamArray Controls() As Control)
        'This is modified to use a variable list of controls
        Dim wc As Control

        For Each wc In Controls
            Dim strType As String = wc.GetType.ToString.ToLower
            If InStr(strType, "html") > 0 Then
                Dim htmlcontrol As HtmlControl = wc
                htmlcontrol.Style("display") = strDisplay
            ElseIf InStr(strType, "checkbox") > 0 Then
                Dim checkbox As Web.UI.WebControls.CheckBox = wc
                checkbox.Style("display") = strDisplay
            ElseIf InStr(strType, "label") > 0 Then
                Dim label As Web.UI.WebControls.Label = wc
                label.Style("display") = strDisplay
            ElseIf InStr(strType, "dropdownlist") > 0 Then
                Dim dropdownlist As Web.UI.WebControls.DropDownList = wc
                dropdownlist.Style("display") = strDisplay
            ElseIf InStr(strType, "textbox") > 0 Then
                Dim textbox As Web.UI.WebControls.TextBox = wc
                textbox.Style("display") = strDisplay
            ElseIf InStr(strType, "linkbutton") > 0 Then
                Dim linkbutton As Web.UI.WebControls.LinkButton = wc
                linkbutton.Style("display") = strDisplay
            ElseIf InStr(strType, "imagebutton") > 0 Then
                Dim imagebutton As Web.UI.WebControls.ImageButton = wc
                imagebutton.Style("display") = strDisplay
            ElseIf InStr(strType, "hyperlink") > 0 Then
                Dim link As Web.UI.WebControls.HyperLink = wc
                link.Style("display") = strDisplay
            ElseIf InStr(strType, "radiobuttonlist") > 0 Then
                Dim radiobutton As Web.UI.WebControls.RadioButtonList = wc
                radiobutton.Style("display") = strDisplay
            End If
        Next
    End Sub
End Module
