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

Partial Class Controls_MileageLogBasic
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        Dim selectSQL As String
        selectSQL = "SELECT ID,vin,GL,unit,dkunit,ownership,status,assettype,driver_namel,driver_namef,location,year,make,model,"
        selectSQL &= "description,ownerhistory,disposedt, "
        selectSQL &= "leaseamount, taxautouser, taxautouser, paycomid, leaseamount "
        selectSQL &= "FROM Fleet WHERE PayComID = " & "'" & Request.Cookies("PayComID").Value & "'"

        'Define the ADO.NET Connection Object
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)
        Dim selectCmd As New SqlCommand(selectSQL, DKConnection)
        Dim Reader As SqlDataReader

        Try
            DKConnection.Open()
            Reader = selectCmd.ExecuteReader()
            Reader.Read()


            If Reader.HasRows Then
                lblVehicleToLog.Text = "Your current assigned vehicle is a " + Reader("Year") + " " + Reader("Make") + " " + Reader("Model") + ". If your vehicle has changed, please contact Steve Anderson."

                LeaseAmount.Value = Reader("LeaseAmount")
                VehicleID.Value = Reader("ID")
            Else
                lblVehicleToLog.Text = "According to our records, you are not assigned a company owned vehicle.  If you feel this is in error, please contact Steve Anderson."

            End If


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try



        'Retrieve the last ending odometer for the beginning value of the next entry
        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)
        Dim selectCMD2 As SqlCommand = New SqlCommand("uspFleetLogGetLastOdometer", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@PayComID", SqlDbType.NVarChar).Value = Request.Cookies("PayComID").Value
        selectCMD2.Parameters.Add("@VehicleID", SqlDbType.Int).Value = VehicleID.Value


        Try
            'Try to open the connection and execute the update
            DKConnection2.Open()

            'Dim result As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD2.ExecuteReader()
            myReader.Read()

            'OdoBegin.Value = myReader("OdoBegin").ToString()

            'If myReader.Read() Then

            Dim Index As Integer = myReader.GetOrdinal("OdoBegin")

            If myReader.IsDBNull(Index) Then
                OdoBegin.Value = "1"

                OdoBegin.MinValue = 1
            Else
                OdoBegin.Value = myReader("OdoBegin").ToString()

                OdoEnd.MinValue = myReader("OdoBegin") + 1
            End If
            'End If







        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection2.Close()
        End Try


    End Sub

    Protected Sub btnAddLogEntry_Click(sender As Object, e As System.EventArgs) Handles btnAddLogEntry.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspFleetLogDetailInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        If OdoEnd.Value - OdoBegin.Value < MilesBusiness.Value Then
            MilesBusiness.Value = OdoEnd.Value - OdoBegin.Value
        End If

        insertCMD.Parameters.Add("@PayComID", SqlDbType.NVarChar).Value = Request.Cookies("PayComID").Value
        insertCMD.Parameters.Add("@OdoBegin", SqlDbType.Real).Value = OdoBegin.Value
        insertCMD.Parameters.Add("@OdoEnd", SqlDbType.Real).Value = OdoEnd.Value
        insertCMD.Parameters.Add("@MilesBusiness", SqlDbType.Real).Value = MilesBusiness.Value
        insertCMD.Parameters.Add("@LeaseAmount", SqlDbType.Money).Value = LeaseAmount.Value
        insertCMD.Parameters.Add("@VehicleID", SqlDbType.Int).Value = VehicleID.Value
        insertCMD.Parameters.Add("@Logged", SqlDbType.DateTime).Value = Now()
        insertCMD.Parameters.Add("@LoggedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value


        Dim insert As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            insert = insertCMD.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        pnlInsertLogEntry.Enabled = "false"
        pnlInsertLogEntry.Visible = "false"
        lblThanks.Text = "Thank you for your submission.  See you next month.  If you believe there was an error in your submission, please contact Mileage@danakepner.com."
        grdPastLogs.DataSourceID = SqlDS_grdPastLogs.ID
        grdPastLogs.DataBind()



    End Sub
End Class
