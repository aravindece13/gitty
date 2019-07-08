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


Partial Class Sales_Orders
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If IsPostBack = "false" Then
            lblgrdOrderHeadersSelected.Text = ""
            lblgrdLinesSelected.Text = ""
        End If



    End Sub


    Protected Sub grdOrderLines_ItemDataBound(sender As Object, e As Telerik.Web.UI.GridItemEventArgs) Handles grdOrderLines.ItemDataBound

        'Is it a GridDataItem
        If (TypeOf (e.Item) Is GridDataItem) Then
            'Get the instance of the right type
            Dim dataBoundItem As GridDataItem = e.Item

            If (dataBoundItem("ReviewMargin").Text = "Review") Then
                dataBoundItem("MarginPct").ForeColor = Color.White
                dataBoundItem("MarginPct").Font.Bold = True
                dataBoundItem("MarginPct").BackColor = Color.CornflowerBlue
            End If

            If (dataBoundItem("ReviewPrice").Text = "Review") Then
                dataBoundItem("Price").ForeColor = Color.White
                dataBoundItem("Price").Font.Bold = True
                dataBoundItem("Price").BackColor = Color.CornflowerBlue
            End If



        End If

    End Sub

    Protected Sub grdLines_ItemDataBound(sender As Object, e As Telerik.Web.UI.GridItemEventArgs) Handles grdLines.ItemDataBound

        'Is it a GridDataItem
        If (TypeOf (e.Item) Is GridDataItem) Then
            'Get the instance of the right type
            Dim dataBoundItem As GridDataItem = e.Item

            If (dataBoundItem("ReviewMargin").Text = "Review") Then
                dataBoundItem("MarginPct").ForeColor = Color.White
                dataBoundItem("MarginPct").Font.Bold = True
                dataBoundItem("MarginPct").BackColor = Color.CornflowerBlue
            End If

            If (dataBoundItem("ReviewPrice").Text = "Review") Then
                dataBoundItem("Price").ForeColor = Color.White
                dataBoundItem("Price").Font.Bold = True
                dataBoundItem("Price").BackColor = Color.CornflowerBlue
            End If



        End If

    End Sub




    Protected Sub grdLinesLines_ItemDataBound(sender As Object, e As Telerik.Web.UI.GridItemEventArgs) Handles grdLinesLines.ItemDataBound

        'Is it a GridDataItem
        If (TypeOf (e.Item) Is GridDataItem) Then
            'Get the instance of the right type
            Dim dataBoundItem As GridDataItem = e.Item

            If (dataBoundItem("ReviewMargin").Text = "Review") Then
                dataBoundItem("MarginPct").ForeColor = Color.White
                dataBoundItem("MarginPct").Font.Bold = True
                dataBoundItem("MarginPct").BackColor = Color.CornflowerBlue
            End If

            If (dataBoundItem("ReviewPrice").Text = "Review") Then
                dataBoundItem("Price").ForeColor = Color.White
                dataBoundItem("Price").Font.Bold = True
                dataBoundItem("Price").BackColor = Color.CornflowerBlue
            End If



        End If
    End Sub

    Protected Sub grdOrderHeaders_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdOrderHeaders.SelectedIndexChanged

        'Retrieve the specific row
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspOrderHeaderRetrieveSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@OrderNumber", SqlDbType.NVarChar).Value = grdOrderHeaders.SelectedValues("OrderNumber")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblgrdOrderHeadersSelected.Text = "Order: " + myReader1("OrderNumber").ToString() + "  Customer: " + myReader1("CustName").ToString() + "-" + myReader1("CustID").ToString()


            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

    End Sub

    Protected Sub grdLines_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdLines.SelectedIndexChanged

        'Retrieve the specific row
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspOrderHeaderRetrieveSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@OrderNumber", SqlDbType.NVarChar).Value = grdLines.SelectedValues("OrderNumber")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblgrdLinesSelected.Text = "Full Order: " + myReader1("OrderNumber").ToString() + "  Customer: " + myReader1("CustName").ToString() + "-" + myReader1("CustID").ToString()


            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

    End Sub

End Class
