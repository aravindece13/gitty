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

Partial Class Controls_form_MileageLogEditor
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If IsPostBack = "False" Then
            LoggedBegin.SelectedDate = "1/1/2018"
            LoggedEnd.SelectedDate = "12/31/2030"
            TotalMiles.SelectedValue = 0
            MilesBusiness.SelectedValue = 0
            MilesPersonal.SelectedValue = 0
            PersonalUsagePct.SelectedValue = 0

            pnlUpdate.Enabled = "false"

            lnkPayComExport.NavigateUrl = "~/Reports2/Accounting_TaxableAutoExport.aspx?Start=" + LoggedBegin.SelectedDate.Value.ToShortDateString + "&End=" + LoggedEnd.SelectedDate.Value.ToShortDateString()
        End If
    End Sub


    Protected Sub grdLogs_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdLogs.SelectedIndexChanged
        pnlUpdate.Enabled = "true"

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspFleetLogDetailGet", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@LogIndex", SqlDbType.BigInt).Value = grdLogs.SelectedValues("LogIndex")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            hdnModifiedBy.Value = Request.Cookies("FullName").Value
            hdnLogIndex.Value = grdLogs.SelectedValues("LogIndex")
            hdnVehicleID.Value = myReader1("VehicleID")
            hdnPayComID.Value = myReader1("PayComID")
            lblMileageLogToEdit.Text = "Log to Edit: " + myReader1("LoggedBy") + " -  " + myReader1("Logged") + " - " + myReader1("Description")
            uMilesBusiness.Text = myReader1("MilesBusiness")
            uOdoBegin.Text = myReader1("OdoBegin")
            uOdoEnd.Text = myReader1("OdoEnd")
            uLeaseAmount.Text = myReader1("LeaseAmount")

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try
    End Sub

    Protected Sub btnUpdateLogEntry_Click(sender As Object, e As System.EventArgs) Handles btnUpdateLogEntry.Click

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim updateCMD As SqlCommand = New SqlCommand("uspFleetLogDetailUpdate", DKConnection1)
        updateCMD.CommandType = CommandType.StoredProcedure
        updateCMD.Parameters.Add("@LogIndex", SqlDbType.BigInt).Value = hdnLogIndex.Value
        updateCMD.Parameters.Add("@PayComID", SqlDbType.NVarChar).Value = hdnPayComID.Value
        updateCMD.Parameters.Add("@OdoBegin", SqlDbType.Real).Value = uOdoBegin.Value
        'updateCMD.Parameters.Add("OdoBegin", SqlDbType.Real).Value = 100
        updateCMD.Parameters.Add("@OdoEnd", SqlDbType.Real).Value = uOdoEnd.Value
        updateCMD.Parameters.Add("@MilesBusiness", SqlDbType.Real).Value = uMilesBusiness.Value
        updateCMD.Parameters.Add("@LeaseAmount", SqlDbType.Money).Value = uLeaseAmount.Value
        updateCMD.Parameters.Add("@VehicleID", SqlDbType.BigInt).Value = hdnVehicleID.Value
        updateCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value

        'Dim updated As Integer = 0
        Try
            DKConnection1.Open()

            Dim result As Integer = updateCMD.ExecuteNonQuery()
            'Dim myReader1 As SqlDataReader = updateCMD.ExecuteReader()
            'updated = updateCMD.ExecuteNonQuery()


            grdLogs.DataSourceID = SqlDS_grdLogs.ID
            grdLogs.DataBind()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        

        pnlUpdate.Enabled = "false"
        

    End Sub


    Protected Sub btnDeleteLogEntry_Click(sender As Object, e As System.EventArgs) Handles btnDeleteLogEntry.Click

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim updateCMD As SqlCommand = New SqlCommand("uspFleetLogDetailDelete", DKConnection1)
        updateCMD.CommandType = CommandType.StoredProcedure
        updateCMD.Parameters.Add("@LogIndex", SqlDbType.BigInt).Value = hdnLogIndex.Value


        'Dim updated As Integer = 0
        Try
            DKConnection1.Open()

            Dim result As Integer = updateCMD.ExecuteNonQuery()



        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        grdLogs.DataSourceID = SqlDS_grdLogs.ID
        grdLogs.DataBind()

        pnlUpdate.Enabled = "false"

    End Sub

    Protected Sub lnkPayComExport_Click(sender As Object, e As System.EventArgs) Handles lnkPayComExport.Click

        lnkPayComExport.NavigateUrl = "~/Reports2/Accounting_TaxableAutoExport.aspx?Start=" + LoggedBegin.SelectedDate.Value.ToShortDateString + "&End=" + LoggedEnd.SelectedDate.Value.ToShortDateString()

    End Sub

    Protected Sub LoggedBegin_TextChanged(sender As Object, e As System.EventArgs) Handles LoggedBegin.TextChanged
        lnkPayComExport.NavigateUrl = "~/Reports2/Accounting_TaxableAutoExport.aspx?Start=" + LoggedBegin.SelectedDate.Value.ToShortDateString + "&End=" + LoggedEnd.SelectedDate.Value.ToShortDateString()
    End Sub

    Protected Sub LoggedEnd_TextChanged(sender As Object, e As System.EventArgs) Handles LoggedEnd.TextChanged
        lnkPayComExport.NavigateUrl = "~/Reports2/Accounting_TaxableAutoExport.aspx?Start=" + LoggedBegin.SelectedDate.Value.ToShortDateString + "&End=" + LoggedEnd.SelectedDate.Value.ToShortDateString()
    End Sub
End Class
