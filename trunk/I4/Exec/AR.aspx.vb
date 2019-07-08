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


Partial Class Exec_AR
    Inherits System.Web.UI.Page

    
    
    Protected Sub RadGrid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadGrid1.SelectedIndexChanged
        Dim custid As String = RadGrid1.SelectedValues("CustId").ToString

        Dim a As String = "openRadNewWindow(" + custid + "); return false;"
        btnAddComment.OnClientClick = a.ToString


        If Page.IsPostBack Then



            Dim selectSQL As String
            selectSQL = "SELECT custname,custid, orderbal,lastsaledate,lastsaleamt,highbal,unappliedcashbal,balancedue, "
            selectSQL &= "returnsytd,lastpmtdate,avgdaystopay,servicechargebal,servicechargeytd,salesytd,(salesytd-costytd) AS Margin,"
            selectSQL &= "credits,borrowbaseineligible,creditlimit,period1bal,period2bal,period3bal,period4bal,period5bal,"
            selectSQL &= "P4P5Pct,totbal1to5,totbal2to5,totbal3to5,totbal4to5 "
            selectSQL &= "FROM aCustomer WHERE CustId=" & custid

            'Define the ADO.NET Connection Object
            Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
            Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
            Dim Reader As SqlDataReader

            Try
                InsiteConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()


                lblCustomer.Text = Reader("custname") + " - " + Reader("custid")
                lblOrderBal.Text = String.Format("{0:c2}", Reader("orderbal"))
                lblCreditLimit.Text = String.Format("{0:c2}", Reader("creditlimit"))
                lblBalanceDue.Text = String.Format("{0:c2}", Reader("balancedue"))
                lblServiceChargeBal.Text = String.Format("{0:c2}", Reader("servicechargebal"))
                lblUnappliedcashbal.Text = String.Format("{0:c2}", Reader("unappliedcashbal"))
                lblSalesYTD.Text = String.Format("{0:c2}", Reader("salesytd"))
                lblMarginYTD.Text = String.Format("{0:c2}", Reader("margin"))
                lblReturnsYTD.Text = String.Format("{0:c2}", Reader("returnsytd"))
                lblServiceChargeYTD.Text = String.Format("{0:c2}", Reader("servicechargeytd"))
                lblLastSaleAmt.Text = String.Format("{0:c2}", Reader("lastsaleamt"))
                lbllastSaleDate.Text = String.Format("{0:d}", Reader("lastsaledate"))

                lblHighBal.Text = String.Format("{0:c2}", Reader("highbal"))
                lblavgdaystopay.Text = String.Format("{0:###}", Reader("avgdaystopay"))
                lblp4p5pct.Text = String.Format("{0:###.#}", Reader("P4P5Pct")) + "%"
                lblPeriod1.Text = String.Format("{0:c2}", Reader("period1bal"))
                lblPeriod2.Text = String.Format("{0:c2}", Reader("period2bal"))
                lblPeriod3.Text = String.Format("{0:c2}", Reader("period3bal"))
                lblPeriod4.Text = String.Format("{0:c2}", Reader("period4bal"))
                lblPeriod5.Text = String.Format("{0:c2}", Reader("period5bal"))

                lblTotBal2to5.Text = String.Format("{0:c2}", Reader("totbal2to5"))
                lblTotBal3to5.Text = String.Format("{0:c2}", Reader("totbal3to5"))
                lblTotBal4to5.Text = String.Format("{0:c2}", Reader("totbal4to5"))
                lblBorrowBaseIneligible.Text = String.Format("{0:c2}", Reader("BorrowBaseIneligible"))


            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                InsiteConnection.Close()

            End Try

        End If

    End Sub

    
    
End Class
