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

        If IsPostBack = "False" Then
            nDueDate.SelectedDate = System.DateTime.Now()
            btnStartQuoteProjectSearch.Visible = "false"

            SqlDS_DistrictMenu.SelectParameters("State2").DefaultValue = Request.Cookies("Region1").Value
            nPrimaryBranchno.SelectedValue = Request.Cookies("Whse1").Value
            'nDistrict.DataSourceID = SqlDS_DistrictMenu.ID
            'nDistrict.DataBind()


        End If



       

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

            btnStartQuoteProjectSearch.Visible = "true"

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

    Protected Sub sType_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles sType.SelectedIndexChanged

        SqlDS_ActiveProjects.SelectParameters("WorkType").DefaultValue = sType.SelectedValue
        RadListViewActiveProjects.DataSourceID = SqlDS_ActiveProjects.ID
        RadListViewActiveProjects.DataBind()

    End Sub

    Protected Sub sStatus_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles sStatus.SelectedIndexChanged

        SqlDS_ActiveProjects.SelectParameters("Status").DefaultValue = sType.SelectedValue
        RadListViewActiveProjects.DataSourceID = SqlDS_ActiveProjects.ID
        RadListViewActiveProjects.DataBind()

    End Sub


    Protected Sub btnSearchProjects_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearchProjects.Click
        SqlDS_ActiveProjects.SelectParameters("ProjectName").DefaultValue = "%" + sProjectName.Text + "%"
        SqlDS_ActiveProjects.SelectParameters("Flag").DefaultValue = sFlag.SelectedItem.Value

        RadListViewActiveProjects.DataSourceID = SqlDS_ActiveProjects.ID
        RadListViewActiveProjects.DataBind()

    End Sub



    Protected Sub RadListViewNewAdds_ItemDataBound(sender As Object, e As Telerik.Web.UI.GridItemEventArgs) Handles RadListViewNewAdds.ItemDataBound
        If TypeOf e.Item Is GridDataItem Then
            Dim item As GridDataItem = TryCast(e.Item, GridDataItem)
            If item("BidDate").Text = DateTime.MinValue.ToString("MM/dd/yy") Then
                item("BidDate").Text = ""
            End If
        End If
    End Sub


    Protected Sub btnAddProject_Click(sender As Object, e As System.EventArgs) Handles btnAddProject.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspProjectInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure


        insertCMD.Parameters.AddWithValue("@Flag", nFlag.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Origination", nOrigination.Value)
        insertCMD.Parameters.AddWithValue("@State", nState.Text)
        insertCMD.Parameters.AddWithValue("@PrimaryBranchno", nPrimaryBranchno.SelectedValue)
        insertCMD.Parameters.AddWithValue("@WorkType", nWorkType.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Status", nStatus.SelectedValue)
        insertCMD.Parameters.AddWithValue("@BaseEstimate", nBaseEstimate.SelectedValue)

        insertCMD.Parameters.AddWithValue("@ProjectName", nProjectName.Text)
        insertCMD.Parameters.AddWithValue("@ProjectSubTitle", nProjectSubTitle.Text)

        'insertCMD.Parameters.AddWithValue("@TakeOff1", uTakeOff1.SelectedValue)
        'insertCMD.Parameters.AddWithValue("@LeadSalesRep", uLeadSalesRep.SelectedValue)

        If nBidDate.SelectedDate Is Nothing Then
            insertCMD.Parameters.AddWithValue("@BidDate", "1/1/1950")
        Else
            insertCMD.Parameters.AddWithValue("@BidDate", nBidDate.SelectedDate)
        End If
        If nDueDate.SelectedDate Is Nothing Then
            insertCMD.Parameters.AddWithValue("@DueDate", "1/1/1950")
        Else
            insertCMD.Parameters.AddWithValue("@DueDate", nDueDate.SelectedDate)
        End If
        If nCompleteDate.SelectedDate Is Nothing Then
            insertCMD.Parameters.AddWithValue("@CompleteDate", "1/1/1950")
        Else
            insertCMD.Parameters.AddWithValue("@CompleteDate", nCompleteDate.SelectedDate)
        End If

        insertCMD.Parameters.AddWithValue("@Address", nWorkAddress.Text)
        insertCMD.Parameters.AddWithValue("@Zip", nWorkZip.Text)

        insertCMD.Parameters.AddWithValue("@WorkCity", nWorkCity.Text)
        insertCMD.Parameters.AddWithValue("@District", nDistrict.SelectedValue)
        insertCMD.Parameters.AddWithValue("@MuniSpecID", nDistrict.SelectedValue)
        insertCMD.Parameters.AddWithValue("@BidTime", nBidTime.SelectedValue)
        If nPreBid_Date.SelectedDate Is Nothing Then
            insertCMD.Parameters.AddWithValue("@PreBid_Date", "1/1/1950")
        Else
            insertCMD.Parameters.AddWithValue("@PreBid_Date", nPreBid_Date.SelectedDate)
        End If


        insertCMD.Parameters.AddWithValue("@Plans_Note", nPlans_Note.Text)

        insertCMD.Parameters.AddWithValue("@HDPE_Notes", nHDPE_Notes.Text)
        insertCMD.Parameters.AddWithValue("@DIP_Notes", nDIP_Notes.Text)
        insertCMD.Parameters.AddWithValue("@PVC_Notes", nPVC_Notes.Text)
        insertCMD.Parameters.AddWithValue("@Bid_Notes", nBid_Notes.Text)
        insertCMD.Parameters.AddWithValue("@Fitting_Notes", nFitting_Notes.Text)
        insertCMD.Parameters.AddWithValue("@Restraint_Notes", nRestraint_Notes.Text)
        insertCMD.Parameters.AddWithValue("@Other_Notes", nOther_Notes.Text)
        insertCMD.Parameters.AddWithValue("@CreatedBy", Request.Cookies("FullName").Value)



        Dim inserted As Integer = 0

        Try
            DKConnection.Open()
            inserted = insertCMD.ExecuteNonQuery()

            nFlag.SelectedIndex = 0
            nWorkType.SelectedIndex = 0
            nStatus.SelectedIndex = 0
            nBaseEstimate.SelectedIndex = 0
            nProjectName.Text = ""
            nProjectSubTitle.Text = ""
            nBidDate.Clear()
            nDueDate.Clear()
            nCompleteDate.Clear()
            nWorkAddress.Text = ""
            nWorkZip.Text = ""
            nWorkCity.Text = ""
            nState.Text = ""
            nBidTime.SelectedIndex = 0
            nPreBid_Date.Clear()
            nPlans_Note.Text = ""
            nHDPE_Notes.Text = ""
            nDIP_Notes.Text = ""
            nPVC_Notes.Text = ""
            nBid_Notes.Text = ""
            nFitting_Notes.Text = ""
            nRestraint_Notes.Text = ""
            nOther_Notes.Text = ""


            grdRecentProjects.DataSourceID = SqlDS_ProjectsRecent.ID
            grdRecentProjects.DataBind()

            RadListViewNewAdds.DataSourceID = SqlDS_NewAdds.ID
            RadListViewNewAdds.DataBind()

            grdRecentQuotes.DataSourceID = SqlDS_QuotesRecent.ID
            grdRecentQuotes.DataBind()

            grdQuoteSearch.DataSourceID = SqlDS_QuoteSearch.ID
            grdQuoteSearch.DataBind()


        Catch ex As SqlException

        Finally
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub searchQuBranch_DataBound(sender As Object, e As System.EventArgs) Handles searchQuBranch.DataBound
        searchQuBranch.SelectedIndex = 0
        searchQuStatus.SelectedIndex = 0
    End Sub

    Protected Sub nDistrict_DataBound(sender As Object, e As System.EventArgs) Handles nDistrict.DataBound



        If Page.IsPostBack = "false" Then
            

            If Request.Cookies("Region1").Value = "AZ" Then
                nDistrict.Items.Insert(0, New RadComboBoxItem("- (AZ)", 532))
            ElseIf Request.Cookies("Region1").Value = "CO" Then
                nDistrict.Items.Insert(0, New RadComboBoxItem("- (CO)", 534))
            ElseIf Request.Cookies("Region1").Value = "MT" Then
                nDistrict.Items.Insert(0, New RadComboBoxItem("- (MT)", 535))
            ElseIf Request.Cookies("Region1").Value = "NV" Then
                nDistrict.Items.Insert(0, New RadComboBoxItem("- (NV)", 536))
            ElseIf Request.Cookies("Region1").Value = "TX" Then
                nDistrict.Items.Insert(0, New RadComboBoxItem("- (TX)", 537))
            ElseIf Request.Cookies("Region1").Value = "WY" Then
                nDistrict.Items.Insert(0, New RadComboBoxItem("- (WY)", 538))
            End If

        End If

    End Sub

    Protected Sub nPrimaryBranchno_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles nPrimaryBranchno.SelectedIndexChanged

        'Build the list of available districts for the selected branch
        Dim SelectSQL1 As String
        SelectSQL1 = "SELECT [branchno],[state] FROM [dbo].[Branches] WHERE [branchno]= " + nPrimaryBranchno.SelectedValue.ToString()


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim SelectCMD1 As New SqlCommand(SelectSQL1, DKConnection1)


        Try
            'Try to open the connection and execute the update
            DKConnection1.Open()

            Dim result As Integer = SelectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = SelectCMD1.ExecuteReader()
            myReader1.Read()


            SqlDS_DistrictMenu.SelectParameters("State2").DefaultValue = myReader1("state").ToString()
            nDistrict.DataSourceID = SqlDS_DistrictMenu.ID
            nDistrict.DataBind()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection1.Close()

        End Try
    End Sub

   
End Class
