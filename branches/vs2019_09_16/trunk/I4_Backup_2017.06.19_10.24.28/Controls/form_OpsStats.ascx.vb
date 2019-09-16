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


Partial Class Controls_form_OpsStats
    Inherits System.Web.UI.UserControl



    Protected Sub grdCCTrans_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdCCTrans.SelectedIndexChanged

        lblWhseProduct.Text = grdCCTrans.SelectedValues("comboname").ToString() + " | " + grdCCTrans.SelectedValues("ProdID").ToString()
        'lblWhseProduct.Text = grdCCTrans.SelectedValues("ProdID").ToString()
        pnlCCNotes.Visible = "True"



    End Sub




    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        lblWhseProduct.Text = "Select a transaction at left to see related information below"

        pnlCCNotes.Visible = "false"

        If IsPostBack = "False" Then
            SqlDS_grdCCSearch.SelectParameters("ProdID").DefaultValue = "zzzz"
            SqlDS_grdCCSearch.SelectParameters("WhseID").DefaultValue = "1"

            SqlDS_grdLastPOs.SelectParameters("ProdID").DefaultValue = "zzzz"
            SqlDS_grdLastPOs.SelectParameters("WhseID").DefaultValue = "1"

            SqlDS_grdLastOrders.SelectParameters("ProdID").DefaultValue = "zzzz"
            SqlDS_grdLastOrders.SelectParameters("WhseID").DefaultValue = "1"

            SqlDS_grdActiveOrders.SelectParameters("ProdID").DefaultValue = "zzzz"
            SqlDS_grdActiveOrders.SelectParameters("WhseID").DefaultValue = "1"
        End If
    End Sub

    Protected Sub fltrCCProdID_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrCCProdID.SelectedIndexChanged
        SqlDS_grdCCSearch.SelectParameters("ProdID").DefaultValue = fltrCCProdID.SelectedValue.ToString()
        SqlDS_grdLastPOs.SelectParameters("ProdID").DefaultValue = fltrCCProdID.SelectedValue.ToString()
        SqlDS_grdLastOrders.SelectParameters("ProdID").DefaultValue = fltrCCProdID.SelectedValue.ToString()
        SqlDS_grdActiveOrders.SelectParameters("ProdID").DefaultValue = fltrCCProdID.SelectedValue.ToString()

        grdCCSearch.DataSourceID = SqlDS_grdCCSearch.ID
        grdCCSearch.DataBind()

        grdLastPOs.DataSourceID = SqlDS_grdLastPOs.ID
        grdLastPOs.DataBind()

        grdLastOrders.DataSourceID = SqlDS_grdLastOrders.ID
        grdLastOrders.DataBind()

        grdActiveOrders.DataSourceID = SqlDS_grdActiveOrders.ID
        grdActiveOrders.DataBind()

    End Sub

    Protected Sub fltrCCWhseID_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrCCWhseID.SelectedIndexChanged

        SqlDS_grdCCSearch.SelectParameters("WhseID").DefaultValue = fltrCCWhseID.SelectedValue.ToString()
        SqlDS_grdLastPOs.SelectParameters("WhseID").DefaultValue = fltrCCWhseID.SelectedValue.ToString()
        SqlDS_grdLastOrders.SelectParameters("WhseID").DefaultValue = fltrCCWhseID.SelectedValue.ToString()
        SqlDS_grdActiveOrders.SelectParameters("WhseID").DefaultValue = fltrCCWhseID.SelectedValue.ToString()

        grdCCSearch.DataSourceID = SqlDS_grdCCSearch.ID
        grdCCSearch.DataBind()

        grdLastPOs.DataSourceID = SqlDS_grdLastPOs.ID
        grdLastPOs.DataBind()

        grdLastOrders.DataSourceID = SqlDS_grdLastOrders.ID
        grdLastOrders.DataBind()

        grdActiveOrders.DataSourceID = SqlDS_grdActiveOrders.ID
        grdActiveOrders.DataBind()


    End Sub

   
End Class
