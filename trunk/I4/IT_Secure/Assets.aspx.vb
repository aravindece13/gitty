Imports System
Imports System.Data
'Imports System.Data.Sql
Imports System.Data.SqlClient
'Imports System.Data.OleDb
'Imports System.Collections
'Imports System.Resources
'Imports System.ComponentModel
Imports System.Drawing
'Imports System.Web.SessionState
'Imports System.Web.UI.WebControls
'Imports System.Web.UI.HtmlControls
Imports Telerik.Web.UI
'Imports Telerik.Web
'Imports System.IO
'Imports System.Configuration
'Imports System.Web.Security
'Imports System.Web.UI.WebControls.WebParts
Imports System.Web.Configuration
Imports System.Net.Mail





Partial Class IT_Secure_Assets
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If IsPostBack = "false" Then
            lblAssetEdit.Text = "Select an Asset at left to edit."


            'btnUpdateAsset.Enabled = "false"
            pnlAssetUpdate.Enabled = "false"
            hdnCreatedBy.Value = Request.Cookies("UserName").Value.ToString()
        End If


    End Sub


    Protected Sub btnAssetSearch_Click(sender As Object, e As System.EventArgs) Handles btnAssetSearch.Click

        If sAssetTag.Text = "" Then
            SqlDS_grdAssets.SelectParameters("Tag").DefaultValue = "%"
        Else
            SqlDS_grdAssets.SelectParameters("Tag").DefaultValue = sAssetTag.Text
        End If

        If sSponsor.Text = "" Then
            SqlDS_grdAssets.SelectParameters("Sponsor").DefaultValue = "%"
        Else
            SqlDS_grdAssets.SelectParameters("Sponsor").DefaultValue = sSponsor.Text
        End If

        If sOrderNo.Text = "" Then
            SqlDS_grdAssets.SelectParameters("OrderNo").DefaultValue = "%"
        Else
            SqlDS_grdAssets.SelectParameters("OrderNo").DefaultValue = sOrderNo.Text
        End If

        grdAssets.DataSourceID = SqlDS_grdAssets.ID
        grdAssets.DataBind()


    End Sub

    Protected Sub stripAssetType_TabClick(sender As Object, e As Telerik.Web.UI.RadTabStripEventArgs) Handles stripAssetType.TabClick

        SqlDS_grdAssets.SelectParameters("Type").DefaultValue = stripAssetType.SelectedTab.Value

        grdAssets.DataSourceID = SqlDS_grdAssets.ID
        grdAssets.DataBind()


    End Sub

    Protected Sub sAssetStatus_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles sAssetStatus.SelectedIndexChanged
        SqlDS_grdAssets.SelectParameters("Status").DefaultValue = sAssetStatus.SelectedValue.ToString()

        SqlDS_grdAssets.SelectParameters("OrderNo").DefaultValue = "%" + sOrderNo.Text.ToString() + "%"
        SqlDS_grdAssets.SelectParameters("Sponsor").DefaultValue = "%" + sSponsor.Text.ToString() + "%"
        SqlDS_grdAssets.SelectParameters("Tag").DefaultValue = "%" + sAssetTag.Text.ToString() + "%"
        SqlDS_grdAssets.SelectParameters("Type").DefaultValue = stripAssetType.SelectedTab.Value.ToString()


        grdAssets.DataSourceID = SqlDS_grdAssets.ID
        grdAssets.DataBind()
    End Sub


    Protected Sub grdAssets_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdAssets.SelectedIndexChanged
        uAction.SelectedIndex = 0


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspAssetGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@ID", SqlDbType.BigInt).Value = grdAssets.SelectedValues("ID")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblAssetEdit.Text = "Asset: " + myReader1("Tag").ToString() + " | " + Left(myReader1("Description"), 20)
            uDescription.Text = myReader1("Description").ToString()
            uType.SelectedValue = myReader1("Type").ToString()
            uSerialNo.Text = myReader1("Serialno").ToString()
            uStatus.Value = myReader1("Status").ToString()
            uTag.Text = myReader1("Tag").ToString()
            uNotes.Text = myReader1("Notes").ToString()
            uCurSponsor.Text = myReader1("Cursponsor").ToString()
            uCurUser.Text = myReader1("curuser").ToString()
            uOrderNo.Text = myReader1("orderno").ToString()
            uBranch.SelectedValue = myReader1("branch").ToString()

            If myReader1("outdt") = "01/01/1950" Then
                uOutDdt.Clear()
            Else
                uOutDdt.SelectedDate = myReader1("duedt").ToString()
            End If

            If myReader1("duedt") = "01/01/1950" Then
                uDueDt.Clear()
            Else
                uDueDt.SelectedDate = myReader1("duedt").ToString()
            End If

            lblAssetCreated.Text = "Created: " + myReader1("CreatedBy").ToString() + " - " + myReader1("Created").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        pnlAssetUpdate.Enabled = "true"


        uCurSponsor.Enabled = "false"
        uCurUser.Enabled = "false"
        uOrderNo.Enabled = "false"
        uTag.Enabled = "false"
        uType.Enabled = "false"
        uSerialNo.Enabled = "false"
        uDescription.Enabled = "false"
        uNotes.Enabled = "false"
        uOutDdt.Enabled = "false"
        uDueDt.Enabled = "false"
        uBranch.Enabled = "false"

    End Sub



    Protected Sub btnUpdateAsset_Click(sender As Object, e As System.EventArgs) Handles btnUpdateAsset.Click

        Dim emailCurUser As String = uCurUser.Text.ToString()
        Dim emailCurSponsor As String = uCurSponsor.Text.ToString()
        Dim emailAction As String = uAction.Text.ToString()
        Dim emailDescription As String = uDescription.Text.ToString()
        Dim emailTag As String = uTag.Text.ToString()
        Dim emailNotes As String = uNotes.Text.ToString()

        Dim emailOutdt As String
        If uOutDdt.SelectedDate Is Nothing Then
            emailOutdt = ""
        Else
            emailOutdt = uOutDdt.SelectedDate.Value.ToShortDateString()
        End If


        Dim emailOrderNo As String = uOrderNo.Text.ToString()
        Dim emailType As String = uType.Text.ToString()


        If uDueDt.SelectedDate Is Nothing Then
            uDueDt.SelectedDate = "01/01/1950"
        End If
        If uOutDdt.SelectedDate Is Nothing Then
            uOutDdt.SelectedDate = "01/01/1950"
        End If

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspAssetAssetUpdate", DKConnection1)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@ID", SqlDbType.BigInt).Value = grdAssets.SelectedValues("ID")
        updateCMD1.Parameters.Add("@Action", SqlDbType.NVarChar).Value = uAction.SelectedValue.ToString()
        updateCMD1.Parameters.Add("@Status", SqlDbType.NVarChar).Value = uStatus.Value.ToString()
        updateCMD1.Parameters.Add("@type", SqlDbType.NVarChar).Value = uType.SelectedValue.ToString()
        updateCMD1.Parameters.Add("@branch", SqlDbType.NVarChar).Value = uBranch.SelectedValue.ToString()
        updateCMD1.Parameters.Add("@Description", SqlDbType.NVarChar).Value = uDescription.Text
        updateCMD1.Parameters.Add("@serialno", SqlDbType.NVarChar).Value = uSerialNo.Text
        updateCMD1.Parameters.Add("@cursponsor", SqlDbType.NVarChar).Value = uCurSponsor.Text
        updateCMD1.Parameters.Add("@curuser", SqlDbType.NVarChar).Value = uCurUser.Text
        updateCMD1.Parameters.Add("@notes", SqlDbType.NVarChar).Value = uNotes.Text
        updateCMD1.Parameters.Add("@Outdt", SqlDbType.Date).Value = uOutDdt.SelectedDate.Value
        updateCMD1.Parameters.Add("@Duedt", SqlDbType.Date).Value = uDueDt.SelectedDate.Value
        updateCMD1.Parameters.Add("@OrderNo", SqlDbType.NVarChar).Value = uOrderNo.Text
        updateCMD1.Parameters.Add("@Tag", SqlDbType.NVarChar).Value = uTag.Text

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection1.Open()
            updated = updateCMD1.ExecuteNonQuery()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try



        grdAssets.DataSourceID = SqlDS_grdAssets.ID
        grdAssets.DataBind()

        pnlAssetUpdate.Enabled = "false"



        lblAssetEdit.Text = "Select an asset at left to edit"
        uDescription.Text = ""
        uType.SelectedValue = ""
        uSerialNo.Text = ""
        uStatus.Value = ""
        uTag.Text = ""
        uNotes.Text = ""
        uCurSponsor.Text = ""
        uCurUser.Text = ""
        uOrderNo.Text = ""
        uOutDdt.Clear()
        uDueDt.Clear()

        lblAssetCreated.Text = ""

        If uAction.SelectedValue.ToString() = "Return" Or uAction.SelectedValue.ToString() = "Loan" Then

            ' Instantiate a new instance of MailMessage
            Dim mMailMessage As New MailMessage()

            ' Set the sender address of the mail message
            mMailMessage.From = New MailAddress("devadmin@danakepner.com")
            ' Set the recepient address of the mail message
            'mMailMessage.To.Add(New MailAddress("smitchell@danakepner.com"))
            mMailMessage.To.Add("smitchell@danakepner.com,dejohnson@danakepner.com,jlloyd@danakepner.com")

            ' Check if the bcc value is nothing or an empty string
            'If Not bcc Is Nothing And bcc <> String.Empty Then
            '    ' Set the Bcc address of the mail message
            '    mMailMessage.Bcc.Add(New MailAddress(bcc))
            'End If

            ' Check if the cc value is nothing or an empty value
            'If Not cc Is Nothing And cc <> String.Empty Then
            '    ' Set the CC address of the mail message
            '    mMailMessage.CC.Add(New MailAddress(cc))
            'End If

            ' Set the subject of the mail message
            mMailMessage.Subject = "Meter Asset " + emailAction.ToString()
            ' Set the body of the mail message

            mMailMessage.Body = "Order: " + emailOrderNo.ToString()
            mMailMessage.Body &= "<Br /><Br />Shipped: " + emailOutdt.ToString()
            mMailMessage.Body &= "<Br /><Br />Customer: " + emailCurUser.ToString()
            mMailMessage.Body &= "<Br /><Br />Sales Person: " + emailCurSponsor.ToString()
            mMailMessage.Body &= "<Br /><Br />Tag: " + emailTag.ToString()
            mMailMessage.Body &= "<Br /><Br />Asset Description: " + emailType.ToString() + " - " + emailDescription.ToString()
            mMailMessage.Body &= "<Br /><Br />Asset Notes: " + emailType.ToString() + " - " + emailNotes.ToString()



            ' Set the format of the mail message body as HTML
            mMailMessage.IsBodyHtml = True
            ' Set the priority of the mail message to normal
            mMailMessage.Priority = MailPriority.Normal

            ' Instantiate a new instance of SmtpClient
            Dim mSmtpClient As New SmtpClient()
            ' Send the mail message
            mSmtpClient.Send(mMailMessage)

        End If


    End Sub



    Protected Sub uType_DataBound(sender As Object, e As System.EventArgs) Handles uType.DataBound
        uType.Items.Remove(0)
    End Sub


    Protected Sub uAction_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles uAction.SelectedIndexChanged

        If uAction.SelectedValue.ToString() = "Return" Then

            uOutDdt.Visible = "false"
            lbluoutdt.Visible = "false"

            lbluduedt.Visible = "false"
            uDueDt.Visible = "false"

            uStatus.Value = "Available"
            uCurSponsor.Enabled = "false"
            uCurUser.Enabled = "false"
            uOrderNo.Enabled = "false"
            uTag.Enabled = "false"
            uType.Enabled = "false"
            uSerialNo.Enabled = "false"
            uDescription.Enabled = "false"
            uNotes.Enabled = "true"
            uBranch.Enabled = "false"

            uBranch.Visible = "false"

        End If

        If uAction.SelectedValue.ToString() = "Loan" Then

            uOutDdt.MinDate = DateAdd(DateInterval.Day, -21, Now())
            uOutDdt.Visible = "true"
            uDueDt.Visible = "true"
            lbluduedt.Text = "Due:"

            uStatus.Value = "In Use"
            uCurSponsor.Enabled = "true"
            uCurUser.Enabled = "true"
            uCurSponsor.Visible = "true"
            uCurUser.Visible = "true"
            uOrderNo.Enabled = "true"
            uOutDdt.Enabled = "true"
            uOutDdt.SelectedDate = Now()
            uDueDt.SelectedDate = DateAdd(DateInterval.Day, 21, Now())
            uDueDt.Enabled = "true"
            uBranch.Enabled = "false"

            lbluduedt.Visible = "true"
            lbluoutdt.Visible = "true"

            uTag.Enabled = "false"
            uType.Enabled = "false"
            uSerialNo.Enabled = "false"
            uDescription.Enabled = "false"
            uNotes.Enabled = "true"

            uBranch.Visible = "false"
        End If

        If uAction.SelectedValue = "InfoUpdate" Then

            uCurSponsor.Enabled = "true"
            uCurUser.Enabled = "true"
            uOrderNo.Enabled = "true"
            uOutDdt.Enabled = "true"
            uOutDdt.Visible = "true"
            uDueDt.Visible = "true"
            lbluduedt.Text = "Due:"
            lbluoutdt.Text = "Out:"
            lbluduedt.Visible = "true"
            lbluoutdt.Visible = "true"

            uDueDt.Enabled = "true"
            uTag.Enabled = "true"
            uType.Enabled = "true"
            uSerialNo.Enabled = "true"
            uDescription.Enabled = "true"
            uNotes.Enabled = "true"

            uBranch.Enabled = "true"
            uBranch.Visible = "true"
        End If

        If uAction.SelectedValue = "OutOfService" Then

            uStatus.Value = "Maintenance"
            uCurSponsor.Visible = "false"
            uCurUser.Visible = "false"
            uOrderNo.Visible = "false"
            lbluduedt.Text = "Due Back:"
            lbluduedt.Visible = "true"
            lbluoutdt.Visible = "false"
            uOutDdt.Visible = "false"
            uDueDt.Visible = "true"
            uDueDt.Enabled = "true"
            uTag.Enabled = "false"
            uType.Enabled = "false"
            uSerialNo.Enabled = "false"
            uDescription.Enabled = "false"
            uNotes.Enabled = "true"
            uBranch.Visible = "false"
            uBranch.Enabled = "false"

        End If

        If uAction.SelectedValue = "ReturnToService" Then

            uStatus.Value = "Available"
            uCurSponsor.Visible = "false"
            uCurUser.Visible = "false"
            uOrderNo.Visible = "false"
            uOutDdt.Visible = "false"


            uDueDt.Enabled = "true"
            uTag.Enabled = "false"
            uType.Enabled = "false"
            uSerialNo.Enabled = "false"
            uDescription.Enabled = "false"
            uNotes.Enabled = "true"
            uBranch.Visible = "false"
            uBranch.Enabled = "false"

        End If

        If uAction.SelectedValue = "Retire" Then

            uStatus.Value = "Retired"
            uCurSponsor.Visible = "false"
            uCurUser.Visible = "false"
            uOrderNo.Visible = "false"
            uOutDdt.Visible = "false"
            uDueDt.Visible = "false"
            lbluoutdt.Visible = "false"
            lbluduedt.Visible = "false"
            uTag.Enabled = "false"
            uType.Enabled = "false"
            uSerialNo.Enabled = "false"
            uDescription.Enabled = "true"
            uNotes.Enabled = "true"
            uBranch.Visible = "true"
            uBranch.Enabled = "false"

        End If

    End Sub

    Protected Sub iType_DataBound(sender As Object, e As System.EventArgs) Handles iType.DataBound
        iType.Items.Remove(0)
    End Sub



    Protected Sub btnAddAsset_Click(sender As Object, e As System.EventArgs) Handles btnAddAsset.Click

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspAssetAssetInsert", DKConnection1)
        updateCMD1.CommandType = CommandType.StoredProcedure


        updateCMD1.Parameters.Add("@type", SqlDbType.NVarChar).Value = iType.SelectedValue.ToString()
        updateCMD1.Parameters.Add("@branch", SqlDbType.NVarChar).Value = iBranch.SelectedValue.ToString()
        updateCMD1.Parameters.Add("@Description", SqlDbType.NVarChar).Value = iDescription.Text.ToString()
        updateCMD1.Parameters.Add("@serialno", SqlDbType.NVarChar).Value = iSerialno.Text.ToString()
        updateCMD1.Parameters.Add("@notes", SqlDbType.NVarChar).Value = iNotes.Text.ToString()
        updateCMD1.Parameters.Add("@Tag", SqlDbType.NVarChar).Value = iTag.Text.ToString()
        updateCMD1.Parameters.Add("@CreatedBy", SqlDbType.NVarChar).Value = hdnCreatedBy.Value.ToString()

      

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection1.Open()
            updated = updateCMD1.ExecuteNonQuery()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try


        grdAssets.DataSourceID = SqlDS_grdAssets.ID
        grdAssets.DataBind()

        iTag.Text = ""
        iSerialno.Text = ""
        iNotes.Text = ""
        iDescription.Text = ""


    End Sub

    Protected Sub btnClearFilters_Click(sender As Object, e As System.EventArgs) Handles btnClearFilters.Click
        sAssetTag.Text = ""
        sSponsor.Text = ""
        sOrderNo.Text = ""
        sAssetStatus.SelectedIndex = 0
        stripAssetType.SelectedIndex = 0

        SqlDS_grdAssets.SelectParameters("OrderNo").DefaultValue = "%"
        SqlDS_grdAssets.SelectParameters("Sponsor").DefaultValue = "%"
        SqlDS_grdAssets.SelectParameters("Tag").DefaultValue = "%"
        SqlDS_grdAssets.SelectParameters("Type").DefaultValue = "%"
        SqlDS_grdAssets.SelectParameters("Status").DefaultValue = "%"
        grdAssets.DataSourceID = SqlDS_grdAssets.ID
        grdAssets.DataBind()
    End Sub

    Protected Sub sSponsor_TextChanged(sender As Object, e As System.EventArgs) Handles sSponsor.TextChanged


        SqlDS_grdAssets.SelectParameters("Sponsor").DefaultValue = sSponsor.Text.ToString()

        grdAssets.DataSourceID = SqlDS_grdAssets.ID
        grdAssets.DataBind()

    End Sub

    Protected Sub sAssetTag_TextChanged(sender As Object, e As System.EventArgs) Handles sAssetTag.TextChanged

        
        SqlDS_grdAssets.SelectParameters("Tag").DefaultValue = sAssetTag.Text.ToString()

        grdAssets.DataSourceID = SqlDS_grdAssets.ID
        grdAssets.DataBind()

    End Sub

    Protected Sub sOrderNo_TextChanged(sender As Object, e As System.EventArgs) Handles sOrderNo.TextChanged

        SqlDS_grdAssets.SelectParameters("OrderNo").DefaultValue = sOrderNo.Text.ToString()
        
        grdAssets.DataSourceID = SqlDS_grdAssets.ID
        grdAssets.DataBind()

    End Sub
End Class
