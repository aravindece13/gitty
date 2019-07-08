Imports Telerik.Reporting.ReportCollection
Imports Telerik.ReportViewer.WebForms


Partial Class Reports_Operations_Operations_OldInventoryListing_2yr
    Inherits System.Web.UI.Page



    Protected Sub ReportViewer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReportViewer1.Load
        Dim Whse1 As String = Request.Cookies("Whse1").Value
        Dim Whse2 As String = Request.Cookies("Whse2").Value
        Dim Whse3 As String = Request.Cookies("Whse3").Value
        Dim Whse4 As String = Request.Cookies("Whse4").Value
        Dim Whse5 As String = Request.Cookies("Whse5").Value


        ReportViewer1.ReportSource.Parameters(1).Value = Whse1
        ReportViewer1.ReportSource.Parameters(2).Value = Whse2
        ReportViewer1.ReportSource.Parameters(3).Value = Whse3
        ReportViewer1.ReportSource.Parameters(4).Value = Whse4
        ReportViewer1.ReportSource.Parameters(5).Value = Whse5

    End Sub

End Class
