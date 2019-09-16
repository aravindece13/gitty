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
        Dim dvSql As DataView = DirectCast(SqlDS_OrderHeader.Select(DataSourceSelectArguments.Empty), DataView)
        For Each drvSql As DataRowView In dvSql

            lblApprovalBy.Text = drvSql("ApprovalInitial").ToString()
            lblApprovalType.Text = drvSql("ApprovalType").ToString()
            lblCustID.Text = drvSql("CustID").ToString()
            lblCustName.Text = drvSql("CustName").ToString() + "-"
            lblCustPO.Text = drvSql("CustPO").ToString()

            Dim EnterDate As Date = drvSql("EnterDate")
            lblEnterDate.Text = String.Format("{0:d}", EnterDate)

            Dim Margin As Double = drvSql("Margin")
            lblMargin.Text = String.Format("{0:c2}", Margin)

            Dim MarginPct As Double = drvSql("MarginPct") * 100
            lblMarginPct.Text = String.Format("{0:###.#}", MarginPct) + "%"

            lblTakenBy.Text = drvSql("TakenBy").ToString()
            lblOrderNumber.Text = drvSql("OrderNumber").ToString()

            lblPickBy.Text = drvSql("PickInitials").ToString()

            If drvSql("PickedDate") Is DBNull.Value Then
                lblPickDate.Text = ""
            Else
                Dim PickDate As Date = drvSql("PickedDate")
                lblPickDate.Text = String.Format("{0:d}", PickDate)
            End If

            lblPickTime.Text = drvSql("PickedTime").ToString()
            lblSalesRep.Text = drvSql("SalesRepID").ToString()

            If drvSql("ShipDate") Is DBNull.Value Then
                lblShipDate.Text = ""
            Else
                Dim ShipDate As Date = drvSql("ShipDate")
                lblShipDate.Text = String.Format("{0:d}", ShipDate)
            End If

            lblShipTo.Text = drvSql("ShipToID").ToString() + "-"
            lblStageCode.Text = drvSql("Stage").ToString()


            Dim TotalCost As Double = drvSql("TotalCost")
            lblTotalCost.Text = String.Format("{0:c2}", TotalCost)

            Dim TotalOrderAmount As Double = drvSql("TotalOrderAmount")
            lblTotalOrderAmount.Text = String.Format("{0:c2}", TotalOrderAmount)

            lblTranstype.Text = drvSql("Transtype").ToString()
            lblWhse.Text = drvSql("WhseID").ToString()
        Next


    End Sub

   
End Class
