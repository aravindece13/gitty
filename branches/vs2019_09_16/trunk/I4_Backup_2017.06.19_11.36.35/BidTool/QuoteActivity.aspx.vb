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


Partial Class BidTool_QuoteActivity
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        lblCurrentDateTime.Text = "Current Date &amp; Time (MST): " + Now.ToString("dddd  MMMM dd yyyy hh:mm:ss tt")

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)
        Dim selectCMD1 As SqlCommand = New SqlCommand("uspQuoteGetDetails", DKConnection1)


        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = Request.QueryString("QuoteID").ToString()


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD1.ExecuteReader()
            myReader.Read()


            lblProjectName.Text = myReader("ProjectName").ToString() + " | " + myReader("ProjectSubTitle").ToString()
            lblCreation.Text = "<b>Created By:</b> " + myReader("CreatedBy").ToString() + " at " + myReader("Created").ToString()
            lbQuoteName.Text = myReader("CustName").ToString() + " | " + myReader("QuoteName").ToString()

            myReader.Close()


        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

    End Sub
End Class
