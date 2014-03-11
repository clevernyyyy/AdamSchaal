Imports System.Data.SqlClient
<Serializable()> _
Public Class Proposal_WhereNow
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        AddGetNowJavaScript(btnGetNow, lblNow)
        AddGetAllJavaScript(btnGetAll, lblAll)

    End Sub


#Region "Buttons"

    'Private Sub btnGetNow_Click(sender As Object, e As System.EventArgs) Handles btnGetNow.Click
    '    Dim dtDisplay As DataTable
    '    dtDisplay = WhatIsHappening(False)

    '    lblNow.Text = dtDisplay.Rows(0).Item("cContent")

    'End Sub

    'Private Sub btnGetAll_ServerClick(sender As Object, e As System.EventArgs) Handles btnGetAll.ServerClick
    '    Dim dtDisplay As DataTable
    '    dtDisplay = WhatIsHappening(True)
    'End Sub

#End Region





#Region "Functions"
    Private Function WhatIsHappening(ByVal lCheatCode As Boolean)
        Dim proc As New SqlClient.SqlCommand("[Proposal].[usp_Get_WhereAreWeNow] ", (New Connection).cnnSQL)

        proc.Parameters.AddWithValue("@dDate", Date.Now)
        proc.Parameters.AddWithValue("@lCheatCode", lCheatCode)

        Dim dt As DataTable
        dt = MiscFunctions.FillDataTable(proc, "dt")

        Return dt
    End Function

#End Region

#Region "JavaScript"
    Public Sub AddGetNowJavaScript(ByVal btn As HtmlControl, ByVal lbl As Label)
        Dim strJava As String

        'Shows info from SQL if button is pressed
        strJava = "javascript:getNow(" + lbl.ClientID + ");"
        btn.Attributes.Add("onclick", strJava)

    End Sub
    Public Sub AddGetAllJavaScript(ByVal btn As HtmlControl, ByVal lbl As Label)
        Dim strJava As String

        'Shows info from SQL if button is pressed
        strJava = "javascript:getAll(" + lbl.ClientID + ");"
        btn.Attributes.Add("onclick", strJava)

    End Sub
#End Region


End Class