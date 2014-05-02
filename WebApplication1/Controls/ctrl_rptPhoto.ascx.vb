Imports System.IO
Imports System
Imports System.Net
Imports System.Xml
Imports System.Data
Imports System.Drawing.Imaging

Public Class ctrl_rptPhoto
    Inherits System.Web.UI.UserControl

    Public dtPics As New DataTable
    Public dtVids As New DataTable
    Public nStart As Integer = 0
    Public nPicsPerPage As Integer = 50
    Public strPhotoDir As String = "/Photos/"
    Public Property tabPhoto As String
    Public Property lYouTube As Boolean = False

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Get page start data
        If lYouTube Then
            LoadYouTube()
        Else
            Integer.TryParse(Page.Request.QueryString.Item("nStart"), nStart)
            CreatePhotoDataTable()
            LoadPhotoRepeater()
        End If
    End Sub

    Private Sub LoadYouTube()
        Dim dsVids As DataSet
        Dim dtPlayer As DataTable
        Dim dtThumbnail As DataTable
        Dim dtTitle As DataTable
        dsVids = GetRSS()

        If dsVids.Tables.Count > 16 Then
            dtPlayer = dsVids.Tables(14)
            dtThumbnail = dsVids.Tables(15)
            dtTitle = dsVids.Tables(16)

            With dtVids
                .TableName = "Videos"
                .Columns.Add("cURL")
                .Columns.Add("cThumb")
            End With

            For Each dr As DataRow In dtPlayer.Rows
                Try
                    Dim drPlayer As DataRow = dtVids.NewRow
                    Dim nGroupID As Integer = 0
                    Dim cURL As String = dr.Item("url")

                    cURL = cURL.Replace("watch?v=", "embed/")
                    cURL = cURL.Replace("&feature=youtube_gdata_player", "?autoplay=1")

                    drPlayer.Item("cURL") = cURL

                    nGroupID = dr.Item("group_Id")

                    Dim drThumb As DataRow = dtThumbnail.Select("group_Id = " & nGroupID)(1)

                    drPlayer.Item("cThumb") = drThumb.Item("url")

                    dtVids.Rows.Add(drPlayer)
                Catch ex As Exception
                    'Do Nothing in case a video errs    
                End Try
            Next

            rptPictures.DataSource = dtVids
            rptPictures.DataBind()

        End If
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
            Dim diPhotos As New DirectoryInfo(Server.MapPath("~" & strPhotoDir & tabPhoto))

            For Each fiPhoto As FileInfo In diPhotos.GetFiles
                If Array.IndexOf(New String() {".jpg", ".png", ".jpeg", ".JPG", ".PNG", ".JPEG"}, fiPhoto.Extension) <> -1 Then
                    'Fill data
                    Dim dr As DataRow = dtPics.NewRow
                    dr.Item("cFileName") = fiPhoto.Name
                    dr.Item("nNumber") = nNumber
                    nNumber = 1

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

    Private Function CreateThumbnail(ByVal inSourceFile As String, ByVal inDestinationFile As String, ByVal ThumbWidth As Integer, _
                                             ByVal ThumbHeight As Integer, Optional ByVal nEncoder As EncoderValue = 0) As Boolean
        Try
            Dim imageFile As System.Drawing.Image
            Dim outputFstream As New FileStream(inSourceFile, FileMode.Open, FileAccess.Read)
            Dim ImageAbortCallBack As System.Drawing.Image.GetThumbnailImageAbort
            Dim orientation As Short

            imageFile = System.Drawing.Image.FromStream(outputFstream)
            ImageAbortCallBack = New System.Drawing.Image.GetThumbnailImageAbort(AddressOf ImageAbortDummyCallback)

            For Each p In imageFile.PropertyItems
                If p.Id = &H112 Or p.Id = 274 Then
                    orientation = BitConverter.ToInt16(p.Value, 0)

                    Select Case orientation
                        Case 1
                            nEncoder = 0
                        Case 3
                            outputFstream.Close()
                            nEncoder = EncoderValue.TransformRotate180
                        Case 6
                            outputFstream.Close()
                            nEncoder = EncoderValue.TransformRotate90
                        Case 8
                            outputFstream.Close()
                            nEncoder = EncoderValue.TransformRotate270
                    End Select
                    If nEncoder <> 0 Then
                        RotateImage(inSourceFile, nEncoder)
                        Return CreateThumbnail(inSourceFile, inDestinationFile, ThumbWidth, ThumbHeight, nEncoder)
                    End If
                End If
            Next

            If (ThumbWidth = 0 And ThumbHeight = 0) Then
                Return False
            ElseIf (ThumbWidth = 0) Then
                ThumbWidth = imageFile.Width / (imageFile.Height / ThumbHeight)
            ElseIf (ThumbHeight = 0) Then
                ThumbHeight = imageFile.Height / (imageFile.Width / ThumbWidth)
            End If

            If nEncoder <> 0 AndAlso nEncoder <> EncoderValue.TransformRotate180 Then
                imageFile = imageFile.GetThumbnailImage(ThumbHeight, ThumbWidth, ImageAbortCallBack, IntPtr.Zero)
            Else
                imageFile = imageFile.GetThumbnailImage(ThumbWidth, ThumbHeight, ImageAbortCallBack, IntPtr.Zero)
            End If

            'IntPtr = A platform-specific type that is used to represent a pointer or a handle.
            imageFile.Save(inDestinationFile, System.Drawing.Imaging.ImageFormat.Jpeg) 'CodecInfo, EncParms)
            'outputFstream.Close()
            outputFstream = Nothing
            imageFile = Nothing

            Select Case orientation
                Case 1
                    outputFstream.Close()
                    nEncoder = 0
                Case 3
                    outputFstream.Close()
                    nEncoder = EncoderValue.TransformRotate180
                Case 6
                    outputFstream.Close()
                    nEncoder = EncoderValue.TransformRotate90
                Case 8
                    outputFstream.Close()
                    nEncoder = EncoderValue.TransformRotate270
            End Select
            If nEncoder <> 0 Then
                RotateImage(inDestinationFile, nEncoder)
            End If

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
                If lYouTube Then
                    Dim a As HtmlControl = e.Item.FindControl("link")
                    Dim img As HtmlControl = e.Item.FindControl("img")

                    a.Attributes("href") = e.Item.DataItem("cURL")
                    a.Attributes("class") &= " fancybox.iframe"
                    img.Attributes("src") = e.Item.DataItem("cThumb")
                Else
                    Dim a As HtmlControl = e.Item.FindControl("link")
                    Dim img As HtmlControl = e.Item.FindControl("img")

                    a.Attributes("href") = strPhotoDir + tabPhoto + e.Item.DataItem("cFileName")
                    img.Attributes("src") = strPhotoDir + tabPhoto + "thumb/" + e.Item.DataItem("cFileName")
                End If
        End Select

    End Sub

    Private Sub RotateImage(filename As String, encoderValue As EncoderValue)
        Dim image As System.Drawing.Image
        Dim PropertyItems As PropertyItem()
        Dim filenameTemp As String
        Dim Enc = System.Drawing.Imaging.Encoder.Transformation
        Dim EncParms As New EncoderParameters(1)
        Dim EncParm As EncoderParameter
        Dim CodecInfo As ImageCodecInfo = GetEncoderInfo("image/jpeg")

        ' Load the image to rotate.
        image = System.Drawing.Image.FromFile(filename)

        ' We're correcting the orientation, so set it to 1.
        PropertyItems = image.PropertyItems
        PropertyItems(0).Id = &H112

        ' 0x0112 as specified in EXIF standard
        PropertyItems(0).Type = 3
        PropertyItems(0).Len = 2

        Dim orientation As Byte() = New [Byte](1) {}
        orientation(0) = 1

        ' little Endian
        orientation(1) = 0
        PropertyItems(0).Value = orientation
        image.SetPropertyItem(PropertyItems(0))

        ' We cannot store into the same image, so use a temporary image instead.
        filenameTemp = filename & ".temp"

        ' For lossless rewriting, we must rotate the image by 90 degree increments.
        EncParm = New EncoderParameter(Enc, CLng(encoderValue))
        EncParms.Param(0) = EncParm

        ' Now write the rotated image with Orientation metadata set to 1.
        image.Save(filenameTemp, CodecInfo, EncParms)

        ' Release memory now, since we could be doing a bunch of these.
        image.Dispose()
        image = Nothing
        GC.Collect()

        ' Delete the original file, which will be replaced below.
        System.IO.File.Delete(filename)

        ' Replace the original file with the rotated file.
        File.Move(filenameTemp, filename)

        ' Delete the temporary image.
        System.IO.File.Delete(filenameTemp)
    End Sub

    Private Shared Function GetEncoderInfo(mimeType As [String]) As ImageCodecInfo
        Dim j As Integer
        Dim encoders As ImageCodecInfo()
        encoders = ImageCodecInfo.GetImageEncoders()
        For j = 0 To encoders.Length - 1
            If encoders(j).MimeType = mimeType Then
                Return encoders(j)
            End If
        Next
        Return Nothing
    End Function

    Private Function GetRSS() As DataSet
        'Create a WebRequest
        Dim rssReq As WebRequest =
        WebRequest.Create("https://gdata.youtube.com/feeds/api/users/aschaal1263/uploads?max-results=50")

        ''Create a Proxy
        'Dim px As New WebProxy("http://gdata.youtube.com/feeds/api/users/aschaal1263/uploads?max-results=50", True)

        ''Assign the proxy to the WebRequest
        'rssReq.Proxy = px

        'Set the timeout in Seconds for the WebRequest
        rssReq.Timeout = 5000

        Try
            'Get the WebResponse
            Dim rep As WebResponse = rssReq.GetResponse()

            'Read the Response in a XMLTextReader
            Dim xtr As New XmlTextReader(rep.GetResponseStream())

            'Create a new DataSet
            Dim ds As New DataSet()

            'Read the Response into the DataSet
            ds.ReadXml(xtr)

            'Return DataSet
            Return ds

        Catch ex As Exception
            'Do nothing in case YouTube is messed up
        End Try
    End Function

