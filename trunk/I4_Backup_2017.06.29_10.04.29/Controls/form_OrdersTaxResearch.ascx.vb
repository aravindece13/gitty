Imports System
Imports System.Data
'Imports System.Data.Sql
Imports System.Data.SqlClient
'Imports System.Data.OleDb
'Imports System.Collections
'Imports System.Resources
'Imports System.ComponentModel
Imports System.Drawing
'Imports System.Web.SessionState
'Imports System.Web.UI.WebControls
'Imports System.Web.UI.HtmlControls
Imports Telerik.Web.UI
'Imports Telerik.Web
'Imports System.IO
'Imports System.Configuration
'Imports System.Web.Security
'Imports System.Web.UI.WebControls.WebParts
Imports System.Web.Configuration
Imports System.Net.Mail

Partial Class Controls_form_OrdersTaxResearch
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        If IsPostBack = "False" Then
            hStartDate.SelectedDate = "1/1/" + Year(DateTime.Now.AddYears(-1)).ToString()
            hEndDate.SelectedDate = Now.ToShortDateString.ToString()
            hCustID.Value = "999"

            SqlDS_grdOrders.SelectParameters("CustID").DefaultValue = "%"
            SqlDS_grdOrders.SelectParameters("Transtype").DefaultValue = "%"
            SqlDS_grdOrders.SelectParameters("Stage").DefaultValue = "%"
            SqlDS_grdOrders.SelectParameters("ShiptoID").DefaultValue = "%"
            SqlDS_grdOrders.SelectParameters("StartDate").DefaultValue = hStartDate.SelectedDate
            SqlDS_grdOrders.SelectParameters("EndDate").DefaultValue = hEndDate.SelectedDate
            SqlDS_grdOrders.SelectParameters("OrderNumber").DefaultValue = "%"

            lblCustomer.Text = ""
            lblOrderNumber.Text = ""
            lblShipToID.Text = ""
            lblTransType.Text = ""
            lblSalesName.Text = ""
            lblInvoiceDate.Text = ""

        End If

    End Sub

    Protected Sub searchCustomer_Search(sender As Object, e As Telerik.Web.UI.SearchBoxEventArgs) Handles searchCustomer.Search

        hCustID.Value = DirectCast(e.DataItem, Dictionary(Of String, Object))("CustID").ToString()

        SqlDS_grdOrders.SelectParameters("CustID").DefaultValue = hCustID.Value.ToString()
        grdOrders.DataSourceID = SqlDS_grdOrders.ID
        grdOrders.DataBind()

    End Sub


    Protected Sub hTransType_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles hTransType.SelectedIndexChanged
        SqlDS_grdOrders.SelectParameters("Transtype").DefaultValue = hTransType.SelectedValue.ToString()

        grdOrders.DataSourceID = SqlDS_grdOrders.ID
        grdOrders.DataBind()
    End Sub

    Protected Sub hStage_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles hStage.SelectedIndexChanged
        SqlDS_grdOrders.SelectParameters("Stage").DefaultValue = hStage.SelectedValue.ToString()

        grdOrders.DataSourceID = SqlDS_grdOrders.ID
        grdOrders.DataBind()
    End Sub

    Protected Sub hShipToID_TextChanged(sender As Object, e As System.EventArgs) Handles hShipToID.TextChanged
        If hShipToID.Text = "" Then
            SqlDS_grdOrders.SelectParameters("ShiptoID").DefaultValue = ""
        Else
            SqlDS_grdOrders.SelectParameters("ShiptoID").DefaultValue = hShipToID.Text.ToString()
        End If

        grdOrders.DataSourceID = SqlDS_grdOrders.ID
        grdOrders.DataBind()
    End Sub

    Protected Sub hStartDate_TextChanged(sender As Object, e As System.EventArgs) Handles hStartDate.TextChanged

        SqlDS_grdOrders.SelectParameters("StartDate").DefaultValue = hStartDate.SelectedDate

        grdOrders.DataSourceID = SqlDS_grdOrders.ID
        grdOrders.DataBind()
    End Sub

    Protected Sub hEndDate_TextChanged(sender As Object, e As System.EventArgs) Handles hEndDate.TextChanged
        SqlDS_grdOrders.SelectParameters("EndDate").DefaultValue = hEndDate.SelectedDate

        grdOrders.DataSourceID = SqlDS_grdOrders.ID
        grdOrders.DataBind()
    End Sub

    Protected Sub hOrderNumber_TextChanged(sender As Object, e As System.EventArgs) Handles hOrderNumber.TextChanged
        If hCustID.Value = "999" Then
            SqlDS_grdOrders.SelectParameters("CustID").DefaultValue = "%"
        End If

        If hOrderNumber.Text = "" Then
            SqlDS_grdOrders.SelectParameters("OrderNumber").DefaultValue = "%"
        Else
            SqlDS_grdOrders.SelectParameters("OrderNumber").DefaultValue = hOrderNumber.Text.ToString()
        End If



        grdOrders.DataSourceID = SqlDS_grdOrders.ID
        grdOrders.DataBind()
    End Sub

    Protected Sub grdOrders_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdOrders.SelectedIndexChanged

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)
        Dim selectCMD1 As SqlCommand = New SqlCommand("uspOrdersHeaderGetSpecific", DKConnection1)

        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@OrderNumber", SqlDbType.NVarChar).Value = grdOrders.SelectedValues("OrderNumber").ToString()

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD1.ExecuteReader()
            myReader.Read()

            lblCustomer.Text = myReader("CustName").ToString()
            lblOrderNumber.Text = myReader("OrderNumber").ToString()
            lblShipToID.Text = "ShipTo: " + myReader("ShipToID").ToString()
            lblTransType.Text = myReader("TransType").ToString()
            lblSalesName.Text = myReader("SalesName").ToString()

            If IsDBNull(myReader("InvoiceDate")) Then
                lblInvoiceDate.Text = "Invoiced: "
            Else
                lblInvoiceDate.Text = "Invoiced: " + FormatDateTime(myReader("InvoiceDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
            End If


            myReader.Close()

           

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try




    End Sub
End Class
