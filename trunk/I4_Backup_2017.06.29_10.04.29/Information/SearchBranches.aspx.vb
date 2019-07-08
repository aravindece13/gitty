
Partial Class Information_SearchBranches
    Inherits System.Web.UI.Page

    Protected Sub tsStates_TabClick(ByVal sender As Object, ByVal e As Telerik.Web.UI.RadTabStripEventArgs) Handles tsStates.TabClick
        SqlDS_Branches.SelectParameters("State").DefaultValue = e.Tab.Value
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not (Page.IsPostBack) Then
            SqlDS_Branches.SelectParameters("State").DefaultValue = "CO"
        End If
    End Sub
End Class
