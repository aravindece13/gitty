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



Partial Class AMRAssetMngr_ActionCheckOut
    Inherits System.Web.UI.Page


    Protected Sub btnCheckOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCheckOut.Click
        'Define ADO>NET objects
        Dim updateSQL As String
        updateSQL = "Update aAsset SET "
        updateSQL &= "status=@status, cursponsor=@cursponsor, curuser=@curuser, outdt=@outdt, duedt=@duedt, OrderNo=@OrderNo "
        updateSQL &= "WHERE id=@id"

        Dim insertSQL As String
        insertSQL = "INSERT INTO aAsset_Hist ("
        insertSQL &= "id, name, outdt, duedt, curuser, cursponsor, status, "
        insertSQL &= "timestmp, updateby, action, note, OrderNo )"
        insertSQL &= "VALUES ("
        insertSQL &= "@id, @name, @outdt, @duedt, @curuser, @cursponsor, @status, "
        insertSQL &= "@timestmp, @updateby, @action, @note, @OrderNo )"

        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, InsiteConnection)
        Dim insertCmd As New SqlCommand(insertSQL, InsiteConnection)
        Dim updated As Integer = 0
        Dim added As Integer = 0

        'Add the parameters
        updateCmd.Parameters.AddWithValue("@id", id.Value)
        updateCmd.Parameters.AddWithValue("@status", status.Value)
        updateCmd.Parameters.AddWithValue("@curuser", curuser.Text)
        updateCmd.Parameters.AddWithValue("@cursponsor", cursponsor.Text)
        updateCmd.Parameters.AddWithValue("@outdt", outdt.SelectedDate)
        updateCmd.Parameters.AddWithValue("@duedt", duedt.SelectedDate)
        updateCmd.Parameters.AddWithValue("@OrderNo", OrderNo.Text)


        insertCmd.Parameters.AddWithValue("@id", id.Value)
        insertCmd.Parameters.AddWithValue("@name", name.Value)
        insertCmd.Parameters.AddWithValue("@outdt", outdt.SelectedDate)
        insertCmd.Parameters.AddWithValue("@duedt", duedt.SelectedDate)
        insertCmd.Parameters.AddWithValue("@curuser", curuser.Text)
        insertCmd.Parameters.AddWithValue("@cursponsor", cursponsor.Text)
        insertCmd.Parameters.AddWithValue("@status", status.Value)
        insertCmd.Parameters.AddWithValue("@timestmp", timestmp.Value)
        insertCmd.Parameters.AddWithValue("@updateby", updateby.Value)
        insertCmd.Parameters.AddWithValue("@action", action.Value)
        insertCmd.Parameters.AddWithValue("@note", note.Text)
        insertCmd.Parameters.AddWithValue("@OrderNo", OrderNO.Text)

        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()
            updated = updateCmd.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information
            
        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
        End Try

        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()
            added = insertCmd.ExecuteNonQuery()



        Catch err As Exception
            ' Handle an error by displaying the information
            
        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try



        'create the mail message
        Dim mail As New MailMessage()

        'set the addresses
        mail.From = New MailAddress("dejohnson@danakepner.com")
        Dim OriginatorEmail As String = Request.Cookies("eMail").Value
        mail.To.Add(New MailAddress(OriginatorEmail))
        mail.CC.Add("jlloyd@danakepner.com")
        mail.CC.Add("ffenton@danakepner.com")
        mail.CC.Add("sanderson@danakepner.com")

        'set the content
        mail.Subject = "Meter Asset | Checked Out"
        mail.Body = "<b>Asset Management Action: </b>" + action.Value
        mail.Body &= "<br /><b>Asset: </b>" + name.Value + " " + lblDescription.Text + "<br /> <b>Checked Out By: </b>" + updateby.Value + " " + timestmp.Value
        mail.Body &= "<br /><b>Sponsor: </b>" + cursponsor.Text + "<br /><b>User: </b>" + curuser.Text
        mail.Body &= "<br /><b>Out Date: </b>" + outdt.SelectedDate + "<br /><b>Due Date: </b>" + duedt.SelectedDate
        mail.Body &= "<br /><b>Order Number: </b>" + OrderNo.Text + "<br /><b>Note: </b>" + note.Text
        mail.IsBodyHtml = "true"

        'send the message
        Dim smtp As New SmtpClient("SRV-Exchange10.danakepner.com")
        smtp.Send(mail)




    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Dim selectSQL As String
            selectSQL = "SELECT id, name, description, status, AssetTag FROM aAsset WHERE id=" & Request.QueryString("id")
            'AssetTag
            'Define the ADO.NET Connection Object
            Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
            Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
            Dim Reader As SqlDataReader

            Try
                InsiteConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                If Reader("status") = "In Use" Then
                    lblCheckOutEligible.Text = "The asset must be in Available status to be checked out."
                    lblCheckOutEligible.Visible = "true"
                    btnCheckOut.Visible = "false"
                    lblDuedt.Visible = "false"
                    lblOutdt.Visible = "false"
                    outdt.Visible = "false"
                    duedt.Visible = "false"
                    cursponsor.Visible = "false"
                    curuser.Visible = "false"
                    note.Visible = "false"
                    OrderNo.Visible = "false"
                Else
                    lblCheckOutEligible.Visible = "false"
                    btnCheckOut.Visible = "true"
                End If


                lblName.Text = "<b>Asset: </b>" + Reader("name") + " | " + Reader("AssetTag").ToString()
                lblDescription.Text = "<b>Description: </b>" + Reader("description")
                lblStatus.Text = "<b>Current Status: </b>" + Reader("status")

                id.Value = Reader("id")
                name.Value = Reader("AssetTag")
                status.Value = "In Use"
                action.Value = "Check Out"
                outdt.SelectedDate = Date.Now()
                duedt.SelectedDate = Date.Now()
                duedt.MinDate = Date.Now()
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
