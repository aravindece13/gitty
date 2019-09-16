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

Partial Class Projects_test
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack = "false" Then

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

                'If Reader("BidDate") <> "1/1/1950" Then
                '    uBidDate.SelectedDate = Reader("BidDate")
                'End If
                'If Reader("CompleteDate") <> "1/1/1950" Then
                '    uCompleteDate.SelectedDate = Reader("CompleteDate")
                'End If
                'If Reader("DueDate") <> "1/1/1950" Then
                '    uDueDate.SelectedDate = Reader("DueDate")
                'End If
                'If Reader("PreBid_Date") <> "1/1/1950" Then
                '    uPreBid_Date.SelectedDate = Reader("PreBid_Date")
                'End If


                Page.Title = Reader("ProjectName") + " Details"
                'hdnuJobID.Value = Reader("JobID")
                'lblProjectName.Text = Reader("ProjectName") + " Details"
                'uProjectName.Text = Reader("ProjectName")
                'uState.SelectedValue = Reader("State")
                'uStatus.SelectedValue = Reader("Status")
                lblTest.Text = Reader("District")
                'uMuniSpecID.Value = Reader("MuniSpecID")
                'uWorkType.SelectedValue = Reader("WorkType")
                'uFlag.SelectedValue = Reader("Flag")

                'uBaseEstimate.SelectedValue = Reader("BaseEstimate")
                'uTakeOff1.SelectedValue = Reader("TakeOff1")
                'uLeadSalesRep.SelectedValue = Reader("LeadSalesRep")
                'uBidTime.SelectedValue = Reader("BidTime")
                'uWorkCity.Text = Reader("WorkCity")
                'uPlanSource.SelectedValue = Reader("PlanSource")
                'uPlans.Text = Reader("Plans")
                'uPlans_Notes.Text = Reader("Plans_Note")
                'uFlagDIP.Checked = Reader("FlagDIP")
                'uFlagHDPE.Checked = Reader("FlagHDPE")
                'uFlagMeter.Checked = Reader("FlagMeter")
                'uFlagPVC.Checked = Reader("FlagPVC")
                'uHDPE_Notes.Text = Reader("HDPE_Notes")
                'uDIP_Notes.Text = Reader("DIP_Notes")
                'uPVC_Notes.Text = Reader("PVC_Notes")
                'uBid_Notes.Text = Reader("Bid_Notes")
                'uRestraint_Notes.Text = Reader("Restraint_Notes")
                'uFitting_Notes.Text = Reader("Fitting_Notes")
                'uOther_Notes.Text = Reader("Other_Notes")

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try

        End If










    End Sub
End Class
