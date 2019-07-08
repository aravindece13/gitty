Imports Telerik.Reporting.ReportCollection
Imports Telerik.ReportViewer.WebForms

Partial Class Reports_AcctTrack_RV_TaskMngment_Sales
    Inherits System.Web.UI.Page

    Protected Sub ReportViewer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReportViewer1.Load
        Dim SalesName As String = Request.Cookies("SalesName").Value

        ReportViewer1.ReportSource.Parameters(0).Value = SalesName

    End Sub

End Class
