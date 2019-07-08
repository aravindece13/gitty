Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
'Imports System.Data.OleDb
'Imports System.Collections
'Imports System.Resources
'Imports System.ComponentModel
'Imports System.Drawing
'Imports System.Web.SessionState
'Imports System.Web.UI.WebControls
'Imports System.Web.UI.HtmlControls
Imports Telerik.Web.UI
Imports Telerik.Web
'Imports System.IO
'Imports System.Configuration
'Imports System.Web.Security
'Imports System.Web.UI.WebControls.WebParts
Imports System.Web.Configuration
'Imports System.Net.Mail


Partial Class Controls_form_Fleet
    Inherits System.Web.UI.UserControl

    Protected Sub VehicleList_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles VehicleList.SelectedIndexChanged

        'lblTest.Text = VehicleList.SelectedValue.ToString

        RadMultiPage2.Enabled = "true"
        RadTabStrip2.Enabled = "true"
        pnlAddService.Enabled = "true"

        pnlAddMileageLog.Enabled = "true"
        btnAddMileage.Enabled = "true"
        odoEnd.Enabled = "true"


        If Page.IsPostBack Then

            Dim selectSQL As String
            selectSQL = "SELECT id,vin,GL,unit,dkunit,ownership,status,assettype,driver_namel,driver_namef,location,year,make,model,"
            selectSQL &= "fueltype,plate,price_sold, price_delivery,deliverydt,lease_term,lease_enddt,leasingco,description,ownerhistory,disposedt, "
            selectSQL &= "warrantyservice, warrantydesc, gvwr, carryweight, actualweight, tiresize, engine, gascard, other "
            selectSQL &= "FROM Fleet WHERE id = " & VehicleList.SelectedValue.ToString

            'Define the ADO.NET Connection Object
            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, DKConnection)
            Dim Reader As SqlDataReader

            Try
                DKConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                lblVehicleDesc.Text = "Vehicle: " + Reader("Year") + " " + Reader("Make") + " " + Reader("Model")
                lblDriver.Text = "Driver: " + Reader("driver_namef") + " " + Reader("driver_namel")

                lblAddServiceTitle.Text = "Add Service for " + Reader("Year") + " " + Reader("Make") + " " + Reader("Model") + " | Unit: " + Reader("dkunit") + " | " + Reader("driver_namef") + " " + Reader("driver_namel")

                AssetType.Text = Reader("AssetType")
                location.Text = Reader("location")
                Make.Text = Reader("Make")
                ModelYr.Text = Reader("Year")
                fueltype.Text = Reader("fueltype")
                Status.Text = Reader("Status")
                model.Text = Reader("model")
                vin.Text = Reader("vin")
                driver_namef.Text = Reader("driver_namef")
                driver_namel.Text = Reader("driver_namel")
                dkunit.Text = Reader("dkunit")
                plate.Text = Reader("plate")


                description.Text = Reader("description")
                warrantyservice.Text = Reader("warrantyservice")
                GasCard.Text = Reader("gascard")
                GVWR.Value = Reader("gvwr")
                CarryWeight.Value = Reader("carryweight")
                ActualWeight.Value = Reader("actualweight")
                TireSize.Text = Reader("tiresize")
                Engine.Text = Reader("engine")
                Other.Text = Reader("other")

                serviceCost.Value = 0
                serviceDescription.Text = ""
                serviceEventdate.SelectedDate = Date.Today
                serviceOdometer.Value = 0
                serviceVendor.Text = ""
                hdnID.Value = Reader("id").ToString()

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try

        End If

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspFleetLogGetLastOdometerByVehicleID", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@VehicleID", SqlDbType.BigInt).Value = hdnID.Value

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            hdnOdoBegin.Value = myReader1("OdoBegin")
            hdnLastLog.Value = myReader1("LastLog")
            odoEnd.Value = myReader1("OdoBegin").ToString()

            'nsEditProdID.Text = myReader1("ProdID").ToString()
            'nsEditDescription.Text = myReader1("Description").ToString()
            'nsEditComment.Text = myReader1("Comment").ToString()
            'nsEditSellUnit.SelectedValue = myReader1("SellUnit").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        'Author.Value = Request.Cookies("FullName").Value
        'TodayDate.Value = DateTime.Now()

        If Page.IsPostBack = "true" Then
            RadMultiPage2.Enabled = "true"
            RadTabStrip2.Enabled = "true"

            pnlAddService.Enabled = "true"
            'RadAjaxPanelAddService.Enabled = "true"
            lblVehicleDesc.Enabled = "true"
            lblDriver.Enabled = "true"
            lblAddServiceTitle.Enabled = "true"

        Else
            serviceEventdate.SelectedDate = Date.Now()
            RadMultiPage2.Enabled = "false"
            RadTabStrip2.Enabled = "true"
            pnlAddService.Enabled = "false"
            pnlAddMileageLog.Enabled = "false"
            'RadAjaxPanelAddService.Enabled = "false"
            lblVehicleDesc.Text = "Select a vehicle at left to see detail below"
            lblDriver.Enabled = "false"
            lblAddServiceTitle.Enabled = "false"

        End If


    End Sub

    Protected Sub btnAddService_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddService.Click

        'Insert new Service Entry

        Dim insertServiceSQL As String
        insertServiceSQL = "INSERT INTO Fleet_Service ("
        insertServiceSQL &= "id,eventdate,vendor,cost,odometer,servicetype,description ) "
        insertServiceSQL &= "VALUES ("
        insertServiceSQL &= "@hdnID, @ServiceEventDate,@ServiceVendor, @ServiceCost, @ServiceOdometer, @ServiceType, @ServiceDescription )"

        'Reset field data
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertServiceCmd As New SqlCommand(insertServiceSQL, DKConnection)
        Dim added As Integer = 0

        'Add the parameters
        insertServiceCmd.Parameters.AddWithValue("@hdnID", hdnID.Value)
        insertServiceCmd.Parameters.AddWithValue("@ServiceEventDate", serviceEventdate.SelectedDate)
        insertServiceCmd.Parameters.AddWithValue("@ServiceVendor", serviceVendor.Text)
        insertServiceCmd.Parameters.AddWithValue("@ServiceCost", serviceCost.Value)
        insertServiceCmd.Parameters.AddWithValue("@ServiceOdometer", serviceOdometer.Value)
        insertServiceCmd.Parameters.AddWithValue("@ServiceType", servicetype.SelectedValue)
        insertServiceCmd.Parameters.AddWithValue("@ServiceDescription", serviceDescription.Text)

        Try
            'Try to open the connection and execute the insert and update the Notes RadGrid

            DKConnection.Open()


            added = insertServiceCmd.ExecuteNonQuery()

            RadGridService.DataSourceID = SqlDS_PastService.ID
            'RadGridRecentlyAddedVeh.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            serviceCost.Value = 0
            serviceDescription.Text = ""
            serviceEventdate.SelectedDate = Date.Today
            serviceOdometer.Value = 0
            serviceVendor.Text = ""
            servicetype.SelectedValue = "Service"

        End Try

    End Sub

    Protected Sub btnAddMileage_Click(sender As Object, e As System.EventArgs) Handles btnAddMileage.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD1 As SqlCommand = New SqlCommand("uspFleetLogDetailInsertWhse", DKConnection)
        insertCMD1.CommandType = CommandType.StoredProcedure
        insertCMD1.Parameters.Add("@OdoBegin", SqlDbType.Real).Value = hdnOdoBegin.Value
        insertCMD1.Parameters.Add("@OdoEnd", SqlDbType.Real).Value = odoEnd.Value
        insertCMD1.Parameters.Add("@VehicleID", SqlDbType.Int).Value = hdnID.Value
        insertCMD1.Parameters.Add("@LoggedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        insertCMD1.Parameters.Add("@LastLog", SqlDbType.DateTime).Value = hdnLastLog.Value

        Dim insert1 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            insert1 = insertCMD1.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            pnlAddMileageLog.Enabled = "false"
            btnAddMileage.Enabled = "false"
            odoEnd.Enabled = "false"
            odoEnd.Value = 0

            grdMileageLog.DataSourceID = SqlDS_MileageLog.ID
            grdMileageLog.DataBind()

        End Try
    End Sub
End Class