End Class








'Imports System.IO
'Imports System.Drawing.Imaging
'Imports System.Drawing

'Public Class ctrl_rptPhoto
'    Inherits System.Web.UI.UserControl

'    Public dtPics As New DataTable
'    Public nStart As Integer = 0
'    Public nPicsPerPage As Integer = 50
'    Public strPhotoDir As String = "/Photos/"
'    Public Property tabPhoto As String

'    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
'        'Get page start data
'        Integer.TryParse(Page.Request.QueryString.Item("nStart"), nStart)

'        CreatePhotoDataTable()

'        LoadPhotoRepeater()

'    End Sub

'    Private Sub LoadPhotoRepeater()
'        Dim dvPics As New DataView
'        dvPics.Table = dtPics
'        dvPics.RowFilter = String.Concat("(", nStart, " <= nNumber) and (nNumber < ", nStart  nPicsPerPage, ")")

'        rptPictures.DataSource = dvPics
'        rptPictures.DataBind()
'    End Sub

'    Private Sub CreatePhotoDataTable()
'        If (dtPics.Rows.Count = 0) Then
'            'Prepare columns
'            With dtPics
'                .TableName = "Pictures"
'                .Columns.Add("cFileName")
'                .Columns.Add("nNumber")
'            End With

'            Dim nNumber As Integer = 0
'            Dim dtPhotos As New DirectoryInfo(Server.MapPath("~" & strPhotoDir & tabPhoto))
'            For Each fiPhoto As FileInfo In dtPhotos.GetFiles
'                If Array.IndexOf(New String() {".jpg", ".png", ".jpeg", ".JPG", ".PNG", ".JPEG"}, fiPhoto.Extension) <> -1 Then

