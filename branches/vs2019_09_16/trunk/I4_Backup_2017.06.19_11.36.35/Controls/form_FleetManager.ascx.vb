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

Partial Class Controls_form_FleetManager
    Inherits System.Web.UI.UserControl


    Protected Sub RadGridVehicleList_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadGridVehicleList.SelectedIndexChanged

        RadMultiPage2.Enabled = "true"
        RadTabStrip2.Enabled = "true"
        'lblVehicleDesc.Text = "Test"
        hdnID.Value = RadGridVehicleList.SelectedValues("id").ToString()


        If Page.IsPostBack Then

            Dim selectSQL As String
            selectSQL = "SELECT ID,vin,GL,unit,dkunit,ownership,status,assettype,driver_namel,driver_namef,location,year,make,model,"
            selectSQL &= "fueltype,plate,price_sold, price_delivery,deliverydt,lease_enddt,leasingco,description,ownerhistory,disposedt, "
            selectSQL &= "warrantyservice, warrantydesc, gvwr, carryweight, actualweight, tiresize, engine, gascard, other "
            selectSQL &= "FROM Fleet WHERE id = " & hdnID.Value.ToString()

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
                'lease_term.SelectedValue = Reader("lease_term")
                Ownership.SelectedValue = Reader("ownership")
                leasingco.SelectedValue = Reader("leasingco")
                deliverydt.SelectedDate = Reader("deliverydt")

                lease_enddt.SelectedDate = Reader("lease_enddt")
                If lease_enddt.SelectedDate = "1/1/1950" Then
                    lease_enddt.Clear()
                End If

                disposedt.SelectedDate = Reader("disposedt")
                If disposedt.SelectedDate = "1/1/1950" Then
                    disposedt.Clear()
                End If

                price_delivery.Text = Reader("price_delivery")
                price_sold.Text = Reader("price_sold")
                AssetType.SelectedValue = Reader("AssetType")
                location.SelectedValue = Reader("location")
                Make.SelectedValue = Reader("Make")
                ModelYr.SelectedValue = Reader("Year")
                fueltype.SelectedValue = Reader("fueltype")
                Status.SelectedValue = Reader("Status")
                model.Text = Reader("model")
                vin.Text = Reader("vin")
                driver_namef.Text = Reader("driver_namef")
                driver_namel.Text = Reader("driver_namel")
                unit.Text = Reader("unit")
                dkunit.Text = Reader("dkunit")
                plate.Text = Reader("plate")

                ownerhistory.Text = Reader("ownerhistory")
                description.Text = Reader("description")
                warrantyservice.Text = Reader("warrantyservice")
                GasCard.Text = Reader("gascard")
                GVWR.Value = Reader("gvwr")
                CarryWeight.Value = Reader("carryweight")
                ActualWeight.Value = Reader("actualweight")
                TireSize.Text = Reader("tiresize")
                Engine.Text = Reader("engine")
                Other.Text = Reader("other")

                rsGL.Text = Reader("GL")
                rsDesc.Text = Reader("Year") + " " + Reader("Make") + " " + Reader("model")
                rsDriver.Text = Reader("driver_namel") + " " + Reader("driver_namef")
                rsLocation.Text = Reader("Location")
                rsUnit.Text = Reader("unit")
                rsVIN.Text = Reader("vin")
                rsDisposedt.SelectedDate = Date.Now()
                rsOwnerHistory.Text = Reader("ownerhistory")
                rsPrice_Sold.Value = Reader("price_sold").ToString()



            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try

        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        'Author.Value = Request.Cookies("FullName").Value
        'TodayDate.Value = DateTime.Now()

        If Page.IsPostBack = "true" Then
            'RadMultiPage2.Enabled = "true"
            'RadTabStrip2.Enabled = "true"
            'lblVehicleDesc.Visible = "true"
            'lblDriver.Visible = "true"

        Else
            'RadMultiPage2.Enabled = "false"
            'RadTabStrip2.Enabled = "true"
            lblVehicleDesc.Text = "Select a vehicle above to see detail below"
            'lblDriver.Visible = "false"

            newDeliveryDt.SelectedDate = Now.Date()
            newLease_EndDt.SelectedDate = DateAdd(DateInterval.Month, 48, Now())

        End If





    End Sub

    Protected Sub btnUpdateVehicleInfo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateVehicleInfo.Click

        'Define ADO>NET objects

        Dim updateSQL As String
        updateSQL = "UPDATE Fleet SET vin=@vin, plate=@plate,dkunit=@dkunit,location=@location,assettype=@assettype,status=@status,make=@make,model=@model, "
        updateSQL &= "year=@modelyr,driver_namef=@driver_namef,driver_namel=@driver_namel,description=@description "
        updateSQL &= "WHERE id = @hdnID"



        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, DKConnection)
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd.Parameters.AddWithValue("hdnID", hdnID.Value)
        updateCmd.Parameters.AddWithValue("@vin", vin.Text)
        updateCmd.Parameters.AddWithValue("@plate", plate.Text)
        updateCmd.Parameters.AddWithValue("@dkunit", dkunit.Text)
        updateCmd.Parameters.AddWithValue("@location", location.SelectedValue)
        updateCmd.Parameters.AddWithValue("@assettype", AssetType.SelectedValue)
        updateCmd.Parameters.AddWithValue("@status", Status.SelectedValue)
        updateCmd.Parameters.AddWithValue("@make", Make.SelectedValue)
        updateCmd.Parameters.AddWithValue("@model", model.Text)
        updateCmd.Parameters.AddWithValue("@modelyr", ModelYr.SelectedValue)
        updateCmd.Parameters.AddWithValue("@driver_namel", driver_namel.Text)
        updateCmd.Parameters.AddWithValue("@driver_namef", driver_namef.Text)
        updateCmd.Parameters.AddWithValue("@description", description.Text)

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
            updated = updateCmd.ExecuteNonQuery()
            RadGridVehicleList.DataSourceID = SqlDS_FleetList.ID
            RadGridVehicleList.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try






    End Sub

    Protected Sub btnUpdateOwnershipInfo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateOwnershipInfo.Click

        If lease_enddt.SelectedDate Is Nothing Then
            lease_enddt.SelectedDate = "1/1/1950"
        End If

        If disposedt.SelectedDate Is Nothing Then
            disposedt.SelectedDate = "1/1/1950"
        End If

        'Define ADO>NET objects

        Dim updateSQL2 As String
        updateSQL2 = "UPDATE Fleet SET unit=@unit, price_delivery=@price_delivery,price_sold=@price_sold,deliverydt=@deliverydt,ownership=@ownership, "
        updateSQL2 &= "lease_enddt=@lease_enddt,ownerhistory=@ownerhistory,leasingco=@leasingco,disposedt=@disposedt "

        updateSQL2 &= "WHERE id = @hdnID"



        'Define the ADO.NET Connection Object
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd2 As New SqlCommand(updateSQL2, DKConnection)
        Dim updated2 As Integer = 0

        'Add the parameters
        updateCmd2.Parameters.AddWithValue("hdnID", hdnID.Value)
        updateCmd2.Parameters.AddWithValue("@unit", unit.Text)
        updateCmd2.Parameters.AddWithValue("@price_delivery", price_delivery.Text)
        updateCmd2.Parameters.AddWithValue("@price_sold", price_sold.Text)
        updateCmd2.Parameters.AddWithValue("@deliverydt", deliverydt.SelectedDate)
        updateCmd2.Parameters.AddWithValue("@ownership", Ownership.SelectedValue)


        updateCmd2.Parameters.AddWithValue("@lease_enddt", lease_enddt.SelectedDate)
        updateCmd2.Parameters.AddWithValue("@leasingco", leasingco.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@ownerhistory", ownerhistory.Text)
        updateCmd2.Parameters.AddWithValue("@disposedt", disposedt.SelectedDate)





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
            RadGridVehicleList.DataSourceID = SqlDS_FleetList.ID
            RadGridVehicleList.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try




    End Sub

    Protected Sub btnDetailsUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDetailsUpdate.Click

        'Define ADO>NET objects
        Dim updateSQL As String
        updateSQL = "UPDATE Fleet SET warrantyservice=@warrantyservice, gvwr=@gvwr, carryweight=@carryweight, actualweight=@actualweight,  "
        updateSQL &= "tiresize=@tiresize, engine=@engine, gascard=@gascard, other=@other "
        updateSQL &= "WHERE id = @hdnID"



        'Define the ADO.NET Connection Object
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, DKConnection)
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd.Parameters.AddWithValue("hdnID", hdnID.Value)
        updateCmd.Parameters.AddWithValue("@warrantyservice", warrantyservice.Text)
        updateCmd.Parameters.AddWithValue("@gvwr", GVWR.Value)
        updateCmd.Parameters.AddWithValue("@actualweight", ActualWeight.Value)
        updateCmd.Parameters.AddWithValue("@carryweight", CarryWeight.Value)
        updateCmd.Parameters.AddWithValue("@engine", Engine.Text)
        updateCmd.Parameters.AddWithValue("@tiresize", TireSize.Text)
        updateCmd.Parameters.AddWithValue("@other", Other.Text)
        updateCmd.Parameters.AddWithValue("@gascard", GasCard.Text)


        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()
            RadGridVehicleList.DataSourceID = SqlDS_FleetList.ID
            RadGridVehicleList.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub



    Protected Sub btnAddNewVehicle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddNewVehicle.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspFleetVehicleInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure


        insertCMD.Parameters.Add("@newVin", SqlDbType.NVarChar).Value = newVin.Text.ToString()
        insertCMD.Parameters.Add("@newUnit", SqlDbType.NVarChar).Value = newUnit.Text.ToString()
        insertCMD.Parameters.Add("@newDKunit", SqlDbType.NVarChar).Value = newDKUnit.Value.ToString()
        insertCMD.Parameters.Add("@newAssetType", SqlDbType.NVarChar).Value = newAssetType.SelectedValue.ToString()
        insertCMD.Parameters.Add("@newDriver_namel", SqlDbType.NVarChar).Value = newDriver_namel.Text.ToString()
        insertCMD.Parameters.Add("@newDriver_namef", SqlDbType.NVarChar).Value = newDriver_namef.Text.ToString()
        insertCMD.Parameters.Add("@newlocation", SqlDbType.NVarChar).Value = newLocation.SelectedValue.ToString()
        insertCMD.Parameters.Add("@newyear", SqlDbType.NVarChar).Value = newYear.SelectedValue.ToString()
        insertCMD.Parameters.Add("@newmake", SqlDbType.NVarChar).Value = newMake.SelectedValue.ToString()
        insertCMD.Parameters.Add("@newmodel", SqlDbType.NVarChar).Value = newModel.Text.ToString()
        insertCMD.Parameters.Add("@newfueltype", SqlDbType.NVarChar).Value = newFueltype.SelectedValue.ToString()
        insertCMD.Parameters.Add("@newplate", SqlDbType.NVarChar).Value = newPlate.Text
        insertCMD.Parameters.Add("@newprice_delivery", SqlDbType.Real).Value = newPrice_Delivery.Value
        insertCMD.Parameters.Add("@newdeliverydt", SqlDbType.DateTime).Value = newDeliveryDt.SelectedDate.Value
        insertCMD.Parameters.Add("@newownership", SqlDbType.NVarChar).Value = newOwnership.SelectedValue.ToString()

        If newLease_EndDt.SelectedDate Is Nothing Then
            insertCMD.Parameters.Add("@newlease_enddt", SqlDbType.DateTime).Value = "1/1/1950"
        Else
            insertCMD.Parameters.Add("@newlease_enddt", SqlDbType.DateTime).Value = newLease_EndDt.SelectedDate.Value
        End If

        insertCMD.Parameters.Add("@newleasingCo", SqlDbType.NVarChar).Value = newLeasingCo.SelectedValue.ToString()
        insertCMD.Parameters.Add("@newlease_term", SqlDbType.Real).Value = newLease_term.SelectedValue.ToString()

        insertCMD.Parameters.Add("@newdescription", SqlDbType.NVarChar).Value = newDescription.Text.ToString()

        insertCMD.Parameters.Add("@newwarrantyservice", SqlDbType.NVarChar).Value = newWarrantyService.Text.ToString()
        insertCMD.Parameters.Add("@newGVWR", SqlDbType.Real).Value = newGVWR.Value
        insertCMD.Parameters.Add("@newcarryweight", SqlDbType.Real).Value = newCarryWeight.Value
        insertCMD.Parameters.Add("@newactualweight", SqlDbType.Real).Value = newActualWeight.Value
        insertCMD.Parameters.Add("@newtiresize", SqlDbType.NVarChar).Value = newTireSize.Text.ToString()
        insertCMD.Parameters.Add("@newengine", SqlDbType.NVarChar).Value = newEngine.Text.ToString()
        insertCMD.Parameters.Add("@newgascard", SqlDbType.NVarChar).Value = newGasCard.Text.ToString()


        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try


        RadGridRecentlyAddedVeh.DataSourceID = SqlDS_RecentlyAddedVeh.ID
        RadGridRecentlyAddedVeh.DataBind()


        newVin.Text = ""
        newUnit.Text = ""
        newDKUnit.Value = 0
        newAssetType.SelectedValue = ""
        newDriver_namel.Text = ""
        newDriver_namef.Text = ""
        newLocation.SelectedValue = ""
        newYear.SelectedValue = Date.Today.Year
        newModel.Text = ""
        newFueltype.SelectedValue = ""
        newPlate.Text = ""
        newPrice_Delivery.Value = 0
        newDeliveryDt.SelectedDate = Date.Today
        newOwnership.SelectedValue = "Lease"

        newLease_EndDt.Clear()
        newDescription.Text = ""
        newWarrantyService.Text = ""
        newGVWR.Value = 0
        newCarryWeight.Value = 0
        newActualWeight.Value = 0
        newTireSize.Text = ""
        newEngine.Text = ""
        newGasCard.Text = ""

    End Sub


    Protected Sub RadTabStrip1_TabClick(ByVal sender As Object, ByVal e As Telerik.Web.UI.RadTabStripEventArgs) Handles RadTabStrip1.TabClick
        newVin.Text = ""
        newUnit.Text = ""
        newDKUnit.Value = 0
        newAssetType.SelectedValue = ""
        newDriver_namel.Text = ""
        newDriver_namef.Text = ""
        newLocation.SelectedValue = ""
        newYear.SelectedValue = Date.Today.Year
        newModel.Text = ""
        newFueltype.SelectedValue = ""
        newPlate.Text = ""
        newPrice_Delivery.Value = 0
        newDeliveryDt.SelectedDate = Date.Today
        newOwnership.SelectedValue = "Lease"

        newLease_EndDt.Clear()
        newDescription.Text = ""
        newWarrantyService.Text = ""
        newGVWR.Value = 0
        newCarryWeight.Value = 0
        newActualWeight.Value = 0
        newTireSize.Text = ""
        newEngine.Text = ""
        newGasCard.Text = ""
        lblAddVehicleAction.Text = ""
    End Sub

    Protected Sub btnRecordSale_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRecordSale.Click

        'Define ADO>NET objects
        Dim updateSQL3 As String
        updateSQL3 = "UPDATE Fleet SET status = @rsStatus, price_sold = @rsPrice_Sold, disposedt = @rsDisposedt, ownerhistory = @rsOwnerhistory  "
        updateSQL3 &= "WHERE id = @hdnID"



        'Define the ADO.NET Connection Object
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd3 As New SqlCommand(updateSQL3, DKConnection)
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd3.Parameters.AddWithValue("hdnID", hdnID.Value)
        updateCmd3.Parameters.AddWithValue("@rsStatus", rsStatus.Value)
        updateCmd3.Parameters.AddWithValue("@rsPrice_Sold", rsPrice_Sold.Value)
        updateCmd3.Parameters.AddWithValue("@rsDisposedt", rsDisposedt.SelectedDate)
        updateCmd3.Parameters.AddWithValue("@rsOwnerhistory", rsOwnerHistory.Text)


        'Try
        '    'Try to open the connection and execute the insert and update
        '    DKConnection.Open()



        'Catch err As Exception
        '    ' Handle an error by displaying the information

        'Finally
        '    'Either way, make sure the connection is properly closed
        '    DKConnection.Close()
        'End Try

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCmd3.ExecuteNonQuery()
            RadGridVehicleList.DataSourceID = SqlDS_FleetList.ID
            RadGridVehicleList.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub newLease_term_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles newLease_term.SelectedIndexChanged
        'newLease_EndDt.SelectedDate = DateAdd(DateInterval.Month, newLease_term.SelectedValue, newDeliveryDt.SelectedDate)
        newLease_EndDt.SelectedDate = DateAdd(DateInterval.Month, Convert.ToDouble(newLease_term.SelectedValue), Now())


    End Sub
End Class
