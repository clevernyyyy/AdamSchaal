<Serializable()> _
Public Class Connection
    Public Property cnnStr As String
    Public ReadOnly Property cnnSQL As System.Data.SqlClient.SqlConnection
        Get
            Return New SqlClient.SqlConnection(Me.cnnStr)
        End Get
    End Property

    Public Sub New()
        Me.cnnStr = ConfigurationManager.AppSettings.Item("FNOLSQLCnn")
    End Sub

End Class

