Imports System.Data.SqlClient
<Serializable()> _
Public Class ProposalStory_Timeline
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dtTimeline As DataTable
        dtTimeline = FillTimelines()

        Dim dv As New DataView(dtTimeline)
        dv.RowFilter = "nAccordion = 1"

        rptFebruary.DataSource = dv.ToTable
        rptFebruary.DataBind()

        dv.RowFilter = "nAccordion = 2"
        rptMarch.DataSource = dv.ToTable
        rptMarch.DataBind()

        dv.RowFilter = "nAccordion = 3"
        rptApril.DataSource = dv.ToTable
        rptApril.DataBind()

    End Sub

#Region "Functions"

    Private Function FillTimelines()
        Dim proc As New SqlClient.SqlCommand("[Proposal].[usp_Get_Timeline]", (New Connection).cnnSQL)
        Dim dt As DataTable

        dt = MiscFunctions.FillDataTable(proc, "dt")

        Return dt
    End Function


    Private Sub TableBind(e As System.Web.UI.WebControls.RepeaterItemEventArgs)
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then
            Dim dr As DataRow = e.Item.DataItem.Row

            Dim lblDate As Label = e.Item.FindControl("lblDate")
            lblDate.Text = dr.Item("dDate")


            Dim lblContent As Label = e.Item.FindControl("lblContent")
            lblContent.Text = dr.Item("cEvent")

            Dim lblCity As Label = e.Item.FindControl("lblLocation")
            lblCity.Text = dr.Item("cLocation")

        End If
    End Sub


#End Region


#Region "DataBind"
    Private Sub rptFebruary_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles rptFebruary.ItemDataBound
        TableBind(e)
    End Sub


    Private Sub rptMarch_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles rptMarch.ItemDataBound
        TableBind(e)
    End Sub


    Private Sub rptApril_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles rptApril.ItemDataBound
        TableBind(e)
    End Sub
#End Region
End Class