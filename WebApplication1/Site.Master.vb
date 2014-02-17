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

End Class