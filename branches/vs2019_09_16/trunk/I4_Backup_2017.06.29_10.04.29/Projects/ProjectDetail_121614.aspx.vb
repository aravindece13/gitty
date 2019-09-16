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


Partial Class Projects_ProjectDetail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = "false" Then
            btnCloseProject.Attributes.Add("onclick", "window.close();")
            'SqlDS_District.SelectParameters("State2").DefaultValue = Request.Cookies("Region1").ToString()

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

                If Reader("BidDate") <> "1/1/1950" Then
                    uBidDate.SelectedDate = Reader("BidDate")
                End If
                If Reader("CompleteDate") <> "1/1/1950" Then
                    uCompleteDate.SelectedDate = Reader("CompleteDate")
                End If
                If Reader("DueDate") <> "1/1/1950" Then
                    uDueDate.SelectedDate = Reader("DueDate")
                End If
                If Reader("PreBid_Date") <> "1/1/1950" Then
                    uPreBid_Date.SelectedDate = Reader("PreBid_Date")
                End If


                Page.Title = Reader("ProjectName") + " Details"
                hdnuJobID.Value = Reader("JobID")
                lblProjectName.Text = Reader("ProjectName") + " Details"
                uProjectName.Text = Reader("ProjectName")
                uProjectSubTitle.Text = Reader("ProjectSubTitle")
                uState.SelectedValue = Reader("State")
                uStatus.SelectedValue = Reader("Status")
                uDistrict.SelectedValue = Reader("MuniSpecID")
                uPrimaryBranchno.SelectedValue = Reader("PrimaryBranchno")
                'uMuniSpecID.Value = Reader("MuniSpecID")
                uWorkType.SelectedValue = Reader("WorkType")
                uFlag.SelectedValue = Reader("Flag")

                uBaseEstimate.SelectedValue = Reader("BaseEstimate")
                'uTakeOff1.SelectedValue = Reader("TakeOff1")
                'uLeadSalesRep.SelectedValue = Reader("LeadSalesRep")
                uBidTime.SelectedValue = Reader("BidTime")
                uWorkCity.Text = Reader("WorkCity")
                uWorkAddress.Text = Reader("ProjectAddress")
                uWorkZip.Text = Reader("ProjectZip")
                'uPlanSource.SelectedValue = Reader("PlanSource")
                'uPlans.Text = Reader("Plans")
                uPlans_Notes.Text = Reader("Plans_Note")
                'uFlagDIP.Checked = Reader("FlagDIP")
                'uFlagHDPE.Checked = Reader("FlagHDPE")
                'uFlagMeter.Checked = Reader("FlagMeter")
                'uFlagPVC.Checked = Reader("FlagPVC")

                uHDPE_Notes.Text = Reader("HDPE_Notes")
                uDIP_Notes.Text = Reader("DIP_Notes")
                uPVC_Notes.Text = Reader("PVC_Notes")
                uBid_Notes.Text = Reader("Bid_Notes")
                uRestraint_Notes.Text = Reader("Restraint_Notes")
                uFitting_Notes.Text = Reader("Fitting_Notes")
                uOther_Notes.Text = Reader("Other_Notes")

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try



            'Update the list of recent projects visited the first time the page is loaded

            Dim InsertSQL As String
            InsertSQL = "INSERT INTO Project_Recent ([JobID],[FullName]) VALUES ("
            InsertSQL &= hdnuJobID.Value.ToString() + ", "
            InsertSQL &= "'" + Request.Cookies("FullName").Value.ToString() + "')"


            Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection4 As New SqlConnection(DKConnectionString4)

            Dim InsertCMD4 As New SqlCommand(InsertSQL, DKConnection4)

            Dim inserted As Integer = 0

            Try
                'Try to open the connection and execute the update
                DKConnection4.Open()
                inserted = InsertCMD4.ExecuteNonQuery()


            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection4.Close()

            End Try




        End If

    End Sub


    Protected Sub btnUpdateProject_Click(sender As Object, e As System.EventArgs) Handles btnUpdateProject.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspProjectDetailUpdate", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure



        updateCMD.Parameters.AddWithValue("@JobID", hdnuJobID.Value)
        updateCMD.Parameters.AddWithValue("@Flag", uFlag.SelectedValue)
        updateCMD.Parameters.AddWithValue("@State", uState.SelectedValue)
        updateCMD.Parameters.AddWithValue("@PrimaryBranchno", uPrimaryBranchno.SelectedValue)
        updateCMD.Parameters.AddWithValue("@WorkType", uWorkType.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Status", uStatus.SelectedValue)
        updateCMD.Parameters.AddWithValue("@BaseEstimate", uBaseEstimate.SelectedValue)

        updateCMD.Parameters.AddWithValue("@ProjectName", uProjectName.Text)
        updateCMD.Parameters.AddWithValue("@ProjectSubTitle", uProjectSubTitle.Text)

        'updateCMD.Parameters.AddWithValue("@TakeOff1", uTakeOff1.SelectedValue)
        'updateCMD.Parameters.AddWithValue("@LeadSalesRep", uLeadSalesRep.SelectedValue)

        If uBidDate.SelectedDate Is Nothing Then
            updateCMD.Parameters.AddWithValue("@BidDate", "1/1/1950")
        Else
            updateCMD.Parameters.AddWithValue("@BidDate", uBidDate.SelectedDate)
        End If
        If uDueDate.SelectedDate Is Nothing Then
            updateCMD.Parameters.AddWithValue("@DueDate", "1/1/1950")
        Else
            updateCMD.Parameters.AddWithValue("@DueDate", uDueDate.SelectedDate)
        End If
        If uCompleteDate.SelectedDate Is Nothing Then
            updateCMD.Parameters.AddWithValue("@CompleteDate", "1/1/1950")
        Else
            updateCMD.Parameters.AddWithValue("@CompleteDate", uCompleteDate.SelectedDate)
        End If

        updateCMD.Parameters.AddWithValue("@Address", uWorkAddress.Text)
        updateCMD.Parameters.AddWithValue("@Zip", uWorkZip.Text)

        updateCMD.Parameters.AddWithValue("@WorkCity", uWorkCity.Text)
        updateCMD.Parameters.AddWithValue("@District", uDistrict.SelectedValue)
        updateCMD.Parameters.AddWithValue("@MuniSpecID", uDistrict.SelectedValue)
        updateCMD.Parameters.AddWithValue("@BidTime", uBidTime.SelectedValue)
        If uPreBid_Date.SelectedDate Is Nothing Then
            updateCMD.Parameters.AddWithValue("@PreBid_Date", "1/1/1950")
        Else
            updateCMD.Parameters.AddWithValue("@PreBid_Date", uPreBid_Date.SelectedDate)
        End If

        'updateCMD.Parameters.AddWithValue("@PreBid_Time", uBidTime.SelectedValue)

        'updateCMD.Parameters.AddWithValue("@PlanSource", uPlanSource.SelectedValue)
        'updateCMD.Parameters.AddWithValue("@Plans", uPlans.Text)
        updateCMD.Parameters.AddWithValue("@Plans_Note", uPlans_Notes.Text)
        'updateCMD.Parameters.AddWithValue("@FlagHDPE", uFlagHDPE.Checked)
        'updateCMD.Parameters.AddWithValue("@FlagDIP", uFlagDIP.Checked)
        'updateCMD.Parameters.AddWithValue("@FlagPVC", uFlagPVC.Checked)
        'updateCMD.Parameters.AddWithValue("@FlagMeter", uFlagMeter.Checked)
        updateCMD.Parameters.AddWithValue("@HDPE_Notes", uHDPE_Notes.Text)
        updateCMD.Parameters.AddWithValue("@DIP_Notes", uDIP_Notes.Text)
        updateCMD.Parameters.AddWithValue("@PVC_Notes", uPVC_Notes.Text)
        updateCMD.Parameters.AddWithValue("@Bid_Notes", uBid_Notes.Text)
        updateCMD.Parameters.AddWithValue("@Fitting_Notes", uFitting_Notes.Text)
        updateCMD.Parameters.AddWithValue("@Restraint_Notes", uRestraint_Notes.Text)
        updateCMD.Parameters.AddWithValue("@Other_Notes", uOther_Notes.Text)



        Dim updated As Integer = 0

        Try
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()

        Catch ex As SqlException

        Finally
            DKConnection.Close()

        End Try



    End Sub
    



    'Protected Sub btnAddContractor_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddContractor.Click
    '    'Define ADO>NET objects

    '    Dim insertSQL As String
    '    insertSQL = "INSERT INTO aProject_Players ("
    '    insertSQL &= "JobID,Contractor,Result,Distributor,BidAmount) "
    '    insertSQL &= "VALUES ("
    '    insertSQL &= "@hdnJobID,@Contractor,@Result,@Distributor,@BidAmount)"


    '    'Define the ADO.NET Connection Object
    '    Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
    '    Dim DKConnection As New SqlConnection(DKConnectionString)

    '    Dim insertCmd As New SqlCommand(insertSQL, DKConnection)
    '    Dim inserted As Integer = 0

    '    'Add the parameters
    '    insertCmd.Parameters.AddWithValue("@hdnJobID", hdnJobID.Value)
    '    insertCmd.Parameters.AddWithValue("@Contractor", nContractor.SelectedValue)
    '    insertCmd.Parameters.AddWithValue("@Distributor", nDistributor.SelectedValue)

    '    insertCmd.Parameters.AddWithValue("@Result", nResult.SelectedValue)
    '    insertCmd.Parameters.AddWithValue("@BidAmount", nBidAmount.Value)



    '    Try
    '        'Try to open the connection and execute the insert and update
    '        DKConnection.Open()
    '        inserted = insertCmd.ExecuteNonQuery()

    '        grdPlayers.DataSourceID = SqlDS_Players.ID
    '        grdPlayers.DataBind()

    '        nContractor.ClearSelection()
    '        nDistributor.ClearSelection()
    '        nResult.ClearSelection()
    '        nBidAmount.Value = 0

    '    Catch err As Exception
    '        ' Handle an error by displaying the information

    '    Finally
    '        'Either way, make sure the connection is properly closed
    '        DKConnection.Close()

    '    End Try
    'End Sub


    Protected Sub btnEditContractor_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEditContractor.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim UpdateCMD As SqlCommand = New SqlCommand("uspProjectPlayersUpdate", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure
        UpdateCMD.Parameters.AddWithValue("@Bid_PlayerID", grdPlayers.SelectedValues("Bid_PlayerID").ToString())
        updateCmd.Parameters.AddWithValue("@Contractor", eContractor.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Distributor", eDistributor.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Result", eResult.SelectedValue)
        UpdateCMD.Parameters.AddWithValue("@BidAmount", eBidAmount.Value)
        UpdateCMD.Parameters.AddWithValue("@Note", "")

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = UpdateCMD.ExecuteNonQuery()
            grdPlayers.DataSourceID = SqlDS_Players.ID
            grdPlayers.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub
    'Protected Sub uDistrict_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles uDistrict.SelectedIndexChanged

    '    Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
    '    Dim DKConnection As New SqlConnection(DKConnectionString)

    '    Dim selectCmd As SqlCommand = New SqlCommand("uspProjectMenusGetSpecific", DKConnection)
    '    selectCmd.CommandType = CommandType.StoredProcedure
    '    Dim Reader As SqlDataReader
    '    selectCmd.Parameters.AddWithValue("Label", uDistrict.SelectedValue.ToString)


    '    Try
    '        'Try to open the connection and execute the update
    '        DKConnection.Open()
    '        Reader = selectCmd.ExecuteReader()
    '        Reader.Read()

    '        uMuniSpecID.Value = Reader("Value2")

    '    Catch err As Exception
    '        ' Handle an error by displaying the information

    '    Finally
    '        'Either way, make sure the connection is properly closed
    '        DKConnection.Close()

    '    End Try

    'End Sub

    Protected Sub grdPlayers_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdPlayers.SelectedIndexChanged
        RadTabStripPlayers.SelectedIndex() = 1
        hdnBid_PlayerID.Value = grdPlayers.SelectedValues("Bid_PlayerID").ToString()
        lblTest.Text = grdPlayers.SelectedValues("Bid_PlayerID").ToString()

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim selectCmd As SqlCommand = New SqlCommand("uspProjectPlayersGetSpecific", DKConnection)
        selectCmd.CommandType = CommandType.StoredProcedure
        Dim Reader As SqlDataReader
        selectCmd.Parameters.AddWithValue("@Bid_PlayerID", hdnBid_PlayerID.Value)


        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            Reader = selectCmd.ExecuteReader()
            Reader.Read()

            eContractor.SelectedValue = Reader("Contractor")
            eResult.SelectedValue = Reader("Result")
            eDistributor.SelectedValue = Reader("Distributor")
            eBidAmount.Text = Reader("BidAmount")
            hdnBid_PlayerID.Value = Reader("Bid_PlayerID")


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub btnAddContractor_Click(sender As Object, e As System.EventArgs) Handles btnAddContractor.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspProjectPlayersInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure
        insertCMD.Parameters.AddWithValue("@JobID", hdnuJobID.Value)
        insertCMD.Parameters.AddWithValue("@Contractor", nContractor.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Result", nResult.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Distributor", nDistributor.SelectedValue)
        insertCMD.Parameters.AddWithValue("@BidAmount", nBidAmount.Value)
        insertCMD.Parameters.AddWithValue("@Note", "")
        insertCMD.Parameters.AddWithValue("@Added", Now().Date)
        

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = insertCMD.ExecuteNonQuery()
            grdPlayers.DataSourceID = SqlDS_Players.ID
            grdPlayers.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
            nContractor.ClearSelection()
            nResult.ClearSelection()
            nDistributor.ClearSelection()
            nBidAmount.Value = 0


        End Try


    End Sub


    Protected Sub uState_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles uState.SelectedIndexChanged

        uDistrict.Items.Clear()
        SqlDS_District.SelectParameters("State2").DefaultValue = uState.SelectedValue.ToString()
        uDistrict.DataSourceID = SqlDS_District.ID
        uDistrict.DataBind()


        uPrimaryBranchno.Items.Clear()
        SqlDS_Branch.SelectParameters("State").DefaultValue = uState.SelectedValue.ToString()
        uPrimaryBranchno.DataSourceID = SqlDS_Branch.ID
        uPrimaryBranchno.DataBind()

    End Sub
End Class
