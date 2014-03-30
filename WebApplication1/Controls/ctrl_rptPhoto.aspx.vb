Imports System.IO

Public Class ctrl_rptPhoto
    Inherits System.Web.UI.Page

    Public dtPics As New DataTable
    Public nStart As Integer = 0
    Public nPicsPerPage As Integer = 50
    Public strPhotoDir As String = "/Photos/"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Get page start data
        Integer.TryParse(Page.Request.QueryString.Item("nStart"), nStart)

        CreatePhotoDataTable()

        LoadPhotoRepeater()

    End Sub

    Private Sub LoadPhotoRepeater()
        Dim dvPics As New DataView
        dvPics.Table = dtPics
        dvPics.RowFilter = String.Concat("(", nStart, " <= nNumber) and (nNumber < ", nStart + nPicsPerPage, ")")

        rptPictures.DataSource = dvPics
        rptPictures.DataBind()
    End Sub

    Private Sub CreatePhotoDataTable()
        If (dtPics.Rows.Count = 0) Then
            'Prepare columns
            With dtPics
                .TableName = "Pictures"
                .Columns.Add("cFileName")
                .Columns.Add("nNumber")
            End With

            Dim nNumber As Integer = 0
            Dim diPhotos As New DirectoryInfo(Server.MapPath("~" & strPhotoDir))
            For Each fiPhoto As FileInfo In diPhotos.GetFiles
                If Array.IndexOf(New String() {".jpg", ".png", ".JPG", ".PNG"}, fiPhoto.Extension) <> -1 Then

                    'Fill data
                    Dim dr As DataRow = dtPics.NewRow
                    dr.Item("cFileName") = fiPhoto.Name
                    dr.Item("nNumber") = nNumber
                    nNumber += 1

                    'Load thumb file data
                    Dim fiThumb As New FileInfo(fiPhoto.FullName.Replace(fiPhoto.Name, "thumb\" & fiPhoto.Name))

                    'Create thumbs if necessary
                    If nStart <= nNumber And nNumber <= nStart + nPicsPerPage Then
                        If (Not fiThumb.Exists Or fiThumb.CreationTime < fiPhoto.CreationTime) Then
                            If (fiThumb.Exists) Then
                                fiThumb.Delete()
                            End If

                            CreateThumbnail(fiPhoto.FullName, _
                                        fiPhoto.FullName.Replace(fiPhoto.Name, "thumb\" & fiPhoto.Name), _
                                        0, 75)
                        End If
                    End If

                    'Retest file data
                    fiThumb = New FileInfo(fiPhoto.FullName.Replace(fiPhoto.Name, "thumb\" & fiPhoto.Name))

                    'Add row
                    dtPics.Rows.Add(dr)
                End If
            Next
        End If
    End Sub

    Private Function CreateThumbnail(ByVal inSourceFile As String, ByVal inDestinationFile As String, ByVal ThumbWidth As Integer, ByVal ThumbHeight As Integer) As Boolean
        Try
            Dim imageFile As System.Drawing.Image
            Dim outputFstream As New FileStream(inSourceFile, FileMode.Open, FileAccess.Read)
            Dim ImageAbortCallBack As System.Drawing.Image.GetThumbnailImageAbort

            imageFile = System.Drawing.Image.FromStream(outputFstream)
            ImageAbortCallBack = New System.Drawing.Image.GetThumbnailImageAbort(AddressOf ImageAbortDummyCallback)

            If (ThumbWidth = 0 And ThumbHeight = 0) Then
                Return False
            ElseIf (ThumbWidth = 0) Then
                ThumbWidth = imageFile.Width / (imageFile.Height / ThumbHeight)
            ElseIf (ThumbHeight = 0) Then
                ThumbHeight = imageFile.Height / (imageFile.Width / ThumbWidth)
            End If

            imageFile = imageFile.GetThumbnailImage(ThumbWidth, ThumbHeight, ImageAbortCallBack, IntPtr.Zero)

            'IntPtr = A platform-specific type that is used to represent a pointer or a handle.
            imageFile.Save(inDestinationFile, System.Drawing.Imaging.ImageFormat.Jpeg)
            outputFstream.Close()
            outputFstream = Nothing
            imageFile = Nothing
        Catch ex As Exception
            Return False
        End Try
        Return True
    End Function

    Private Function ImageAbortDummyCallback() As Boolean
        Throw New Exception("Not handled")
    End Function

    Private Sub rptPictures_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles rptPictures.ItemDataBound
        Select Case e.Item.ItemType
            Case ListItemType.Item, ListItemType.AlternatingItem
                Dim a As HtmlControl = e.Item.FindControl("link")
                Dim img As HtmlControl = e.Item.FindControl("img")

                a.Attributes("href") = "../../../Photos/" + e.Item.DataItem("cFileName")
                img.Attributes("src") = "../../../Photos/thumb/" + e.Item.DataItem("cFileName")

        End Select
    End Sub

End Class