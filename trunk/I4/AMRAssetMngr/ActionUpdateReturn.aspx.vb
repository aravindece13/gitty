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

Partial Class AMRAssetMngr_ActionUpdateReturn
    Inherits System.Web.UI.Page

    Protected Sub btnUpdateReturn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateReturn.Click

        'Define ADO>NET objects
        Dim updateSQL As String
        updateSQL = "Update aAsset SET "
        updateSQL &= "status=@status, cursponsor=@cursponsor, curuser=@curuser, outdt=@outdt, duedt=@duedtnew, OrderNo=@orderno "
        updateSQL &= "WHERE id=@id"

        Dim insertSQL As String
        insertSQL = "INSERT INTO aAsset_Hist ("
        insertSQL &= "id, name, outdt, duedt, curuser, cursponsor, status, "
        insertSQL &= "timestmp, updateby, action, note, OrderNo )"
        insertSQL &= "VALUES ("
        insertSQL &= "@id, @name, @outdt, @duedtnew, @curuser, @cursponsor, @status, "
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
        updateCmd.Parameters.AddWithValue("@curuser", curuser.Value)
        updateCmd.Parameters.AddWithValue("@cursponsor", cursponsor.Value)
        updateCmd.Parameters.AddWithValue("@outdt", outdt.Value)
        updateCmd.Parameters.AddWithValue("@duedtnew", duedtnew.SelectedDate)
        updateCmd.Parameters.AddWithValue("@OrderNo", orderno.Value)


        insertCmd.Parameters.AddWithValue("@id", id.Value)
        insertCmd.Parameters.AddWithValue("@name", name.Value)
        insertCmd.Parameters.AddWithValue("@outdt", outdt.Value)
        insertCmd.Parameters.AddWithValue("@duedtnew", duedtnew.SelectedDate)
        insertCmd.Parameters.AddWithValue("@curuser", curuser.Value)
        insertCmd.Parameters.AddWithValue("@cursponsor", cursponsor.Value)
        insertCmd.Parameters.AddWithValue("@status", status.Value)
        insertCmd.Parameters.AddWithValue("@timestmp", timestmp.Value)
        insertCmd.Parameters.AddWithValue("@updateby", updateby.Value)
        insertCmd.Parameters.AddWithValue("@action", action.Value)
        insertCmd.Parameters.AddWithValue("@note", note.Text)
        insertCmd.Parameters.AddWithValue("@OrderNo", orderno.Value)


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
        mail.To.Add("rfenton@danakepner.com")
        mail.CC.Add("ffenton@danakepner.com")

        'set the content
        mail.Subject = "Meter Asset | Return Date Changed"
        mail.Body = "<b>Asset Management Action: </b>" + action.Value
        mail.Body &= "<br /><b>Asset: </b>" + lblDescription.Text + " | " + name.Value + "<br /><b>Updated By: </b>" + updateby.Value + " " + timestmp.Value
        mail.Body &= "<br /><b>Sponsor: </b>" + cursponsor.Value + "<br /><b>User: </b>" + curuser.Value
        mail.Body &= "<br /><b>Out Date: </b>" + outdt.Value + "<br />" + lblduedt.Text
        mail.Body &= "<br /><br /><b>New Due Date: </b>" + duedtnew.SelectedDate
        mail.Body &= "<br /><br /><b>Order Number: </b>" + orderno.Value + "<br /><b>Note: </b>" + note.Text
        mail.IsBodyHtml = "true"

        'send the message
        Dim smtp As New SmtpClient("SRV-Exchange")
        smtp.Send(mail)



    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Dim selectSQL As String
            selectSQL = "SELECT id, name, description, cursponsor, curuser, status, outdt, duedt, orderno,assettag FROM aAsset WHERE id=" & Request.QueryString("ID")

            'Define the ADO.NET Connection Object
            Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
            Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
            Dim Reader As SqlDataReader

            Try
                InsiteConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                lblName.Text = "<b>Asset: </b>" + Reader("assettag").ToString() + " | " + Reader("name")
                lblDescription.Text = "<b>Description: </b>" + Reader("description")
                lblStatus.Text = "<b>Current Status: </b>" + Reader("status")
                lblcursponsor.Text = "<b>Sponsor: </b>" + Reader("cursponsor")
                lblcuruser.Text = "<b>User: </b>" + Reader("curuser")
                lblduedt.Text = "<b>Due Date: </b>" + Reader("duedt")
                lbloutdt.Text = "<b>Out Date: </b>" + Reader("outdt")
                lblorderno.Text = "<b>Order #: </b>" + Reader("orderno")
                lblDueDtNew.Text = "New Due Date: "




                If Reader("status") = "Available" Then
                    lblUpdateEligible.Text = "The asset must be in 'In Use' status in order to update the return date."
                    lblUpdateEligible.Visible = "true"
                    btnUpdateReturn.Visible = "false"
                    lblduedt.Visible = "false"
                    lbloutdt.Visible = "false"
                    note.Visible = "false"
                    duedtnew.Visible = "false"
                    lblorderno.Visible = "false"
                    lblcursponsor.Visible = "false"
                    lblcuruser.Visible = "false"
                    lblDueDtNew.Visible = "false"

                Else

                    lblUpdateEligible.Visible = "false"
                    btnUpdateReturn.Visible = "true"
                End If

                id.Value = Reader("id")
                name.Value = Reader("assettag")
                status.Value = "In Use"
                action.Value = "New RDate"
                cursponsor.Value = Reader("cursponsor")
                curuser.Value = Reader("curuser")
                outdt.Value = Reader("outdt")
                duedtnew.SelectedDate = Reader("duedt")
                orderno.Value = Reader("OrderNo")

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
