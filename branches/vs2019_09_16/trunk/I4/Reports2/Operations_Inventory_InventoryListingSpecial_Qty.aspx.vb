
Imports System

Partial Class Reports2_Operations_Inventory_InventoryListingSpecial_Qty
    Inherits System.Web.UI.Page

    Protected Sub ReportViewer1_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        ' Set report server and report path
        ReportViewer1.ServerReport.ReportServerUrl = New Uri("http://srv-sql3:80/ReportServer/")
        ReportViewer1.ServerReport.ReportPath = "/Operations/Inventory/InventoryListingSpecial_Qty"


    End Sub

End Class
