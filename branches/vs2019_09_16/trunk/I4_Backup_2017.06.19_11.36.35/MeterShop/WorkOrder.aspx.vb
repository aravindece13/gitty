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



Partial Class MeterShop_WorkOrder
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        hdnWOList_ID.Value = Request.QueryString("WOList_ID")

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)
        Dim selectCMD1 As SqlCommand = New SqlCommand("uspMSGetWorkOrderSpecific", DKConnection1)

        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@WOList_ID", SqlDbType.BigInt).Value = hdnWOList_ID.Value


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD1.ExecuteReader()
            myReader.Read()

            lblWorkOrderTitle.Text = myReader("CustName").ToString() + " | WorkOrder: " + myReader("WorkOrderID").ToString() + " Created: " + myReader("WorkOrderDate").ToString()
            hdnWorkOrderID.Value = myReader("WorkOrderID")
            hdnCustID.Value = myReader("CustID")
            hdnWOStatus.Value = myReader("WOStatus")
            hdnWOList_ID.Value = myReader("WOList_ID")

            If myReader("WOStatus").ToString() = "OPEN" Then
                btnUpdateStatus.Text = "Close Work Order"
            Else
                btnUpdateStatus.Text = "Open Work Order"
            End If

            btnWorkOrderOutput.NavigateUrl = "~/Reports2/MeterShop_WorkOrder.aspx?WorkOrderID=" + myReader("WorkOrderID").ToString()

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        If IsPostBack = "False" Then
            hdnWOList_ID.Value = Request.QueryString("WOList_ID").ToString()
            pnlAddTesting.Enabled = "false"
            pnleditMeterSelection.Enabled = "false"
            BatchAddTestDate.SelectedDate = Now().ToShortDateString
            btnAddTestResults.Visible = "False"

            'lblTest.Text = "PageLoad"


            Dim SelectSQL As String
            SelectSQL = "SELECT Min1,Min2,Min3,Max1,Max2,Max3 FROM xMS_AccuracyLimits WHERE Type = 'SRII'"


            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)

            Dim SelectCMD As New SqlCommand(SelectSQL, DKConnection)


            Try
                'Try to open the connection and execute the update
                DKConnection.Open()

                Dim result As Integer = SelectCMD.ExecuteNonQuery()
                Dim myReader As SqlDataReader = SelectCMD.ExecuteReader()
                myReader.Read()

                addMin1.Value = myReader("Min1")
                addMin2.Value = myReader("Min2")
                addMin3.Value = myReader("Min3")
                addMax1.Value = myReader("Max1")
                addMax2.Value = myReader("Max2")
                addMax3.Value = myReader("Max3")
                lblAddRangeLow.Text = myReader("Min1").ToString() + " - " + myReader("Max1").ToString() + "%"
                lblAddRangeMed.Text = myReader("Min2").ToString() + " - " + myReader("Max2").ToString() + "%"
                lblAddRangeHi.Text = myReader("Min3").ToString() + " - " + myReader("Max3").ToString() + "%"

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try


            Dim SelectSQL2 As String
            SelectSQL2 = "SELECT Rate1, Rate2, Rate3 FROM xMS_TestFlows WHERE Type = 'SRII' AND SizeCode = '02' "


            Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection2 As New SqlConnection(DKConnectionString2)

            Dim SelectCMD2 As New SqlCommand(SelectSQL2, DKConnection2)


            Try
                'Try to open the connection and execute the update
                DKConnection2.Open()

                Dim result As Integer = SelectCMD2.ExecuteNonQuery()
                Dim myReader2 As SqlDataReader = SelectCMD2.ExecuteReader()
                myReader2.Read()

                addRate1.Value = myReader2("Rate1")
                addRate2.Value = myReader2("Rate2")
                addRate3.Value = myReader2("Rate3")

                lblAddFlowLow.Text = myReader2("Rate1").ToString() + "GPM"
                lblAddFlowMed.Text = myReader2("Rate2").ToString() + "GPM"
                lblAddFlowHi.Text = myReader2("Rate3").ToString() + "GPM"

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try



            Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection3 As New SqlConnection(DKConnectionString3)
            Dim selectCMD3 As SqlCommand = New SqlCommand("uspMSGetWorkOrderDirections", DKConnection3)

            selectCMD3.CommandType = CommandType.StoredProcedure
            selectCMD3.Parameters.Add("@WorkOrderID", SqlDbType.NVarChar).Value = hdnWorkOrderID.Value.ToString()


            Try
                DKConnection3.Open()

                Dim result As Integer = selectCMD3.ExecuteNonQuery()
                Dim myReader As SqlDataReader = selectCMD3.ExecuteReader()
                myReader.Read()

                editWorkType.SelectedValue = myReader("WorkType").ToString()
                editWorkDetail.Text = myReader("WorkDetail").ToString()
                editShipCo.Text = myReader("ShipCo").ToString()
                editShipAdd1.Text = myReader("ShipAdd1").ToString()
                editShipAdd2.Text = myReader("ShipAdd2").ToString()
                editShipCity.Text = myReader("ShipCity").ToString()
                editShipState.Text = myReader("ShipState").ToString()
                editShipZip.Text = myReader("ShipZip").ToString()
                editShipInstruct.Text = myReader("ShipInstructions").ToString()

                myReader.Close()

            Catch ex As SqlException

            Finally
                DKConnection3.Close()
            End Try

        End If

    End Sub

    Protected Sub btnAddBatch_Click(sender As Object, e As System.EventArgs) Handles btnAddBatch.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspMS_BatchInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@WorkOrderID", SqlDbType.NVarChar).Value = hdnWorkOrderID.Value
        insertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = hdnCustID.Value
        insertCMD.Parameters.Add("@SizeCode", SqlDbType.NVarChar).Value = BatchAddSizeCode.SelectedValue.ToString()
        insertCMD.Parameters.Add("@TestDate", SqlDbType.Date).Value = BatchAddTestDate.SelectedDate()


        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = insertCMD.ExecuteNonQuery()
            grdBatchID1.DataSourceID = SqlDS_grdBatchIDs.ID
            grdBatchID1.DataBind()

            addBatchID.Items.Clear()
            addBatchID.DataSourceID = SqlDS_grdBatchIDs.ID
            addBatchID.DataBind()
            addBatchID.SelectedIndex = 0
            addTestDate.Value = Convert.ToDateTime(BatchAddTestDate.SelectedDate)
            addSizeCode.Value = BatchAddSizeCode.SelectedValue.ToString()


            'lblTest.Text = "btnAddBatch_Click: " + addTestDate.Value.ToString()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub BatchAddSizeCode_PreRender(sender As Object, e As System.EventArgs) Handles BatchAddSizeCode.PreRender
        BatchAddSizeCode.SelectedIndex = 0
    End Sub

    Protected Sub addBatchID_PreRender(sender As Object, e As System.EventArgs) Handles addBatchID.PreRender
        'addBatchID.SelectedIndex = 0

        If IsPostBack = "False" Then

            addBatchID.SelectedIndex = 0

            Dim SelectSQL As String
            SelectSQL = "SELECT [SizeCode], [TestDate] FROM xMS_BatchList WHERE WorkOrderID = '" + hdnWorkOrderID.Value.ToString() + "' AND BatchID='" + addBatchID.SelectedValue.ToString() + "'"


            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)

            Dim SelectCMD As New SqlCommand(SelectSQL, DKConnection)


            Try
                'Try to open the connection and execute the update
                DKConnection.Open()

                Dim result As Integer = SelectCMD.ExecuteNonQuery()
                Dim myReader As SqlDataReader = SelectCMD.ExecuteReader()
                myReader.Read()

                addSizeCode.Value = myReader("SizeCode").ToString()
                addTestDate.Value = myReader("TestDate")

                'lblTest.Text = "addBatchID_PreRender: " + addTestDate.Value.ToString()

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try
        End If
    End Sub




    Protected Sub addBatchID_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles addBatchID.SelectedIndexChanged

        Dim SelectSQL As String
        SelectSQL = "SELECT [SizeCode], [TestDate] FROM xMS_BatchList WHERE WorkOrderID = '" + hdnWorkOrderID.Value.ToString() + "' AND BatchID='" + addBatchID.SelectedValue.ToString() + "'"


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim SelectCMD As New SqlCommand(SelectSQL, DKConnection)


        Try
            'Try to open the connection and execute the update
            DKConnection.Open()

            Dim result As Integer = SelectCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = SelectCMD.ExecuteReader()
            myReader.Read()

            addSizeCode.Value = myReader("SizeCode").ToString()
            addTestDate.Value = myReader("TestDate")

            'lblTest.Text = "addBatchID_SelectedIndexChanged: " + addTestDate.Value.ToString()
        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try
    End Sub

    Protected Sub addType_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles addType.SelectedIndexChanged
        Dim SelectSQL As String
        SelectSQL = "SELECT Min1, Min2,Min3,Max1,Max2,Max3 FROM xMS_AccuracyLimits WHERE type = '" + addType.SelectedValue.ToString() + "'"


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim SelectCMD As New SqlCommand(SelectSQL, DKConnection)


        Try
            'Try to open the connection and execute the update
            DKConnection.Open()

            Dim result As Integer = SelectCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = SelectCMD.ExecuteReader()
            myReader.Read()

            addMin1.Value = myReader("Min1")
            addMin2.Value = myReader("Min2")
            addMin3.Value = myReader("Min3")
            addMax1.Value = myReader("Max1")
            addMax2.Value = myReader("Max2")
            addMax3.Value = myReader("Max3")
            lblAddRangeLow.Text = myReader("Min1").ToString() + " - " + myReader("Max1").ToString() + "%"
            lblAddRangeMed.Text = myReader("Min2").ToString() + " - " + myReader("Max2").ToString() + "%"
            lblAddRangeHi.Text = myReader("Min3").ToString() + " - " + myReader("Max3").ToString() + "%"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        Dim SelectSQL2 As String
        SelectSQL2 = "SELECT Rate1, Rate2, Rate3 FROM xMS_TestFlows WHERE Type = '" + addType.SelectedValue.ToString() + "' AND SizeCode = '" + addSizeCode.Value.ToString() + "'"


        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim SelectCMD2 As New SqlCommand(SelectSQL2, DKConnection2)


        Try
            'Try to open the connection and execute the update
            DKConnection2.Open()

            Dim result As Integer = SelectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = SelectCMD2.ExecuteReader()
            myReader2.Read()

            addRate1.Value = myReader2("Rate1")
            addRate2.Value = myReader2("Rate2")
            addRate3.Value = myReader2("Rate3")
           
            lblAddFlowLow.Text = myReader2("Rate1").ToString() + "GPM"
            lblAddFlowMed.Text = myReader2("Rate2").ToString() + "GPM"
            lblAddFlowHi.Text = myReader2("Rate3").ToString() + "GPM"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try
    End Sub

    Protected Sub btnAddPart_Click(sender As Object, e As System.EventArgs) Handles btnAddPart.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)
        Dim InsertCMD As SqlCommand = New SqlCommand("uspMS_PartsInsert", DKConnection)

        InsertCMD.CommandType = CommandType.StoredProcedure
        InsertCMD.Parameters.Add("@WorkOrderID", SqlDbType.NVarChar).Value = hdnWorkOrderID.Value
        InsertCMD.Parameters.Add("@BatchID", SqlDbType.NVarChar).Value = addBatchID.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@SerialNo", SqlDbType.NVarChar).Value = addSerialNo.Text.ToString()
        InsertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = addParts.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@Qty", SqlDbType.BigInt).Value = addQuantity.SelectedValue
        InsertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = hdnCustID.Value
        If addWarranty.Checked Then
            InsertCMD.Parameters.Add("@WarrantyFlag", SqlDbType.NVarChar).Value = "W"
        Else
            InsertCMD.Parameters.Add("@WarrantyFlag", SqlDbType.NVarChar).Value = ""
        End If

        Dim inserted As Integer = 0

        Try
            DKConnection.Open()
            inserted = InsertCMD.ExecuteNonQuery()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try

        grdPartsConsumed1.DataSourceID = SqlDS_grdPartsConsumed1.ID
        SqlDS_grdPartsConsumed1.DataBind()


    End Sub

   
    Protected Sub btnAddStart_Click(sender As Object, e As System.EventArgs) Handles btnAddStart.Click
        pnlAddTesting.Enabled = "True"
        pnlAddMeterSelection.Enabled = "False"
        btnAddStart.Visible = "False"
        btnAddTestResults.Visible = "True"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)
        Dim InsertCMD As SqlCommand = New SqlCommand("uspMS_MetersInsert", DKConnection)

        InsertCMD.CommandType = CommandType.StoredProcedure

        InsertCMD.Parameters.Add("@SerialNo", SqlDbType.NVarChar).Value = addSerialNo.Text.ToString()
        InsertCMD.Parameters.Add("@Make", SqlDbType.NVarChar).Value = addMake.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = addType.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = hdnCustID.Value.ToString()
        InsertCMD.Parameters.Add("@SizeCode", SqlDbType.NVarChar).Value = addSizeCode.Value.ToString()

        InsertCMD.Parameters.Add("@WorkOrderID", SqlDbType.NVarChar).Value = hdnWorkOrderID.Value.ToString()
        InsertCMD.Parameters.Add("@BatchID", SqlDbType.NVarChar).Value = addBatchID.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@Status", SqlDbType.NVarChar).Value = addStatus.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@PreReading", SqlDbType.BigInt).Value = 0
        InsertCMD.Parameters.Add("@PostReading", SqlDbType.BigInt).Value = 0

        InsertCMD.Parameters.Add("@Register_Initial", SqlDbType.NVarChar).Value = ""
        InsertCMD.Parameters.Add("@Register_Final", SqlDbType.NVarChar).Value = ""
        InsertCMD.Parameters.Add("@Repair", SqlDbType.Int).Value = 0
        InsertCMD.Parameters.Add("@Eval", SqlDbType.Int).Value = 0
        InsertCMD.Parameters.Add("@NoWork", SqlDbType.Int).Value = 0

        InsertCMD.Parameters.Add("@FBA", SqlDbType.Int).Value = 0
        InsertCMD.Parameters.Add("@InitialTest", SqlDbType.Int).Value = 0
        InsertCMD.Parameters.Add("@FinalTest", SqlDbType.Int).Value = 0
        InsertCMD.Parameters.Add("@TestDate", SqlDbType.DateTime).Value = addTestDate.Value
        

        InsertCMD.Parameters.Add("@Notes", SqlDbType.NVarChar).Value = ""
        InsertCMD.Parameters.Add("@TestBy", SqlDbType.NVarChar).Value = addTestBy.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@RepairBy", SqlDbType.NVarChar).Value = addRepairBy.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@Rate1", SqlDbType.Float).Value = addRate1.Value
        InsertCMD.Parameters.Add("@Rate2", SqlDbType.Float).Value = addRate2.Value
        InsertCMD.Parameters.Add("@Rate3", SqlDbType.Float).Value = addRate3.Value
        InsertCMD.Parameters.Add("@Rate1_PreResult", SqlDbType.Float).Value = 0
        InsertCMD.Parameters.Add("@Rate1_PostResult", SqlDbType.Float).Value = 0
        InsertCMD.Parameters.Add("@Min1", SqlDbType.Float).Value = addMin1.Value
        InsertCMD.Parameters.Add("@Max1", SqlDbType.Float).Value = addMax1.Value
        InsertCMD.Parameters.Add("@Rate2_PreResult", SqlDbType.Float).Value = 0
        InsertCMD.Parameters.Add("@Rate2_PostResult", SqlDbType.Float).Value = 0
        InsertCMD.Parameters.Add("@Min2", SqlDbType.Float).Value = addMin2.Value
        InsertCMD.Parameters.Add("@Max2", SqlDbType.Float).Value = addMax2.Value
        InsertCMD.Parameters.Add("@Rate3_PreResult", SqlDbType.Float).Value = 0
        InsertCMD.Parameters.Add("@Rate3_PostResult", SqlDbType.Float).Value = 0
        InsertCMD.Parameters.Add("@Min3", SqlDbType.Float).Value = addMin3.Value
        InsertCMD.Parameters.Add("@Max3", SqlDbType.Float).Value = addMax3.Value
        InsertCMD.Parameters.Add("@Test_ID", SqlDbType.Int)
        InsertCMD.Parameters("@Test_ID").Direction = ParameterDirection.Output


        Dim inserted As Integer = 0

        Try
            DKConnection.Open()
            inserted = InsertCMD.ExecuteNonQuery()

            addTest_ID.Value = InsertCMD.Parameters("@Test_ID").Value

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try


        SqlDS_grdPartsConsumed1.SelectParameters("SerialNo").DefaultValue = addSerialNo.Text.ToString()
        SqlDS_grdPartsConsumed1.SelectParameters("WorkOrderID").DefaultValue = hdnWorkOrderID.Value.ToString()
        SqlDS_grdPartsConsumed1.SelectParameters("BatchID").DefaultValue = addBatchID.SelectedValue.ToString()
        grdPartsConsumed1.DataSourceID = SqlDS_grdPartsConsumed1.ID
        SqlDS_grdPartsConsumed1.DataBind()

        addParts.Items.Clear()
        addParts.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        SqlDS_addParts.SelectParameters("Type").DefaultValue = addType.SelectedValue.ToString()
        SqlDS_addParts.SelectParameters("SizeCode").DefaultValue = addSizeCode.Value.ToString()

        addParts.DataSourceID = SqlDS_addParts.ID
        addParts.DataBind()



        'abcdef
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspMSGetMeterTest", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@Test_ID", SqlDbType.BigInt).Value = addTest_ID.Value


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            addTest_ID.Value = myReader1("Test_ID")
            addBatch_ID.Value = myReader1("Batch_ID")
            addMeter_ID.Value = myReader1("Meter_ID")
            addSerialNo.Text = myReader1("SerialNo").ToString()
            addBatchID.SelectedValue = myReader1("BatchID").ToString()
            addMake.SelectedValue = myReader1("Make").ToString()
            addType.SelectedValue = myReader1("Type").ToString()
            addStatus.SelectedValue = myReader1("Status").ToString()
            'addTestDate.SelectedDate = myReader1("TestDate")
            addTestBy.SelectedValue = myReader1("TestBy").ToString()
            addRepairBy.SelectedValue = myReader1("RepairBy").ToString()
            addRegister_Initial.Text = myReader1("Register_Initial")
            addRegister_Final.Text = myReader1("Register_Final")
            addPreReading.Text = myReader1("PreReading")
            addPostReading.Text = myReader1("PostReading")

            addInitialTest.Checked = myReader1("InitialTest")
            addFinalTest.Checked = myReader1("FinalTest")
            addRepair.Checked = myReader1("Repair")
            addEval.Checked = myReader1("Eval")
            addNoWork.Checked = myReader1("NoWork")
            addFBA.Checked = myReader1("FBA")
            addNotes.Text = myReader1("Notes").ToString()

            lblAddFlowLow.Text = myReader1("Rate1").ToString()
            lblAddFlowMed.Text = myReader1("Rate2").ToString()
            lblAddFlowHi.Text = myReader1("Rate3").ToString()

            addRate1_PreResult.Text = myReader1("Rate1_PreResult")
            addRate2_PreResult.Text = myReader1("Rate2_PreResult")
            addRate3_PreResult.Text = myReader1("Rate3_PreResult")
            addRate1_PostResult.Text = myReader1("Rate1_PostResult")
            addRate2_PostResult.Text = myReader1("Rate2_PostResult")
            addRate3_PostResult.Text = myReader1("Rate3_PostResult")

            SqlDS_addParts.SelectParameters("SizeCode").DefaultValue = myReader1("SizeCode").ToString()
            SqlDS_addParts.SelectParameters("Type").DefaultValue = myReader1("Type").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try


        grdTestMeters.DataSourceID = SqlDS_grdTestMeters.ID
        grdTestMeters.DataBind()

    End Sub

    Protected Sub btnAddTestResults_Click(sender As Object, e As System.EventArgs) Handles btnAddTestResults.Click
        btnAddTestResults.Visible = "false"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspMS_TestsUpdate", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure

        updateCMD.Parameters.Add("@Test_ID", SqlDbType.BigInt).Value = addTest_ID.Value
        updateCMD.Parameters.Add("@Meter_ID", SqlDbType.BigInt).Value = addMeter_ID.Value
        updateCMD.Parameters.Add("@BatchID", SqlDbType.NVarChar).Value = addBatchID.SelectedValue
        updateCMD.Parameters.Add("@Batch_ID", SqlDbType.BigInt).Value = addBatch_ID.Value
        updateCMD.Parameters.Add("@Status", SqlDbType.NVarChar).Value = addStatus.SelectedValue
        updateCMD.Parameters.Add("@SerialNo", SqlDbType.NVarChar).Value = addSerialNo.Text

        updateCMD.Parameters.Add("@Make", SqlDbType.NVarChar).Value = addMake.SelectedValue
        updateCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = addType.SelectedValue

        updateCMD.Parameters.Add("@PreReading", SqlDbType.Int).Value = addPreReading.Value
        updateCMD.Parameters.Add("@PostReading", SqlDbType.Int).Value = addPostReading.Value
        updateCMD.Parameters.Add("@Register_Initial", SqlDbType.NVarChar).Value = addRegister_Initial.Text
        updateCMD.Parameters.Add("@Register_Final", SqlDbType.NVarChar).Value = addRegister_Final.Text

        If addRepair.Checked = "True" Then
            updateCMD.Parameters.Add("@Repair", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@Repair", SqlDbType.Int).Value = 0
        End If

        If addEval.Checked = "True" Then
            updateCMD.Parameters.Add("@Eval", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@Eval", SqlDbType.Int).Value = 0
        End If

        If addNoWork.Checked = "True" Then
            updateCMD.Parameters.Add("@NoWork", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@NoWork", SqlDbType.Int).Value = 0
        End If
        If addFBA.Checked = "True" Then
            updateCMD.Parameters.Add("@FBA", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@FBA", SqlDbType.Int).Value = 0
        End If
        If addInitialTest.Checked = "True" Then
            updateCMD.Parameters.Add("@InitialTest", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@InitialTest", SqlDbType.Int).Value = 0
        End If
        If addFinalTest.Checked = "True" Then
            updateCMD.Parameters.Add("@FinalTest", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@FinalTest", SqlDbType.Int).Value = 0
        End If


        If addTestDate.Value Is Nothing Then
            updateCMD.Parameters.Add("@TestDate", SqlDbType.DateTime).Value = "1/1/1950"
        Else
            updateCMD.Parameters.Add("@TestDate", SqlDbType.DateTime).Value = Convert.ToDateTime(addTestDate.Value)
        End If
        updateCMD.Parameters.Add("@Notes", SqlDbType.NVarChar).Value = addNotes.Text
        updateCMD.Parameters.Add("@TestBy", SqlDbType.NVarChar).Value = addTestBy.Text
        updateCMD.Parameters.Add("@RepairBy", SqlDbType.NVarChar).Value = addRepairBy.Text
        updateCMD.Parameters.Add("@Rate1_PreResult", SqlDbType.Float).Value = addRate1_PreResult.Value
        updateCMD.Parameters.Add("@Rate2_PreResult", SqlDbType.Float).Value = addRate2_PreResult.Value
        updateCMD.Parameters.Add("@Rate3_PreResult", SqlDbType.Float).Value = addRate3_PreResult.Value
        updateCMD.Parameters.Add("@Rate1_PostResult", SqlDbType.Float).Value = addRate1_PostResult.Value
        updateCMD.Parameters.Add("@Rate2_PostResult", SqlDbType.Float).Value = addRate2_PostResult.Value
        updateCMD.Parameters.Add("@Rate3_PostResult", SqlDbType.Float).Value = addRate3_PostResult.Value


        Dim updated As Integer = 0

        Try
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()

        Catch ex As SqlException

        Finally
            DKConnection.Close()

        End Try

        grdTestMeters.DataSourceID = SqlDS_grdTestMeters.ID
        grdTestMeters.DataBind()


        grdPartsConsumed1.DataSourceID = SqlDS_grdPartsConsumed1.ID
        grdPartsConsumed1.DataBind()

        addBatch_ID.Value = 0
        addBatchID.SelectedValue = "00"
        addEval.Checked = "False"
        addFBA.Checked = "False"
        addFinalTest.Checked = "False"
        addInitialTest.Checked = "False"
        addMeter_ID.Value = 0
        addNotes.Text = ""
        addNoWork.Checked = "False"
        addPostReading.Value = 0
        addPreReading.Value = 0
        addSerialNo.Text = ""
        addRegister_Final.Text = ""
        addRegister_Initial.Text = ""
        addRate1_PostResult.Value = 0
        addRate1_PreResult.Value = 0
        addRate2_PostResult.Value = 0
        addRate2_PreResult.Value = 0
        addRate3_PostResult.Value = 0
        addRate3_PreResult.Value = 0

        pnlAddTesting.Enabled = "false"
        pnlAddMeterSelection.Enabled = "true"
        btnAddStart.Visible = "true"

        addSerialNo.Text = ""
        addRepairBy.SelectedValue = "-"


        grdTestMeters.DataSourceID = SqlDS_grdTestMeters.ID
        grdTestMeters.DataBind()

    End Sub

  

  
   
    Protected Sub btneditTestResults_Click(sender As Object, e As System.EventArgs) Handles btneditTestResults.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspMS_TestsUpdate", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure

        updateCMD.Parameters.Add("@Test_ID", SqlDbType.BigInt).Value = editTest_ID.Value
        updateCMD.Parameters.Add("@Meter_ID", SqlDbType.BigInt).Value = editMeter_ID.Value
        updateCMD.Parameters.Add("@BatchID", SqlDbType.NVarChar).Value = editBatchID.SelectedValue
        updateCMD.Parameters.Add("@Batch_ID", SqlDbType.BigInt).Value = editBatch_ID.Value
        updateCMD.Parameters.Add("@Status", SqlDbType.NVarChar).Value = editStatus.SelectedValue
        updateCMD.Parameters.Add("@SerialNo", SqlDbType.NVarChar).Value = editSerialNo.Text

        updateCMD.Parameters.Add("@Make", SqlDbType.NVarChar).Value = editMake.SelectedValue
        updateCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = editType.SelectedValue

        updateCMD.Parameters.Add("@PreReading", SqlDbType.Int).Value = editPreReading.Value
        updateCMD.Parameters.Add("@PostReading", SqlDbType.Int).Value = editPostReading.Value
        updateCMD.Parameters.Add("@Register_Initial", SqlDbType.NVarChar).Value = editRegister_Initial.Text
        updateCMD.Parameters.Add("@Register_Final", SqlDbType.NVarChar).Value = editRegister_Final.Text

        If editRepair.Checked = "True" Then
            updateCMD.Parameters.Add("@Repair", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@Repair", SqlDbType.Int).Value = 0
        End If

        If editEval.Checked = "True" Then
            updateCMD.Parameters.Add("@Eval", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@Eval", SqlDbType.Int).Value = 0
        End If

        If editNoWork.Checked = "True" Then
            updateCMD.Parameters.Add("@NoWork", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@NoWork", SqlDbType.Int).Value = 0
        End If
        If editFBA.Checked = "True" Then
            updateCMD.Parameters.Add("@FBA", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@FBA", SqlDbType.Int).Value = 0
        End If
        If editInitialTest.Checked = "True" Then
            updateCMD.Parameters.Add("@InitialTest", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@InitialTest", SqlDbType.Int).Value = 0
        End If
        If editFinalTest.Checked = "True" Then
            updateCMD.Parameters.Add("@FinalTest", SqlDbType.Int).Value = 1
        Else
            updateCMD.Parameters.Add("@FinalTest", SqlDbType.Int).Value = 0
        End If
        

        If editTestDate.SelectedDate Is Nothing Then
            updateCMD.Parameters.Add("@TestDate", SqlDbType.DateTime).Value = "1/1/1950"
        Else
            updateCMD.Parameters.Add("@TestDate", SqlDbType.DateTime).Value = editTestDate.SelectedDate
        End If
        updateCMD.Parameters.Add("@Notes", SqlDbType.NVarChar).Value = editNotes.Text
        updateCMD.Parameters.Add("@TestBy", SqlDbType.NVarChar).Value = editTestBy.Text
        updateCMD.Parameters.Add("@RepairBy", SqlDbType.NVarChar).Value = editRepairBy.Text
        updateCMD.Parameters.Add("@Rate1_PreResult", SqlDbType.Float).Value = editRate1_PreResult.Value
        updateCMD.Parameters.Add("@Rate2_PreResult", SqlDbType.Float).Value = editRate2_PreResult.Value
        updateCMD.Parameters.Add("@Rate3_PreResult", SqlDbType.Float).Value = editRate3_PreResult.Value
        updateCMD.Parameters.Add("@Rate1_PostResult", SqlDbType.Float).Value = editRate1_PostResult.Value
        updateCMD.Parameters.Add("@Rate2_PostResult", SqlDbType.Float).Value = editRate2_PostResult.Value
        updateCMD.Parameters.Add("@Rate3_PostResult", SqlDbType.Float).Value = editRate3_PostResult.Value


        Dim updated As Integer = 0

        Try
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()

        Catch ex As SqlException

        Finally
            DKConnection.Close()

        End Try

        grdTestMeters.DataSourceID = SqlDS_grdTestMeters.ID
        grdTestMeters.DataBind()


        editBatch_ID.Value = 0
        editBatchID.SelectedValue = "00"
        editEval.Checked = "False"
        editFBA.Checked = "False"
        editFinalTest.Checked = "False"
        editInitialTest.Checked = "False"
        editMeter_ID.Value = 0
        editNotes.Text = ""
        editNoWork.Checked = "False"
        editPostReading.Value = 0
        editPreReading.Value = 0
        editSerialNo.Text = ""
        editRegister_Final.Text = ""
        editRegister_Initial.Text = ""
        editRate1_PostResult.Value = 0
        editRate1_PreResult.Value = 0
        editRate2_PostResult.Value = 0
        editRate2_PreResult.Value = 0
        editRate3_PostResult.Value = 0
        editRate3_PreResult.Value = 0


        pnleditMeterSelection.Enabled = "false"



    End Sub

   

    Protected Sub btneditPart_Click(sender As Object, e As System.EventArgs) Handles btneditPart.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)
        Dim InsertCMD As SqlCommand = New SqlCommand("uspMS_PartsInsert", DKConnection)

        InsertCMD.CommandType = CommandType.StoredProcedure
        InsertCMD.Parameters.Add("@WorkOrderID", SqlDbType.NVarChar).Value = hdnWorkOrderID.Value
        InsertCMD.Parameters.Add("@BatchID", SqlDbType.NVarChar).Value = editBatchID.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@SerialNo", SqlDbType.NVarChar).Value = editSerialNo.Text.ToString()
        InsertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = editParts.SelectedValue.ToString()
        InsertCMD.Parameters.Add("@Qty", SqlDbType.BigInt).Value = editQuantity.SelectedValue
        InsertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = hdnCustID.Value
        If editWarranty.Checked Then
            InsertCMD.Parameters.Add("@WarrantyFlag", SqlDbType.NVarChar).Value = "W"
        Else
            InsertCMD.Parameters.Add("@WarrantyFlag", SqlDbType.NVarChar).Value = ""
        End If

        Dim inserted As Integer = 0

        Try
            DKConnection.Open()
            inserted = InsertCMD.ExecuteNonQuery()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try

        grdPartsConsumedEdit1.DataSourceID = SqlDS_grdPartsConsumedEdit1.ID
        SqlDS_grdPartsConsumedEdit1.DataBind()

    End Sub

    Protected Sub grdTestMeters_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdTestMeters.SelectedIndexChanged
        pnleditMeterSelection.Enabled = "true"

        btnTestResultsOutput.NavigateUrl = "~/Reports2/MeterShop_TestReport.aspx?Test_ID=" + grdTestMeters.SelectedValues("Test_ID").ToString()

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspMSGetMeterTest", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@Test_ID", SqlDbType.BigInt).Value = grdTestMeters.SelectedValues("Test_ID")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            editTest_ID.Value = myReader1("Test_ID")
            editBatch_ID.Value = myReader1("Batch_ID")
            editMeter_ID.Value = myReader1("Meter_ID")
            editSerialNo.Text = myReader1("SerialNo").ToString()
            editBatchID.SelectedValue = myReader1("BatchID").ToString()
            editMake.SelectedValue = myReader1("Make").ToString()
            editType.SelectedValue = myReader1("Type").ToString()
            editStatus.SelectedValue = myReader1("Status").ToString()
            editTestDate.SelectedDate = myReader1("TestDate")
            editTestBy.SelectedValue = myReader1("TestBy").ToString()
            editRepairBy.SelectedValue = myReader1("RepairBy").ToString()
            editRegister_Initial.Text = myReader1("Register_Initial")
            editRegister_Final.Text = myReader1("Register_Final")
            editPreReading.Text = myReader1("PreReading")
            editPostReading.Text = myReader1("PostReading")

            editInitialTest.Checked = myReader1("InitialTest")
            editFinalTest.Checked = myReader1("FinalTest")
            editRepair.Checked = myReader1("Repair")
            editEval.Checked = myReader1("Eval")
            editNoWork.Checked = myReader1("NoWork")
            editFBA.Checked = myReader1("FBA")
            editNotes.Text = myReader1("Notes").ToString()

            lbleditFlowLow.Text = myReader1("Rate1").ToString() + " GPM"
            lbleditFlowMed.Text = myReader1("Rate2").ToString() + " GPM"
            lbleditFlowHi.Text = myReader1("Rate3").ToString() + " GPM"

            editRate1_PreResult.Text = myReader1("Rate1_PreResult")
            editRate2_PreResult.Text = myReader1("Rate2_PreResult")
            editRate3_PreResult.Text = myReader1("Rate3_PreResult")
            editRate1_PostResult.Text = myReader1("Rate1_PostResult")
            editRate2_PostResult.Text = myReader1("Rate2_PostResult")
            editRate3_PostResult.Text = myReader1("Rate3_PostResult")

            SqlDS_editParts.SelectParameters("SizeCode").DefaultValue = myReader1("SizeCode").ToString()
            SqlDS_editParts.SelectParameters("Type").DefaultValue = myReader1("Type").ToString()





            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

    End Sub

    

    Protected Sub btnUpdateStatus_Click(sender As Object, e As System.EventArgs) Handles btnUpdateStatus.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspMS_StatusUpdate", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure

        updateCMD.Parameters.Add("@WoList_ID", SqlDbType.Int).Value = hdnWOList_ID.Value

        If hdnWOStatus.Value = "OPEN" Then
            updateCMD.Parameters.Add("@WOStatus", SqlDbType.NVarChar).Value = "CLOSED"

        Else
            updateCMD.Parameters.Add("@WOStatus", SqlDbType.NVarChar).Value = "OPEN"
        End If


        Dim updated As Integer = 0

        Try
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()
            hdnWOStatus.Value = updateCMD.Parameters("@WOStatus").Value



        Catch ex As SqlException

        Finally
            DKConnection.Close()

        End Try

        If hdnWOStatus.Value.ToString() = "OPEN" Then
            btnUpdateStatus.Text = "Close Work Order"
        Else
            btnUpdateStatus.Text = "Open Work Order"
        End If
    End Sub

    Protected Sub btnEditWO_Click(sender As Object, e As System.EventArgs) Handles btnEditWO.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspMS_WorkOrderDirectionsUpdate", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure

        updateCMD.Parameters.Add("@WorkOrderID", SqlDbType.Int).Value = hdnWorkOrderID.Value
        updateCMD.Parameters.Add("@WorkType", SqlDbType.NVarChar).Value = editWorkType.SelectedValue.ToString()
        updateCMD.Parameters.Add("@WorkDetail", SqlDbType.NVarChar).Value = editWorkDetail.Text.ToString()
        updateCMD.Parameters.Add("@CareOf", SqlDbType.NVarChar).Value = editShipCo.Text.ToString()
        updateCMD.Parameters.Add("@ShipAdd1", SqlDbType.NVarChar).Value = editShipAdd1.Text.ToString()
        updateCMD.Parameters.Add("@ShipAdd2", SqlDbType.NVarChar).Value = editShipAdd2.Text.ToString()
        updateCMD.Parameters.Add("@ShipCity", SqlDbType.NVarChar).Value = editShipCity.Text.ToString()
        updateCMD.Parameters.Add("@ShipState", SqlDbType.NVarChar).Value = editShipState.Text.ToString()
        updateCMD.Parameters.Add("@ShipZip", SqlDbType.NVarChar).Value = editShipZip.Text.ToString()
        updateCMD.Parameters.Add("@ShipInstructions", SqlDbType.NVarChar).Value = editShipInstruct.Text.ToString()

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()
           

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()


        End Try
    End Sub
End Class
