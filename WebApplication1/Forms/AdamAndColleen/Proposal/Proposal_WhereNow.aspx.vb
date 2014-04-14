Imports System.Data.SqlClient
<Serializable()> _
Public Class Proposal_WhereNow
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        AddGetNowJavaScript(btnGetNow, lblNow)
        AddGetAllJavaScript(btnGetAll, accordion)

        'Init hide display
        SetDisplay("none", divCheater)
    End Sub

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
    Public Sub AddGetAllJavaScript(ByVal btn As HtmlControl, ByVal accord As HtmlControl)
        Dim strJava As String

        'Shows info from SQL if button is pressed
        strJava = "javascript:getAll(" + accord.ClientID + ");"
        btn.Attributes.Add("onclick", strJava)

    End Sub
#End Region

End Class