Imports Telerik.Reporting.ReportCollection
Imports Telerik.ReportViewer.WebForms


Partial Class Reports_Sales_Sales_DashBoard
    Inherits System.Web.UI.Page


    Protected Sub ReportViewer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReportViewer1.Load
        Dim salesID1 As String = Request.Cookies("salesID1").Value
        Dim salesID2 As String = Request.Cookies("salesID2").Value
        Dim salesID3 As String = Request.Cookies("salesID3").Value
        Dim salesID4 As String = Request.Cookies("salesID4").Value
        Dim salesID5 As String = Request.Cookies("salesID5").Value


        ReportViewer1.ReportSource.Parameters(0).Value = salesID1
        ReportViewer1.ReportSource.Parameters(1).Value = salesID2
        ReportViewer1.ReportSource.Parameters(2).Value = salesID3
        ReportViewer1.ReportSource.Parameters(3).Value = salesID4
        ReportViewer1.ReportSource.Parameters(4).Value = salesID5

    End Sub

End Class
