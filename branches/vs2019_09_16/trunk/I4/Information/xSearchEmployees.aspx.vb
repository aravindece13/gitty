
Partial Class Information_SearchEmployees
    Inherits System.Web.UI.Page


    Protected Sub States_TabClick(ByVal sender As Object, ByVal e As Telerik.Web.UI.RadTabStripEventArgs) Handles States.TabClick
        SqlDS_Employees.SelectParameters("branchno").DefaultValue = e.Tab.Value

    End Sub


End Class
