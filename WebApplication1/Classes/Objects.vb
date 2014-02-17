Public Module Objects

#Region "UserPackage"
    Public Function GetUserPackage()
        Dim Userpkg As UserPackage
        If HttpContext.Current.Session("UserPackage") Is Nothing Then
            Userpkg = New UserPackage
            HttpContext.Current.Session("UserPackage") = Userpkg
        End If
        Userpkg = HttpContext.Current.Session("UserPackage")
        Return Userpkg
    End Function

    Public Sub ClearUserPackage()
        HttpContext.Current.Session("UserPackage") = Nothing
    End Sub
#End Region

End Module


#Region "User Package"
<Serializable()> _
Public Class UserPackage
    Public UserInformation As New UserInformation

End Class

#Region "UserInformation"
<Serializable()> _
Public Class UserInformation
    Public cAuthorization As String
    Public nUserID As Integer
    Public iUserIdentifier As String
    Public cUserName As String

End Class
#End Region

#End Region