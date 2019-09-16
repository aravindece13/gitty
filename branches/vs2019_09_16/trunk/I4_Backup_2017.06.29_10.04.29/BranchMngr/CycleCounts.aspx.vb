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

Partial Class BranchMngr_CycleCounts
    Inherits System.Web.UI.Page


    Protected Sub grdTransactions_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdTransactions.SelectedIndexChanged


        SqlDS_grdProductCounts.SelectParameters("WhseID").DefaultValue = grdTransactions.SelectedValues("WhseID").ToString()
        SqlDS_grdProductCounts.SelectParameters("Prodid").DefaultValue = grdTransactions.SelectedValues("Prodid").ToString()

        SqlDS_grdLastAdjustments.SelectParameters("WhseID").DefaultValue = grdTransactions.SelectedValues("WhseID").ToString()
        SqlDS_grdLastAdjustments.SelectParameters("Prodid").DefaultValue = grdTransactions.SelectedValues("Prodid").ToString()

        SqlDS_grdLastOrders.SelectParameters("WhseID").DefaultValue = grdTransactions.SelectedValues("WhseID").ToString()
        SqlDS_grdLastOrders.SelectParameters("Prodid").DefaultValue = grdTransactions.SelectedValues("Prodid").ToString()

        SqlDS_grdLastPOs.SelectParameters("WhseID").DefaultValue = grdTransactions.SelectedValues("WhseID").ToString()
        SqlDS_grdLastPOs.SelectParameters("Prodid").DefaultValue = grdTransactions.SelectedValues("Prodid").ToString()

    End Sub


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If IsPostBack = "false" Then
            SqlDS_grdProductCounts.SelectParameters("WhseID").DefaultValue = "0"
            SqlDS_grdProductCounts.SelectParameters("Prodid").DefaultValue = "0"
            SqlDS_grdLastAdjustments.SelectParameters("WhseID").DefaultValue = "0"
            SqlDS_grdLastAdjustments.SelectParameters("Prodid").DefaultValue = "0"
            SqlDS_grdLastOrders.SelectParameters("WhseID").DefaultValue = "0"
            SqlDS_grdLastOrders.SelectParameters("Prodid").DefaultValue = "0"
            SqlDS_grdLastPOs.SelectParameters("WhseID").DefaultValue = "0"
            SqlDS_grdLastPOs.SelectParameters("Prodid").DefaultValue = "0"

        End If

    End Sub
End Class
