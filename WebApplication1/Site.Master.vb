Imports System.Data.SqlClient

<Serializable()> _
Public Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        HideShowMenuItems()

    End Sub


    Private Sub HideShowMenuItems()

        If Debugger.IsAttached Then
            'MiscFunctions.SetDisplay("inline", mnuProposalStory)

            'mnuProposalStory.

        End If

    End Sub


    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        'Master Redirect to Login, Must have all login information
        Dim Userpkg As UserPackage = GetUserPackage()
        If Debugger.IsAttached Then
            'Response.Redirect("/Forms/Standard/UnderConstruction.aspx")
            'Response.Redirect("/Default.aspx")
        ElseIf String.IsNullOrWhiteSpace(Userpkg.UserInformation.cAuthorization) OrElse _
            String.IsNullOrWhiteSpace(Userpkg.UserInformation.cUserName) OrElse _
            String.IsNullOrWhiteSpace(Userpkg.UserInformation.iUserIdentifier) OrElse _
            IsNothing(Userpkg.UserInformation.nUserID) OrElse _
            Not Debugger.IsAttached Then
            'Response.Redirect("/Forms/Standard/UnderConstruction.aspx")
            'Response.Redirect("/Account/Login.aspx")
        End If
    End Sub

End Class