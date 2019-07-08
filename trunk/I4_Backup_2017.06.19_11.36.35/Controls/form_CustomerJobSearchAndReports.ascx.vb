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


Partial Class Controls_form_CustomerJobSearchAndReports
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load



        If IsPostBack = "False" Then

            SqlDS_grdJobs.SelectParameters("CustID").DefaultValue = "%"
            SqlDS_grdJobs.SelectParameters("JobName").DefaultValue = "%"
            SqlDS_grdJobs.SelectParameters("SalesName").DefaultValue = "%"
            SqlDS_grdJobs.SelectParameters("ShipToID").DefaultValue = "%"

            lnkMultiNets.Enabled = "false"
            lnkMultiQty.Enabled = "false"
            lnkMultiContracts.Enabled = "false"
            lnkMultiPricing.Enabled = "false"


            'SqlDS_grdJobs.SelectParameters("Region1").DefaultValue = Request.Cookies("Region1").Value
            'SqlDS_grdJobs.SelectParameters("Region2").DefaultValue = Request.Cookies("Region2").Value
            'SqlDS_grdJobs.SelectParameters("Region2").DefaultValue = Request.Cookies("Region2").Value
            'SqlDS_grdJobs.SelectParameters("Region3").DefaultValue = Request.Cookies("Region3").Value
            'SqlDS_grdJobs.SelectParameters("Region1").DefaultValue = Request.Cookies("Region1").Value
            'SqlDS_grdJobs.SelectParameters("Region1").DefaultValue = Request.Cookies("Region1").Value
            'SqlDS_grdJobs.SelectParameters("Region1").DefaultValue = Request.Cookies("Region1").Value
            'SqlDS_grdJobs.SelectParameters("Region1").DefaultValue = Request.Cookies("Region1").Value

        End If

    End Sub

    Protected Sub sCustomer_Search(sender As Object, e As Telerik.Web.UI.SearchBoxEventArgs) Handles searchCustomer.Search

        sCustID.Value = DirectCast(e.DataItem, Dictionary(Of String, Object))("CustID").ToString()

        If sCustID.Value = "" Then
            SqlDS_grdJobs.SelectParameters("CustID").DefaultValue = "%"
        Else
            SqlDS_grdJobs.SelectParameters("CustID").DefaultValue = sCustID.Value.ToString()
        End If

        grdJobs.DataSourceID = SqlDS_grdJobs.ID
        grdJobs.DataBind()

    End Sub

    Protected Sub sJobName_TextChanged(sender As Object, e As System.EventArgs) Handles sJobName.TextChanged
        If sJobName.Text = "" Then
            SqlDS_grdJobs.SelectParameters("JobName").DefaultValue = "%"
        Else
            SqlDS_grdJobs.SelectParameters("JobName").DefaultValue = sJobName.Text.ToString()
        End If


        grdJobs.DataSourceID = SqlDS_grdJobs.ID
        grdJobs.DataBind()
    End Sub

    Protected Sub sShipToID_TextChanged(sender As Object, e As System.EventArgs) Handles sShipToID.TextChanged

        If sShipToID.Text = "" Then
            SqlDS_grdJobs.SelectParameters("ShipToID").DefaultValue = "%"
        Else
            SqlDS_grdJobs.SelectParameters("ShipToID").DefaultValue = sShipToID.Text.ToString()
        End If


        grdJobs.DataSourceID = SqlDS_grdJobs.ID
        grdJobs.DataBind()
    End Sub

    Protected Sub sSalesRep_TextChanged(sender As Object, e As System.EventArgs) Handles sSalesRep.TextChanged
        If sSalesRep.Text = "" Then
            SqlDS_grdJobs.SelectParameters("SalesName").DefaultValue = "%"
        Else
            SqlDS_grdJobs.SelectParameters("SalesName").DefaultValue = sSalesRep.Text.ToString()
        End If

        grdJobs.DataSourceID = SqlDS_grdJobs.ID
        grdJobs.DataBind()
    End Sub

    'Protected Sub sQuoteName_TextChanged(sender As Object, e As System.EventArgs) Handles sQuoteName.TextChanged
    '    If sQuoteName.Text = "" Then
    '        SqlDS_grdJobs.SelectParameters("QuoteName").DefaultValue = "%"
    '    Else
    '        SqlDS_grdJobs.SelectParameters("QuoteName").DefaultValue = sQuoteName.Text.ToString()
    '    End If

    '    grdJobs.DataSourceID = SqlDS_grdJobs.ID
    '    grdJobs.DataBind()


    'End Sub

    'Protected Sub mCustID_ValueChanged(sender As Object, e As System.EventArgs) Handles mCustID.ValueChanged

    '    SqlDS_mShipToID.SelectParameters("CustID").DefaultValue = mCustID.Value
    '    mShipToID1.DataSourceID = SqlDS_mShipToID.ID
    '    mShipToID1.DataBind()
    '    mShipToID2.DataBind()

    'End Sub

    Protected Sub mCustomerSearch_Search(sender As Object, e As Telerik.Web.UI.SearchBoxEventArgs) Handles mCustomerSearch.Search

        mShipToID1.Items.Clear()
        mShipToID2.Items.Clear()
        mShipToID3.Items.Clear()
        mShipToID4.Items.Clear()
        mShipToID5.Items.Clear()

        lnkQuoteST1.Text = ""
        lnkQuoteST1.NavigateUrl = ""
        lnkQuoteST2.Text = ""
        lnkQuoteST2.NavigateUrl = ""
        lnkQuoteST3.Text = ""
        lnkQuoteST3.NavigateUrl = ""
        lnkQuoteST4.Text = ""
        lnkQuoteST4.NavigateUrl = ""
        lnkQuoteST5.Text = ""
        lnkQuoteST5.NavigateUrl = ""

        SqlDS_mShipToID.SelectParameters("CustID").DefaultValue = DirectCast(e.DataItem, Dictionary(Of String, Object))("CustID").ToString()
        mCustID.Value = DirectCast(e.DataItem, Dictionary(Of String, Object))("CustID").ToString()

        mShipToID1.DataSourceID = SqlDS_mShipToID.ID
        mShipToID1.DataBind()
        mShipToID1.Items.Insert(0, New RadComboBoxItem("-", "0"))
        mShipToID1.Items(0).Selected = True

        mShipToID2.DataSourceID = SqlDS_mShipToID.ID
        mShipToID2.DataBind()
        mShipToID2.Items.Insert(0, New RadComboBoxItem("-", "0"))
        mShipToID2.Items(0).Selected = True

        mShipToID3.DataSourceID = SqlDS_mShipToID.ID
        mShipToID3.DataBind()
        mShipToID3.Items.Insert(0, New RadComboBoxItem("-", "0"))
        mShipToID3.Items(0).Selected = True
        

        mShipToID4.DataSourceID = SqlDS_mShipToID.ID
        mShipToID4.DataBind()
        mShipToID4.Items.Insert(0, New RadComboBoxItem("-", "0"))
        mShipToID4.Items(0).Selected = True

        mShipToID5.DataSourceID = SqlDS_mShipToID.ID
        mShipToID5.DataBind()
        mShipToID5.Items.Insert(0, New RadComboBoxItem("-", "0"))
        mShipToID5.Items(0).Selected = True


    End Sub

   
    Protected Sub lnkMultiNets_Click(sender As Object, e As System.EventArgs) Handles lnkMultiNets.Click

        lnkMultiNets.NavigateUrl = "~/Reports2/CustomerJobs_JobStatus_Nets_MultiShipTo.aspx?CustID=" + mCustID.Value.ToString() + "&ShipToID1=" + mShipToID1.SelectedValue.ToString() + "&ShipToID2=" + mShipToID2.SelectedValue.ToString() + "&ShipToID3=" + mShipToID3.SelectedValue.ToString() + "&ShipToID4=" + mShipToID4.SelectedValue.ToString() + "&ShipToID5=" + mShipToID5.SelectedValue.ToString()

    End Sub

    Protected Sub lnkMultiQty_Click(sender As Object, e As System.EventArgs) Handles lnkMultiQty.Click

        lnkMultiQty.NavigateUrl = "~/Reports2/CustomerJobs_JobStatus_Qty_MultiShipTo.aspx?CustID=" + mCustID.Value.ToString() + "&ShipToID1=" + mShipToID1.SelectedValue.ToString() + "&ShipToID2=" + mShipToID2.SelectedValue.ToString() + "&ShipToID3=" + mShipToID3.SelectedValue.ToString() + "&ShipToID4=" + mShipToID4.SelectedValue.ToString() + "&ShipToID5=" + mShipToID5.SelectedValue.ToString()
    End Sub
    Protected Sub lnkMultiContracts_Click(sender As Object, e As System.EventArgs) Handles lnkMultiContracts.Click
        lnkMultiContracts.NavigateUrl = "~/Reports2/Pricing_ContractPricing_Job_MultiShipTo.aspx?CustID=" + mCustID.Value.ToString() + "&ShipToID1=" + mShipToID1.SelectedValue.ToString() + "&ShipToID2=" + mShipToID2.SelectedValue.ToString() + "&ShipToID3=" + mShipToID3.SelectedValue.ToString() + "&ShipToID4=" + mShipToID4.SelectedValue.ToString() + "&ShipToID5=" + mShipToID5.SelectedValue.ToString()
    End Sub
    Protected Sub lnkMultiPricing_Click(sender As Object, e As System.EventArgs) Handles lnkMultiPricing.Click
        lnkMultiPricing.NavigateUrl = "~/Reports2/CustomerJobs_JobStatus_Pricing.aspx?CustID=" + mCustID.Value.ToString() + "&ShipToID1=" + mShipToID1.SelectedValue.ToString() + "&ShipToID2=" + mShipToID2.SelectedValue.ToString() + "&ShipToID3=" + mShipToID3.SelectedValue.ToString() + "&ShipToID4=" + mShipToID4.SelectedValue.ToString() + "&ShipToID5=" + mShipToID5.SelectedValue.ToString()
    End Sub

    Protected Sub mShipToID1_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles mShipToID1.SelectedIndexChanged
        lnkMultiNets.Enabled = "true"
        lnkMultiQty.Enabled = "true"
        lnkMultiContracts.Enabled = "true"
        lnkMultiPricing.Enabled = "true"

        Dim SelectSQL1 As String
        SelectSQL1 = "SELECT QuoteID, QuoteName FROM Quote WHERE CustID = '" + mCustID.Value.ToString() + "' AND ShipToID='" + mShipToID1.SelectedValue.ToString() + "'"


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim SelectCMD1 As New SqlCommand(SelectSQL1, DKConnection1)

        Try
            'Try to open the connection and execute the update
            DKConnection1.Open()

            Dim result As Integer = SelectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = SelectCMD1.ExecuteReader()
            myReader1.Read()

            lnkQuoteST1.Text = "Quote: " + myReader1("QuoteName").ToString()
            lnkQuoteST1.NavigateUrl = "../BidTool/Bid.aspx?QuoteID=" + myReader1("QuoteID").ToString()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection1.Close()

        End Try


    End Sub

    Protected Sub mShipToID2_DataBound(sender As Object, e As System.EventArgs) Handles mShipToID2.DataBound

    End Sub


    Protected Sub mShipToID2_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles mShipToID2.SelectedIndexChanged
        Dim SelectSQL1 As String
        SelectSQL1 = "SELECT QuoteID, QuoteName FROM Quote WHERE CustID = '" + mCustID.Value.ToString() + "' AND ShipToID='" + mShipToID2.SelectedValue.ToString() + "'"


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim SelectCMD1 As New SqlCommand(SelectSQL1, DKConnection1)

        Try
            'Try to open the connection and execute the update
            DKConnection1.Open()

            Dim result As Integer = SelectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = SelectCMD1.ExecuteReader()
            myReader1.Read()

            lnkQuoteST2.Text = "Quote: " + myReader1("QuoteName").ToString()
            lnkQuoteST2.NavigateUrl = "../BidTool/Bid.aspx?QuoteID=" + myReader1("QuoteID").ToString()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection1.Close()

        End Try
    End Sub

    Protected Sub mShipToID3_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles mShipToID3.SelectedIndexChanged
        Dim SelectSQL1 As String
        SelectSQL1 = "SELECT QuoteID, QuoteName FROM Quote WHERE CustID = '" + mCustID.Value.ToString() + "' AND ShipToID='" + mShipToID3.SelectedValue.ToString() + "'"


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim SelectCMD1 As New SqlCommand(SelectSQL1, DKConnection1)

        Try
            'Try to open the connection and execute the update
            DKConnection1.Open()

            Dim result As Integer = SelectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = SelectCMD1.ExecuteReader()
            myReader1.Read()

            lnkQuoteST3.Text = "Quote: " + myReader1("QuoteName").ToString()
            lnkQuoteST3.NavigateUrl = "../BidTool/Bid.aspx?QuoteID=" + myReader1("QuoteID").ToString()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection1.Close()

        End Try
    End Sub

    Protected Sub mShipToID4_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles mShipToID4.SelectedIndexChanged
        Dim SelectSQL1 As String
        SelectSQL1 = "SELECT QuoteID, QuoteName FROM Quote WHERE CustID = '" + mCustID.Value.ToString() + "' AND ShipToID='" + mShipToID4.SelectedValue.ToString() + "'"


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim SelectCMD1 As New SqlCommand(SelectSQL1, DKConnection1)

        Try
            'Try to open the connection and execute the update
            DKConnection1.Open()

            Dim result As Integer = SelectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = SelectCMD1.ExecuteReader()
            myReader1.Read()

            lnkQuoteST4.Text = "Quote: " + myReader1("QuoteName").ToString()
            lnkQuoteST4.NavigateUrl = "../BidTool/Bid.aspx?QuoteID=" + myReader1("QuoteID").ToString()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection1.Close()

        End Try
    End Sub

    Protected Sub mShipToID5_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles mShipToID5.SelectedIndexChanged
        Dim SelectSQL1 As String
        SelectSQL1 = "SELECT QuoteID, QuoteName FROM Quote WHERE CustID = '" + mCustID.Value.ToString() + "' AND ShipToID='" + mShipToID5.SelectedValue.ToString() + "'"


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim SelectCMD1 As New SqlCommand(SelectSQL1, DKConnection1)

        Try
            'Try to open the connection and execute the update
            DKConnection1.Open()

            Dim result As Integer = SelectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = SelectCMD1.ExecuteReader()
            myReader1.Read()

            lnkQuoteST5.Text = "Quote: " + myReader1("QuoteName").ToString()
            lnkQuoteST5.NavigateUrl = "../BidTool/Bid.aspx?QuoteID=" + myReader1("QuoteID").ToString()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection1.Close()

        End Try
    End Sub



End Class
