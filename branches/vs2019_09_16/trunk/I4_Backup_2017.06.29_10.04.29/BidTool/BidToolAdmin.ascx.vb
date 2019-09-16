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

Partial Class BidTool_BidToolAdmin
    Inherits System.Web.UI.UserControl


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        assemblyEditName.Enabled = "false"
        btnAssemblyNameUpdate.Visible = "false"
        btnAssemblyNameEditMode.Visible = "true"
        btnUpdateStatusInactive.Enabled = "false"
        btnSalesRepDetail.Enabled = "false"

        btnGrabListNameEdit.Visible = "true"
        btnGrabListNameUpdate.Visible = "false"


        If IsPostBack = "false" Then

            hdnWhseID.Value = Request.Cookies("Whse1").Value
            hdnWhseID3.Value = Request.Cookies("Whse1").Value


            assemblyEditName.Text = "Select an assembly at left"
            SqlDS_grdAssemblies.SelectParameters("WhseID").DefaultValue = Request.Cookies("Whse1").Value
            SqlDS_listAssembliesCopy.SelectParameters("WhseID").DefaultValue = Request.Cookies("Whse1").Value

            btnStockSearch.Enabled = "false"
            btnStockSearchClear.Enabled = "false"

            SqlDS_grdAssembliesInactive.SelectParameters("WhseID").DefaultValue = Request.Cookies("Whse1").Value
            lblStatusUpdate.Text = "Select an assembly at left to activate."
            btnUpdateStatusActive.Enabled = "false"


            eGrabListName.Text = "Select a GrabList at left"
            SqlDS_grdGrabList.SelectParameters("WhseID").DefaultValue = Request.Cookies("Whse1").Value
            'SqlDS_listGLAssembliesCopy.SelectParameters("WhseID").DefaultValue = Request.Cookies("Whse1").Value

            btnGLStockSearch.Enabled = "false"
            btnGLStockSearchClear.Enabled = "false"
            listGrabListCopy.Enabled = "false"

            btnGrabListToActive.Enabled = "False"
            lblInactiveGrabListName.Text = "Select a GrabList at left to activate."
            SqlDS_grdInactiveGrab.SelectParameters("WhseID").DefaultValue = Request.Cookies("Whse1").Value

            

        End If


    End Sub

    Protected Sub activeWhse_DataBinding(sender As Object, e As System.EventArgs) Handles activeWhse.DataBinding
        If IsPostBack = "false" Then
            activeWhse.SelectedValue = Request.Cookies("Whse1").Value
            'hdnWhseID.Value = Request.Cookies("Whse1").Value
        End If


    End Sub



    Protected Sub grdAssemblies_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdAssemblies.SelectedIndexChanged

        btnAssemblyNameUpdate.Visible = "false"
        btnAssemblyNameEditMode.Visible = "true"
        hdnAssemblyIDEdit.Value = grdAssemblies.SelectedValues("AssemblyID")
        assemblyEditName.Enabled = "false"
        hdnWhseID.Value = activeWhse.SelectedValue
        hdnProdID.Value = "0"
        btnUpdateStatusInactive.Enabled = "true"

        SqlDS_grdRelated.SelectParameters("ProdID").DefaultValue = hdnProdID.Value.ToString()
        SqlDS_grdRelated.SelectParameters("WhseID").DefaultValue = hdnWhseID.Value.ToString()
        grdRelated.DataSourceID = SqlDS_grdRelated.ID
        grdRelated.DataBind()

        'Retrieve the specific row in Project_Pricing
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = hdnAssemblyIDEdit.Value


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            'hdnAssemblyIDEdit.Value = myReader1("AssemblyID")

            assemblyEditName.Text = myReader1("AssemblyName")

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        SqlDS_grdDetail.SelectParameters("AssemblyID").DefaultValue = grdAssemblies.SelectedValues("AssemblyID")
        grdDetail.DataSourceID = SqlDS_grdDetail.ID
        grdDetail.DataBind()


        lineToMoveAssemblyID.Items.Clear()
        lineToMoveAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToDeleteAssemblyID.Items.Clear()
        lineToDeleteAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))

        SqlDS_grdRelated.SelectParameters("ProdID").DefaultValue = hdnProdID.Value.ToString()
        SqlDS_grdRelated.SelectParameters("WhseID").DefaultValue = hdnWhseID.Value.ToString()

        grdRelated.DataSourceID = SqlDS_grdRelated.ID
        grdRelated.DataBind()

        btnStockSearch.Enabled = "true"
        btnStockSearchClear.Enabled = "true"

    End Sub

    Protected Sub btnAssemblyAdd_Click(sender As Object, e As System.EventArgs) Handles btnAssemblyAdd.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminInsertAssembly", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure

        menuCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = activeWhse.SelectedValue.ToString()
        menuCMD.Parameters.Add("@AssemblyName", SqlDbType.NVarChar).Value = assemblyAddName.Text

        Dim inserted As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted = menuCMD.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            'editTC.Content = ""
            'btnUpdateTerm.Enabled = "false"
        End Try

        grdAssemblies.DataSourceID = SqlDS_grdAssemblies.ID
        grdAssemblies.DataBind()

        assemblyAddName.Text = ""

    End Sub

    Protected Sub btnAssemblyNameUpdate_Click(sender As Object, e As System.EventArgs) Handles btnAssemblyNameUpdate.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminUpdateAssembly", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure

        menuCMD.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = hdnAssemblyIDEdit.Value
        'menuCMD.Parameters.Add("@AssemblyName", SqlDbType.NVarChar).Value = "04 - Test Do Not Use"
        menuCMD.Parameters.Add("@AssemblyName", SqlDbType.NVarChar).Value = assemblyEditName.Text
        'menuCMD.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Active"

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()


        End Try

        grdAssemblies.DataSourceID = SqlDS_grdAssemblies.ID
        grdAssemblies.DataBind()

        assemblyAddName.Text = ""
        assemblyEditName.Enabled = "false"

        btnAssemblyNameUpdate.Visible = "false"
        btnAssemblyNameEditMode.Visible = "true"

    End Sub

    Protected Sub btnAssemblyNameEditMode_Click(sender As Object, e As System.EventArgs) Handles btnAssemblyNameEditMode.Click
        btnAssemblyNameUpdate.Visible = "true"
        btnAssemblyNameEditMode.Visible = "false"
        assemblyEditName.Enabled = "true"

    End Sub

    Protected Sub activeWhse_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles activeWhse.SelectedIndexChanged
        hdnWhseID.Value = activeWhse.SelectedValue
        hdnProdID.Value = "0"

        listAssembliesCopy.DataSourceID = SqlDS_listAssembliesCopy.ID
        listAssembliesCopy.DataBind()

    End Sub

    Protected Sub grdRelated_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdRelated.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminInsertDetail", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = hdnAssemblyIDEdit.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdRelated.SelectedValue


        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()
            grdRelated.EditIndexes.Clear()
            'listBoxTakeOffQuicklistRelated2.MasterTableView.Items(0).Selected = "False"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        grdDetail.DataSourceID = SqlDS_grdDetail.ID
        grdDetail.DataBind()


        grdRelated.DataSourceID = SqlDS_grdRelated.ID
        grdRelated.DataBind()


        lineToMoveAssemblyID.Items.Clear()
        lineToMoveAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToMoveAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToMoveAssemblyID.DataBind()

        lineToDeleteAssemblyID.Items.Clear()
        lineToDeleteAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToDeleteAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToDeleteAssemblyID.DataBind()


    End Sub

    Protected Sub btnStockSearch_Click(sender As Object, e As System.EventArgs) Handles btnStockSearch.Click

        SqlDS_grdStockSearch.SelectParameters("WhseID").DefaultValue = hdnWhseID.Value
        SqlDS_grdStockSearch.SelectParameters("ProdID").DefaultValue = " " + txtProdIDSearch.Text.ToString()
        SqlDS_grdStockSearch.SelectParameters("Description").DefaultValue = " " + txtDescSearch.Text.ToString()


        grdStockSearch.DataSourceID = SqlDS_grdStockSearch.ID
        grdStockSearch.DataBind()


    End Sub


    Protected Sub btnStockSearchClear_Click(sender As Object, e As System.EventArgs) Handles btnStockSearchClear.Click

        txtProdIDSearch.Text = ""
        txtDescSearch.Text = ""

        SqlDS_grdStockSearch.SelectParameters("ProdID").DefaultValue = ""
        SqlDS_grdStockSearch.SelectParameters("Description").DefaultValue = ""

        grdStockSearch.DataSourceID = SqlDS_grdStockSearch.ID
        grdStockSearch.DataBind()

    End Sub

    Protected Sub grdStockSearch_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdStockSearch.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminInsertDetail", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = hdnAssemblyIDEdit.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdStockSearch.SelectedValue


        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()
            grdStockSearch.EditIndexes.Clear()
            'listBoxTakeOffQuicklistRelated2.MasterTableView.Items(0).Selected = "False"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        grdDetail.DataSourceID = SqlDS_grdDetail.ID
        grdDetail.DataBind()

        lineToMoveAssemblyID.Items.Clear()
        lineToMoveAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToMoveAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToMoveAssemblyID.DataBind()

        lineToDeleteAssemblyID.Items.Clear()
        lineToDeleteAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToDeleteAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToDeleteAssemblyID.DataBind()

    End Sub

    Protected Sub btnRelatedSearch_Click(sender As Object, e As System.EventArgs) Handles btnRelatedSearch.Click
        SqlDS_grdRelated.SelectParameters("ProdID").DefaultValue = grdDetail.SelectedValues("ProdID").ToString()
        SqlDS_grdRelated.SelectParameters("WhseID").DefaultValue = hdnWhseID.Value.ToString()

        grdRelated.DataSourceID = SqlDS_grdRelated.ID
        grdRelated.DataBind()


    End Sub

    Protected Sub listAssembliesCopy_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listAssembliesCopy.SelectedIndexChanged
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminCopyAssembly", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@AssemblyIDTarget", SqlDbType.BigInt).Value = hdnAssemblyIDEdit.Value
        insertCMD.Parameters.Add("@AssemblyIDToCopy", SqlDbType.BigInt).Value = listAssembliesCopy.SelectedValue


        Dim inserted As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted = insertCMD.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try


        grdDetail.DataSourceID = SqlDS_grdDetail.ID
        grdDetail.DataBind()

        lineToMoveAssemblyID.Items.Clear()
        lineToMoveAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToMoveAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToMoveAssemblyID.DataBind()

        lineToDeleteAssemblyID.Items.Clear()
        lineToDeleteAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToDeleteAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToDeleteAssemblyID.DataBind()

        grdGrabDetail.DataSourceID = SqlDS_grdGrabDetail.ID
        grdGrabDetail.DataBind()

    End Sub


    Protected Sub lineToDeleteAssemblyID_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles lineToDeleteAssemblyID.SelectedIndexChanged
        Dim SelectSQL As String
        SelectSQL = "SELECT Seq FROM TakeOff_Assemblies_Detail WHERE AssemblyDetailID = " + lineToDeleteAssemblyID.SelectedValue.ToString()


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

        Dim Reader As SqlDataReader
        Try
            'Try to open the connection and execute the Select
            DKConnection.Open()

            Reader = SelectCMD1.ExecuteReader()
            Reader.Read()

            lineToDelete.Value = Reader("Seq")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try
    End Sub


    Protected Sub btnDeleteLine_Click(sender As Object, e As System.EventArgs) Handles btnDeleteLine.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminDELETERow", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = hdnAssemblyIDEdit.Value
        updateCMD1.Parameters.Add("@AssemblyDetailID", SqlDbType.BigInt).Value = lineToDeleteAssemblyID.SelectedValue
        updateCMD1.Parameters.Add("@Seq", SqlDbType.Int).Value = lineToDelete.Value


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

        grdDetail.DataSourceID = SqlDS_grdDetail.ID
        SqlDS_grdDetail.DataBind()

        lineToMoveAssemblyID.Items.Clear()
        lineToMoveAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToMoveAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToMoveAssemblyID.DataBind()

        lineToDeleteAssemblyID.Items.Clear()
        lineToDeleteAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToDeleteAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToDeleteAssemblyID.DataBind()


    End Sub


    Protected Sub lineToMoveAssemblyID_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles lineToMoveAssemblyID.SelectedIndexChanged

        Dim SelectSQL As String
        SelectSQL = "SELECT Seq FROM TakeOff_Assemblies_Detail WHERE AssemblyDetailID = " + lineToMoveAssemblyID.SelectedValue.ToString()


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

        Dim Reader As SqlDataReader
        Try
            'Try to open the connection and execute the Select
            DKConnection.Open()

            Reader = SelectCMD1.ExecuteReader()
            Reader.Read()

            lineOld.Value = Reader("Seq")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub


    Protected Sub btnLineUpdate_Click(sender As Object, e As System.EventArgs) Handles btnLineUpdate.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminUpdateSeq", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = hdnAssemblyIDEdit.Value
        updateCMD1.Parameters.Add("@AssemblyDetailID", SqlDbType.BigInt).Value = lineToMoveAssemblyID.SelectedValue
        updateCMD1.Parameters.Add("@NewSeq", SqlDbType.Int).Value = lineNew.SelectedValue
        updateCMD1.Parameters.Add("@OldSeq", SqlDbType.Int).Value = lineOld.Value

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

        grdDetail.DataSourceID = SqlDS_grdDetail.ID
        SqlDS_grdDetail.DataBind()

        lineToMoveAssemblyID.Items.Clear()
        lineToMoveAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToMoveAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToMoveAssemblyID.DataBind()

        lineToDeleteAssemblyID.Items.Clear()
        lineToDeleteAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineToDeleteAssemblyID.DataSourceID = SqlDS_grdDetail.ID
        lineToDeleteAssemblyID.DataBind()
    End Sub

    Protected Sub btnUpdateStatusInactive_Click(sender As Object, e As System.EventArgs) Handles btnUpdateStatusInactive.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminUpdateStatus", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = hdnAssemblyIDEdit.Value
        updateCMD1.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Inactive"

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

        grdAssemblies.DataSourceID = SqlDS_grdAssemblies.ID
        grdAssemblies.DataBind()

        grdAssembliesInactive.DataSourceID = SqlDS_grdAssembliesInactive.ID
        grdAssembliesInactive.DataBind()

        SqlDS_grdDetail.SelectParameters("AssemblyID").DefaultValue = 0
        grdDetail.DataSourceID = SqlDS_grdDetail.ID
        SqlDS_grdDetail.DataBind()

        SqlDS_grdRelated.SelectParameters("ProdID").DefaultValue = "0"
        SqlDS_grdRelated.SelectParameters("WhseID").DefaultValue = "0"

        grdRelated.DataSourceID = SqlDS_grdRelated.ID
        grdRelated.DataBind()

        lineToMoveAssemblyID.Items.Clear()
        lineToMoveAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))


        lineToDeleteAssemblyID.Items.Clear()
        lineToDeleteAssemblyID.Items.Insert(0, New RadComboBoxItem("-", String.Empty))

        assemblyEditName.Enabled = "false"
        assemblyEditName.Text = "Select and assembly at left"
        btnAssemblyNameUpdate.Visible = "false"
        btnAssemblyNameEditMode.Visible = "true"


        assemblyEditName.Text = "Select an assembly at left"

        btnStockSearch.Enabled = "false"
        btnStockSearchClear.Enabled = "false"
        btnUpdateStatusInactive.Enabled = "false"


    End Sub

    Protected Sub grdAssembliesInactive_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdAssembliesInactive.SelectedIndexChanged

        hdnAssemblyIDToActivate.Value = grdAssembliesInactive.SelectedValues("AssemblyID")
        btnUpdateStatusActive.Enabled = "true"

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = grdAssembliesInactive.SelectedValues("AssemblyID")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            'hdnAssemblyIDEdit.Value = myReader1("AssemblyID")

            lblStatusUpdate.Text = myReader1("AssemblyName")

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try



    End Sub


    Protected Sub btnUpdateStatusActive_Click(sender As Object, e As System.EventArgs) Handles btnUpdateStatusActive.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffAssemblyAdminUpdateStatus", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = hdnAssemblyIDToActivate.Value
        updateCMD1.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Active"

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

        grdAssembliesInactive.DataSourceID = SqlDS_grdAssembliesInactive.ID
        grdAssembliesInactive.DataBind()

        grdAssemblies.DataSourceID = SqlDS_grdAssemblies.ID
        grdAssemblies.DataBind()

        btnUpdateStatusActive.Enabled = "false"
        lblStatusUpdate.Text = "Select an assembly at left to activate."

    End Sub

    Protected Sub activeWhse2_DataBinding(sender As Object, e As System.EventArgs) Handles activeWhse2.DataBinding
        If IsPostBack = "false" Then
            activeWhse2.SelectedValue = Request.Cookies("Whse1").Value

        End If


    End Sub

    Protected Sub activeWhse2_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles activeWhse2.SelectedIndexChanged
        btnUpdateStatusActive.Enabled = "false"
        lblStatusUpdate.Text = "Select an assembly at left to activate."

    End Sub

    Protected Sub btnSalesRepDetail_Click(sender As Object, e As System.EventArgs) Handles btnSalesRepDetail.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspSalesRepDetailUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@SalesRepID", SqlDbType.NVarChar).Value = slsRepID.Text
        updateCMD1.Parameters.Add("@SalesName", SqlDbType.NVarChar).Value = slsName.Text
        updateCMD1.Parameters.Add("@eMail", SqlDbType.NVarChar).Value = slsEmail.Text
        updateCMD1.Parameters.Add("@Mobile", SqlDbType.NVarChar).Value = slsMobile.Text


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

        btnSalesRepDetail.Enabled = "false"

        grdSalesReps.DataSourceID = SqlDS_grdSalesReps.ID
        grdSalesReps.DataBind()

        slsRepID.Text = ""
        slsName.Text = ""
        slsEmail.Text = ""
        slsMobile.Text = ""

    End Sub

    Protected Sub grdSalesReps_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdSalesReps.SelectedIndexChanged

        btnSalesRepDetail.Enabled = "true"

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspSalesRepDetailGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@SalesRepID", SqlDbType.NVarChar).Value = grdSalesReps.SelectedValues("SalesRepID")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            slsRepID.Text = myReader1("SalesRepID").ToString()
            slsName.Text = myReader1("SalesName").ToString()
            slsEmail.Text = myReader1("eMail").ToString()
            slsMobile.Text = myReader1("Mobile").ToString()


            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try
    End Sub

    Protected Sub btnSalesRepAdd_Click(sender As Object, e As System.EventArgs) Handles btnSalesRepAdd.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspSalesRepDetailInsert", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@SalesRepID", SqlDbType.NVarChar).Value = aSalesRepID.Text
        updateCMD1.Parameters.Add("@SalesName", SqlDbType.NVarChar).Value = aSalesName.Text
        updateCMD1.Parameters.Add("@eMail", SqlDbType.NVarChar).Value = aeMail.Text
        updateCMD1.Parameters.Add("@Mobile", SqlDbType.NVarChar).Value = aMobile.Text


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

        btnSalesRepDetail.Enabled = "false"

        grdSalesReps.DataSourceID = SqlDS_grdSalesReps.ID
        grdSalesReps.DataBind()

        aSalesRepID.Text = ""
        aSalesName.Text = ""
        aeMail.Text = ""
        aMobile.Text = ""


    End Sub

    Protected Sub activeWhse3_DataBinding(sender As Object, e As System.EventArgs) Handles activeWhse3.DataBinding

        If IsPostBack = "false" Then
            activeWhse3.SelectedValue = Request.Cookies("Whse1").Value

        End If

    End Sub

    Protected Sub activeWhse3_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles activeWhse3.SelectedIndexChanged
        hdnWhseID3.Value = activeWhse3.SelectedValue
        listGrabListCopy.Enabled = "false"

        SqlDS_grdGrabList.SelectParameters("WhseID").DefaultValue = activeWhse3.SelectedValue
        grdGrabList.DataSourceID = SqlDS_grdGrabList.ID
        grdGrabList.DataBind()

        SqlDS_grdGrabDetail.SelectParameters("GrabListID").DefaultValue = 0
        grdGrabDetail.DataSourceID = SqlDS_grdGrabDetail.ID
        grdGrabDetail.DataBind()
        eGrabListName.Text = "Select a GrabList at left"

        'listGLAssembliesCopy.DataSourceID = SqlDS_listGLAssembliesCopy.ID
        'listGLAssembliesCopy.DataBind()
    End Sub



    Protected Sub grdGrabList_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdGrabList.SelectedIndexChanged

        btnGrabListNameEdit.Visible = "true"
        btnGrabListNameUpdate.Visible = "false"
        btnAssemblyNameEditMode.Visible = "true"
        hdnGrabListIDEdit.Value = grdGrabList.SelectedValues("GrabListID")
        eGrabListName.Enabled = "false"
        hdnWhseID3.Value = activeWhse.SelectedValue
        hdnProdID3.Value = "0"
        btnGrabListToInactive.Enabled = "true"
        listGrabListCopy.Enabled = "true"

        'Retrieve the specific row 
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspTakeOffGrabListStockGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@GrabListID", SqlDbType.BigInt).Value = hdnGrabListIDEdit.Value


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            eGrabListName.Text = myReader1("GrabListName").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        SqlDS_grdGrabDetail.SelectParameters("GrabListID").DefaultValue = grdGrabList.SelectedValues("GrabListID")
        grdGrabDetail.DataSourceID = SqlDS_grdGrabDetail.ID
        grdGrabDetail.DataBind()

        btnGLStockSearch.Enabled = "true"
        btnGLStockSearchClear.Enabled = "true"

    End Sub

    Protected Sub btnGrabListToInactive_Click(sender As Object, e As System.EventArgs) Handles btnGrabListToInactive.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffGrabListStockUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@GrabListID", SqlDbType.BigInt).Value = hdnGrabListIDEdit.Value
        updateCMD1.Parameters.Add("@GrabListName", SqlDbType.NVarChar).Value = eGrabListName.Text
        updateCMD1.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Inactive"

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

        eGrabListName.Text = "Select a GrabList at left."

        grdGrabList.DataSourceID = SqlDS_grdGrabList.ID
        grdGrabList.DataBind()

        'grdAssembliesInactive.DataSourceID = SqlDS_grdAssembliesInactive.ID
        'grdAssembliesInactive.DataBind()

        SqlDS_grdGrabDetail.SelectParameters("GrabListID").DefaultValue = 0
        grdGrabDetail.DataSourceID = SqlDS_grdGrabDetail.ID
        SqlDS_grdGrabDetail.DataBind()

        'SqlDS_grdGLRelated.SelectParameters("ProdID").DefaultValue = "0"
        'SqlDS_grdGLRelated.SelectParameters("WhseID").DefaultValue = "0"

        'grdGLRelated.DataSourceID = SqlDS_grdGLRelated.ID
        'grdGLRelated.DataBind()

        eGrabListName.Enabled = "false"

        btnGrabListNameEdit.Visible = "true"
        btnGrabListNameUpdate.Visible = "false"

        eGrabListName.Text = "Select a GrabList at left"

        btnGLStockSearch.Enabled = "false"
        btnGLStockSearchClear.Enabled = "false"
        btnGrabListToInactive.Enabled = "false"

        grdInactiveGrab.DataSourceID = SqlDS_grdInactiveGrab.ID
        grdInactiveGrab.DataBind()


    End Sub



    Protected Sub btnGrabListNameEdit_Click(sender As Object, e As System.EventArgs) Handles btnGrabListNameEdit.Click

        btnGrabListNameEdit.Visible = "false"
        btnGrabListNameUpdate.Visible = "true"
        eGrabListName.Enabled = "true"


    End Sub

    Protected Sub btnGrabListNameUpdate_Click(sender As Object, e As System.EventArgs) Handles btnGrabListNameUpdate.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffGrabListStockUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@GrabListID", SqlDbType.BigInt).Value = hdnGrabListIDEdit.Value
        updateCMD1.Parameters.Add("@GrabListName", SqlDbType.NVarChar).Value = eGrabListName.Text
        updateCMD1.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Active"

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

        grdGrabList.DataSourceID = SqlDS_grdGrabList.ID
        grdGrabList.DataBind()

        eGrabListName.Enabled = "false"

        'btnGrabListNameEdit.Visible = "true"
        'btnGrabListNameUpdate.Visible = "false"

    End Sub


    'Protected Sub listGLAssembliesCopy_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listGLAssembliesCopy.SelectedIndexChanged
    '    Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
    '    Dim DKConnection As New SqlConnection(DKConnectionString)

    '    Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffGrabListStockAssemblyInsert", DKConnection)
    '    insertCMD.CommandType = CommandType.StoredProcedure

    '    insertCMD.Parameters.Add("@GrabListIDTarget", SqlDbType.BigInt).Value = hdnGrabListIDEdit.Value
    '    insertCMD.Parameters.Add("@AssemblyIDToCopy", SqlDbType.BigInt).Value = listGLAssembliesCopy.SelectedValue


    '    Dim inserted As Integer = 0

    '    Try
    '        'Try to open the connection and execute the update
    '        DKConnection.Open()
    '        inserted = insertCMD.ExecuteNonQuery()

    '    Catch err As Exception
    '        ' Handle an error by displaying the information

    '    Finally
    '        'Either way, make sure the connection is properly closed
    '        DKConnection.Close()
    '    End Try


    '    'grdDetail.DataSourceID = SqlDS_grdDetail.ID
    '    'grdDetail.DataBind()


    'End Sub

    Protected Sub grdGLRelated_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdGLRelated.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffGrabListStockInsertDetail", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@GrabListID", SqlDbType.BigInt).Value = hdnGrabListIDEdit.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdGLRelated.SelectedValue


        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()

            'listBoxTakeOffQuicklistRelated2.MasterTableView.Items(0).Selected = "False"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        grdGrabDetail.DataSourceID = SqlDS_grdGrabDetail.ID
        grdGrabDetail.DataBind()



    End Sub

    Protected Sub btnGLRelatedSearch_Click(sender As Object, e As System.EventArgs) Handles btnGLRelatedSearch.Click
        SqlDS_grdGLRelated.SelectParameters("ProdID").DefaultValue = grdGrabDetail.SelectedValues("ProdID").ToString()
        SqlDS_grdGLRelated.SelectParameters("WhseID").DefaultValue = hdnWhseID3.Value.ToString()

        grdGLRelated.DataSourceID = SqlDS_grdGLRelated.ID
        grdGLRelated.DataBind()
    End Sub

    Protected Sub grdGLStockSearch_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdGLStockSearch.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffGrabListStockInsertDetail", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@GrabListID", SqlDbType.BigInt).Value = hdnGrabListIDEdit.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdGLStockSearch.SelectedValue


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

        grdGrabDetail.DataSourceID = SqlDS_grdGrabDetail.ID
        grdGrabDetail.DataBind()


    End Sub

    Protected Sub btnGLStockSearch_Click(sender As Object, e As System.EventArgs) Handles btnGLStockSearch.Click
        SqlDS_grdGLStockSearch.SelectParameters("WhseID").DefaultValue = hdnWhseID3.Value
        SqlDS_grdGLStockSearch.SelectParameters("ProdID").DefaultValue = " " + txtGLProdIDSearch.Text
        SqlDS_grdGLStockSearch.SelectParameters("Description").DefaultValue = " " + txtGLDescSearch.Text


        grdGLStockSearch.DataSourceID = SqlDS_grdGLStockSearch.ID
        grdGLStockSearch.DataBind()
    End Sub

    Protected Sub btnGLStockSearchClear_Click(sender As Object, e As System.EventArgs) Handles btnGLStockSearchClear.Click
        txtGLDescSearch.Text = ""
        txtGLProdIDSearch.Text = ""

        SqlDS_grdGLStockSearch.SelectParameters("ProdID").DefaultValue = ""
        SqlDS_grdGLStockSearch.SelectParameters("Description").DefaultValue = ""

        grdGLStockSearch.DataSourceID = SqlDS_grdGLStockSearch.ID
        grdGLStockSearch.DataBind()

    End Sub

    Protected Sub btnGrabListAdd_Click(sender As Object, e As System.EventArgs) Handles btnGrabListAdd.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffGrabListStockInsert", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@GrabListName", SqlDbType.NVarChar).Value = newGrabList.Text
        updateCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = activeWhse3.SelectedValue.ToString()

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

        grdGrabList.DataSourceID = SqlDS_grdGrabList.ID
        grdGrabList.DataBind()
        newGrabList.Text = ""

    End Sub


    Protected Sub activeWhse4_DataBinding(sender As Object, e As System.EventArgs) Handles activeWhse4.DataBinding

        If IsPostBack = "false" Then
            activeWhse4.SelectedValue = Request.Cookies("Whse1").Value

        End If

    End Sub

    Protected Sub activeWhse4_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles activeWhse4.SelectedIndexChanged
        SqlDS_grdInactiveGrab.SelectParameters("WhseID").DefaultValue = activeWhse4.SelectedValue
        grdInactiveGrab.DataSourceID = SqlDS_grdInactiveGrab.ID
        grdInactiveGrab.DataBind()

    End Sub



    Protected Sub btnGrabListToActive_Click(sender As Object, e As System.EventArgs) Handles btnGrabListToActive.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffGrabListStockUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@GrabListID", SqlDbType.BigInt).Value = grdInactiveGrab.SelectedValues("GrabListID")

        updateCMD1.Parameters.Add("@GrabListName", SqlDbType.NVarChar).Value = lblInactiveGrabListName.Text
        updateCMD1.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Active"

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

        grdInactiveGrab.DataSourceID = SqlDS_grdInactiveGrab.ID
        grdInactiveGrab.DataBind()

        grdGrabList.DataSourceID = SqlDS_grdGrabList.ID
        grdGrabList.DataBind()

        lblInactiveGrabListName.Text = "Select a GrabList at left to activate."
        btnGrabListToActive.Enabled = "false"
    End Sub

    Protected Sub grdInactiveGrab_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdInactiveGrab.SelectedIndexChanged
        hdnInactiveGrabListID.Value = grdInactiveGrab.SelectedValues("GrabListID")

        'Retrieve the specific row 
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspTakeOffGrabListStockGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@GrabListID", SqlDbType.BigInt).Value = grdInactiveGrab.SelectedValues("GrabListID")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            hdnInactiveGrabListID.Value = myReader1("GrabListID")
            lblInactiveGrabListName.Text = myReader1("GrabListName")
            hdnInactiveGrabListName.Value = myReader1("GrabListName").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        btnGrabListToActive.Enabled = "true"

    End Sub

    Protected Sub grdGrabDetail_DeleteCommand(sender As Object, e As Telerik.Web.UI.GridCommandEventArgs) Handles grdGrabDetail.DeleteCommand
        'Dim DeleteGrabListDetailID = DirectCast((DirectCast(e.Item, GridDataItem)).GetDataKeyValue("GrabListDetailID"), Int64)
        'lblTest.Text = grdGrabDetail.SelectedValues("GrabListDetailID")

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffGrabListStockDeleteDetail", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        'updateCMD1.Parameters.Add("@GrabListDetailID", SqlDbType.BigInt).Value = DirectCast((DirectCast(e.Item, GridDataItem)).GetDataKeyValue("GrabListDetailID"), Int64)
        updateCMD1.Parameters.Add("@GrabListDetailID", SqlDbType.BigInt).Value = DirectCast((DirectCast(e.Item, GridDataItem)).GetDataKeyValue("GrabListDetailID"), Int64)

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


        grdGrabDetail.DataSourceID = SqlDS_grdGrabDetail.ID
        grdGrabDetail.DataBind()

    End Sub

    Protected Sub listGrabListCopy_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listGrabListCopy.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffGrabListStockCopy", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@GrabListIDTarget", SqlDbType.BigInt).Value = hdnGrabListIDEdit.Value
        insertCMD.Parameters.Add("@GrabListIDToCopy", SqlDbType.BigInt).Value = listGrabListCopy.SelectedValue


        Dim inserted As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted = insertCMD.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        grdGrabDetail.DataSourceID = SqlDS_grdGrabDetail.ID
        grdGrabDetail.DataBind()


    End Sub
End Class
