Imports System.IO
Public Class Proposal_PicVideos
    Inherits System.Web.UI.Page

    Public dtPics As New DataTable
    Public nStart As Integer = 0
    Public nPicsPerPage As Integer = 50
    Public strPhotoDir As String = "/Photos/"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
      

    End Sub

End Class