'                    TestRotate(fiPhoto.FullName)
'                End If
'            Next


'            Dim diPhotos As New DirectoryInfo(Server.MapPath("~" & strPhotoDir & tabPhoto))
'            For Each fiPhoto As FileInfo In diPhotos.GetFiles
'                If Array.IndexOf(New String() {".jpg", ".png", ".jpeg", ".JPG", ".PNG", ".JPEG"}, fiPhoto.Extension) <> -1 Then

'                    'Fill data
'                    Dim dr As DataRow = dtPics.NewRow
'                    dr.Item("cFileName") = fiPhoto.Name
'                    dr.Item("nNumber") = nNumber
'                    nNumber = 1


'                    'Load thumb file data
'                    Dim fiThumb As New FileInfo(fiPhoto.FullName.Replace(fiPhoto.Name, "thumb\" & fiPhoto.Name))

'                    'Create thumbs if necessary
'                    If nStart <= nNumber And nNumber <= nStart  nPicsPerPage Then
'                        If (Not fiThumb.Exists Or fiThumb.CreationTime < fiPhoto.CreationTime) Then
'                            If (fiThumb.Exists) Then
'                                fiThumb.Delete()
'                            End If

'                            CreateThumbnail(fiPhoto.FullName, _
'                                        fiPhoto.FullName.Replace(fiPhoto.Name, "thumb\" & fiPhoto.Name), _
'                                        0, 75)
'                        End If
'                    End If

