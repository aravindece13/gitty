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



Partial Class Controls_form_AR
    Inherits System.Web.UI.UserControl

   



    Protected Sub grdCustomerListing_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grdCustomerListing.SelectedIndexChanged


        Dim custid As String = grdCustomerListing.SelectedValues("CustId").ToString.ToString()
        'SqlDS_chartSales.SelectParameters("CustID").DefaultValue = grdCustomerListing.SelectedValues("CustId").ToString()

        Dim a As String = "openRadNewWindow(" + custid + "); return false;"



        If Page.IsPostBack Then



            Dim selectSQL As String
            selectSQL = "SELECT * FROM Customers WHERE CustId=" & custid

            'Define the ADO.NET Connection Object
            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, DKConnection)
            Dim Reader As SqlDataReader

            Try
                DKConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()


                lblCustomer.Text = Reader("custname") + " - " + Reader("custid")
                lblOrderBal.Text = String.Format("{0:c2}", Reader("orderbalance"))
                lblCreditLimit.Text = String.Format("{0:c2}", Reader("creditlimit"))
                lblBalanceDue.Text = String.Format("{0:c2}", Reader("totalbalance5"))
                lblServiceChargeBal.Text = String.Format("{0:c2}", Reader("servicechargebalance"))
                lblUnappliedcashbal.Text = String.Format("{0:c2}", Reader("unappliedcashbalance"))
                lblSalesYTD.Text = String.Format("{0:c2}", Reader("salesytd"))
                'lblMarginYTD.Text = String.Format("{0:c2}", Reader("marginytd"))
                lblReturnsYTD.Text = String.Format("{0:c2}", Reader("returnsytd"))
                lblServiceChargeYTD.Text = String.Format("{0:c2}", Reader("servicechargeytd"))
                'lblLastSaleAmt.Text = String.Format("{0:c2}", Reader("lastsaleamt"))
                lbllastSaleDate.Text = String.Format("{0:d}", Reader("lastsaledate"))

                lblHighBal.Text = String.Format("{0:c2}", Reader("highbalance"))
                'lblavgdaystopay.Text = String.Format("{0:###}", Reader("avgdaystopay"))
                lblp4p5pct.Text = String.Format("{0:###.#}", Reader("P4P5Pct")) + "%"
                lblPeriod1.Text = String.Format("{0:c2}", Reader("period1balance"))
                lblPeriod2.Text = String.Format("{0:c2}", Reader("period2balance"))
                lblPeriod3.Text = String.Format("{0:c2}", Reader("period3balance"))
                lblPeriod4.Text = String.Format("{0:c2}", Reader("period4balance"))
                lblPeriod5.Text = String.Format("{0:c2}", Reader("period5balance"))

                lblTotBal2to5.Text = String.Format("{0:c2}", Reader("totalbalance2to5"))
                lblTotBal3to5.Text = String.Format("{0:c2}", Reader("totalbalance3to5"))
                lblTotBal4to5.Text = String.Format("{0:c2}", Reader("totalbalance4to5"))
                lblBorrowBaseIneligible.Text = String.Format("{0:c2}", Reader("BorrowBaseIneligible"))


            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try

        End If

    End Sub

   
End Class
