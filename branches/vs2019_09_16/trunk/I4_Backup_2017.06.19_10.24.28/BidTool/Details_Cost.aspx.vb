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
'Imports System.Net.Mail


Partial Class BidTool_Details_Cost
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        hdnProdID.Value = Request.QueryString("ProdID").ToString

        'Retrieve Quote Information

        Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection3 As New SqlConnection(DKConnectionString3)
        Dim selectCMD3 As SqlCommand = New SqlCommand("uspQuoteGetDetails", DKConnection3)
        selectCMD3.CommandType = CommandType.StoredProcedure
        selectCMD3.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = Request.QueryString("QuoteID")


        Try
            DKConnection3.Open()

            Dim result As Integer = selectCMD3.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD3.ExecuteReader()
            myReader.Read()

            hdnJobID.Value = myReader("JobID")
            hdnTakeOffID.Value = myReader("TakeOffID")
            hdnCustID.Value = myReader("CustiD")

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection3.Close()
        End Try


        Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection4 As New SqlConnection(DKConnectionString4)
        Dim selectCMD4 As SqlCommand = New SqlCommand("uspQuotePricingGetDetails", DKConnection4)
        selectCMD4.CommandType = CommandType.StoredProcedure

        selectCMD4.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = Request.QueryString("QuoteID")
        selectCMD4.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = hdnProdID.Value
        selectCMD4.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value

        Try
            DKConnection4.Open()

            Dim result As Integer = selectCMD4.ExecuteNonQuery()
            Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
            myReader4.Read()

            lblProjectCost.Text = "Project Cost: " + FormatCurrency(myReader4("UnitCost"), 2)
            lblProjectCostComment.Text = myReader4("Comment").ToString()

            myReader4.Close()

        Catch ex As SqlException

        Finally
            DKConnection4.Close()
        End Try




        'Retrieve Product Information
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProductGetDetail", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = Request.QueryString("ProdID").ToString

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            If myReader1.HasRows Then
                lblProduct.Text = myReader1("ProdID").ToString() + " - " + myReader1("Description").ToString()
            Else
                lblProduct.Text = "No Standard Product Information Available"

            End If


            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try




        'Retrieve Warehouse Product Information
        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspProductWarehouseBasicDetailsGet", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@WhseID", SqlDbType.BigInt).Value = Request.QueryString("WhseID")
        selectCMD2.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = Request.QueryString("ProdID").ToString

        Try
            DKConnection2.Open()

            Dim result As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            If myReader2.HasRows Then

                lblPricingBidToolCost.Text = FormatCurrency(myReader2("BidToolCost"), 2).ToString()
                lblPricingReplCost.Text = FormatCurrency(myReader2("ReplCost"), 2).ToString()


                lblPricingAddOnCost.Text = FormatCurrency(myReader2("AddOnCost"), 2).ToString()
                lblPricingAvgCost.Text = FormatCurrency(myReader2("AvgCost"), 2).ToString()

                If IsDBNull(myReader2("ReplCostDate")) Then
                    lblPricingReplCost.Text = FormatCurrency(myReader2("ReplCost"), 2).ToString()
                Else
                    lblPricingReplCost.Text = FormatCurrency(myReader2("ReplCost"), 2).ToString() + "  " + FormatDateTime(myReader2("ReplCostDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
                End If

                If IsDBNull(myReader2("LastReceiptDate")) Then
                    lblPricingLastCost.Text = FormatCurrency(myReader2("LastCost"), 2).ToString()
                Else
                    lblPricingLastCost.Text = FormatCurrency(myReader2("LastCost"), 2).ToString() + "  " + FormatDateTime(myReader2("LastReceiptDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
                End If

                lblPricingStatus.Text = myReader2("Status").ToString()
                lblPricingQtyAvail.Text = FormatNumber(myReader2("QtyAvailable"), 0).ToString()
                lblPricingQtyOnHand.Text = FormatNumber(myReader2("QtyOnHand"), 0).ToString()
                lblPricingQtyOnOrder.Text = FormatNumber(myReader2("QtyOnOrder"), 0).ToString()
                'lblPricingQtyReservd.Text = FormatNumber(myReader2("QtyReservd"), 0).ToString()
                lblPricingMonthsInv.Text = FormatNumber(myReader2("MonthsInventory"), 1).ToString()
                'lblPricingQtyUnavail.Text = FormatNumber(myReader2("QtyUnavail"), 0).ToString()
            Else


            End If


            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try

    End Sub

End Class
