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

Partial Class AMRAssetMngr_ActionCreateAsset
    Inherits System.Web.UI.Page

    Protected Sub btnCreate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCreate.Click


    'Define ADO>NET objects
        Dim insertSQL As String
        'insertSQL = "INSERT INTO aAsset ( "
        'insertSQL &= "assetclass, type, status, name, description, serialno, notes, createdby, created, assettag )"
        'insertSQL &= "VALUES ("
        'insertSQL &= "@assetclass, @type, @status, @name, @description, @serialno, @notes, @Updateby, @timestmp, @assettag )"

        insertSQL = "INSERT INTO aAsset ( "
        insertSQL &= "assetclass, type, status, name, description, serialno, notes, createdby, created, assettag )"
        insertSQL &= "VALUES ("
        insertSQL &= "@assetclass, @type, @status, @name, @description, @serialno, @notes, @updateby, @timestmp,  @assettag )"


    'Define the ADO.NET Connection Object
    Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
    Dim InsiteConnection As New SqlConnection(InsiteConnectionString)


    Dim insertCmd As New SqlCommand(insertSQL, InsiteConnection)
    Dim added As Integer = 0

    'Add the parameters
        insertCmd.Parameters.AddWithValue("@assetclass", Assetclass.Value)
        insertCmd.Parameters.AddWithValue("@type", Type.SelectedValue)
        insertCmd.Parameters.AddWithValue("@status", Status.Value)
        insertCmd.Parameters.AddWithValue("@name", Name.Text)
        insertCmd.Parameters.AddWithValue("@description", Description.Text)
        insertCmd.Parameters.AddWithValue("@serialno", Serialno.Text)
        insertCmd.Parameters.AddWithValue("@assettag", AssetTag.Value)
        insertCmd.Parameters.AddWithValue("@timestmp", timestmp.Value)
        insertCmd.Parameters.AddWithValue("@updateby", updateby.Value)
        insertCmd.Parameters.AddWithValue("@notes", Notes.Text)

        'Dim insertCmd2 As New SqlCommand(insertSQL, InsiteConnection)
        'Dim added2 As Integer = 0


        Try
            'Try to open the connection and execute the insert
            InsiteConnection.Open()
            added = insertCmd.ExecuteNonQuery()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        updateby.Value = Request.Cookies("FullName").Value
        timestmp.Value = DateTime.Now()
    End Sub
End Class
