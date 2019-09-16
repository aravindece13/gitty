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

Partial Class Controls_form_ICSW
    Inherits System.Web.UI.UserControl

   
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If IsPostBack = "False" Then

            fltrDesc.Text = ""
            fltrProdID.Text = ""
            fltrDesc.Text = ""
            fltrVendorName.Text = ""
            fltrState1.Checked = "True"
            fltrState2.Checked = "True"
            fltrState3.Checked = "True"
            fltrState4.Checked = "True"
            fltrState5.Checked = "True"
            fltrState6.Checked = "True"
            fltrStatus1.Checked = "True"
            fltrStatus2.Checked = "True"
            fltrStatus3.Checked = "False"
            fltrQtyBO.Checked = "False"
            fltrQtyOnOrder.Checked = "False"

            lblProductInReview.Text = "Select a product at top to review details below."

            SqlDS_grdPOs.SelectParameters("WhseID").DefaultValue = "0"
            SqlDS_grdPOs.SelectParameters("ProdID").DefaultValue = "0"

        End If
    End Sub


    Protected Sub fltrQtyBO_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrQtyBO.CheckedChanged
        If fltrQtyBO.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("QtyBO").DefaultValue = 0
        Else
            SqlDS_grdICSW.SelectParameters("QtyBO").DefaultValue = -1
        End If
    End Sub

    Protected Sub fltrQtyOnOrder_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrQtyOnOrder.CheckedChanged
        If fltrQtyOnOrder.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("QtyOnOrder").DefaultValue = 0
        Else
            SqlDS_grdICSW.SelectParameters("QtyOnOrder").DefaultValue = -1
        End If
    End Sub

    Protected Sub fltrState1_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrState1.CheckedChanged
        If fltrState1.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("State1").DefaultValue = "AZ"
        Else
            SqlDS_grdICSW.SelectParameters("State1").DefaultValue = "z"
        End If
    End Sub

    Protected Sub fltrState2_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrState2.CheckedChanged
        If fltrState2.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("State2").DefaultValue = "CO"
        Else
            SqlDS_grdICSW.SelectParameters("State2").DefaultValue = "z"
        End If
    End Sub

    Protected Sub fltrState3_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrState3.CheckedChanged
        If fltrState3.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("State3").DefaultValue = "MT"
        Else
            SqlDS_grdICSW.SelectParameters("State3").DefaultValue = "z"
        End If
    End Sub

    Protected Sub fltrState4_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrState4.CheckedChanged
        If fltrState4.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("State4").DefaultValue = "NV"
        Else
            SqlDS_grdICSW.SelectParameters("State4").DefaultValue = "z"
        End If
    End Sub

    Protected Sub fltrState5_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrState5.CheckedChanged
        If fltrState5.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("State5").DefaultValue = "TX"
        Else
            SqlDS_grdICSW.SelectParameters("State5").DefaultValue = "z"
        End If
    End Sub

    Protected Sub fltrState6_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrState6.CheckedChanged
        If fltrState6.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("State6").DefaultValue = "WY"
        Else
            SqlDS_grdICSW.SelectParameters("State6").DefaultValue = "z"
        End If
    End Sub

    Protected Sub fltrStatus1_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrStatus1.CheckedChanged
        If fltrStatus1.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("Status1").DefaultValue = "S"
        Else
            SqlDS_grdICSW.SelectParameters("Status1").DefaultValue = "z"
        End If
    End Sub

    Protected Sub fltrStatus2_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrStatus2.CheckedChanged
        If fltrStatus2.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("Status2").DefaultValue = "O"
        Else
            SqlDS_grdICSW.SelectParameters("Status2").DefaultValue = "z"
        End If
    End Sub

    Protected Sub fltrStatus3_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrStatus3.CheckedChanged
        If fltrStatus3.Checked = "true" Then
            SqlDS_grdICSW.SelectParameters("Status3").DefaultValue = "X"
        Else
            SqlDS_grdICSW.SelectParameters("Status3").DefaultValue = "z"
        End If
    End Sub

    Protected Sub fltrDesc_TextChanged(sender As Object, e As System.EventArgs) Handles fltrDesc.TextChanged
        If Len(fltrDesc.Text.ToString()) = 0 Then
            SqlDS_grdICSW.SelectParameters("Description").DefaultValue = "%"
        Else
            SqlDS_grdICSW.SelectParameters("Description").DefaultValue = fltrDesc.Text.ToString()
        End If

        grdICSW.DataSourceID = SqlDS_grdICSW.ID
        grdICSW.DataBind()
    End Sub

    Protected Sub fltrProdID_TextChanged(sender As Object, e As System.EventArgs) Handles fltrProdID.TextChanged
        If Len(fltrProdID.Text.ToString()) = 0 Then
            SqlDS_grdICSW.SelectParameters("ProdID").DefaultValue = "%"
        Else
            SqlDS_grdICSW.SelectParameters("ProdID").DefaultValue = fltrProdID.Text.ToString()
        End If

        grdICSW.DataSourceID = SqlDS_grdICSW.ID
        grdICSW.DataBind()
    End Sub

    Protected Sub fltrVendorName_TextChanged(sender As Object, e As System.EventArgs) Handles fltrVendorName.TextChanged
        If Len(fltrVendorName.Text.ToString()) = 0 Then
            SqlDS_grdICSW.SelectParameters("VendorName").DefaultValue = "%"
        Else
            SqlDS_grdICSW.SelectParameters("VendorName").DefaultValue = fltrVendorName.Text.ToString()
        End If

        grdICSW.DataSourceID = SqlDS_grdICSW.ID
        grdICSW.DataBind()
    End Sub

    Protected Sub fltrMonthsInventory_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrMonthsInventory.SelectedIndexChanged
        SqlDS_grdICSW.SelectParameters("MonthsInventory").DefaultValue = fltrMonthsInventory.SelectedValue

        grdICSW.DataSourceID = SqlDS_grdICSW.ID
        grdICSW.DataBind()
    End Sub

    Protected Sub fltrMonthsInventory2_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrMonthsInventory2.SelectedIndexChanged
        SqlDS_grdICSW.SelectParameters("MonthsInventory2").DefaultValue = fltrMonthsInventory2.SelectedValue

        grdICSW.DataSourceID = SqlDS_grdICSW.ID
        grdICSW.DataBind()
    End Sub

    Protected Sub fltrProdCatID_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrProdCatID.SelectedIndexChanged
        SqlDS_grdICSW.SelectParameters("ProdCatID").DefaultValue = fltrProdCatID.SelectedValue

        grdICSW.DataSourceID = SqlDS_grdICSW.ID
        grdICSW.DataBind()
    End Sub

    Protected Sub fltrWhseID_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrWhseID.SelectedIndexChanged
        SqlDS_grdICSW.SelectParameters("WhseID").DefaultValue = fltrWhseID.SelectedValue

        grdICSW.DataSourceID = SqlDS_grdICSW.ID
        grdICSW.DataBind()
    End Sub




    Protected Sub grdICSW_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdICSW.SelectedIndexChanged

        SqlDS_grdLines.SelectParameters("WhseID1").DefaultValue = grdICSW.SelectedValues("WhseID").ToString()
        SqlDS_grdLines.SelectParameters("ProdID").DefaultValue = grdICSW.SelectedValues("ProdID").ToString()
        SqlDS_grdPOs.SelectParameters("WhseID").DefaultValue = grdICSW.SelectedValues("WhseID").ToString()
        SqlDS_grdPOs.SelectParameters("ProdID").DefaultValue = grdICSW.SelectedValues("ProdID").ToString()

        grdPOs.DataSourceID = SqlDS_grdPOs.ID
        grdPOs.DataBind()

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProductGetDetail", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdICSW.SelectedValues("ProdID")

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblProductInReview.Text = "Now Reviewing: " + myReader1("ProdID").ToString() + " - " + Left(myReader1("Description").ToString(), 75)

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

    End Sub
End Class
