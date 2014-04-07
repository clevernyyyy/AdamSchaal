Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Net
Imports System.IO
Imports System.Web.Script.Serialization
Imports System.Collections.Specialized

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
<Script.Services.ScriptService()> _
Public Class WhereNow_WS
    Inherits System.Web.Services.WebService

    <WebMethod(True)> _
    Public Function GetNow() As String
        Try
            Dim pkg As Package = GetPackage()
            Dim dt As New DataTable
            Dim str As String
            dt = GetWhereFromSQL(False)

            For Each dr As DataRow In dt.Rows
                RowToObject(pkg.WhereNow, dr)
            Next

            str = New JavaScriptSerializer().Serialize(pkg.WhereNow)

            Return str
        Catch ex As Exception
            Throw New Exception
        End Try
    End Function


    <WebMethod(True)> _
    Public Function GetAll() As String
        Try
            Dim pkg As Package = GetPackage()
            Dim dt As New DataTable
            Dim str As String
            Dim list As New List(Of WhereNow)

            dt = GetWhereFromSQL(True)

            For Each dr As DataRow In dt.Rows
                Dim currRecord As New WhereNow
                RowToObject(currRecord, dr)
                list.Add(currRecord)
            Next

            str = New JavaScriptSerializer().Serialize(list)
            Return str
        Catch ex As Exception
            Throw New Exception
        End Try
    End Function



    Public Function GetWhereFromSQL(ByVal lCheatCode As Boolean) As DataTable
        Dim dt As New DataTable
        Dim dDate As Date = Date.Now
        Dim proc As New SqlClient.SqlCommand("[Proposal].[usp_Get_WhereAreWeNow]", (New Connection).cnnSQL)

        proc.Parameters.AddWithValue("@dDate", dDate)
        proc.Parameters.AddWithValue("@lCheatCode", lCheatCode)

        dt = FillDataTable(proc, "dt")

        Return dt
    End Function



End Class