Public Class UnderConstruction
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub HomeRun_Click(sender As Object, e As System.EventArgs) Handles HomeRun.Click
        HttpContext.Current.Session("lHomeRun") = True
        Response.Redirect("/Default.aspx")
    End Sub


End Class