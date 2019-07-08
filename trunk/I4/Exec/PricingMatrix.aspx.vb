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

Partial Class Exec_PricingMatrix
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        pnlRankUpdate.Enabled = "false"
      
    End Sub




    Protected Sub grdBranchList_DataBound(sender As Object, e As System.EventArgs) Handles grdBranchList.DataBound
        If IsPostBack = "False" Then
            If grdBranchList.MasterTableView.Items.Count > 0 Then
                grdBranchList.MasterTableView.Items(0).Selected = "True"
                'SqlDS_CatListing.SelectParameters("WhseID").DefaultValue = grdBranchList.SelectedValue("WhseID").ToString()
                'grdCatList.MasterTableView.Items(0).Selected = "True"
            End If

            grdCatList.DataSourceID = SqlDS_CatListing.ID
            grdCatList.DataBind()
            grdCatList.MasterTableView.Items(0).Selected = "true"

        End If
    End Sub


    Protected Sub btnFilterCategory_Click(sender As Object, e As System.EventArgs) Handles btnFilterCategory.Click
        SqlDS_CatListing.SelectParameters("CatDesc").DefaultValue = txtBoxCategoryFilter.Text

        grdCatList.DataSourceID = SqlDS_CatListing.ID
        grdCatList.DataBind()
        grdCatList.MasterTableView.Items(0).Selected = "true"

    End Sub


    Protected Sub grdCatList_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdCatList.SelectedIndexChanged

        pnlRankUpdate.Enabled = "false"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspMatrixGetCatDetail", DKConnection)
        selectCMD1.CommandType = CommandType.StoredProcedure

        selectCMD1.Parameters.Add("@CatID", SqlDbType.NVarChar).Value = grdCatList.SelectedValues("ProdCatID").ToString()
        selectCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = grdBranchList.SelectedValues("branchno").ToString()


        Try
            'Try to open the connection and execute the update
            DKConnection.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()


            lblCatEdit.Text = myReader1("comboname").ToString() + " | " + myReader1("Cat").ToString() + " - " + myReader1("Description").ToString()
            txtEdit01.DbValue = myReader1("CashMargin01")
            txtEdit02.DbValue = myReader1("Munigoodmargin02")
            txtEdit03.DbValue = myReader1("Munibettermargin03")
            txtEdit04.DbValue = myReader1("Munibestmargin04")
            txtEdit05.DbValue = myReader1("Contrgoodmargin05")
            txtEdit06.DbValue = myReader1("Contrbettermargin06")
            txtEdit07.DbValue = myReader1("Contrbestmargin07")
            txtEdit08.DbValue = myReader1("Contrsupermargin08")
            txtEdit09.DbValue = myReader1("Jobbermargin09")
            txtEdit10.DbValue = myReader1("Other1Margin10")
            txtEdit11.DbValue = myReader1("Other2Margin11")

            lblEdit01PctCurrent.Text = myReader1("CashMargin01").ToString() + "%"
            lblEdit02PctCurrent.Text = myReader1("Munigoodmargin02").ToString() + "%"
            lblEdit03PctCurrent.Text = myReader1("Munibettermargin03").ToString() + "%"
            lblEdit04PctCurrent.Text = myReader1("Munibestmargin04").ToString() + "%"
            lblEdit05PctCurrent.Text = myReader1("Contrgoodmargin05").ToString() + "%"
            lblEdit06PctCurrent.Text = myReader1("Contrbettermargin06").ToString() + "%"
            lblEdit07PctCurrent.Text = myReader1("Contrbestmargin07").ToString() + "%"
            lblEdit08PctCurrent.Text = myReader1("Contrsupermargin08").ToString() + "%"
            lblEdit09PctCurrent.Text = myReader1("Jobbermargin09").ToString() + "%"
            lblEdit10PctCurrent.Text = myReader1("Other1Margin10").ToString() + "%"
            lblEdit11PctCurrent.Text = myReader1("Other2Margin11").ToString() + "%"


            'SqlDS_grdCurrentPricing.SelectParameters("WhseID").DefaultValue = grdBranchList.SelectedValue("WhseID").ToString()
            'SqlDS_grdCurrentPricing.SelectParameters("ProdCatID").DefaultValue = grdCatList.SelectedValue("ProdCatID").ToString()
            'grdCurrentPricing.DataSourceID = SqlDS_grdCurrentPricing.ID
            'grdCurrentPricing.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()


        End Try





    End Sub



    Protected Sub grdRankVariance_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdRankVariance.SelectedIndexChanged
        pnlRankUpdate.Enabled = "True"
        lblRankEdit.Text = "Rank Edit: " + grdCatList.SelectedValues("ProdCatID").ToString() + " - " + grdRankVariance.SelectedValues("Rank_Whse").ToString()
        txtRankVariance.DbValue = grdRankVariance.SelectedValues("Variance").ToString()
        hdnMatrixRankVarianceID.Value = grdRankVariance.SelectedValues("MatrixRankVarianceID").ToString()

    End Sub


    Protected Sub btnUpdateRankVariance_Click(sender As Object, e As System.EventArgs) Handles btnUpdateRankVariance.Click


        pnlRankUpdate.Enabled = "false"


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixRankVarianceUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@Variance", SqlDbType.Float).Value = txtRankVariance.DbValue
        updateCMD1.Parameters.Add("@MatrixVarianceID", SqlDbType.Int).Value = hdnMatrixRankVarianceID.Value

       


        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()


            grdRankVariance.DataSourceID = SqlDS_grdRankVar.ID
            grdRankVariance.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub
End Class
