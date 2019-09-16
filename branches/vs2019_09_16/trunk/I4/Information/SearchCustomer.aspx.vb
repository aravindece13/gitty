
Partial Class Information_SearchCustomer
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not (Page.IsPostBack) Then
            SqlDS_Customers.SelectParameters("CustName").DefaultValue = ""
        End If
    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        SqlDS_Customers.SelectParameters("CustName").DefaultValue = tbNameSearch.Text
    End Sub
End Class
