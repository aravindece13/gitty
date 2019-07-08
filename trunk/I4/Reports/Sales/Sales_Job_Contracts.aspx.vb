Imports Telerik.Reporting.ReportCollection
Imports Telerik.ReportViewer.WebForms


Partial Class Reports_Sales_Sales_Job_Contracts
    Inherits System.Web.UI.Page

    Protected Sub ReportViewer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReportViewer1.Load
        Dim CustID As String = Request.QueryString("CustID")
        Dim ShipToID As String = Request.QueryString("ShipToID")

        ReportViewer1.ReportSource.Parameters(0).Value = CustID
        ReportViewer1.ReportSource.Parameters(1).Value = ShipToID
    End Sub


End Class
