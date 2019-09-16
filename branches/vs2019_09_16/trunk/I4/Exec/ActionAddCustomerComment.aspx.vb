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


Partial Class Exec_ActionAddCustomerComment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        PartnerID.Value = Request.QueryString("custid").ToString
        Author.Value = Request.Cookies("FullName").Value
        CommentDate.Value = DateTime.Now()


       
    End Sub

    Protected Sub btnCreate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCreate.Click


        'Define ADO>NET objects
        
        Dim insertSQL As String
        insertSQL = "INSERT INTO Comments ("
        insertSQL &= "Type, PartnerID, DisplayLevel, Comment, Author, CommentDate, Hide )"
        insertSQL &= "VALUES ("
        insertSQL &= "@Type, @PartnerID, @DisplayLevel, @Comment, @Author, @CommentDate, @Hide )"

        'Define the ADO.NET Connection Object
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCmd As New SqlCommand(insertSQL, DKConnection)
        Dim inserted As Integer = 0

        'Add the parameters
        insertCmd.Parameters.AddWithValue("@Type", Type.Value)
        insertCmd.Parameters.AddWithValue("@PartnerID", PartnerID.Value)
        insertCmd.Parameters.AddWithValue("@DisplayLevel", DisplayLevel.SelectedValue)
        insertCmd.Parameters.AddWithValue("@Comment", Comment.Text)
        insertCmd.Parameters.AddWithValue("@Author", Author.Value)
        insertCmd.Parameters.AddWithValue("@CommentDate", CommentDate.Value)
        insertCmd.Parameters.AddWithValue("@Hide", Hide.Value)

        Try
            'Try to open the connection and execute the insert and update
            DKConnection.Open()
            inserted = insertCmd.ExecuteNonQuery()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)


    End Sub





    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Try
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CancelEdit();", True)
        Catch
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try

    End Sub


End Class