'                    'Retest file data
'                    fiThumb = New FileInfo(fiPhoto.FullName.Replace(fiPhoto.Name, "thumb\" & fiPhoto.Name))

'                    'Add row
'                    dtPics.Rows.Add(dr)
'                End If
'            Next
'        End If
'    End Sub

'    Private Function CreateThumbnail(ByVal inSourceFile As String, ByVal inDestinationFile As String, _
'                                     ByVal ThumbWidth As Integer, ByVal ThumbHeight As Integer) As Boolean
'        Try
'            Dim imageFile As System.Drawing.Image
'            Dim outputFstream As New FileStream(inSourceFile, FileMode.Open, FileAccess.Read)
'            Dim ImageAbortCallBack As System.Drawing.Image.GetThumbnailImageAbort

'            imageFile = System.Drawing.Image.FromStream(outputFstream)
'            ImageAbortCallBack = New System.Drawing.Image.GetThumbnailImageAbort(AddressOf ImageAbortDummyCallback)

'            'For Each p In imageFile.PropertyItems
'            '    If (p.Id = &H112 Or p.Id = 274) Then
'            '        If p.Value(0) <> 1 Then
'            '            outputFstream.Close()
'            '            RotateImage(inSourceFile, EncoderValue.TransformRotate90)
'            '            nEncoder = EncoderValue.TransformRotate90

'            '            Return CreateThumbnail(inSourceFile, inDestinationFile, ThumbWidth, ThumbHeight, nEncoder)
'            '        End If
'            '    End If
'            'Next

'            'Dim Enc = System.Drawing.Imaging.Encoder.Transformation
'            'Dim EncParm As EncoderParameter = New EncoderParameter(Enc, CLng(0))
'            'Dim EncParms As New EncoderParameters(1)
'            'Dim CodecInfo As ImageCodecInfo = GetEncoderInfo("image/jpeg")

'            'For Each p In imageFile.PropertyItems
'            '    If p.Id = &H112 Then
'            '        If p.Value(0) = 1 Then
'            '            EncParm = New EncoderParameter(Enc, CLng(EncoderValue.TransformRotate90))
'            '        End If
'            '    End If
'            'Next
'            'EncParms.Param(0) = EncParm


'            If (ThumbWidth = 0 And ThumbHeight = 0) Then
'                Return False
'            ElseIf (ThumbWidth = 0) Then
'                ThumbWidth = imageFile.Width / (imageFile.Height / ThumbHeight)
'            ElseIf (ThumbHeight = 0) Then
'                ThumbHeight = imageFile.Height / (imageFile.Width / ThumbWidth)
'            End If

'            imageFile = imageFile.GetThumbnailImage(ThumbWidth, ThumbHeight, ImageAbortCallBack, IntPtr.Zero)

'            'IntPtr = A platform-specific type that is used to represent a pointer or a handle.
'            'imageFile.Save(inDestinationFile, System.Drawing.Imaging.ImageFormat.Jpeg)

'            Using memory As New MemoryStream()
'                Using fs As New FileStream(inDestinationFile, FileMode.Create, FileAccess.ReadWrite)
'                    imageFile.Save(memory, ImageFormat.Jpeg)
'                    Dim bytes As Byte() = memory.ToArray()
'                    fs.Write(bytes, 0, bytes.Length)
'                End Using
'            End Using

'            ' Release memory now, since we could be doing a bunch of these.
'            imageFile.Dispose()
'            imageFile = Nothing
'            GC.Collect()

'            outputFstream.Close()
'            outputFstream = Nothing
'            imageFile = Nothing
'        Catch ex As Exception
'            Return False
'        End Try
'        Return True
'    End Function

'    Private Function ImageAbortDummyCallback() As Boolean
'        Throw New Exception("Not handled")
'    End Function

'    Private Sub rptPictures_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles rptPictures.ItemDataBound
'        Select Case e.Item.ItemType
'            Case ListItemType.Item, ListItemType.AlternatingItem
'                Dim a As HtmlControl = e.Item.FindControl("link")
'                Dim img As HtmlControl = e.Item.FindControl("img")

'                a.Attributes("href") = strPhotoDir  tabPhoto  e.Item.DataItem("cFileName")
'                img.Attributes("src") = strPhotoDir  tabPhoto  "thumb/"  e.Item.DataItem("cFileName")

'        End Select
'    End Sub


