Imports Telerik.Reporting.ReportCollection
Imports Telerik.ReportViewer.WebForms

Partial Class Reports_AcctTrack_RV_TaskMngment_AMRSpecialist
    Inherits System.Web.UI.Page


    Protected Sub ReportViewer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReportViewer1.Load
        Dim Region1 As String = Request.Cookies("Region1").Value
        Dim Region2 As String = Request.Cookies("Region2").Value
        Dim Region3 As String = Request.Cookies("Region3").Value
        Dim Region4 As String = Request.Cookies("Region4").Value
        Dim Region5 As String = Request.Cookies("Region5").Value

        ReportViewer1.ReportSource.Parameters(0).Value = Region1
        ReportViewer1.ReportSource.Parameters(1).Value = Region2
        ReportViewer1.ReportSource.Parameters(2).Value = Region3
        ReportViewer1.ReportSource.Parameters(3).Value = Region4
        ReportViewer1.ReportSource.Parameters(4).Value = Region5

    End Sub

End Class
