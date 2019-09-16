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

Partial Class Projects_ProjectAddCustomers
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Dim selectSQL As String
        selectSQL = "SELECT * FROM aProject WHERE JobID = " & Request("JobID").ToString

        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
        Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
        Dim Reader As SqlDataReader

        Try
            InsiteConnection.Open()
            Reader = selectCmd.ExecuteReader()
            Reader.Read()

            Page.Title = Reader("ProjectName") + " | Associate Customers"



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()

        End Try


    End Sub


End Class
