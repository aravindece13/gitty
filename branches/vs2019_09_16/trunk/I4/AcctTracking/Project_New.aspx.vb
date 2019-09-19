﻿Imports System
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

Partial Class AcctTracking_Project_New
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim CUSTKEY As String = Request.QueryString("CUSTKEY").ToString

        hdnCUSTKEY.Value = Request.QueryString("CUSTKEY").ToString
        CreatedBy.Value = Request.Cookies("FullName").Value
        CreatedDate.Value = DateTime.Now()
        ModifiedBy.Value = Request.Cookies("FullName").Value
        ModifiedDate.Value = DateTime.Now()
        'SaleEst.Value = "1"


        Dim selectSQL As String
        selectSQL = "SELECT CUSTKEY, Custname, Slsrepname "
        selectSQL &= "FROM aAcct_Customers WHERE CUSTKEY=" + CUSTKEY

        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
        Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
        Dim Reader As SqlDataReader



        Try
            InsiteConnection.Open()
            Reader = selectCmd.ExecuteReader()
            Reader.Read()



            lblCustomer.Text = Reader("Custname")


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()

        End Try

    End Sub

    Protected Sub btnCreate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCreate.Click


        'Define ADO>NET objects

        Dim insertSQL As String
        insertSQL = "INSERT INTO aAcct_Customers_Projects ("
        insertSQL &= "CUSTKEY,Status,Product,Desc1,SaleEst,Month,Year, "
        insertSQL &= "CreatedDate,CreatedBy,ModifiedDate,ModifiedBy) "
        insertSQL &= "VALUES ("
        insertSQL &= "@hdnCUSTKEY,@Status,@Product,@Desc1,@SaleEst,@Month,@Year, "
        insertSQL &= "@CreatedDate,@CreatedBy,@ModifiedDate,@ModifiedBy)"

        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim insertCmd As New SqlCommand(insertSQL, InsiteConnection)
        Dim inserted As Integer = 0

        'Add the parameters
        insertCmd.Parameters.AddWithValue("@hdnCUSTKEY", hdnCUSTKEY.Value)
        insertCmd.Parameters.AddWithValue("@Status", Status.Value)
        insertCmd.Parameters.AddWithValue("@Product", Product.SelectedValue)
        insertCmd.Parameters.AddWithValue("@Desc1", Desc1.Text)
        insertCmd.Parameters.AddWithValue("@SaleEst", SaleEst.Text)
        insertCmd.Parameters.AddWithValue("@Month", Month.SelectedValue)
        insertCmd.Parameters.AddWithValue("@Year", Year.SelectedValue)
        insertCmd.Parameters.AddWithValue("@CreatedDate", CreatedDate.Value)
        insertCmd.Parameters.AddWithValue("@CreatedBy", CreatedBy.Value)
        insertCmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate.Value)
        insertCmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy.Value)

        


        

        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()
            inserted = insertCmd.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try




    End Sub


    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Try
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CancelEdit();", True)
        Catch
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try

    End Sub


End Class