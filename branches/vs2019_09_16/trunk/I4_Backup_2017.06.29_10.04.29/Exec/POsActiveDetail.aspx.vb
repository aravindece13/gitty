Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Collections

Imports System.Resources




Partial Class Exec_OrderBacklogDetail
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dvSql As DataView = DirectCast(SqlDS_POHeader.Select(DataSourceSelectArguments.Empty), DataView)
        For Each drvSql As DataRowView In dvSql

            lblPONumber.Text = drvSql("PONumber").ToString()
            lblTransType.Text = drvSql("TransactionType").ToString()

            lblVendName.Text = drvSql("VendName").ToString() + " - " + drvSql("VendID").ToString()

            Dim EnterDate As Date = drvSql("EnterDate")
            lblEnterdate.Text = String.Format("{0:d}", EnterDate)
            Dim DueDate As Date = drvSql("DueDate")
            lblDueDate.Text = String.Format("{0:d}", DueDate)

            Dim TotalLineAmt As Double = drvSql("TotalLineAmt")
            lblTotalLineAmt.Text = String.Format("{0:c2}", TotalLineAmt)

            lblBranch.Text = drvSql("Branch").ToString()
            lblRushFlg.Text = drvSql("RushFlg").ToString()

 
        Next


    End Sub

   
End Class
