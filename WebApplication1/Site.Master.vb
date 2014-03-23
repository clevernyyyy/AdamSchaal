Imports System.Data.SqlClient

<Serializable()> _
Public Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.Url.AbsoluteUri.Contains("AdamAndCol") Then
            mnuAdamAndCol.Visible = True
        Else
            mnuAdamAndCol.Visible = False
        End If

        If Request.Url.AbsoluteUri.Contains("Default") Then
            mnuHome.Visible = True
            mnuHomeRight.Visible = False
            mnuAdamAndColRight.Visible = True
        Else
            mnuHome.Visible = False
            mnuHomeRight.Visible = True
            mnuAdamAndColRight.Visible = False
        End If

        HideShowMenuItems()

    End Sub


    Private Sub HideShowMenuItems()

        If Debugger.IsAttached Then


        End If

    End Sub


    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        'Master Redirect to Login, Must have all login information
        Dim Userpkg As UserPackage = GetUserPackage()
        If 1 Then
            If Debugger.IsAttached OrElse HttpContext.Current.Session("lHomeRun") = True Then
                'Continue Redirect to Default Page
            ElseIf String.IsNullOrWhiteSpace(Userpkg.UserInformation.cAuthorization) OrElse _
                String.IsNullOrWhiteSpace(Userpkg.UserInformation.cUserName) OrElse _
                String.IsNullOrWhiteSpace(Userpkg.UserInformation.iUserIdentifier) OrElse _
                IsNothing(Userpkg.UserInformation.nUserID) OrElse _
                Not Debugger.IsAttached Then
                Response.Redirect("/Forms/Standard/UnderConstruction.aspx")
                'Response.Redirect("/Account/Login.aspx")
            Else
                Response.Redirect("/Forms/Standard/UnderConstruction.aspx")
            End If
        End If
    End Sub

End Class