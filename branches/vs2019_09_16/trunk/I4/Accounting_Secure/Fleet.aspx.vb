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

Partial Class Accounting_Secure_Fleet
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack Then
            Panel1.Enabled = "true"
        Else
            Panel1.Enabled = "false"
        End If


    End Sub

    Protected Sub grdFleet_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grdFleet.SelectedIndexChanged

        Panel1.Enabled = "True"
        hdnID.Value = grdFleet.SelectedValues("id").ToString()

        If Page.IsPostBack Then

            Dim selectSQL As String
            selectSQL = "SELECT * "
            selectSQL &= "FROM Fleet WHERE id = " & hdnID.Value.ToString


            'Define the ADO.NET Connection Object
            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, DKConnection)
            Dim Reader As SqlDataReader



            Try
                DKConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                lblProfile.Text = "GL Account Number Update"
                lblVehicleDesc.Text = "<b>Vehicle:</b> " + Reader("Year") + " " + Reader("Make") + " " + Reader("Model")
                lblDriver_name.Text = "<b>Driver:</b> " + Reader("driver_namef") + " " + Reader("driver_namel")
                lblStatus.Text = "<b>Status:</b> " + Reader("Status")
                lblVin.Text = "<b>VIN: </b>" + Reader("vin")
                lbldkUnit.Text = "<b>DK Unit: </b> " + Reader("dkunit")
                lblGL.Text = "<b>Current GL#: </b>" + Reader("GL")
                lblUnit.Text = "<b>Leasing Co. Unit: </b>" + Reader("unit")
                GL.Text = Reader("GL")
                GL.Enabled = "True"




            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try

        End If


    End Sub

    Protected Sub btnUpdateGL_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateGL.Click
        'Dim grdFleetIndex As Int16 = grdFleet.SelectedIndexes(0)


        Dim updateSQL2 As String
        updateSQL2 = "UPDATE Fleet SET GL=@GL "
        updateSQL2 &= "WHERE id = @hdnID"

        'Define the ADO.NET Connection Object
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd2 As New SqlCommand(updateSQL2, DKConnection)
        Dim updated2 As Integer = 0

        'Add the parameters
        updateCmd2.Parameters.AddWithValue("hdnID", hdnID.Value)
        updateCmd2.Parameters.AddWithValue("@GL", GL.Text)

        Try
            'Try to open the connection and execute the insert and update
            DKConnection.Open()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated2 = updateCmd2.ExecuteNonQuery()
            grdFleet.DataSourceID = SqlDS_grdFleet.ID
            grdFleet.DataBind()
            'grdFleet.SelectedIndexes.Add(grdFleetIndex)

            Panel1.Enabled = "false"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub
End Class
