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


Partial Class Controls_form_Projects_Menu
    Inherits System.Web.UI.UserControl


    Protected Sub btnAddContractorToMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddContractorToMenu.Click
        'Define ADO>NET objects

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusInsert", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "Contractor"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = aContractor.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = aContractorState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = aContractorState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = "Active"
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = aContractorSeq.SelectedValue
        menuCMD.Parameters.Add("@AddedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date
        menuCMD.Parameters.Add("@Added", SqlDbType.DateTime).Value = Now().Date

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdContractorList.DataSourceID = SqlDS_ContractorMenu.ID
            grdContractorList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            aContractor.Text = ""


        End Try

    End Sub
    Protected Sub grdContractorList_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdContractorList.SelectedIndexChanged

        pnlContractorUpdate.Enabled = "True"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusGetSpecific", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdContractorList.SelectedValues("Menu_ID").ToString()


        Try
            DKConnection.Open()

            Dim result As Integer = menuCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = menuCMD.ExecuteReader()
            myReader.Read()

            uContractor.Text = myReader("Label")
            uContractorState.SelectedValue = myReader("Value1")
            uContractorSeq.SelectedValue = myReader("Seq")
            uContractorStatus.SelectedValue = myReader("TypeStatus")
            uContractorModifiedBy.Value = Request.Cookies("FullName").Value
            uContractorModifiedDate.Value = Now.Date()

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try

    End Sub
    Protected Sub btnContractorMenuUpdate_Click(sender As Object, e As System.EventArgs) Handles btnContractorMenuUpdate.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusUpdate", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdContractorList.SelectedValues("Menu_ID").ToString()
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "Contractor"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = uContractor.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = uContractorState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = uContractorState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = uContractorStatus.SelectedValue
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = uContractorSeq.SelectedValue
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = uContractorModifiedBy.Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdContractorList.DataSourceID = SqlDS_ContractorMenu.ID
            grdContractorList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            uContractor.Text = ""
            pnlContractorUpdate.Enabled = "false"
        End Try

    End Sub

    Protected Sub btnAddDistributorToMenu_Click(sender As Object, e As System.EventArgs) Handles btnAddDistributorToMenu.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusInsert", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "Distributor"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = aDistributor.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = aDistributorState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = aDistributorState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = "Active"
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = aDistributorSeq.SelectedValue
        menuCMD.Parameters.Add("@AddedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date
        menuCMD.Parameters.Add("@Added", SqlDbType.DateTime).Value = Now().Date

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdDistributorList.DataSourceID = SqlDS_DistributorMenu.ID
            grdDistributorList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            aDistributor.Text = ""


        End Try
    End Sub
    Protected Sub grdDistributorList_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdDistributorList.SelectedIndexChanged
        pnlDistributorUpdate.Enabled = "True"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusGetSpecific", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdDistributorList.SelectedValues("Menu_ID").ToString()


        Try
            DKConnection.Open()

            Dim result As Integer = menuCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = menuCMD.ExecuteReader()
            myReader.Read()

            uDistributor.Text = myReader("Label")
            uDistributorState.SelectedValue = myReader("Value1")
            uDistributorSeq.SelectedValue = myReader("Seq")
            uDistributorStatus.SelectedValue = myReader("TypeStatus")
            uDistributorModifiedBy.Value = Request.Cookies("FullName").Value
            uDistributorModifiedDate.Value = Now.Date()

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try
    End Sub
    Protected Sub btnDistributorMenuUpdate_Click(sender As Object, e As System.EventArgs) Handles btnDistributorMenuUpdate.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusUpdate", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdDistributorList.SelectedValues("Menu_ID").ToString()
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "Distributor"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = uDistributor.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = uDistributorState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = uDistributorState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = uDistributorStatus.SelectedValue
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = uDistributorSeq.SelectedValue
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = uDistributorModifiedBy.Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdDistributorList.DataSourceID = SqlDS_DistributorMenu.ID
            grdDistributorList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            uDistributor.Text = ""
            pnlDistributorUpdate.Enabled = "false"
        End Try
    End Sub




    Protected Sub btnAddEstimatorToMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddEstimatorToMenu.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusInsert", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "Estimator"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = aEstimator.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = aEstimatorState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = aEstimatorState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = "Active"
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = aEstimatorSeq.SelectedValue
        menuCMD.Parameters.Add("@AddedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date
        menuCMD.Parameters.Add("@Added", SqlDbType.DateTime).Value = Now().Date

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdEstimatorList.DataSourceID = SqlDS_EstimatorMenu.ID
            grdEstimatorList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            aEstimator.Text = ""


        End Try
    End Sub
    Protected Sub btnEstimatorMenuUpdate_Click(sender As Object, e As System.EventArgs) Handles btnEstimatorMenuUpdate.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusUpdate", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdEstimatorList.SelectedValues("Menu_ID").ToString()
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "Estimator"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = uEstimator.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = uEstimatorState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = uEstimatorState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = uEstimatorStatus.SelectedValue
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = uEstimatorSeq.SelectedValue
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = uEstimatorModifiedBy.Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdEstimatorList.DataSourceID = SqlDS_EstimatorMenu.ID
            grdEstimatorList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            uEstimator.Text = ""
            pnlEstimatorUpdate.Enabled = "false"
        End Try
    End Sub
    Protected Sub grdEstimatorList_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdEstimatorList.SelectedIndexChanged
        pnlEstimatorUpdate.Enabled = "True"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusGetSpecific", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdEstimatorList.SelectedValues("Menu_ID").ToString()


        Try
            DKConnection.Open()

            Dim result As Integer = menuCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = menuCMD.ExecuteReader()
            myReader.Read()

            uEstimator.Text = myReader("Label")
            uEstimatorState.SelectedValue = myReader("Value1")
            uEstimatorSeq.SelectedValue = myReader("Seq")
            uEstimatorStatus.SelectedValue = myReader("TypeStatus")
            uEstimatorModifiedBy.Value = Request.Cookies("FullName").Value
            uEstimatorModified.Value = Now.Date()

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try
    End Sub

    Protected Sub btnAddFlagToMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddFlagToMenu.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusInsert", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "Flag"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = aFlag.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = aFlagState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = aFlagState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = "Active"
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = aFlagSeq.SelectedValue
        menuCMD.Parameters.Add("@AddedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date
        menuCMD.Parameters.Add("@Added", SqlDbType.DateTime).Value = Now().Date

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdFlagList.DataSourceID = SqlDS_FlagMenu.ID
            grdFlagList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            aFlag.Text = ""


        End Try
    End Sub
    Protected Sub btnFlagMenuUpdate_Click(sender As Object, e As System.EventArgs) Handles btnFlagMenuUpdate.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusUpdate", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdFlagList.SelectedValues("Menu_ID").ToString()
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "Flag"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = uFlag.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = uFlagState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = uFlagState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = uFlagStatus.SelectedValue
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = uFlagSeq.SelectedValue
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = uFlagModifiedBy.Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdFlagList.DataSourceID = SqlDS_FlagMenu.ID
            grdFlagList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            uFlag.Text = ""
            pnlFlagUpdate.Enabled = "false"
        End Try
    End Sub
    Protected Sub grdFlagList_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdFlagList.SelectedIndexChanged
        pnlFlagUpdate.Enabled = "True"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusGetSpecific", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdFlagList.SelectedValues("Menu_ID").ToString()


        Try
            DKConnection.Open()

            Dim result As Integer = menuCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = menuCMD.ExecuteReader()
            myReader.Read()

            uFlag.Text = myReader("Label")
            uFlagState.SelectedValue = myReader("Value1")
            uFlagSeq.SelectedValue = myReader("Seq")
            uFlagStatus.SelectedValue = myReader("TypeStatus")
            uFlagModifiedBy.Value = Request.Cookies("FullName").Value
            uFlagModified.Value = Now.Date()

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try
    End Sub

    Protected Sub btnAddSalesPersonToMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddSalesPersonToMenu.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusInsert", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "SalesPerson"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = aSalesPerson.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = aSalesPersonState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = aSalesPersonState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = "Active"
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = aSalesPersonSeq.SelectedValue
        menuCMD.Parameters.Add("@AddedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date
        menuCMD.Parameters.Add("@Added", SqlDbType.DateTime).Value = Now().Date


        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdSalesPersonList.DataSourceID = SqlDS_SalesPersonMenu.ID
            grdSalesPersonList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            aSalesPerson.Text = ""


        End Try
    End Sub
    Protected Sub btnSalesPersonMenuUpdate_Click(sender As Object, e As System.EventArgs) Handles btnSalesPersonMenuUpdate.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusUpdate", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdSalesPersonList.SelectedValues("Menu_ID").ToString()
        menuCMD.Parameters.Add("@Type", SqlDbType.NVarChar).Value = "SalesPerson"
        menuCMD.Parameters.Add("@Label", SqlDbType.NVarChar).Value = uSalesPerson.Text
        menuCMD.Parameters.Add("@Value1", SqlDbType.NVarChar).Value = uSalesPersonState.SelectedValue
        menuCMD.Parameters.Add("@Value2", SqlDbType.NVarChar).Value = uSalesPersonState.SelectedValue
        menuCMD.Parameters.Add("@TypeStatus", SqlDbType.NVarChar).Value = uSalesPersonStatus.SelectedValue
        menuCMD.Parameters.Add("@Seq", SqlDbType.Int).Value = uSalesPersonSeq.SelectedValue
        menuCMD.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = uSalesPersonModifiedBy.Value
        menuCMD.Parameters.Add("@Modified", SqlDbType.DateTime).Value = Now().Date

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdSalesPersonList.DataSourceID = SqlDS_SalesPersonMenu.ID
            grdSalesPersonList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            uSalesPerson.Text = ""
            pnlSalesPersonUpdate.Enabled = "false"
        End Try
    End Sub
    Protected Sub grdSalesPersonList_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdSalesPersonList.SelectedIndexChanged
        pnlSalesPersonUpdate.Enabled = "True"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectMenusGetSpecific", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@Menu_ID", SqlDbType.Int).Value = grdSalesPersonList.SelectedValues("Menu_ID").ToString()


        Try
            DKConnection.Open()

            Dim result As Integer = menuCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = menuCMD.ExecuteReader()
            myReader.Read()

            uSalesPerson.Text = myReader("Label")
            uSalesPersonState.SelectedValue = myReader("Value1")
            uSalesPersonSeq.SelectedValue = myReader("Seq")
            uSalesPersonStatus.SelectedValue = myReader("TypeStatus")
            uSalesPersonModifiedBy.Value = Request.Cookies("FullName").Value
            uSalesPersonModified.Value = Now.Date()

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try
    End Sub


End Class
