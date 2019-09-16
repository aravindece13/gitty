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


Partial Class MeterShop_Default
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        If IsPostBack = "False" Then
            SqlDS_grdMeterSearch.SelectParameters("SerialNo").DefaultValue = "%"
            SqlDS_grdMeterSearch.SelectParameters("CustName").DefaultValue = "%"
            SqlDS_grdMeterSearch.SelectParameters("Make").DefaultValue = "%"
            SqlDS_grdMeterSearch.SelectParameters("TestYear").DefaultValue = "%"
            SqlDS_grdMeterSearch.SelectParameters("SizeCode").DefaultValue = "%"

        End If


    End Sub


    Protected Sub woCustSearch_ItemChecked(sender As Object, e As Telerik.Web.UI.RadComboBoxItemEventArgs) Handles woCustSearch.ItemChecked
        woWorkOrderID.Text = woCustSearch.SelectedValue
    End Sub

    
    Protected Sub woCustSearch_ItemsRequested(sender As Object, e As Telerik.Web.UI.RadComboBoxItemsRequestedEventArgs) Handles woCustSearch.ItemsRequested

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)
        Dim cmd As New SqlCommand("uspCustomerSearch", DKConnection)
        With cmd
            .CommandType = CommandType.StoredProcedure
            .Parameters.AddWithValue("@CustName", e.Text)
        End With

        Dim adapter As New SqlDataAdapter(cmd)
        Dim dataTable As New DataTable()
        adapter.Fill(dataTable)

        For Each dataRow As DataRow In dataTable.Rows
            Dim item As New RadComboBoxItem()

            item.Text = DirectCast(dataRow("DisplayName"), String)
            item.Value = DirectCast(dataRow("CustID"), String)

            'item.Attributes.Add("UnitPrice", unitPrice.ToString())
            'item.Attributes.Add("UnitsInStock", unitsInStock.ToString())

            'item.Value += ":" + unitPrice.ToString()

            woCustSearch.Items.Add(item)

            item.DataBind()
        Next


    End Sub

    Protected Sub woCustSearch_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles woCustSearch.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspCustomerSearch", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@CustID", SqlDbType.NVarChar, 10).Value = woCustSearch.SelectedValue



        Try
            DKConnection.Open()

            Dim result As Integer = menuCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = menuCMD.ExecuteReader()
            myReader.Read()

            woWhse.Value = myReader("WhseID")
            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try

    End Sub

    Protected Sub btnwoAdd_Click(sender As Object, e As System.EventArgs) Handles btnwoAdd.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspMS_WorkOrderInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@WorkOrderID", SqlDbType.NVarChar).Value = woWorkOrderID.Text.ToString()
        insertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = woCustSearch.SelectedValue.ToString()
        insertCMD.Parameters.Add("@Whse", SqlDbType.NVarChar).Value = woWhse.Value
        insertCMD.Parameters.Add("@WOStatus", SqlDbType.NVarChar).Value = "OPEN"

        insertCMD.Parameters.Add("@WorkType", SqlDbType.NVarChar).Value = woWorkType.SelectedValue
        insertCMD.Parameters.Add("@WorkDetail", SqlDbType.NVarChar).Value = woWorkDetail.Text.ToString()
        insertCMD.Parameters.Add("@CareOf", SqlDbType.NVarChar).Value = woShipCo.Text.ToString()
        insertCMD.Parameters.Add("@ShipAdd1", SqlDbType.NVarChar).Value = woShipAdd1.Text.ToString()
        insertCMD.Parameters.Add("@ShipAdd2", SqlDbType.NVarChar).Value = woShipAdd2.Text.ToString()
        insertCMD.Parameters.Add("@ShipCity", SqlDbType.NVarChar).Value = woShipCity.Text.ToString()
        insertCMD.Parameters.Add("@ShipState", SqlDbType.NVarChar).Value = woShipState.Text.ToString()
        insertCMD.Parameters.Add("@ShipZip", SqlDbType.NVarChar).Value = woShipZip.Text.ToString()
        insertCMD.Parameters.Add("@ShipInstructions", SqlDbType.NVarChar).Value = woShipInstruct.Text.ToString()

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = insertCMD.ExecuteNonQuery()
            grdWO.DataSourceID = SqlDS_grdWO.ID
            SqlDS_grdWO.DataBind()



            ' Instantiate a new instance of MailMessage
            Dim mMailMessage As New MailMessage()

            ' Set the sender address of the mail message
            mMailMessage.From = New MailAddress("devadmin@danakepner.com")
            ' Set the recepient address of the mail message
            'mMailMessage.To.Add(New MailAddress("smitchell@danakepner.com"))
            'Dim eMailTo As String = "'" + "dejohnson@danakepner.com, " + Request.Cookies("eMail").ToString() + "'"
            Dim eMailTo As String = "bmckenna@danakepner.com, dejohnson@danakepner.com " + "," + Request.Cookies("eMail").Value.ToString()
            mMailMessage.To.Add(eMailTo)


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
            mMailMessage.Subject = "MeterShop Work Order Entered: " + woWorkOrderID.Text.ToString()
            ' Set the body of the mail message

            mMailMessage.Body = "Work Order: " + woWorkOrderID.Text.ToString()
            mMailMessage.Body &= "<Br /><Br />Customer: " + woCustSearch.Text
            mMailMessage.Body &= "<Br /><Br />Work Type: " + woWorkType.SelectedValue.ToString()
            mMailMessage.Body &= "<Br /><Br />Test Instructions: " + woWorkDetail.Text.ToString()

            mMailMessage.Body &= "<Br /><Br /><br />Return Shipping Care Of: " + woShipCo.Text.ToString()
            mMailMessage.Body &= "<Br /><Br />Shipping Address(1): " + woShipAdd1.Text.ToString()
            mMailMessage.Body &= "<Br /><Br />Shipping Address(2): " + woShipAdd2.Text.ToString()
            mMailMessage.Body &= "<Br /><Br />Shipping City/State/Zip: " + woShipCity.Text.ToString() + ",  " + woShipState.Text.ToString() + "  " + woShipZip.Text.ToString()
            mMailMessage.Body &= "<Br /><Br />Shipping Instructions: " + woShipInstruct.Text.ToString()


            ' Set the format of the mail message body as HTML
            mMailMessage.IsBodyHtml = True
            ' Set the priority of the mail message to normal
            mMailMessage.Priority = MailPriority.Normal

            ' Instantiate a new instance of SmtpClient
            Dim mSmtpClient As New SmtpClient()
            ' Send the mail message
            mSmtpClient.Send(mMailMessage)

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            woWorkOrderID.Text = ""
            woWhse.Value = ""
            woWorkDetail.Text = ""
            woShipCo.Text = ""
            woShipAdd1.Text = ""
            woShipAdd2.Text = ""
            woShipCity.Text = ""
            woShipState.Text = ""
            woShipZip.Text = ""
            woShipInstruct.Text = ""

            lblWOAddStatus.Text = "Your work order has been successfully added."

           
        End Try
    End Sub

   





   
    Protected Sub fltrMake_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrMake.SelectedIndexChanged
        SqlDS_grdMeterSearch.SelectParameters("Make").DefaultValue = fltrMake.SelectedValue.ToString()

        grdMeterSearch.DataSourceID = SqlDS_grdMeterSearch.ID
        grdMeterSearch.Rebind()


    End Sub

    Protected Sub fltrSizeCode_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrSizeCode.SelectedIndexChanged
        SqlDS_grdMeterSearch.SelectParameters("SizeCode").DefaultValue = fltrSizeCode.SelectedValue.ToString()

        grdMeterSearch.DataSourceID = SqlDS_grdMeterSearch.ID
        grdMeterSearch.Rebind()
    End Sub

    Protected Sub fltrTestYear_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrTestYear.SelectedIndexChanged
        SqlDS_grdMeterSearch.SelectParameters("TestYear").DefaultValue = fltrTestYear.SelectedValue.ToString()

        grdMeterSearch.DataSourceID = SqlDS_grdMeterSearch.ID
        grdMeterSearch.Rebind()
    End Sub

    Protected Sub fltrCustName_TextChanged(sender As Object, e As System.EventArgs) Handles fltrCustName.TextChanged
        If Len(fltrCustName.Text.ToString()) = 0 Then
            SqlDS_grdMeterSearch.SelectParameters("CustName").DefaultValue = "%"
        Else
            SqlDS_grdMeterSearch.SelectParameters("CustName").DefaultValue = fltrCustName.Text
        End If

        grdMeterSearch.DataSourceID = SqlDS_grdMeterSearch.ID
        grdMeterSearch.Rebind()
    End Sub

    Protected Sub fltrSerialNo_TextChanged(sender As Object, e As System.EventArgs) Handles fltrSerialNo.TextChanged
        If Len(fltrSerialNo.Text.ToString()) = 0 Then
            SqlDS_grdMeterSearch.SelectParameters("SerialNo").DefaultValue = "%"
        Else
            SqlDS_grdMeterSearch.SelectParameters("SerialNo").DefaultValue = fltrSerialNo.Text.ToString()
        End If

        grdMeterSearch.DataSourceID = SqlDS_grdMeterSearch.ID
        grdMeterSearch.Rebind()
    End Sub
End Class