'    Public Function TestRotate(sImageFilePath As String) As Boolean
'        Dim rft As RotateFlipType = RotateFlipType.RotateNoneFlipNone
'        Dim img As System.Drawing.Image = System.Drawing.Image.FromFile(sImageFilePath)
'        Dim properties As PropertyItem() = img.PropertyItems
'        Dim bReturn As Boolean = False
'        For Each p As PropertyItem In properties
'            If p.Id = 274 Then
'                Dim orientation As Short = BitConverter.ToInt16(p.Value, 0)
'                Select Case orientation
'                    Case 1
'                        rft = RotateFlipType.RotateNoneFlipNone
'                    Case 3
'                        rft = RotateFlipType.Rotate180FlipNone
'                    Case 6
'                        rft = RotateFlipType.Rotate90FlipNone
'                    Case 8
'                        rft = RotateFlipType.Rotate270FlipNone
'                End Select
'            End If
'        Next
'        If rft <> RotateFlipType.RotateNoneFlipNone Then
'            img.RotateFlip(rft)

'            ' We cannot store into the same image, so use a temporary image instead.
'            Dim filenameTemp = sImageFilePath & ".temp"

'            Using memory As New MemoryStream()
'                Using fs As New FileStream(filenameTemp, FileMode.Create, FileAccess.ReadWrite)
'                    img.Save(memory, ImageFormat.Jpeg)
'                    Dim bytes As Byte() = memory.ToArray()
'                    fs.Write(bytes, 0, bytes.Length)
'                End Using
'            End Using

'            ' Release memory now, since we could be doing a bunch of these.
'            img.Dispose()
'            img = Nothing
'            GC.Collect()

'            ' Delete the original file, which will be replaced below.
'            System.IO.File.Delete(sImageFilePath)

'            ' Replace the original file with the rotated file.
'            File.Move(filenameTemp, sImageFilePath)

'            ' Delete the temporary image.
'            System.IO.File.Delete(filenameTemp)
'            bReturn = True
'        End If
'        Return bReturn

'    End Function

'    'Private Sub RotateImage(filename As String, encoderValue As EncoderValue)
'    '    Dim image As System.Drawing.Image
'    '    Dim PropertyItems As PropertyItem()
'    '    Dim filenameTemp As String
'    '    Dim Enc = System.Drawing.Imaging.Encoder.Transformation
'    '    Dim EncParms As New EncoderParameters(1)
'    '    Dim EncParm As EncoderParameter
'    '    Dim CodecInfo As ImageCodecInfo = GetEncoderInfo("image/jpeg")

'    '    ' Load the image to rotate.
'    '    image = System.Drawing.Image.FromFile(filename)

'    '    ' We're correcting the orientation, so set it to 1.
'    '    PropertyItems = image.PropertyItems
'    '    PropertyItems(0).Id = &H112
'    '    ' 0x0112 as specified in EXIF standard
'    '    PropertyItems(0).Type = 3
'    '    PropertyItems(0).Len = 2
'    '    Dim orientation As Byte() = New [Byte](1) {}
'    '    orientation(0) = 1
'    '    ' little Endian
'    '    orientation(1) = 0
'    '    PropertyItems(0).Value = orientation
'    '    image.SetPropertyItem(PropertyItems(0))

'    '    ' We cannot store into the same image, so use a temporary image instead.
'    '    filenameTemp = filename & ".temp"

'    '    ' For lossless rewriting, we must rotate the image by 90 degree increments.
'    '    EncParm = New EncoderParameter(Enc, CLng(encoderValue))
'    '    EncParms.Param(0) = EncParm

'    '    ' Now write the rotated image with Orientation metadata set to 1.
'    '    image.Save(filenameTemp, CodecInfo, EncParms)

'    '    ' Release memory now, since we could be doing a bunch of these.
'    '    image.Dispose()
'    '    image = Nothing
'    '    GC.Collect()

'    '    ' Delete the original file, which will be replaced below.
'    '    System.IO.File.Delete(filename)

'    '    ' Replace the original file with the rotated file.
'    '    File.Move(filenameTemp, filename)

'    '    ' Delete the temporary image.
'    '    System.IO.File.Delete(filenameTemp)
'    'End Sub

'    'Private Shared Function GetEncoderInfo(mimeType As [String]) As ImageCodecInfo
'    '    Dim j As Integer
'    '    Dim encoders As ImageCodecInfo()
'    '    encoders = ImageCodecInfo.GetImageEncoders()
'    '    For j = 0 To encoders.Length - 1
'    '        If encoders(j).MimeType = mimeType Then
'    '            Return encoders(j)
'    '        End If
'    '    Next
'    '    Return Nothing
'    'End Function


'End Class