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


Partial Class Credit_Secure_LastShipReview
    Inherits System.Web.UI.Page



    Protected Sub Page_PreRender(sender As Object, e As System.EventArgs) Handles Me.PreRender
        If grdJobsListing.SelectedIndexes.Count = 0 AndAlso grdJobStats.SelectedIndexes.Count = 0 Then
            grdJobsListing.SelectedIndexes.Add(0)
            grdJobStats.SelectedIndexes.Add(0)

        End If
    End Sub



    Protected Sub grdJobsListing_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdJobsListing.SelectedIndexChanged

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspCreditJobInfoGet", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = grdJobsListing.SelectedValues("CustID").ToString
        selectCMD1.Parameters.Add("@ShipToID", SqlDbType.NVarChar).Value = grdJobsListing.SelectedValues("ShipToID").ToString


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblJobName.Text = myReader1("JobName").ToString()
            lblAddress.Text = myReader1("Address").ToString()
            lblCity.Text = myReader1("City").ToString() + ", " + myReader1("State").ToString() + "  " + myReader1("Zip").ToString()
            lblPhoneFax.Text = "<b>P: </b>" + myReader1("Phone").ToString() + "     <b>F:</b> " + myReader1("Fax").ToString()

            lblCreditLimit.Text = "<b>Credit Limit: </b>" + FormatCurrency(myReader1("CreditLimit"), 0).ToString()
            lblOrderBalance.Text = "<b>Order Bal: </b>" + FormatCurrency(myReader1("JobOrderBalance"), 2).ToString()
            lblHoldPeriodCode.Text = "<b>Hold Period Code: </b>" + myReader1("HoldPeriodCode").ToString()
            LblPeriod1.Text = "<b>Period 1: </b>" + FormatCurrency(myReader1("JobPeriod1"), 2).ToString()
            lblPeriod2.Text = "<b>Period 2: </b>" + FormatCurrency(myReader1("JobPeriod2"), 2).ToString()
            lblPeriod3.Text = "<b>Period 3: </b>" + FormatCurrency(myReader1("JobPeriod3"), 2).ToString()
            lblPeriod4.Text = "<b>Period 4: </b>" + FormatCurrency(myReader1("JobPeriod4"), 2).ToString()
            lblPeriod5.Text = "<b>Period 5: </b>" + FormatCurrency(myReader1("JobPeriod5"), 2).ToString()

            If IsDBNull(myReader1("LienPreDate")) Then
                lblLienPreDate.Text = "<b>PreLien Date: </b>"
            Else
                lblLienPreDate.Text = "<b>PreLien Date: </b>" + FormatDateTime(myReader1("LienPreDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
            End If

            lblLienPreOper.Text = "<b>PreLien Oper: </b>" + myReader1("LienPreOper").ToString()
            lblLienPreWith.Text = "<b>PreLien With: </b>" + myReader1("LienPreWith").ToString()
            lblAPN.Text = "<b>APN: </b>" + myReader1("APN").ToString()
            lblPreLienConfirmation.Text = "<b>PreLien Confirm: </b>" + myReader1("PreLienConfirmation").ToString()
            lblPreLienID.Text = "<b>PreLien ID: </b>" + myReader1("PreLienID").ToString()
            lblLienPreAmount.Text = "<b>PreLien Amount: </b>" + FormatCurrency(myReader1("LienPreAmount"), 2).ToString()
            lblLienAmount.Text = "<b>Lien Amount: </b>" + myReader1("LienAmount").ToString()

            If IsDBNull(myReader1("LienFileDate")) Then
                lblLienFileDate.Text = "<b>Lien Filed: </b>"
            Else
                lblLienFileDate.Text = "<b>Lien Filed: </b>" + FormatDateTime(myReader1("LienFileDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
            End If

            lblBondNo.Text = "<b>Bond: <b/>" + myReader1("BondNo").ToString()


            lblOwner_Name.Text = "<b>Owner: </b>" + myReader1("Owner_Name").ToString()
            lblOwner_Address.Text = myReader1("Owner_Address").ToString()
            lblOwner_City.Text = myReader1("Owner_City").ToString() + ", " + myReader1("Owner_State") + "  " + myReader1("Own_Zip")

            lblGeneral_Name.Text = "<b>General: </b>" + myReader1("General_Name").ToString()
            lblGeneral_Address.Text = myReader1("General_Address").ToString()
            lblGeneral_City.Text = myReader1("General_City").ToString() + ", " + myReader1("General_State") + "  " + myReader1("General_Zip")

            lblLender_Name.Text = "<b>Lender: </b>" + myReader1("Lender_Name").ToString()
            lblLender_Address.Text = myReader1("Lender_Address").ToString()
            lblLender_City.Text = myReader1("Lender_City").ToString() + ", " + myReader1("Lender_State") + "  " + myReader1("Lender_Zip")

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try


        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspCreditJobCommentSGet", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = grdJobsListing.SelectedValues("CustID").ToString
        selectCMD2.Parameters.Add("@ShipToID", SqlDbType.NVarChar).Value = grdJobsListing.SelectedValues("ShipToID").ToString

        Try
            DKConnection2.Open()

            Dim result As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            pastComment.Content = myReader2("ShipToComments").ToString()

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try
    End Sub

 
    Protected Sub btnUpdateComments_Click(sender As Object, e As System.EventArgs) Handles btnUpdateComments.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspCreditCustomerJobCommentsAddUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = grdJobsListing.SelectedValues("CustID").ToString
        updateCMD1.Parameters.Add("@ShipToID", SqlDbType.NVarChar).Value = grdJobsListing.SelectedValues("ShipToID").ToString
        updateCMD1.Parameters.Add("@ShipToComments", SqlDbType.NVarChar).Value = updateComment.Content
        'updateCMD1.Parameters.Add("@ShipToComments", SqlDbType.NVarChar).Value = updateComment.Text
        updateCMD1.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspCreditJobCommentsGet", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = grdJobsListing.SelectedValues("CustID").ToString
        selectCMD2.Parameters.Add("@ShipToID", SqlDbType.NVarChar).Value = grdJobsListing.SelectedValues("ShipToID").ToString

        Try
            DKConnection2.Open()

            Dim result As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            pastComment.Content = myReader2("ShipToComments").ToString()

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try


        'updateComment.Content = ""



    End Sub
End Class
