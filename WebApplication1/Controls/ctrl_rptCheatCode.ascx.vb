Public Class ctrl_rptCheatCode
    Inherits System.Web.UI.UserControl

    Public Property title As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        panel.Attributes.Item("href") = uctrlTable.collapseID
        panel.InnerText = title

    End Sub

End Class