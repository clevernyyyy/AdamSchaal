Public Class ctrl_tblCheatCode
    Inherits System.Web.UI.UserControl

    Public ReadOnly Property collapseID As String
        Get
            Return "#" + collapse.ClientID
        End Get
    End Property
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



    End Sub




End Class