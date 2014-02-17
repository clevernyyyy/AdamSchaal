Imports System.Data.SqlClient
Imports WebApplication1.Enumerations

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Forces SSL
        'If (HttpContext.Current.Request.IsSecureConnection.Equals(False) And HttpContext.Current.Request.IsLocal.Equals(False)) Then
        '    Response.Redirect("https://" + Request.ServerVariables("HTTP_HOST").ToString + HttpContext.Current.Request.RawUrl)
        'End If

        Dim Userpkg As UserPackage = GetUserPackage()
        Userpkg.UserInformation.cAuthorization = ""
        Userpkg.UserInformation.nUserID = Nothing
        Userpkg.UserInformation.iUserIdentifier = ""
        Userpkg.UserInformation.cUserName = ""
    End Sub

    Private Function setAuthorization(ByVal strAuthorization As String) As Boolean
        Dim Userpkg As UserPackage = GetUserPackage()

        Select Case strAuthorization
            Case "Administrator"
                Userpkg.UserInformation.cAuthorization = Enumerations.enmAuthorization.Administrator
                Return True
            Case "In-House User"
                Userpkg.UserInformation.cAuthorization = Enumerations.enmAuthorization.InHouseUser
                Return True
            Case "General Agent"
                Userpkg.UserInformation.cAuthorization = Enumerations.enmAuthorization.GeneralAgent
                Return True
            Case "Producer"
                Userpkg.UserInformation.cAuthorization = Enumerations.enmAuthorization.Producer
                Return True
            Case "Insured"
                Userpkg.UserInformation.cAuthorization = Enumerations.enmAuthorization.Insured
                Return True
            Case Else
                Return False
        End Select
    End Function


    'Private Sub btnLogin_Click(sender As Object, e As System.EventArgs) Handles btnLogin.Click

    'End Sub


    Public Function EmailValidate(ByVal strEmail As String) As Boolean
        'joe.username(user)@(server)somedomain(domain).com(top-level domain)

        Dim strTestString As String = strEmail.ToLower.Trim()
        Dim myRegexOptions As RegexOptions = RegexOptions.IgnoreCase
        Dim strRegex As String = ""

        '1. Test entire string if there are any embedded white spaces, commas or other illegal characters (add more later)
        strRegex = "[\s\,\(\)\{\}\[\]]"
        Dim myInvalidRegex As New Regex(strRegex, myRegexOptions)
        If myInvalidRegex.IsMatch(strTestString) Then
            Return False
        End If

        '2. Test if a fax number is being entered
        strRegex = "^fax@[0-9]+\."
        Dim myFaxRegex As New Regex(strRegex, myRegexOptions)
        If myFaxRegex.IsMatch(strTestString) Then
            Return False
        End If

        '3. Test strUserName, strDomain and strTopLevel independently
        Dim strUserName As String = ""
        Dim strDomain As String = ""
        Dim strTopLevel As String = ""
        If Not strTestString.Contains("@") Then
            Return False
        Else
            Dim strTwoParts() As String = strTestString.Split("@")
            strUserName = strTwoParts(0)
            If Not strTwoParts(1).Contains(".") Then
                Return False
            Else
                Dim strFlipped As String = StrReverse(strTwoParts(1))
                Dim strBackParts() As String = strFlipped.Split(".")
                If strBackParts.Length < 2 Then
                    Return False
                Else
                    Dim strRevDomain As String = ""
                    For i As Integer = 0 To strBackParts.Length - 1
                        If (i = 0) Then
                            strTopLevel = StrReverse(strBackParts(i))
                        Else
                            strRevDomain += "." + strBackParts(i)
                        End If
                    Next
                    strDomain = StrReverse(strRevDomain).Trim(".")
                End If
            End If
        End If

        '3a. User Name
        'Start with alphanumeric allow single periods and other characters
        strRegex = _
            "^([a-z0-9]+[_\+\'\#\!\$\%\&\'\*\/\?\=\^\`\{\|\}\~\-]*[a-z0-9]*)((\.)?([a-z0-9]+[_\+\'\#\!\$\%\&\'\*\/\?\=\^\`\{\|\}\~\-]*[a-z0-9]*))*$"
        Dim oRegexUserNameRequired As New Regex(strRegex, myRegexOptions)
        If (Not oRegexUserNameRequired.IsMatch(strUserName)) Then
            Return False
        End If

        '3.b Local Domain 
        'require an alpha character to start domain 
        strRegex = "^[a-z]+"
        Dim oRegexDomainRequired1 As New Regex(strRegex, myRegexOptions)
        If Not oRegexDomainRequired1.IsMatch(strDomain) Then
            Return False
        End If
        'allow periods between words
        strRegex = "^\w+([.-]\w+)*?$"
        Dim oRegexDomainRequired2 As New Regex(strRegex, myRegexOptions)
        If Not oRegexDomainRequired2.IsMatch(strDomain) Then
            Return False
        End If

        '3.c Top Level Domain
        'any two to four alpha characters and museum
        strRegex = _
            "^([a-z]{2,4}|museum)$"
        Dim oRegexTopLevelRequired As New Regex(strRegex, myRegexOptions)
        If (Not oRegexTopLevelRequired.IsMatch(strTopLevel)) Then
            Return False
        End If

        Return True
    End Function


End Class