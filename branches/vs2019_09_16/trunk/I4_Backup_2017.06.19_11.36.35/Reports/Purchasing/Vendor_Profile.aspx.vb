Imports Telerik.Reporting.ReportCollection
Imports Telerik.ReportViewer.WebForms

Partial Class Reports_Purchasing_Vendor_Profile
    Inherits System.Web.UI.Page

    Protected Sub ReportViewer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReportViewer1.Load
        Dim PartnerID As String = Request.QueryString("PartnerID")

        ReportViewer1.ReportSource.Parameters(0).Value = PartnerID

    End Sub

End Class
