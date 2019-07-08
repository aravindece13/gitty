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

Partial Class Controls_form_Projects
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load




        nDueDate.SelectedDate = System.DateTime.Now()

        qPrimaryBranchno.SelectedValue = Request.Cookies("Whse1").Value
        qCreatedBy.Value = Request.Cookies("FullName").Value
        SqlDS_BranchQuote.SelectParameters("State").DefaultValue = Request.Cookies("Region1").Value
        qState.SelectedValue = Request.Cookies("Region1").Value



        If Page.IsPostBack = "false" Then
          




            RadAjaxPanelAddQuoteStep1.Visible = "true"
            RadAjaxPanelAddQuoteStep2.Visible = "false"
            RadAjaxPanelAddQuoteStep3.Visible = "false"
            RadAjaxPanelAddQuoteDirections.Visible = "false"
            RadAjaxPanelGoToQuote.Visible = "false"
            btnNewCustomerSearch.Text = "New Customer Search"


        Else
            'SqlDS_BranchQuote.SelectParameters("State").DefaultValue = qState.SelectedValue
            'qState.SelectedValue = Request.Cookies("Region1").Value

        End If

        'If Page.IsPostBack = "false" Then
        '    'Assign Default Municipality according to the selected Branch on the New Project creation page
        '    Dim SelectSQL As String
        '    SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = '1')"
        '    'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + Request.Cookies("Whse1").Value.ToString() + "')"


        '    Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        '    Dim DKConnection As New SqlConnection(DKConnectionString)

        '    Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

        '    Dim Reader As SqlDataReader
        '    Try
        '        'Try to open the connection and execute the Select
        '        DKConnection.Open()

        '        Reader = SelectCMD1.ExecuteReader()
        '        Reader.Read()

        '        'nDistrict.SelectedValue = 229
        '        nDistrict.SelectedValue = Reader("MuniSpec")


        '    Catch err As Exception
        '        ' Handle an error by displaying the information

        '    Finally
        '        'Either way, make sure the connection is properly closed
        '        DKConnection.Close()

        '    End Try
        'Else


        'End If

    End Sub
    Protected Sub RadListViewActiveProjects_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles RadListViewActiveProjects.SelectedIndexChanged
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim selectCmd As SqlCommand = New SqlCommand("uspProjectDetailGet", DKConnection)
        selectCmd.CommandType = CommandType.StoredProcedure
        Dim Reader As SqlDataReader
        selectCmd.Parameters.AddWithValue("JobID", RadListViewActiveProjects.SelectedValues("JobID"))


        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            Reader = selectCmd.ExecuteReader()
            Reader.Read()


            lblProjectName.Text = Reader("ProjectName").ToString()
            lblProjectSubTitle.Text = Reader("ProjectSubTitle").ToString()


            lblBranch.Text = "Branch: " + Reader("BranchName").ToString()
            lblDistrict.Text = "District: " + Reader("DistrictName").ToString()
            lblWorkCity.Text = "City: " + Reader("WorkCity").ToString()


            If Reader("BidDate") = "1950-01-01 00:00:00.000" Then
                lblBidDate.Text = "Bids:  No Date Provided"
            Else
                lblBidDate.Text = "Bids: " + FormatDateTime(Reader("BidDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString() + "  " + Reader("BidTime").ToString()
            End If

            If Reader("PreBid_Date") = "1950-01-01 00:00:00.000" Then
                lblPreBid2.Text = "Pre-Bid:  "
            Else
                lblPreBid2.Text = "Pre-Bid: " + FormatDateTime(Reader("PreBid_Date"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
            End If


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub btnStartQuote_Click(sender As Object, e As System.EventArgs) Handles btnStartQuote.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As SqlConnection = New SqlConnection(DKConnectionString)

        Dim insertCMD As New SqlCommand("uspQuoteInsert", DKConnection)
        Dim added As Integer = 0

        insertCMD.CommandType = CommandType.StoredProcedure
        'Add the parameters
        insertCMD.Parameters.AddWithValue("@CustID", qCustomer.SelectedValue)
        insertCMD.Parameters.AddWithValue("@CustName", qCustomer.Text)
        insertCMD.Parameters.AddWithValue("@State", qState.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Address", qAddress.Text)
        insertCMD.Parameters.AddWithValue("@WorkCity", qCity.Text)
        insertCMD.Parameters.AddWithValue("@Zip", qZip.Text)
        insertCMD.Parameters.AddWithValue("@PrimaryBranchno", qPrimaryBranchno.SelectedValue)
        insertCMD.Parameters.AddWithValue("@MuniSpecID", qDistrict.SelectedValue)
        insertCMD.Parameters.AddWithValue("@WorkType", qWorkType.SelectedValue)
        insertCMD.Parameters.AddWithValue("@SalesRepID", qSalesRepID.Value)
        insertCMD.Parameters.AddWithValue("@QuoteName", qQuoteName.Text)
        insertCMD.Parameters.AddWithValue("@ProjectName", qProjectName.Text)
        insertCMD.Parameters.AddWithValue("@ProjectSubTitle", qProjectSubTitle.Text)
        insertCMD.Parameters.AddWithValue("@DefaultPriceType", qPriceType.Value)
        insertCMD.Parameters.AddWithValue("@PriceType", qPriceType.Value)
        insertCMD.Parameters.AddWithValue("@CreatedBy", Request.Cookies("FullName").Value)

        insertCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt)
        insertCMD.Parameters("@QuoteID").Direction = ParameterDirection.Output
        'insertCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt)
        'insertCMD.Parameters("@QuoteID").Direction = ParameterDirection.Output


        'Dim retQuoteID As New SqlParameter("@QuoteID", SqlDbType.BigInt)
        'retQuoteID.Direction = ParameterDirection.Output
        'insertCMD.Parameters.Add(retQuoteID)

        Try
            'Try to open the connection and execute the insert and update the Notes RadGrid
            DKConnection.Open()
            'btnGoToQuote.Text = "Test2"
            added = insertCMD.ExecuteNonQuery()
            'btnGoToQuote.Text = "Test"
            'btnGoToQuote.Text = insertCMD.Parameters("@QuoteID").Value.ToString()
            btnStartQuote.Visible = "false"
            btnGoToQuote.NavigateUrl = "../BidTool/Bid.aspx?QuoteID=" + insertCMD.Parameters("@QuoteID").Value.ToString()
            btnGoToQuote.Text = "Go To Quote Now"


            'RadListViewActiveProjects.DataSourceID = SqlDS_ActiveProjects.ID
            'RadListViewActiveProjects.DataBind()
            'RadListViewNewAdds.DataSourceID = SqlDS_NewAdds.ID
            'RadListViewNewAdds.DataBind()


            qQuoteName.Text = "Base Quote"
            qProjectName.Text = ""
            qProjectSubTitle.Text = ""

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        grdRecentQuotes.DataSourceID = SqlDS_QuotesRecent.ID
        grdRecentQuotes.DataBind()

        grdRecentProjects.DataSourceID = SqlDS_ProjectsRecent.ID
        grdRecentProjects.DataBind()

        RadListViewNewAdds.DataSourceID = SqlDS_NewAdds.ID
        RadListViewNewAdds.DataBind()

        grdQuoteSearch.DataSourceID = SqlDS_QuoteSearch.ID
        grdQuoteSearch.DataBind()

        RadAjaxPanelAddQuoteStep1.Visible = "false"
        RadAjaxPanelAddQuoteStep2.Visible = "false"
        RadAjaxPanelAddQuoteStep3.Visible = "false"
        RadAjaxPanelAddQuoteDirections.Visible = "true"
        RadAjaxPanelGoToQuote.Visible = "true"
        btnNewCustomerSearch.Text = "Start Another Quote"


    End Sub
   

    Protected Sub RadTabStripActiveType_TabClick(ByVal sender As Object, ByVal e As Telerik.Web.UI.RadTabStripEventArgs) Handles RadTabStripActiveType.TabClick


        SqlDS_ActiveProjects.SelectParameters("WorkType").DefaultValue = e.Tab.Value
        RadListViewActiveProjects.DataSourceID = SqlDS_ActiveProjects.ID
        RadListViewActiveProjects.DataBind()

    End Sub
    Protected Sub RadTabStripStatus_TabClick(ByVal sender As Object, ByVal e As Telerik.Web.UI.RadTabStripEventArgs) Handles RadTabStripStatus.TabClick

        SqlDS_ActiveProjects.SelectParameters("Status").DefaultValue = e.Tab.Value
        RadListViewActiveProjects.DataSourceID = SqlDS_ActiveProjects.ID
        RadListViewActiveProjects.DataBind()

    End Sub

    Protected Sub btnSearchProjects_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearchProjects.Click
        SqlDS_ActiveProjects.SelectParameters("ProjectName").DefaultValue = "%" + sProjectName.Text + "%"
        SqlDS_ActiveProjects.SelectParameters("Flag").DefaultValue = SFlag.SelectedItem.Value
        'SqlDS_ActiveProjects.SelectParameters("LeadSalesRep").DefaultValue = sLeadSalesRep.SelectedItem.Value
        'SqlDS_ActiveProjects.SelectParameters("TakeOff1").DefaultValue = sTakeOff1.SelectedItem.Value
        RadListViewActiveProjects.DataSourceID = SqlDS_ActiveProjects.ID
        RadListViewActiveProjects.DataBind()

    End Sub


    Protected Sub btnAddProject_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddProject.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As SqlConnection = New SqlConnection(DKConnectionString)

        Dim insertCMD As New SqlCommand("uspProjectInsert", DKConnection)
        Dim added As Integer = 0

        insertCMD.CommandType = CommandType.StoredProcedure
        'Add the parameters
        insertCMD.Parameters.AddWithValue("@CreatedBy", Request.Cookies("FullName").Value)
        insertCMD.Parameters.AddWithValue("@State", nState.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Origination", nOrigination.Value)
        insertCMD.Parameters.AddWithValue("@Status", nStatus.SelectedValue)
        insertCMD.Parameters.AddWithValue("@WorkType", nWorkType.SelectedValue)
        insertCMD.Parameters.AddWithValue("@BaseEstimate", nBaseEstimate.SelectedValue)
        insertCMD.Parameters.AddWithValue("@ProjectName", nProjectName.Text)
        insertCMD.Parameters.AddWithValue("@ProjectSubTitle", nProjectSubTitle.Text)
        insertCMD.Parameters.AddWithValue("@Address", nWorkAddress.Text)
        insertCMD.Parameters.AddWithValue("@Zip", nWorkZip.Text)
        'insertCMD.Parameters.AddWithValue("@TakeOff1", nTakeOff1.SelectedValue)
        'insertCMD.Parameters.AddWithValue("@LeadSalesRep", nLeadSalesRep.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Flag", nFlag.SelectedValue)

        If nBidDate.SelectedDate Is Nothing Then
            nBidDate.SelectedDate = "1/1/1950"
        End If
        If nCompleteDate.SelectedDate Is Nothing Then
            nCompleteDate.SelectedDate = "1/1/1950"
        End If
        If nDueDate.SelectedDate Is Nothing Then
            nDueDate.SelectedDate = "1/1/1950"
        End If
        If nPreBid_Date.SelectedDate Is Nothing Then
            nPreBid_Date.SelectedDate = "1/1/1950"
        End If

        insertCMD.Parameters.AddWithValue("@BidDate", nBidDate.SelectedDate)
        insertCMD.Parameters.AddWithValue("@DueDate", nDueDate.SelectedDate)
        insertCMD.Parameters.AddWithValue("@CompleteDate", nCompleteDate.SelectedDate)
        insertCMD.Parameters.AddWithValue("@PreBid_Date", nPreBid_Date.SelectedDate)

        insertCMD.Parameters.AddWithValue("@WorkCity", nWorkCity.Text)
        insertCMD.Parameters.AddWithValue("@District", nDistrict.Text)
        insertCMD.Parameters.AddWithValue("@MuniSpecID", nDistrict.SelectedValue)
        insertCMD.Parameters.AddWithValue("@BidTime", nBidTime.SelectedValue)

        'insertCMD.Parameters.AddWithValue("@PlanSource", nPlanSource.SelectedValue)
        'insertCMD.Parameters.AddWithValue("@Plans", nPlans.Text)
        insertCMD.Parameters.AddWithValue("@Plans_Note", nPlans_Note.Text)
        insertCMD.Parameters.AddWithValue("@FlagHDPE", nFlagHDPE.Checked)
        insertCMD.Parameters.AddWithValue("@FlagDIP", nFlagDIP.Checked)
        insertCMD.Parameters.AddWithValue("@FlagPVC", nFlagPVC.Checked)
        insertCMD.Parameters.AddWithValue("@FlagMeter", nFlagMeter.Checked)
        insertCMD.Parameters.AddWithValue("@HDPE_Notes", nHDPE_Notes.Text)
        insertCMD.Parameters.AddWithValue("@DIP_Notes", nDIP_Notes.Text)
        insertCMD.Parameters.AddWithValue("@PVC_Notes", nPVC_Notes.Text)
        insertCMD.Parameters.AddWithValue("@Bid_Notes", nBid_Notes.Text)
        insertCMD.Parameters.AddWithValue("@Fitting_Notes", nFitting_Notes.Text)
        insertCMD.Parameters.AddWithValue("@Restraint_Notes", nRestraint_Notes.Text)
        insertCMD.Parameters.AddWithValue("@Other_Notes", nOther_Notes.Text)


        'insertCMD.Parameters.AddWithValue("@Pricing", SqlDbType.VarChar, 20).Value = nPricing.SelectedValue
        insertCMD.Parameters.AddWithValue("@PrimaryBranchno", nPrimaryBranchno.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Archived", "1/1/1950")


        Try
            'Try to open the connection and execute the insert and update the Notes RadGrid
            DKConnection.Open()

            added = insertCMD.ExecuteNonQuery()
            RadListViewActiveProjects.DataSourceID = SqlDS_ActiveProjects.ID
            RadListViewActiveProjects.DataBind()
            RadListViewNewAdds.DataSourceID = SqlDS_NewAdds.ID
            RadListViewNewAdds.DataBind()

            nProjectName.Text = ""
            nProjectSubTitle.Text = ""
            nWorkCity.Text = ""
            nWorkAddress.Text = ""
            nWorkZip.Text = ""
            'nPlans.Text = ""
            nPlans_Note.Text = ""
            nHDPE_Notes.Text = ""
            nDIP_Notes.Text = ""
            nPVC_Notes.Text = ""
            nBid_Notes.Text = ""

            nFlagDIP.Checked = False
            nFlagHDPE.Checked = False

            nFlagPVC.Checked = False
            'nState.SelectedIndex = 1
            nBidTime.SelectedIndex = 0
            'nTakeOff1.SelectedIndex = 0
            'nLeadSalesRep.SelectedIndex = 0
            nBaseEstimate.SelectedIndex = 0
            'nPlanSource.SelectedIndex = 0
            'nDistrict.SelectedIndex = 0
            'nMuniSpecID.Value = 0
            nStatus.SelectedIndex = 0

            nBidDate.Clear()
            nDueDate.SelectedDate = Date.Today
            nPreBid_Date.Clear()
            nCompleteDate.Clear()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        RadListViewNewAdds.DataSourceID = SqlDS_NewAdds.ID
        RadListViewNewAdds.DataBind()

        grdQuoteSearch.DataSourceID = SqlDS_QuoteSearch.ID
        grdQuoteSearch.DataBind()

        RadAjaxPanelAddQuoteStep1.Visible = "False"
        RadAjaxPanelAddQuoteStep2.Visible = "False"
        RadAjaxPanelAddQuoteStep3.Visible = "False"


    End Sub

    
  

    Protected Sub qCustomer_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles qCustomer.SelectedIndexChanged
        RadAjaxPanelAddQuoteStep1.Visible = "false"
        RadAjaxPanelAddQuoteStep2.Visible = "true"
        RadAjaxPanelAddQuoteStep3.Visible = "true"
        RadAjaxPanelAddQuoteDirections.Visible = "true"
        btnStartQuote.Visible = "true"


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspCustomerSearch", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = qCustomer.SelectedValue.ToString()



        Try
            DKConnection.Open()

            Dim result As Integer = menuCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = menuCMD.ExecuteReader()
            myReader.Read()

            qSalesRepID.Value = myReader("SalesRepID")
            qCustID.Value = myReader("CustID")
            qCustName.Value = myReader("CustName")
            qPriceType.Value = myReader("PriceType")


            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try


    End Sub
    Protected Sub btnCustomerSearch_Click(sender As Object, e As System.EventArgs) Handles btnCustomerSearch.Click

        RadAjaxPanelAddQuoteStep1.Visible = "false"
        RadAjaxPanelAddQuoteStep2.Visible = "true"
        RadAjaxPanelAddQuoteStep3.Visible = "false"
        RadAjaxPanelAddQuoteDirections.Visible = "true"
        btnStartQuote.Visible = "false"

    End Sub





    Protected Sub btnNewCustomerSearch_Click(sender As Object, e As System.EventArgs) Handles btnNewCustomerSearch.Click
        RadAjaxPanelAddQuoteStep1.Visible = "true"
        RadAjaxPanelAddQuoteStep2.Visible = "false"
        RadAjaxPanelAddQuoteStep3.Visible = "false"
        RadAjaxPanelAddQuoteDirections.Visible = "false"
        RadAjaxPanelGoToQuote.Visible = "false"
        qCustomer.ClearSelection()

    End Sub

    Protected Sub nState_ItemDataBound(sender As Object, e As Telerik.Web.UI.RadComboBoxItemEventArgs) Handles nState.ItemDataBound
        nState.SelectedIndex = 0
    End Sub

    Protected Sub nState_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles nState.SelectedIndexChanged
        nDistrict.Items.Clear()
        SqlDS_DistrictMenu.SelectParameters("Region1").DefaultValue = nState.SelectedValue.ToString()


        nDistrict.DataSourceID = SqlDS_DistrictMenu.ID
        nDistrict.DataBind()


        nPrimaryBranchno.Items.Clear()
        SqlDS_Branch.SelectParameters("State").DefaultValue = nState.SelectedValue.ToString()
        nPrimaryBranchno.DataSourceID = SqlDS_Branch.ID
        nPrimaryBranchno.DataBind()
        'nPrimaryBranchno.SelectedValue = Request.Cookies("Whse1").Value

        'Dim SelectSQL As String
        'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = '3')"
        'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + Request.Cookies("Whse1").Value.ToString() + "')"
        'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + nPrimaryBranchno.SelectedValue.ToString() + "')"

        'Code to assign a default municipal district 
        'Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection As New SqlConnection(DKConnectionString)

        'Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

        'Dim Reader As SqlDataReader
        'Try
        '    'Try to open the connection and execute the Select
        '    DKConnection.Open()

        '    Reader = SelectCMD1.ExecuteReader()
        '    Reader.Read()

        '    'nDistrict.SelectedValue = 396
        '    nDistrict.SelectedValue = Reader("MuniSpec")

        'Catch err As Exception
        '    ' Handle an error by displaying the information

        'Finally
        '    'Either way, make sure the connection is properly closed
        '    DKConnection.Close()

        'End Try

    End Sub


    Protected Sub RadListViewNewAdds_ItemDataBound(sender As Object, e As Telerik.Web.UI.GridItemEventArgs) Handles RadListViewNewAdds.ItemDataBound
        If TypeOf e.Item Is GridDataItem Then
            Dim item As GridDataItem = TryCast(e.Item, GridDataItem)
            If item("BidDate").Text = DateTime.MinValue.ToString("MM/dd/yy") Then
                item("BidDate").Text = ""
            End If
        End If
    End Sub

    'Protected Sub nDistrict_ItemDataBound(sender As Object, e As Telerik.Web.UI.RadComboBoxItemEventArgs) Handles nDistrict.ItemDataBound



    '    'Assign Default Municipality according to the selected Branch on the New Project creation page
    '    Dim SelectSQL As String
    '    'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = '1')"
    '    'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + Request.Cookies("Whse1").Value.ToString() + "')"
    '    SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + nPrimaryBranchno.SelectedValue.ToString() + "')"


    '    Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
    '    Dim DKConnection As New SqlConnection(DKConnectionString)

    '    Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

    '    Dim Reader As SqlDataReader
    '    Try
    '        'Try to open the connection and execute the Select
    '        DKConnection.Open()

    '        Reader = SelectCMD1.ExecuteReader()
    '        Reader.Read()

    '        'nDistrict.SelectedValue = 229
    '        nDistrict.SelectedValue = Reader("MuniSpec")

    '    Catch err As Exception
    '        ' Handle an error by displaying the information

    '    Finally
    '        'Either way, make sure the connection is properly closed
    '        DKConnection.Close()

    '    End Try
    'End Sub

    'Protected Sub nPrimaryBranchno_ItemDataBound(sender As Object, e As Telerik.Web.UI.RadComboBoxItemEventArgs) Handles nPrimaryBranchno.ItemDataBound

    '    nPrimaryBranchno.SelectedIndex = 0
    'End Sub

    'Protected Sub nPrimaryBranchno_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles nPrimaryBranchno.SelectedIndexChanged

    '    'Assign Default Municipality according to the selected Branch on the New Project creation page
    '    Dim SelectSQL As String
    '    'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = '1')"
    '    'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + Request.Cookies("Whse1").Value.ToString() + "')"
    '    SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + nPrimaryBranchno.SelectedValue.ToString() + "')"


    '    Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
    '    Dim DKConnection As New SqlConnection(DKConnectionString)

    '    Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

    '    Dim Reader As SqlDataReader
    '    Try
    '        'Try to open the connection and execute the Select
    '        DKConnection.Open()

    '        Reader = SelectCMD1.ExecuteReader()
    '        Reader.Read()

    '        'nDistrict.SelectedValue = 229
    '        nDistrict.SelectedValue = Reader("MuniSpec")

    '    Catch err As Exception
    '        ' Handle an error by displaying the information

    '    Finally
    '        'Either way, make sure the connection is properly closed
    '        DKConnection.Close()

    '    End Try


    'End Sub

    'Protected Sub btnSearchQuotes_Click(sender As Object, e As System.EventArgs) Handles btnSearchQuotes.Click


    '    Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
    '    Dim DKConnection As New SqlConnection(DKConnectionString)

    '    Dim selectCMD As SqlCommand = New SqlCommand("uspQuoteSearch", DKConnection)
    '    selectCMD.CommandType = CommandType.StoredProcedure

    '    selectCMD.Parameters.Add("@Branch", SqlDbType.NVarChar).Value = searchQuBranch.SelectedValue.ToString()
    '    selectCMD.Parameters.Add("@ProjectName", SqlDbType.NVarChar).Value = searchQuProjectName.Text
    '    selectCMD.Parameters.Add("@CustName", SqlDbType.NVarChar).Value = searchQuCustomer.Text
    '    selectCMD.Parameters.Add("@ProjectStatus", SqlDbType.VarChar).Value = searchQuStatus.SelectedValue.ToString()
    '    selectCMD.Parameters.Add("@CreatedBy", SqlDbType.NVarChar).Value = searchQuCreatedBy.Text

    '    selectCMD.Parameters.Add("@State1", SqlDbType.NVarChar).Value = Request.Cookies("Region1").Value
    '    selectCMD.Parameters.Add("@State2", SqlDbType.NVarChar).Value = Request.Cookies("Region2").Value
    '    selectCMD.Parameters.Add("@State3", SqlDbType.NVarChar).Value = Request.Cookies("Region3").Value
    '    selectCMD.Parameters.Add("@State4", SqlDbType.NVarChar).Value = Request.Cookies("Region4").Value
    '    selectCMD.Parameters.Add("@State5", SqlDbType.NVarChar).Value = Request.Cookies("Region5").Value

    '    Dim updated As Integer = 0

    '    Try
    '        'Try to open the connection and execute the update
    '        DKConnection.Open()
    '        updated = selectCMD.ExecuteNonQuery()

    '        grdQuoteSearch.DataSourceID = SqlDS_QuoteSearch.ID
    '        grdQuoteSearch.DataBind()

    '    Catch err As Exception
    '        ' Handle an error by displaying the information

    '    Finally
    '        'Either way, make sure the connection is properly closed
    '        DKConnection.Close()


    '    End Try

    'End Sub

    Protected Sub qDistrict_ItemDataBound(sender As Object, e As Telerik.Web.UI.RadComboBoxItemEventArgs) Handles qDistrict.ItemDataBound

       
        'Assign Default Municipality according to the selected Branch on the New Project creation page
        Dim SelectSQL As String

        SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + qPrimaryBranchno.SelectedValue.ToString() + "')"


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

        Dim Reader As SqlDataReader
        Try
            'Try to open the connection and execute the Select
            DKConnection.Open()

            Reader = SelectCMD1.ExecuteReader()
            Reader.Read()

            qDistrict.SelectedValue = Reader("MuniSpec")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub

    Protected Sub qState_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles qState.SelectedIndexChanged
        qPrimaryBranchno.Items.Clear()
        SqlDS_Branch.SelectParameters("State").DefaultValue = qState.SelectedValue.ToString()
        qPrimaryBranchno.DataSourceID = SqlDS_Branch.ID
        qPrimaryBranchno.DataBind()
        qPrimaryBranchno.SelectedIndex = 0

        'Dim SelectSQL As String
        ''SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = '3')"
        ''SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + Request.Cookies("Whse1").Value.ToString() + "')"
        'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + qPrimaryBranchno.SelectedValue.ToString() + "')"

        ''Code to assign a a default municipal specid
        'Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection As New SqlConnection(DKConnectionString)

        'Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

        'Dim Reader As SqlDataReader
        'Try
        '    'Try to open the connection and execute the Select
        '    DKConnection.Open()

        '    Reader = SelectCMD1.ExecuteReader()
        '    Reader.Read()

        '    'nDistrict.SelectedValue = 396
        '    qDistrict.SelectedValue = Reader("MuniSpec")

        'Catch err As Exception
        '    ' Handle an error by displaying the information

        'Finally
        '    'Either way, make sure the connection is properly closed
        '    DKConnection.Close()

        'End Try

    End Sub

   
    'Protected Sub RadTabStrip1_TabClick(sender As Object, e As Telerik.Web.UI.RadTabStripEventArgs) Handles RadTabStrip1.TabClick
    '    'nPrimaryBranchno.SelectedIndex = 0


    '    'Assign Default Municipality according to the selected Branch on the New Project creation page
    '    Dim SelectSQL As String
    '    'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = '1')"
    '    'SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + Request.Cookies("Whse1").Value.ToString() + "')"
    '    SelectSQL = "SELECT MuniSpec FROM Project_BranchDefaults WHERE (Branchno = " + "'" + nPrimaryBranchno.SelectedValue.ToString() + "')"


    '    Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
    '    Dim DKConnection As New SqlConnection(DKConnectionString)

    '    Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

    '    Dim Reader As SqlDataReader
    '    Try
    '        'Try to open the connection and execute the Select
    '        DKConnection.Open()

    '        Reader = SelectCMD1.ExecuteReader()
    '        Reader.Read()

    '        'nDistrict.SelectedValue = 229
    '        nDistrict.SelectedValue = Reader("MuniSpec")

    '    Catch err As Exception
    '        ' Handle an error by displaying the information

    '    Finally
    '        'Either way, make sure the connection is properly closed
    '        DKConnection.Close()

    '    End Try
    'End Sub
End Class
