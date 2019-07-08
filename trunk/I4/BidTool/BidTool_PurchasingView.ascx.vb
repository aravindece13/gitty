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

Partial Class BidTool_BidTool_PurchasingView
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If IsPostBack = "False" Then
            lblProjectName.Text = "Select a project at left"

            RadTabStrip1.Enabled = "false"
            RadTabStrip2.Enabled = "false"
            btnCostNotesUpdate.Enabled = "false"

        End If



    End Sub


    Protected Sub btnGNSearch_Click(sender As Object, e As System.EventArgs) Handles btnGNSearch.Click
        SqlDS_grdsGN.SelectParameters("ProjectName").DefaultValue = "%" + sGNProjectName.Text + "%"

        grdsGN.DataSourceID = SqlDS_grdsGN.ID
        grdsGN.DataBind()

    End Sub

    Protected Sub tabStripGNSearch_TabClick(sender As Object, e As Telerik.Web.UI.RadTabStripEventArgs) Handles tabStripGNSearch.TabClick

        SqlDS_grdsGN.SelectParameters("Vendor").DefaultValue = e.Tab.Value
        grdsGN.DataSourceID = SqlDS_grdsGN.ID
        grdsGN.DataBind()


    End Sub


    Protected Sub grdsGN_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdsGN.SelectedIndexChanged

        RadTabStrip1.Enabled = "true"
        RadTabStrip2.Enabled = "true"
        btnCostNotesUpdate.Enabled = "true"

        'Grab general cost notes for the project

        Dim SelectSQL6 As String
        SelectSQL6 = "SELECT [CostNoteIndex],[JobID],[Notes] FROM [dbo].[Project_Products_CostNotes] WHERE [JobID]= " + grdsGN.SelectedValues("JobID").ToString()


        Dim DKConnectionString6 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection6 As New SqlConnection(DKConnectionString6)

        Dim SelectCMD6 As New SqlCommand(SelectSQL6, DKConnection6)


        Try
            'Try to open the connection and execute the update
            DKConnection6.Open()

            Dim result As Integer = SelectCMD6.ExecuteNonQuery()
            Dim myReader6 As SqlDataReader = SelectCMD6.ExecuteReader()
            myReader6.Read()

            txtBoxCostNotes.Text = myReader6("Notes").ToString()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection6.Close()

        End Try



        Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection3 As New SqlConnection(DKConnectionString3)

        Dim selectCMD3 As SqlCommand = New SqlCommand("uspProjectDetailGet", DKConnection3)
        selectCMD3.CommandType = CommandType.StoredProcedure
        selectCMD3.Parameters.Add("@JobID", SqlDbType.BigInt).Value = grdsGN.SelectedValues("JobID")

        Try
            DKConnection3.Open()

            Dim result As Integer = selectCMD3.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD3.ExecuteReader()
            myReader.Read()

            lblProjectName.Text = myReader("ProjectName").ToString() + " " + myReader("ProjectSubTitle").ToString()
            lblProjectPVCNotes.Text = myReader("PVC_Notes").ToString()
            lblProjectRestraintNotes.Text = myReader("Restraint_Notes").ToString()
            lblProjectFittingNotes.Text = myReader("Fitting_Notes").ToString()
            lblProjectDIPNotes.Text = myReader("DIP_Notes").ToString()
            lblProjectHDPENotes.Text = myReader("HDPE_Notes").ToString()
            lblProjectOtherNotes.Text = myReader("Other_Notes").ToString()
      

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection3.Close()
        End Try

    End Sub


    Protected Sub btnCostNotesUpdate_Click(sender As Object, e As System.EventArgs) Handles btnCostNotesUpdate.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectProductCostNotesUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = grdsGN.SelectedValues("JobID")
        updateCMD1.Parameters.Add("@Notes", SqlDbType.NVarChar).Value = txtBoxCostNotes.Text.ToString()

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try



    End Sub
End Class
