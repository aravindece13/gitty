Imports Telerik.Web.UI

Partial Class Purchasing_Secure_Default
    Inherits System.Web.UI.Page

    Protected Sub RadTabStrip1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadTabStrip1.DataBound

    End Sub


    Protected Sub RadTabStrip1_TabClick(ByVal sender As Object, ByVal e As Telerik.Web.UI.RadTabStripEventArgs) Handles RadTabStrip1.TabClick
        SqlDataSourceNews.SelectParameters("TopicArea").DefaultValue = e.Tab.Value
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not (Page.IsPostBack) Then
            SqlDataSourceNews.SelectParameters("TopicArea").DefaultValue = "Purchasing"
        End If

    End Sub



    Protected Sub RadGrid1_InsertCommand(ByVal source As Object, ByVal e As Telerik.Web.UI.GridCommandEventArgs) Handles RadGrid1.InsertCommand
        SqlDataSourceNews.InsertParameters("CreatedBy").DefaultValue = Request.Cookies("FullName").Value
        SqlDataSourceNews.InsertParameters("CreatedDate").DefaultValue = DateTime.Now()
    End Sub


    Protected Sub RadGrid1_UpdateCommand(ByVal source As Object, ByVal e As Telerik.Web.UI.GridCommandEventArgs) Handles RadGrid1.UpdateCommand
        SqlDataSourceNews.UpdateParameters("ModifiedBy").DefaultValue = Request.Cookies("FullName").Value
        SqlDataSourceNews.UpdateParameters("ModifiedDate").DefaultValue = DateTime.Now()
    End Sub

End Class
