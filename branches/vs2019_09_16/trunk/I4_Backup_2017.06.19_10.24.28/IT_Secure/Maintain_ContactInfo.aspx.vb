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

Partial Class IT_Secure_Maintain_ContactInfo
    Inherits System.Web.UI.Page

    Protected Sub States_TabClick(ByVal sender As Object, ByVal e As Telerik.Web.UI.RadTabStripEventArgs) Handles States.TabClick

        SqlDS_Employees.SelectParameters("branchno").DefaultValue = e.Tab.Value

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Panel1.Enabled = "False"


    End Sub

    Protected Sub GrdCurrentEmployees_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GrdCurrentEmployees.SelectedIndexChanged

        Panel1.Enabled = "True"
        GrdCurrentEmployees.Enabled = "true"


        If Page.IsPostBack Then

            Dim selectSQL As String
            selectSQL = "SELECT * "
            selectSQL &= "FROM HR_Employees "
            selectSQL &= "WHERE employeeid = " & GrdCurrentEmployees.SelectedValue


            'Define the ADO.NET Connection Object
            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, DKConnection)
            Dim Reader As SqlDataReader

            Try
                DKConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                hdnemployeeid.Value = Reader("employeeid")

                lblEmployeeName.Text = Reader("name_first") + " " + Reader("name_last")
                
                email.Text = Reader("email")
                mobile.Text = Reader("mobile")
                extension.Text = Reader("extension")
                fax.Text = Reader("fax")

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try

        End If

    End Sub

    Protected Sub btnUpdateEmployee_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateEmployee.Click


        'Define ADO>NET objects

        Dim updateSQL As String
        updateSQL = "UPDATE HR_Employees SET "
        updateSQL &= "email=@email,mobile=@mobile,extension=@extension,fax=@fax "
        updateSQL &= "WHERE employeeid = @hdnemployeeid"



        'Define the ADO.NET Connection Object
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, DKConnection)
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd.Parameters.AddWithValue("@hdnemployeeid", hdnemployeeid.Value)
        updateCmd.Parameters.AddWithValue("@email", email.Text)
        updateCmd.Parameters.AddWithValue("@mobile", mobile.Text)
        updateCmd.Parameters.AddWithValue("@extension", extension.Text)
        updateCmd.Parameters.AddWithValue("@fax", fax.Text)
        
        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()
            GrdCurrentEmployees.DataSourceID = SqlDS_Employees.ID
            GrdCurrentEmployees.DataBind()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            email.Text = ""
            fax.Text = ""
            lblEmployeeName.Text = ""
            extension.Text = ""
            mobile.Text = ""

        End Try

    End Sub


End Class
