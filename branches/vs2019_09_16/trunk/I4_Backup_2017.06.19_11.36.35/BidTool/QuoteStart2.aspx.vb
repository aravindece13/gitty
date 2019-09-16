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

Partial Class BidTool_QuoteStart2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        If Page.IsPostBack = "False" Then
            btnGoToQuote.Visible = "False"
            btnStartQuote.Visible = "False"
            'btnNewCustomerSearch.Visible = "False"
            qQuoteName.Text = "Base " + FormatDateTime(Now(), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()

            qDistrict.Items.Clear()
            SqlDS_District3.SelectParameters("State2").DefaultValue = Request.Cookies("Region1").Value
            qDistrict.DataSourceID = SqlDS_District3.ID
            qDistrict.DataBind()

            qPrimaryBranchno2.Visible = "False"
            qPrimaryBranchno2.Items.Clear()
            qPrimaryBranchno2.DataSourceID = SqlDS_qBranch.ID
            qPrimaryBranchno2.SelectedValue = Request.Cookies("Whse1").Value

            qPriceType2.Visible = "False"
            qPriceType2.Items.Clear()
            SqlDS_qPriceType.SelectParameters("WhseID").DefaultValue = Request.Cookies("Whse1").Value
            qPriceType2.DataSourceID = SqlDS_qPriceType.ID

            'btnNewCustomerSearch.Text = "New Customer Search"


            'RadAjaxPanelAddQuoteStep1.Visible = "true"

            'RadAjaxPanelAddQuoteStep3.Visible = "true"
            'RadAjaxPanelAddQuoteDirections.Visible = "false"
            'RadAjaxPanelGoToQuote.Visible = "false"



            'qDistrict.Items.Clear()
            'SqlDS_District3.SelectParameters("State2").DefaultValue = Request.Cookies("Region1").Value
            'qDistrict.DataSourceID = SqlDS_District3.ID
            'qDistrict.DataBind()
        Else


        End If


        If Page.IsPostBack = "false" And Request("JobID").ToString() <> "0" Then


            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)

            Dim selectCmd As SqlCommand = New SqlCommand("uspProjectDetailGet", DKConnection)
            selectCmd.CommandType = CommandType.StoredProcedure
            Dim Reader As SqlDataReader
            selectCmd.Parameters.AddWithValue("JobID", Request("JobID").ToString())

            Try
                'Try to open the connection and execute the update
                DKConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                hdnJobID.Value = Reader("JobID")
                qProjectName.Text = Reader("ProjectName").ToString()

                qProjectSubTitle.Text = Reader("ProjectSubTitle").ToString()

                qWorkType.SelectedValue = Reader("WorkType").ToString()
                qCity.Text = Reader("WorkCity").ToString()
                qAddress.Text = Reader("ProjectAddress").ToString()
                qZip.Text = Reader("ProjectZip").ToString()

                qState.SelectedValue = Reader("State")
                SqlDS_District3.SelectParameters("State2").DefaultValue = Reader("State")
                qPrimaryBranchno2.SelectedValue = Reader("PrimaryBranchno").ToString()

                qWorkType.SelectedValue = Reader("WorkType").ToString()
                qOrigination.Value = "P"
                qStatus.Value = "Working"
                qCreatedBy.Value = Request.Cookies("FullName").Value.ToString()


                qProjectName.Enabled = "False"
                qProjectSubTitle.Enabled = "False"
                qWorkType.Enabled = "False"
                qAddress.Enabled = "False"
                qCity.Enabled = "False"
                qState.Enabled = "False"
                qZip.Enabled = "False"
                'qPrimaryBranchno.Enabled = "False"
                qDistrict.Enabled = "False"


            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try

        ElseIf Request("JobID").ToString() = "0" Then
            hdnJobID.Value = 0
            qOrigination.Value = "Q"
            qStatus.Value = "Working"
            qCreatedBy.Value = Request.Cookies("FullName").Value.ToString()
            'qQuoteName.Text = Request.Cookies("FullName").Value.ToString() + "_" + FormatDateTime(Now(), Microsoft.VisualBasic.DateFormat.GeneralDate).ToString()


        End If
    End Sub


    Protected Sub searchCustomer_Search(sender As Object, e As Telerik.Web.UI.SearchBoxEventArgs) Handles searchCustomer.Search
        'RadAjaxPanelAddQuoteStep3.Visible = "true"

        qCustID.Value = DirectCast(e.DataItem, Dictionary(Of String, Object))("CustID").ToString()
        qPriceType.Value = DirectCast(e.DataItem, Dictionary(Of String, Object))("PriceType").ToString()
        qCustName.Value = DirectCast(e.DataItem, Dictionary(Of String, Object))("CustName").ToString()
        qSalesRepID.Value = DirectCast(e.DataItem, Dictionary(Of String, Object))("SalesRepID").ToString()
        qState.SelectedValue = DirectCast(e.DataItem, Dictionary(Of String, Object))("State").ToString()
        'qPrimaryBranchno.Value = DirectCast(e.DataItem, Dictionary(Of String, Object))("WhseID").ToString()

        qPrimaryBranchno2.Visible = "true"
        qPriceType2.Visible = "true"



        'RadAjaxPanelAddQuoteDirections.Visible = "true"
        btnStartQuote.Visible = "true"
        'btnNewCustomerSearch.Visible = "True"

        'SqlDS_District3.SelectParameters("State2").DefaultValue = "CO"
        SqlDS_District3.SelectParameters("State2").DefaultValue = qState.SelectedValue
        qDistrict.DataSourceID = SqlDS_District3.ID
        qDistrict.DataBind()


        'qPrimaryBranchno2.Items.Clear()
        'qPrimaryBranchno2.DataSourceID = SqlDS_qBranch.ID
        qPrimaryBranchno2.SelectedValue = DirectCast(e.DataItem, Dictionary(Of String, Object))("WhseID").ToString()

        qPriceType2.Items.Clear()
        SqlDS_qPriceType.SelectParameters("WhseID").DefaultValue = DirectCast(e.DataItem, Dictionary(Of String, Object))("WhseID").ToString()
        qPriceType2.DataSourceID = SqlDS_qPriceType.ID
        qPriceType2.SelectedValue = DirectCast(e.DataItem, Dictionary(Of String, Object))("PriceType").ToString()

    End Sub




    Protected Sub btnStartQuote_Click(sender As Object, e As System.EventArgs) Handles btnStartQuote.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As SqlConnection = New SqlConnection(DKConnectionString)

        Dim insertCMD As New SqlCommand("uspQuoteInsert", DKConnection)
        Dim added As Integer = 0

        insertCMD.CommandType = CommandType.StoredProcedure
        'Add the parameters
        insertCMD.Parameters.AddWithValue("@JobID", hdnJobID.Value)
        insertCMD.Parameters.AddWithValue("@Origination", qOrigination.Value)

        insertCMD.Parameters.AddWithValue("@CustID", qCustID.Value)
        insertCMD.Parameters.AddWithValue("@CustName", searchCustomer.Text)

        'insertCMD.Parameters.AddWithValue("@State", "CO")
        insertCMD.Parameters.AddWithValue("@State", qState.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Address", qAddress.Text)
        insertCMD.Parameters.AddWithValue("@WorkCity", qCity.Text)
        insertCMD.Parameters.AddWithValue("@Zip", qZip.Text)

        insertCMD.Parameters.AddWithValue("@PrimaryBranchno", qPrimaryBranchno2.SelectedValue)
        insertCMD.Parameters.AddWithValue("@MuniSpecID", qDistrict.SelectedValue)
        insertCMD.Parameters.AddWithValue("@WorkType", qWorkType.SelectedValue)
        insertCMD.Parameters.AddWithValue("@SalesRepID", qSalesRepID.Value)
        insertCMD.Parameters.AddWithValue("@QuoteName", qQuoteName.Text)
        insertCMD.Parameters.AddWithValue("@ProjectName", qProjectName.Text)
        insertCMD.Parameters.AddWithValue("@ProjectSubTitle", qProjectSubTitle.Text)
        insertCMD.Parameters.AddWithValue("@DefaultPriceType", qPriceType2.SelectedValue)
        insertCMD.Parameters.AddWithValue("@PriceType", qPriceType2.SelectedValue)
        insertCMD.Parameters.AddWithValue("@CreatedBy", Request.Cookies("FullName").Value)

        insertCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt)
        insertCMD.Parameters("@QuoteID").Direction = ParameterDirection.Output


        Try
            'Try to open the connection and execute the insert and update the Notes RadGrid
            DKConnection.Open()
            added = insertCMD.ExecuteNonQuery()
            btnStartQuote.Visible = "false"
            'RadAjaxPanelGoToQuote.Visible = "true"
            btnGoToQuote.Visible = "True"
            btnGoToQuote.NavigateUrl = "../BidTool/Bid.aspx?QuoteID=" + insertCMD.Parameters("@QuoteID").Value.ToString()
            btnGoToQuote.Text = "Go To Quote Now"
            'btnNewCustomerSearch.Visible = "false"




        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub

    'Protected Sub btnNewCustomerSearch_Click(sender As Object, e As System.EventArgs) Handles btnNewCustomerSearch.Click
    '    'RadAjaxPanelAddQuoteStep1.Visible = "true"

    '    'RadAjaxPanelAddQuoteStep3.Visible = "false"
    '    'RadAjaxPanelAddQuoteDirections.Visible = "false"
    '    'RadAjaxPanelGoToQuote.Visible = "false"
    '    searchCustomer.Text = ""

    'End Sub


    Protected Sub qDistrict_ItemDataBound(sender As Object, e As Telerik.Web.UI.RadComboBoxItemEventArgs) Handles qDistrict.ItemDataBound

        'If Page.IsPostBack = "false" Then
        '    If Request.Cookies("Region1").Value = "AZ" Then
        '        qDistrict.Items.Insert(0, New RadComboBoxItem("- (AZ)", 532))
        '    ElseIf Request.Cookies("Region1").Value = "CO" Then
        '        qDistrict.Items.Insert(0, New RadComboBoxItem("- (CO)", 534))
        '    ElseIf Request.Cookies("Region1").Value = "MT" Then
        '        qDistrict.Items.Insert(0, New RadComboBoxItem("- (MT)", 535))
        '    ElseIf Request.Cookies("Region1").Value = "NV" Then
        '        qDistrict.Items.Insert(0, New RadComboBoxItem("- (NV)", 536))
        '    ElseIf Request.Cookies("Region1").Value = "TX" Then
        '        qDistrict.Items.Insert(0, New RadComboBoxItem("- (TX)", 537))
        '    ElseIf Request.Cookies("Region1").Value = "WY" Then
        '        qDistrict.Items.Insert(0, New RadComboBoxItem("- (WY)", 538))
        '    End If

        'End If





        'Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection As New SqlConnection(DKConnectionString)

        'Dim selectCmd As SqlCommand = New SqlCommand("uspProjectDetailGet", DKConnection)
        'selectCmd.CommandType = CommandType.StoredProcedure
        'Dim Reader As SqlDataReader
        'selectCmd.Parameters.AddWithValue("JobID", Request("JobID").ToString())

        'Try
        '    'Try to open the connection and execute the update
        '    DKConnection.Open()
        '    Reader = selectCmd.ExecuteReader()
        '    Reader.Read()

        '    qDistrict.SelectedValue = Reader("MuniSpecID")


        'Catch err As Exception
        '    ' Handle an error by displaying the information

        'Finally
        '    'Either way, make sure the connection is properly closed
        '    DKConnection.Close()

        'End Try




    End Sub


    Protected Sub qPrimaryBranchno2_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles qPrimaryBranchno2.SelectedIndexChanged
        qPriceType2.Items.Clear()

        qPriceType2.DataSourceID = SqlDS_qPriceType.ID
        qPriceType2.DataBind()
        qPriceType2.SelectedIndex = 5



        Dim SelectSQL1 As String
        SelectSQL1 = "SELECT [branchno],[state] FROM [dbo].[Branches] WHERE [branchno]= " + qPrimaryBranchno2.SelectedValue.ToString()


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim SelectCMD1 As New SqlCommand(SelectSQL1, DKConnection1)


        Try
            'Try to open the connection and execute the update
            DKConnection1.Open()

            Dim result As Integer = SelectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = SelectCMD1.ExecuteReader()
            myReader1.Read()

            qState.SelectedValue = myReader1("state").ToString()
            'qState.SelectedValue = "CO"


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection1.Close()

        End Try

        'SqlDS_District3.SelectParameters("State2").DefaultValue = "CO"
        SqlDS_District3.SelectParameters("State2").DefaultValue = qState.SelectedValue
        qDistrict.DataSourceID = SqlDS_District3.ID
        qDistrict.DataBind()

    End Sub

End Class
