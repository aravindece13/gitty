Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Collections
Imports System.Resources
Imports System.ComponentModel
Imports System.Drawing
Imports System.Web.SessionState
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.HtmlControls
Imports Telerik.Web.UI
Imports Telerik.Web
Imports System.IO
Imports System.Configuration
Imports System.Web.Security
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.Configuration
Imports System.Net.Mail


Partial Class Operations_Secure_test
    Inherits System.Web.UI.Page



    Protected Sub grdCCTrans_PreRender(sender As Object, e As System.EventArgs) Handles grdCCTrans.PreRender

        If Not Page.IsPostBack Then
            grdCCTrans.MasterTableView.Items(0).Expanded = True
            grdCCTrans.MasterTableView.Items(0).ChildItem.FindControl("InnerContainer").Visible = True
        End If

    End Sub


    Protected Sub grdCCTrans_ItemCommand(ByVal source As Object, ByVal e As GridCommandEventArgs) Handles grdCCTrans.ItemCommand
        If e.CommandName = RadGrid.ExpandCollapseCommandName And TypeOf e.Item Is GridDataItem Then
            DirectCast(e.Item, GridDataItem).ChildItem.FindControl("InnerContainer").Visible = Not e.Item.Expanded
        End If
    End Sub

    Protected Sub grdCCTrans_ItemCreated(ByVal sender As Object, ByVal e As GridItemEventArgs) Handles grdCCTrans.ItemCreated
        If TypeOf e.Item Is GridNestedViewItem Then
            e.Item.FindControl("InnerContainer").Visible = (DirectCast(e.Item, GridNestedViewItem)).ParentItem.Expanded
        End If
    End Sub


End Class
