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

Partial Class AMRAssetMngr_ActionUpdateAssetDetails
    Inherits System.Web.UI.Page

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click

        updateby.Value = Request.Cookies("FullName").Value
        timestmp.Value = DateTime.Now()


        'Define ADO>NET objects
        Dim updateSQL As String
        updateSQL = "Update aAsset SET "
        updateSQL &= "type=@type,name=@name,description=@description,serialno=@serialno,assettag=@assettag,notes=@notes "
        updateSQL &= "WHERE id=@id"

        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, InsiteConnection)
        Dim updated As Integer = 0


        'Add the parameters
        updateCmd.Parameters.AddWithValue("@id", ID.Value)
        updateCmd.Parameters.AddWithValue("@type", Type.SelectedValue)
        updateCmd.Parameters.AddWithValue("@name", Name.Text)
        updateCmd.Parameters.AddWithValue("@description", Description.Text)
        updateCmd.Parameters.AddWithValue("@serialno", Serialno.Text)
        updateCmd.Parameters.AddWithValue("@assettag", AssetTag.Text)
        updateCmd.Parameters.AddWithValue("@notes", Notes.Text)

        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()


            updated = updateCmd.ExecuteNonQuery()
        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try


    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Dim selectSQL As String
            selectSQL = "SELECT id,type,name,description,serialno,Notes,assettag FROM aAsset WHERE id=" & Request.QueryString("id")

            'Define the ADO.NET Connection Object
            Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
            Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
            Dim Reader As SqlDataReader

            Try
                InsiteConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                ID.Value = Reader("ID")
                Name.Text = Reader("name")
                Type.SelectedValue = Reader("type")
                Description.Text = Reader("description")
                Serialno.Text = Reader("serialno")
                AssetTag.Text = Reader("assettag")
                Notes.Text = Reader("Notes")

                

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                InsiteConnection.Close()

            End Try

        End If
    End Sub


    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Try
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CancelEdit();", True)
        Catch
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try

    End Sub
End Class
