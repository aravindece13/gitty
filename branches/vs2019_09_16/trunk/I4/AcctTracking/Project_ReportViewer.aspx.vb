Imports Telerik.Reporting.ReportSourceCollection 'changed 2019-09-18 by SRS per warning
Imports Telerik.ReportViewer.WebForms



Partial Class AcctTracking_Project_ReportViewer
    Inherits System.Web.UI.Page




    Protected Sub ReportViewer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReportViewer1.Load
        Dim ProjectIndex As Int32 = Request.QueryString("ProjectIndex")

        'ReportViewer1.ReportSource.Parameters(0).Value = ProjectIndex
        ReportViewer1.ReportSource.Parameters(0).Value = ProjectIndex




    End Sub

    
End Class
