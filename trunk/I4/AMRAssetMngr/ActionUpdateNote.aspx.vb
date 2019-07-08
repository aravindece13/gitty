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
Imports System.Data.SqlClient

Partial Class AMRAssetMngr_ActionUpdateNote
    Inherits System.Web.UI.Page

    Protected Sub btnUpdateNote_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateNote.Click
        action.Value = "Updated Note"
        updateby.Value = Request.Cookies("FullName").Value
        timestmp.Value = DateTime.Now()




        'Define ADO>NET objects
        Dim updateSQL As String
        updateSQL = "Update aAsset SET "
        updateSQL &= "notes=@notes "
        updateSQL &= "WHERE id=@id"

        Dim insertSQL As String
        insertSQL = "INSERT INTO aAsset_Hist ("
        insertSQL &= "id, name, "
        insertSQL &= "timestmp, updateby, action)"
        insertSQL &= "VALUES ("
        insertSQL &= "@id, @name, "
        insertSQL &= "@timestmp, @updateby, @action )"

        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, InsiteConnection)
        Dim insertCmd As New SqlCommand(insertSQL, InsiteConnection)
        Dim updated As Integer = 0
        Dim added As Integer = 0

        'Add the parameters
        updateCmd.Parameters.AddWithValue("@id", id.Value)
        updateCmd.Parameters.AddWithValue("@notes", notes.Text)

        insertCmd.Parameters.AddWithValue("@id", id.Value)
        insertCmd.Parameters.AddWithValue("@name", name.Value)

        insertCmd.Parameters.AddWithValue("@timestmp", timestmp.Value)
        insertCmd.Parameters.AddWithValue("@updateby", updateby.Value)
        insertCmd.Parameters.AddWithValue("@action", action.Value)

        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()

            added = insertCmd.ExecuteNonQuery()
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
            selectSQL = "SELECT id, name, description, status, notes FROM aAsset WHERE id=" & Request.QueryString("id")

            'Define the ADO.NET Connection Object
            Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
            Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
            Dim Reader As SqlDataReader

            Try
                InsiteConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()


                lblName.Text = "<b>Asset Name: </b>" + Reader("name")
                lblDescription.Text = "<b>Description: </b>" + Reader("description")
                lblStatus.Text = "<b>Status: </b>" + Reader("status")
                lblNotes.Text = "<b>Current Note: </b>" + Reader("notes")
                

                id.Value = Reader("id")
                name.Value = Reader("name")
                notes.Text = Reader("notes")
                action.Value = "Status Change"
                updateby.Value = Request.Cookies("FullName").Value
                timestmp.Value = DateTime.Now()

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
