Imports Telerik.Reporting.ReportCollection
Imports Telerik.ReportViewer.WebForms

Partial Class AcctTracking_Sales_ReportViewer
    Inherits System.Web.UI.Page

    Protected Sub ReportViewer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReportViewer1.Load
        Dim CustID As String = Request.QueryString("CustID")

        ReportViewer1.ReportSource.Parameters(0).Value = CustID

    End Sub
End Class
