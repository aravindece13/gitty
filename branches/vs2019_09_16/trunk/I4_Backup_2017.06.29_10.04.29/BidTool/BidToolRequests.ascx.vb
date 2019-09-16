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

Partial Class BidTool_BidToolRequests
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        lnkInforContractPricing.Enabled = "False"

        btnUpdateStatus.Enabled = "False"

        lblCustName.Text = ""
        lblProject.Text = ""
        lblQuoteName.Text = ""
        lblService.Text = ""
        newStatus.Enabled = "false"
        hdnCompletedBy.Value = Request.Cookies("FullName").Value
    End Sub



    Protected Sub grdserviceSearch_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdserviceSearch.SelectedIndexChanged
        lnkInforContractPricing.Enabled = "True"
        newStatus.Enabled = "true"

        btnUpdateStatus.Enabled = "True"

        lnkInforContractPricing.NavigateUrl = "~/Reports2/Quote_SXe_Contracts_Excel.aspx?QuoteID=" + grdserviceSearch.SelectedValues("QuoteID").ToString()



        'Retrieve the specific row in Project_Pricing
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspQuoteServiceListingSpecificQuote2", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@QuoteServiceID", SqlDbType.BigInt).Value = grdserviceSearch.SelectedValues("QuoteServiceID")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblCustName.Text = myReader1("CustName").ToString()
            lblProject.Text = myReader1("ProjectName").ToString() + " | " + myReader1("ProjectSubTitle").ToString()
            lblQuoteName.Text = myReader1("QuoteName").ToString()
            hdnCompletedBy.Value = Request.Cookies("FullName").Value
            hdnQuoteServiceID.Value = myReader1("QuoteServiceID")
            lblService.Text = myReader1("Service").ToString()
            newStatus.SelectedValue = myReader1("Status").ToString()
            hdnShipToID.Value = myReader1("ShipToID")
            hdnRequestedEmail.Value = myReader1("RequestedEmail")
            hdnCustName.Value = myReader1("CustName")
            hdnProjectName.Value = myReader1("ProjectName")
            hdnQuoteName.Value = myReader1("QuoteName")


            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try



    End Sub

    Protected Sub btnUpdateStatus_Click(sender As Object, e As System.EventArgs) Handles btnUpdateStatus.Click

        Dim UpdateSQL As String
        UpdateSQL = "UPDATE Quote_Service "
        UpdateSQL &= "SET Status = " + "'" + newStatus.SelectedValue.ToString() + "'"
        UpdateSQL &= ", Completed = " + "'" + Now().ToString() + "'"
        UpdateSQL &= ", CompletedBy = " + "'" + hdnCompletedBy.Value.ToString() + "'"
        UpdateSQL &= " WHERE QuoteServiceID = " + hdnQuoteServiceID.Value.ToString()


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim UpdateCMD1 As New SqlCommand(UpdateSQL, DKConnection)

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = UpdateCMD1.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try



        'Send email notification
        ' Instantiate a new instance of MailMessage
        Dim mMailMessage As New MailMessage()

        ' Set the sender address of the mail message
        mMailMessage.From = New MailAddress("devadmin@danakepner.com")
        ' Set the recepient address of the mail message
       
        mMailMessage.To.Add(hdnRequestedEmail.Value.ToString())
        mMailMessage.CC.Add(Request.Cookies("eMail").Value.ToString())


        ' Set the subject of the mail message
        mMailMessage.Subject = "Updated Contract Pricing Request Status | " + hdnCustName.Value.ToString() + " | " + hdnProjectName.Value.ToString()
        ' Set the body of the mail message

        mMailMessage.Body = "Customer: " + hdnCustName.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />Project: " + hdnProjectName.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />Quote: " + hdnQuoteName.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />ShipTo ID: " + hdnShipToID.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />Request Status: " + newStatus.SelectedValue.ToString()
        mMailMessage.Body &= "<Br /><Br />Completed By: " + hdnCompletedBy.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />Status Updated: " + Now().ToString() + "<Br /><Br />"

        ' Set the format of the mail message body as HTML
        mMailMessage.IsBodyHtml = True
        ' Set the priority of the mail message to normal
        mMailMessage.Priority = MailPriority.Normal

        ' Instantiate a new instance of SmtpClient
        Dim mSmtpClient As New SmtpClient()
        ' Send the mail message
        mSmtpClient.Send(mMailMessage)








        grdserviceSearch.DataSourceID = SqlDS_serviceSearch.ID
        grdserviceSearch.DataBind()

        lnkInforContractPricing.Enabled = "False"

        btnUpdateStatus.Enabled = "False"

        lblCustName.Text = ""
        lblProject.Text = ""
        lblQuoteName.Text = ""
        lblService.Text = ""
        newStatus.Enabled = "false"

    End Sub


End Class
