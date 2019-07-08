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

Partial Class Controls_form_PricingModel2
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        If IsPostBack = "false" Then

            lblProductEdit.Text = ""
            MarginOverride.Enabled = "false"
            FixedPrice.Enabled = "false"
            btnFixedPriceRequest.Enabled = "false"
            btnProdIDMarginClear.Enabled = "false"
            btnProdIDMarginOverride.Enabled = "false"

            SqlDS_grdBase.SelectParameters("WhseID").DefaultValue = Response.Cookies("Whse1").Value.ToString()
            SqlDS_grdBase.SelectParameters("PriceType").DefaultValue = "03"
            SqlDS_grdBase.SelectParameters("ProdID").DefaultValue = "%"
            SqlDS_grdBase.SelectParameters("Description").DefaultValue = "%"
            SqlDS_grdBase.SelectParameters("Rank").DefaultValue = "%"

            SqlDS_grdFP.SelectParameters("WhseID").DefaultValue = Response.Cookies("Whse1").Value.ToString()
            SqlDS_grdFP.SelectParameters("ProdCatID").DefaultValue = "03"

            SqlDS_grdCatMargins.SelectParameters("WhseID").DefaultValue = Response.Cookies("Whse1").Value.ToString()
            SqlDS_grdOpenCatRequests.SelectParameters("WhseID").DefaultValue = Response.Cookies("Whse1").Value.ToString()
            SqlDS_fltrCustomersPriceType.SelectParameters("WhseID").DefaultValue = Response.Cookies("Whse1").Value.ToString()
            SqlDS_grdCustomers.SelectParameters("WhseID").DefaultValue = Response.Cookies("Whse1").Value.ToString()
            SqlDS_grdCatRanks.SelectParameters("WhseID").DefaultValue = Response.Cookies("Whse1").Value.ToString()

            SqlDS_grdRankBase.SelectParameters("WhseID").DefaultValue = Response.Cookies("Whse1").Value.ToString()
            SqlDS_grdRankBase.SelectParameters("PriceType").DefaultValue = "03"


            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)

            Dim selectCMD As SqlCommand = New SqlCommand("uspMatrixGetCatDetail", DKConnection)
            selectCMD.CommandType = CommandType.StoredProcedure
            selectCMD.Parameters.Add("@CatID", SqlDbType.NVarChar).Value = "03"
            selectCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()


            Try
                DKConnection.Open()

                Dim result As Integer = selectCMD.ExecuteNonQuery()
                Dim myReader As SqlDataReader = selectCMD.ExecuteReader()
                myReader.Read()

                M01.Text = myReader("Cashmargin01").ToString() + "%"
                M02.Text = myReader("Munigoodmargin02").ToString() + "%"
                M03.Text = myReader("Munibettermargin03").ToString() + "%"
                M04.Text = myReader("Munibestmargin04").ToString() + "%"
                M05.Text = myReader("Contrgoodmargin05").ToString() + "%"
                M06.Text = myReader("Contrbettermargin06").ToString() + "%"
                M07.Text = myReader("Contrbestmargin07").ToString() + "%"
                M08.Text = myReader("Contrsupermargin08").ToString() + "%"
                M09.Text = myReader("Jobbermargin09").ToString() + "%"
                M10.Text = myReader("Other1Margin10").ToString() + "%"
                M11.Text = myReader("Other2Margin11").ToString() + "%"

                hdnM01.Value = myReader("Cashmargin01")
                hdnM02.Value = myReader("Munigoodmargin02")
                hdnM03.Value = myReader("Munibettermargin03")
                hdnM04.Value = myReader("Munibestmargin04")
                hdnM05.Value = myReader("Contrgoodmargin05")
                hdnM06.Value = myReader("Contrbettermargin06")
                hdnM07.Value = myReader("Contrbestmargin07")
                hdnM08.Value = myReader("Contrsupermargin08")
                hdnM09.Value = myReader("Jobbermargin09")
                hdnM10.Value = myReader("Other1Margin10")
                hdnM11.Value = myReader("Other2Margin11")

                lblCRM01.Text = myReader("Cashmargin01").ToString() + "%"
                lblCRM02.Text = myReader("Munigoodmargin02").ToString() + "%"
                lblCRM03.Text = myReader("Munibettermargin03").ToString() + "%"
                lblCRM04.Text = myReader("Munibestmargin04").ToString() + "%"
                lblCRM05.Text = myReader("Contrgoodmargin05").ToString() + "%"
                lblCRM06.Text = myReader("Contrbettermargin06").ToString() + "%"
                lblCRM07.Text = myReader("Contrbestmargin07").ToString() + "%"
                lblCRM08.Text = myReader("Contrsupermargin08").ToString() + "%"
                lblCRM09.Text = myReader("Jobbermargin09").ToString() + "%"
                lblCRM10.Text = myReader("Other1Margin10").ToString() + "%"
                lblCRM11.Text = myReader("Other2Margin11").ToString() + "%"

                hdnCRM01.Value = myReader("Cashmargin01")
                hdnCRM02.Value = myReader("Munigoodmargin02")
                hdnCRM03.Value = myReader("Munibettermargin03")
                hdnCRM04.Value = myReader("Munibestmargin04")
                hdnCRM05.Value = myReader("Contrgoodmargin05")
                hdnCRM06.Value = myReader("Contrbettermargin06")
                hdnCRM07.Value = myReader("Contrbestmargin07")
                hdnCRM08.Value = myReader("Contrsupermargin08")
                hdnCRM09.Value = myReader("Jobbermargin09")
                hdnCRM10.Value = myReader("Other1Margin10")
                hdnCRM11.Value = myReader("Other2Margin11")

                SqlDS_grdBase.SelectParameters("M01").DefaultValue = myReader("Cashmargin01") / 100
                SqlDS_grdBase.SelectParameters("M02").DefaultValue = myReader("Munigoodmargin02") / 100
                SqlDS_grdBase.SelectParameters("M03").DefaultValue = myReader("Munibettermargin03") / 100
                SqlDS_grdBase.SelectParameters("M04").DefaultValue = myReader("Munibestmargin04") / 100
                SqlDS_grdBase.SelectParameters("M05").DefaultValue = myReader("Contrgoodmargin05") / 100
                SqlDS_grdBase.SelectParameters("M06").DefaultValue = myReader("Contrbettermargin06") / 100
                SqlDS_grdBase.SelectParameters("M07").DefaultValue = myReader("Contrbestmargin07") / 100
                SqlDS_grdBase.SelectParameters("M08").DefaultValue = myReader("Contrsupermargin08") / 100
                SqlDS_grdBase.SelectParameters("M09").DefaultValue = myReader("Jobbermargin09") / 100
                SqlDS_grdBase.SelectParameters("M10").DefaultValue = myReader("Other1Margin10") / 100
                SqlDS_grdBase.SelectParameters("M11").DefaultValue = myReader("Other2Margin11") / 100

                grdBase.DataSourceID = SqlDS_grdBase.ID
                grdBase.DataBind()

                myReader.Close()

            Catch ex As SqlException

            Finally
                DKConnection.Close()
            End Try


            lblCatReviewTitle.Text = "Request Under Review: "
            lblROM01.Text = "0 %"
            lblROM02.Text = "0 %"
            lblROM03.Text = "0 %"
            lblROM04.Text = "0 %"
            lblROM05.Text = "0 %"
            lblROM06.Text = "0 %"
            lblROM07.Text = "0 %"
            lblROM08.Text = "0 %"
            lblROM09.Text = "0 %"
            lblROM10.Text = "0 %"
            lblROM11.Text = "0 %"
            ROM01e.Value = 0
            ROM02e.Value = 0
            ROM03e.Value = 0
            ROM04e.Value = 0
            ROM05e.Value = 0
            ROM06e.Value = 0
            ROM07e.Value = 0
            ROM08e.Value = 0
            ROM09e.Value = 0
            ROM10e.Value = 0
            ROM11e.Value = 0
            hdnROM01.Value = 0
            hdnROM02.Value = 0
            hdnROM03.Value = 0
            hdnROM04.Value = 0
            hdnROM05.Value = 0
            hdnROM06.Value = 0
            hdnROM07.Value = 0
            hdnROM08.Value = 0
            hdnROM09.Value = 0
            hdnROM10.Value = 0
            hdnROM11.Value = 0

            btnPriceTypeCommit.Enabled = "false"
            btnPriceTypeRequestDelete.Enabled = "false"
            btnPriceTypeUpdateRequest3.Enabled = "false"

            lblCatRequestDetail.Text = "Category Request: Select a request from the Open Category Requests table to see detail here."
            lblCRRM01.Text = "0%"
            lblCRRM02.Text = "0%"
            lblCRRM03.Text = "0%"
            lblCRRM04.Text = "0%"
            lblCRRM05.Text = "0%"
            lblCRRM06.Text = "0%"
            lblCRRM07.Text = "0%"
            lblCRRM08.Text = "0%"
            lblCRRM09.Text = "0%"
            lblCRRM10.Text = "0%"
            lblCRRM11.Text = "0%"

            lblCustPriceTypeRequest.Text = "Select a customer at left to edit"
            lblCustPriceTypeRequestCurrentType.Text = "Current Price Type:"
            PriceTypeNew.Enabled = "false"
            btnPriceTypeRequestAdd.Enabled = "false"

            btnPriceTypeRequestDelete2.Enabled = "false"

        End If


        Dim DKConnectionString20 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection20 As New SqlConnection(DKConnectionString20)

        Dim selectCMD20 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection20)
        selectCMD20.CommandType = CommandType.StoredProcedure
        selectCMD20.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD20.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = "03"
        selectCMD20.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = ""

        Try
            DKConnection20.Open()

            Dim result20 As Integer = selectCMD20.ExecuteNonQuery()
            Dim myReader20 As SqlDataReader = selectCMD20.ExecuteReader()
            myReader20.Read()

            RankNone.Text = (100 * myReader20("Variance")).ToString() + "%"
            hdnRankNone.Value = myReader20("Variance")

            myReader20.Close()

        Catch ex As SqlException

        Finally
            DKConnection20.Close()
        End Try

        Dim DKConnectionString21 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection21 As New SqlConnection(DKConnectionString21)

        Dim selectCMD21 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection21)
        selectCMD21.CommandType = CommandType.StoredProcedure

        selectCMD21.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD21.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = "03"
        selectCMD21.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "A"

        Try
            DKConnection21.Open()

            Dim result21 As Integer = selectCMD21.ExecuteNonQuery()
            Dim myReader21 As SqlDataReader = selectCMD21.ExecuteReader()
            myReader21.Read()

            RankA.Text = (100 * myReader21("Variance")).ToString() + " %"
            hdnRankA.Value = myReader21("Variance")

            myReader21.Close()

        Catch ex As SqlException

        Finally
            DKConnection21.Close()
        End Try

        Dim DKConnectionString22 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection22 As New SqlConnection(DKConnectionString22)

        Dim selectCMD22 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection22)
        selectCMD22.CommandType = CommandType.StoredProcedure

        selectCMD22.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD22.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = "03"
        selectCMD22.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "B"

        Try
            DKConnection22.Open()

            Dim result22 As Integer = selectCMD22.ExecuteNonQuery()
            Dim myReader22 As SqlDataReader = selectCMD22.ExecuteReader()
            myReader22.Read()

            RankB.Text = (100 * myReader22("Variance")).ToString() + " %"
            hdnRankB.Value = myReader22("Variance")

            myReader22.Close()

        Catch ex As SqlException

        Finally
            DKConnection22.Close()
        End Try

        Dim DKConnectionString23 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection23 As New SqlConnection(DKConnectionString23)

        Dim selectCMD23 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection23)
        selectCMD23.CommandType = CommandType.StoredProcedure

        selectCMD23.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD23.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = "03"
        selectCMD23.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "C"

        Try
            DKConnection23.Open()

            Dim result23 As Integer = selectCMD23.ExecuteNonQuery()
            Dim myReader23 As SqlDataReader = selectCMD23.ExecuteReader()
            myReader23.Read()

            RankC.Text = (100 * myReader23("Variance")).ToString() + " %"
            hdnRankC.Value = myReader23("Variance")

            myReader23.Close()

        Catch ex As SqlException

        Finally
            DKConnection23.Close()
        End Try

        Dim DKConnectionString24 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection24 As New SqlConnection(DKConnectionString24)

        Dim selectCMD24 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection24)
        selectCMD24.CommandType = CommandType.StoredProcedure

        selectCMD24.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD24.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = "03"
        selectCMD24.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "D"

        Try
            DKConnection24.Open()

            Dim result24 As Integer = selectCMD24.ExecuteNonQuery()
            Dim myReader24 As SqlDataReader = selectCMD24.ExecuteReader()
            myReader24.Read()

            RankD.Text = (100 * myReader24("Variance")).ToString() + " %"
            hdnRankD.Value = myReader24("Variance")

            myReader24.Close()

        Catch ex As SqlException

        Finally
            DKConnection24.Close()
        End Try

        Dim DKConnectionString25 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection25 As New SqlConnection(DKConnectionString25)

        Dim selectCMD25 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection25)
        selectCMD25.CommandType = CommandType.StoredProcedure

        selectCMD25.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD25.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = "03"
        selectCMD25.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "E"

        Try
            DKConnection25.Open()

            Dim result25 As Integer = selectCMD25.ExecuteNonQuery()
            Dim myReader25 As SqlDataReader = selectCMD25.ExecuteReader()
            myReader25.Read()

            RankE.Text = (100 * myReader25("Variance")).ToString() + " %"
            hdnRankE.Value = myReader25("Variance")

            myReader25.Close()

        Catch ex As SqlException

        Finally
            DKConnection25.Close()
        End Try

    End Sub

    Protected Sub grdCategories_DataBound(sender As Object, e As System.EventArgs) Handles grdCategories.DataBound
        If IsPostBack = "false" Then
            grdCategories.MasterTableView.Items(0).Selected = "True"
        End If
    End Sub

    Protected Sub grdCategories_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdCategories.SelectedIndexChanged
        'lblTest.Text = grdCategories.MasterTableView.Items("ProdCatId").Selected.ToString()
        SqlDS_grdBase.SelectParameters("PriceType").DefaultValue = grdCategories.SelectedValues("ProdCatId").ToString()

        SqlDS_grdFP.SelectParameters("ProdCatID").DefaultValue = grdCategories.SelectedValues("ProdCatId").ToString()
        SqlDS_grdFP.SelectParameters("WhseID").DefaultValue = selectBranch.SelectedTab.Value.ToString()

        grdFP.DataSourceID = SqlDS_grdFP.ID
        grdFP.DataBind()

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim selectCMD As SqlCommand = New SqlCommand("uspMatrixGetCatDetail", DKConnection)
        selectCMD.CommandType = CommandType.StoredProcedure
        selectCMD.Parameters.Add("@CatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        selectCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()

        Try
            DKConnection.Open()

            Dim result As Integer = selectCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD.ExecuteReader()
            myReader.Read()

            M01.Text = myReader("Cashmargin01").ToString() + "%"
            M02.Text = myReader("Munigoodmargin02").ToString() + "%"
            M03.Text = myReader("Munibettermargin03").ToString() + "%"
            M04.Text = myReader("Munibestmargin04").ToString() + "%"
            M05.Text = myReader("Contrgoodmargin05").ToString() + "%"
            M06.Text = myReader("Contrbettermargin06").ToString() + "%"
            M07.Text = myReader("Contrbestmargin07").ToString() + "%"
            M08.Text = myReader("Contrsupermargin08").ToString() + "%"
            M09.Text = myReader("Jobbermargin09").ToString() + "%"
            M10.Text = myReader("Other1Margin10").ToString() + "%"
            M11.Text = myReader("Other2Margin11").ToString() + "%"

            hdnM01.Value = myReader("Cashmargin01")
            hdnM02.Value = myReader("Munigoodmargin02")
            hdnM03.Value = myReader("Munibettermargin03")
            hdnM04.Value = myReader("Munibestmargin04")
            hdnM05.Value = myReader("Contrgoodmargin05")
            hdnM06.Value = myReader("Contrbettermargin06")
            hdnM07.Value = myReader("Contrbestmargin07")
            hdnM08.Value = myReader("Contrsupermargin08")
            hdnM09.Value = myReader("Jobbermargin09")
            hdnM10.Value = myReader("Other1Margin10")
            hdnM11.Value = myReader("Other2Margin11")

            SqlDS_grdBase.SelectParameters("M01").DefaultValue = myReader("Cashmargin01") / 100
            SqlDS_grdBase.SelectParameters("M02").DefaultValue = myReader("Munigoodmargin02") / 100
            SqlDS_grdBase.SelectParameters("M03").DefaultValue = myReader("Munibettermargin03") / 100
            SqlDS_grdBase.SelectParameters("M04").DefaultValue = myReader("Munibestmargin04") / 100
            SqlDS_grdBase.SelectParameters("M05").DefaultValue = myReader("Contrgoodmargin05") / 100
            SqlDS_grdBase.SelectParameters("M06").DefaultValue = myReader("Contrbettermargin06") / 100

            SqlDS_grdBase.SelectParameters("M07").DefaultValue = myReader("Contrbestmargin07") / 100
            SqlDS_grdBase.SelectParameters("M08").DefaultValue = myReader("Contrsupermargin08") / 100
            SqlDS_grdBase.SelectParameters("M09").DefaultValue = myReader("Jobbermargin09") / 100
            SqlDS_grdBase.SelectParameters("M10").DefaultValue = myReader("Other1Margin10") / 100
            SqlDS_grdBase.SelectParameters("M11").DefaultValue = myReader("Other2Margin11") / 100

            grdBase.DataSourceID = SqlDS_grdBase.ID
            grdBase.DataBind()

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        selectCMD1.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId")
        selectCMD1.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = ""

        Try
            DKConnection1.Open()

            Dim result1 As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            RankNone.Text = (100 * myReader1("Variance")).ToString() + " %"
            hdnRankNone.Value = myReader1("Variance")

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure

        selectCMD2.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        selectCMD2.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        selectCMD2.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "A"

        Try
            DKConnection2.Open()

            Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            RankA.Text = (100 * myReader2("Variance")).ToString() + " %"
            hdnRankA.Value = myReader2("Variance")

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try

        Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection3 As New SqlConnection(DKConnectionString3)

        Dim selectCMD3 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection3)
        selectCMD3.CommandType = CommandType.StoredProcedure

        selectCMD3.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        selectCMD3.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        selectCMD3.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "B"

        Try
            DKConnection3.Open()

            Dim result3 As Integer = selectCMD3.ExecuteNonQuery()
            Dim myReader3 As SqlDataReader = selectCMD3.ExecuteReader()
            myReader3.Read()

            RankB.Text = (100 * myReader3("Variance")).ToString() + " %"
            hdnRankB.Value = myReader3("Variance")

            myReader3.Close()

        Catch ex As SqlException

        Finally
            DKConnection3.Close()
        End Try

        Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection4 As New SqlConnection(DKConnectionString4)

        Dim selectCMD4 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection4)
        selectCMD4.CommandType = CommandType.StoredProcedure

        selectCMD4.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        selectCMD4.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        selectCMD4.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "C"

        Try
            DKConnection4.Open()

            Dim result4 As Integer = selectCMD4.ExecuteNonQuery()
            Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
            myReader4.Read()

            RankC.Text = (100 * myReader4("Variance")).ToString() + " %"
            hdnRankC.Value = myReader4("Variance")

            myReader4.Close()

        Catch ex As SqlException

        Finally
            DKConnection4.Close()
        End Try

        Dim DKConnectionString5 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection5 As New SqlConnection(DKConnectionString5)

        Dim selectCMD5 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection5)
        selectCMD5.CommandType = CommandType.StoredProcedure

        selectCMD5.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        selectCMD5.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        selectCMD5.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "D"

        Try
            DKConnection5.Open()

            Dim result5 As Integer = selectCMD5.ExecuteNonQuery()
            Dim myReader5 As SqlDataReader = selectCMD5.ExecuteReader()
            myReader5.Read()

            RankD.Text = (100 * myReader5("Variance")).ToString() + " %"
            hdnRankD.Value = myReader5("Variance")

            myReader5.Close()

        Catch ex As SqlException

        Finally
            DKConnection5.Close()
        End Try

        Dim DKConnectionString6 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection6 As New SqlConnection(DKConnectionString6)

        Dim selectCMD6 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection6)
        selectCMD6.CommandType = CommandType.StoredProcedure

        selectCMD6.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        selectCMD6.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        selectCMD6.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "E"

        Try
            DKConnection6.Open()

            Dim result6 As Integer = selectCMD6.ExecuteNonQuery()
            Dim myReader6 As SqlDataReader = selectCMD6.ExecuteReader()
            myReader6.Read()

            RankE.Text = (100 * myReader6("Variance")).ToString() + " %"
            hdnRankE.Value = myReader6("Variance")

            myReader6.Close()

        Catch ex As SqlException

        Finally
            DKConnection6.Close()
        End Try

        'RankVarianceNoRank.Value = 0
        'RankVarianceA.Value = 0
        'RankVarianceB.Value = 0
        'RankVarianceC.Value = 0
        'RankVarianceD.Value = 0
        'RankVarianceE.Value = 0

    End Sub

    Protected Sub selectBranch_DataBound(sender As Object, e As System.EventArgs) Handles selectBranch.DataBound
        If IsPostBack = "false" Then
            selectBranch.Tabs.FindTabByValue(Response.Cookies("Whse1").Value).Selected = "true"

        End If
    End Sub


    Protected Sub selectBranch_TabClick(sender As Object, e As Telerik.Web.UI.RadTabStripEventArgs) Handles selectBranch.TabClick


        SqlDS_grdBase.SelectParameters("WhseID").DefaultValue = selectBranch.SelectedTab.Value.ToString()

        SqlDS_grdOpenCatRequests.SelectParameters("WhseID").DefaultValue = selectBranch.SelectedTab.Value.ToString()
        SqlDS_fltrCustomersPriceType.SelectParameters("WhseID").DefaultValue = selectBranch.SelectedTab.Value.ToString()
        SqlDS_grdCustomers.SelectParameters("WhseID").DefaultValue = selectBranch.SelectedTab.Value.ToString()
        SqlDS_grdCustomers.SelectParameters("PriceType").DefaultValue = "%"
        fltrCustomersPriceType.Items(0).Selected = "true"

        SqlDS_grdFP.SelectParameters("WhseID").DefaultValue = selectBranch.SelectedTab.Value.ToString()
        grdFP.DataSourceID = SqlDS_grdFP.ID
        grdFP.DataBind()

        SqlDS_grdCatMargins.SelectParameters("WhseID").DefaultValue = selectBranch.SelectedTab.Value.ToString()
        grdCatMargins.DataSourceID = SqlDS_grdCatMargins.ID
        grdCatMargins.DataBind()
        grdCatMargins.MasterTableView.Items(0).Selected = "True"

        SqlDS_grdCatRanks.SelectParameters("WhseID").DefaultValue = selectBranch.SelectedTab.Value.ToString()
        grdCatRanks.DataSourceID = SqlDS_grdCatRanks.ID
        grdCatRanks.DataBind()
        'grdCatRanks.MasterTableView.Items(0).Selected = "True"

        SqlDS_grdRankBase.SelectParameters("WhseID").DefaultValue = selectBranch.SelectedTab.Value.ToString()
        grdRankBase.DataSourceID = SqlDS_grdRankBase.ID
        grdRankBase.DataBind()


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim selectCMD As SqlCommand = New SqlCommand("uspMatrixGetCatDetail", DKConnection)
        selectCMD.CommandType = CommandType.StoredProcedure
        selectCMD.Parameters.Add("@CatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        selectCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()


        Try
            DKConnection.Open()

            Dim result As Integer = selectCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD.ExecuteReader()
            myReader.Read()

            SqlDS_grdBase.SelectParameters("M01").DefaultValue = myReader("Cashmargin01") / 100
            SqlDS_grdBase.SelectParameters("M02").DefaultValue = myReader("Munigoodmargin02") / 100
            SqlDS_grdBase.SelectParameters("M03").DefaultValue = myReader("Munibettermargin03") / 100
            SqlDS_grdBase.SelectParameters("M04").DefaultValue = myReader("Munibestmargin04") / 100
            SqlDS_grdBase.SelectParameters("M05").DefaultValue = myReader("Contrgoodmargin05") / 100
            SqlDS_grdBase.SelectParameters("M06").DefaultValue = myReader("Contrbettermargin06") / 100
            SqlDS_grdBase.SelectParameters("M07").DefaultValue = myReader("Contrbestmargin07") / 100
            SqlDS_grdBase.SelectParameters("M08").DefaultValue = myReader("Contrsupermargin08") / 100
            SqlDS_grdBase.SelectParameters("M09").DefaultValue = myReader("Jobbermargin09") / 100
            SqlDS_grdBase.SelectParameters("M10").DefaultValue = myReader("Other1Margin10") / 100
            SqlDS_grdBase.SelectParameters("M11").DefaultValue = myReader("Other2Margin11") / 100

            M01.Text = myReader("Cashmargin01").ToString() + "%"
            M02.Text = myReader("Munigoodmargin02").ToString() + "%"
            M03.Text = myReader("Munibettermargin03").ToString() + "%"
            M04.Text = myReader("Munibestmargin04").ToString() + "%"
            M05.Text = myReader("Contrgoodmargin05").ToString() + "%"
            M06.Text = myReader("Contrbettermargin06").ToString() + "%"
            M07.Text = myReader("Contrbestmargin07").ToString() + "%"
            M08.Text = myReader("Contrsupermargin08").ToString() + "%"
            M09.Text = myReader("Jobbermargin09").ToString() + "%"
            M10.Text = myReader("Other1Margin10").ToString() + "%"
            M11.Text = myReader("Other2Margin11").ToString() + "%"

            hdnM01.Value = myReader("Cashmargin01")
            hdnM02.Value = myReader("Munigoodmargin02")
            hdnM03.Value = myReader("Munibettermargin03")
            hdnM04.Value = myReader("Munibestmargin04")
            hdnM05.Value = myReader("Contrgoodmargin05")
            hdnM06.Value = myReader("Contrbettermargin06")
            hdnM07.Value = myReader("Contrbestmargin07")
            hdnM08.Value = myReader("Contrsupermargin08")
            hdnM09.Value = myReader("Jobbermargin09")
            hdnM10.Value = myReader("Other1Margin10")
            hdnM11.Value = myReader("Other2Margin11")

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try


        'Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        'Dim selectCMD1 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection1)
        'selectCMD1.CommandType = CommandType.StoredProcedure
        'selectCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        'selectCMD1.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        'selectCMD1.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = ""

        'Try
        '    DKConnection1.Open()

        '    Dim result1 As Integer = selectCMD1.ExecuteNonQuery()
        '    Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
        '    myReader1.Read()

        '    RankNone.Text = (100 * myReader1("Variance")).ToString() + " %"
        '    hdnRankNone.Value = myReader1("Variance")

        '    myReader1.Close()

        'Catch ex As SqlException

        'Finally
        '    DKConnection1.Close()
        'End Try

        'Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        'Dim selectCMD2 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection2)
        'selectCMD2.CommandType = CommandType.StoredProcedure

        'selectCMD2.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        'selectCMD2.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        'selectCMD2.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "A"

        'Try
        '    DKConnection2.Open()

        '    Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
        '    Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
        '    myReader2.Read()

        '    RankA.Text = (100 * myReader2("Variance")).ToString() + " %"
        '    hdnRankA.Value = myReader2("Variance")

        '    myReader2.Close()

        'Catch ex As SqlException

        'Finally
        '    DKConnection2.Close()
        'End Try

        'Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection3 As New SqlConnection(DKConnectionString3)

        'Dim selectCMD3 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection3)
        'selectCMD3.CommandType = CommandType.StoredProcedure

        'selectCMD3.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        'selectCMD3.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        'selectCMD3.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "B"

        'Try
        '    DKConnection3.Open()

        '    Dim result3 As Integer = selectCMD3.ExecuteNonQuery()
        '    Dim myReader3 As SqlDataReader = selectCMD3.ExecuteReader()
        '    myReader3.Read()

        '    RankB.Text = (100 * myReader3("Variance")).ToString() + " %"
        '    hdnRankB.Value = myReader3("Variance")

        '    myReader3.Close()

        'Catch ex As SqlException

        'Finally
        '    DKConnection3.Close()
        'End Try

        'Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection4 As New SqlConnection(DKConnectionString4)

        'Dim selectCMD4 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection4)
        'selectCMD4.CommandType = CommandType.StoredProcedure

        'selectCMD4.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        'selectCMD4.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        'selectCMD4.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "C"

        'Try
        '    DKConnection4.Open()

        '    Dim result4 As Integer = selectCMD4.ExecuteNonQuery()
        '    Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
        '    myReader4.Read()

        '    RankC.Text = (100 * myReader4("Variance")).ToString() + " %"
        '    hdnRankC.Value = myReader4("Variance")

        '    myReader4.Close()

        'Catch ex As SqlException

        'Finally
        '    DKConnection4.Close()
        'End Try

        'Dim DKConnectionString5 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection5 As New SqlConnection(DKConnectionString5)

        'Dim selectCMD5 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection5)
        'selectCMD5.CommandType = CommandType.StoredProcedure

        'selectCMD5.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        'selectCMD5.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        'selectCMD5.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "D"

        'Try
        '    DKConnection5.Open()

        '    Dim result5 As Integer = selectCMD5.ExecuteNonQuery()
        '    Dim myReader5 As SqlDataReader = selectCMD5.ExecuteReader()
        '    myReader5.Read()

        '    RankD.Text = (100 * myReader5("Variance")).ToString() + " %"
        '    hdnRankD.Value = myReader5("Variance")

        '    myReader5.Close()

        'Catch ex As SqlException

        'Finally
        '    DKConnection5.Close()
        'End Try

        'Dim DKConnectionString6 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection6 As New SqlConnection(DKConnectionString6)

        'Dim selectCMD6 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection6)
        'selectCMD6.CommandType = CommandType.StoredProcedure

        'selectCMD6.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        'selectCMD6.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        'selectCMD6.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "E"

        'Try
        '    DKConnection6.Open()

        '    Dim result6 As Integer = selectCMD6.ExecuteNonQuery()
        '    Dim myReader6 As SqlDataReader = selectCMD6.ExecuteReader()
        '    myReader6.Read()

        '    RankE.Text = (100 * myReader6("Variance")).ToString() + " %"
        '    hdnRankE.Value = myReader6("Variance")

        '    myReader6.Close()

        'Catch ex As SqlException

        'Finally
        '    DKConnection6.Close()
        'End Try

        'RankVarianceNoRank.Value = 0
        'RankVarianceA.Value = 0
        'RankVarianceB.Value = 0
        'RankVarianceC.Value = 0
        'RankVarianceD.Value = 0
        'RankVarianceE.Value = 0



        lblCatRequestDetail.Text = "Category Request: Select a request from the Open Category Requests table to see detail here."
        lblCRRM01.Text = "0%"
        lblCRRM02.Text = "0%"
        lblCRRM03.Text = "0%"
        lblCRRM04.Text = "0%"
        lblCRRM05.Text = "0%"
        lblCRRM06.Text = "0%"
        lblCRRM07.Text = "0%"
        lblCRRM08.Text = "0%"
        lblCRRM09.Text = "0%"
        lblCRRM10.Text = "0%"
        lblCRRM11.Text = "0%"



        'grdCatMargins.Items(0).Selected = "true"

        Dim DKConnectionString11 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection11 As New SqlConnection(DKConnectionString11)

        Dim selectCMD11 As SqlCommand = New SqlCommand("uspMatrixGetCatDetail", DKConnection11)
        selectCMD11.CommandType = CommandType.StoredProcedure
        selectCMD11.Parameters.Add("@CatID", SqlDbType.NVarChar).Value = grdCatMargins.SelectedValues("ProdCatID").ToString()
        selectCMD11.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()


        Try
            DKConnection11.Open()

            Dim result As Integer = selectCMD11.ExecuteNonQuery()
            Dim myReader11 As SqlDataReader = selectCMD11.ExecuteReader()
            myReader11.Read()

            lblCRM01.Text = myReader11("Cashmargin01").ToString() + "%"
            lblCRM02.Text = myReader11("Munigoodmargin02").ToString() + "%"
            lblCRM03.Text = myReader11("Munibettermargin03").ToString() + "%"
            lblCRM04.Text = myReader11("Munibestmargin04").ToString() + "%"
            lblCRM05.Text = myReader11("Contrgoodmargin05").ToString() + "%"
            lblCRM06.Text = myReader11("Contrbettermargin06").ToString() + "%"
            lblCRM07.Text = myReader11("Contrbestmargin07").ToString() + "%"
            lblCRM08.Text = myReader11("Contrsupermargin08").ToString() + "%"
            lblCRM09.Text = myReader11("Jobbermargin09").ToString() + "%"
            lblCRM10.Text = myReader11("Other1Margin10").ToString() + "%"
            lblCRM11.Text = myReader11("Other2Margin11").ToString() + "%"

            hdnCRM01.Value = myReader11("Cashmargin01")
            hdnCRM02.Value = myReader11("Munigoodmargin02")
            hdnCRM03.Value = myReader11("Munibettermargin03")
            hdnCRM04.Value = myReader11("Munibestmargin04")
            hdnCRM05.Value = myReader11("Contrgoodmargin05")
            hdnCRM06.Value = myReader11("Contrbettermargin06")
            hdnCRM07.Value = myReader11("Contrbestmargin07")
            hdnCRM08.Value = myReader11("Contrsupermargin08")
            hdnCRM09.Value = myReader11("Jobbermargin09")
            hdnCRM10.Value = myReader11("Other1Margin10")
            hdnCRM11.Value = myReader11("Other2Margin11")

            myReader11.Close()

        Catch ex As SqlException

        Finally
            DKConnection11.Close()
        End Try


        fltrCustomersPriceType.Items.Clear()
        fltrCustomersPriceType.Items.Insert(0, New RadComboBoxItem("All Price Types", "%"))

        lblCustPriceTypeRequest.Text = "Select a customer at left to edit"
        lblCustPriceTypeRequestCurrentType.Text = "Current Price Type:"
        PriceTypeNew.Enabled = "false"
        btnPriceTypeRequestAdd.Enabled = "false"

    End Sub

    Protected Sub fltrProdID_TextChanged(sender As Object, e As System.EventArgs) Handles fltrProdID.TextChanged
        If Len(fltrProdID.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("ProdID").DefaultValue = "%"
        Else
            SqlDS_grdBase.SelectParameters("ProdID").DefaultValue = fltrProdID.Text.ToString()
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub fltrDesc_TextChanged(sender As Object, e As System.EventArgs) Handles fltrDesc.TextChanged

        If Len(fltrDesc.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("Description").DefaultValue = "%"
        Else
            SqlDS_grdBase.SelectParameters("Description").DefaultValue = fltrDesc.Text.ToString()
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub fltrRank_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrRank.SelectedIndexChanged

        SqlDS_grdBase.SelectParameters("Rank").DefaultValue = fltrRank.SelectedValue.ToString()

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M01e_TextChanged(sender As Object, e As System.EventArgs) Handles M01e.TextChanged
        If Len(M01e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M01").DefaultValue = hdnM01.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M01").DefaultValue = M01e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M02e_TextChanged(sender As Object, e As System.EventArgs) Handles M02e.TextChanged
        If Len(M02e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M02").DefaultValue = hdnM02.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M02").DefaultValue = M02e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M03e_TextChanged(sender As Object, e As System.EventArgs) Handles M03e.TextChanged
        If Len(M03e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M03").DefaultValue = hdnM03.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M03").DefaultValue = M03e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M04e_TextChanged(sender As Object, e As System.EventArgs) Handles M04e.TextChanged
        If Len(M04e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M04").DefaultValue = hdnM04.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M04").DefaultValue = M04e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M05e_TextChanged(sender As Object, e As System.EventArgs) Handles M05e.TextChanged
        If Len(M05e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M05").DefaultValue = hdnM05.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M05").DefaultValue = M05e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M06e_TextChanged(sender As Object, e As System.EventArgs) Handles M06e.TextChanged
        If Len(M06e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M06").DefaultValue = hdnM06.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M06").DefaultValue = M06e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M07e_TextChanged(sender As Object, e As System.EventArgs) Handles M07e.TextChanged
        If Len(M07e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M07").DefaultValue = hdnM07.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M07").DefaultValue = M07e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M08e_TextChanged(sender As Object, e As System.EventArgs) Handles M08e.TextChanged
        If Len(M08e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M08").DefaultValue = hdnM08.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M08").DefaultValue = M08e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M09e_TextChanged(sender As Object, e As System.EventArgs) Handles M09e.TextChanged
        If Len(M09e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M09").DefaultValue = hdnM09.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M09").DefaultValue = M09e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M10e_TextChanged(sender As Object, e As System.EventArgs) Handles M10e.TextChanged
        If Len(M10e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M10").DefaultValue = hdnM10.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M10").DefaultValue = M10e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub M11e_TextChanged(sender As Object, e As System.EventArgs) Handles M11e.TextChanged
        If Len(M11e.Text.ToString()) = 0 Then
            SqlDS_grdBase.SelectParameters("M11").DefaultValue = hdnM11.Value / 100
        Else
            SqlDS_grdBase.SelectParameters("M11").DefaultValue = M11e.Value / 100
        End If

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub

    Protected Sub btnUpdateRankVariance_Click(sender As Object, e As System.EventArgs) Handles btnUpdateRankVariance.Click
        'hdnProdCatIDRanks.Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixRankVarianceUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        updateCMD1.Parameters.Add("@PriceType", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
        updateCMD1.Parameters.Add("@RankVarNone", SqlDbType.Float).Value = RankVarianceNoRank.Value / 100
        updateCMD1.Parameters.Add("@RankVarA", SqlDbType.Float).Value = RankVarianceA.Value / 100
        updateCMD1.Parameters.Add("@RankVarB", SqlDbType.Float).Value = RankVarianceB.Value / 100
        updateCMD1.Parameters.Add("@RankVarC", SqlDbType.Float).Value = RankVarianceC.Value / 100
        updateCMD1.Parameters.Add("@RankVarD", SqlDbType.Float).Value = RankVarianceD.Value / 100
        updateCMD1.Parameters.Add("@RankVarE", SqlDbType.Float).Value = RankVarianceE.Value / 100


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


        SqlDS_grdRankBase.SelectParameters("PriceType").DefaultValue = ""
        grdRankBase.DataSourceID = SqlDS_grdRankBase.ID
        grdRankBase.DataBind()

        grdCatRanks.DataSourceID = SqlDS_grdCatRanks.ID
        grdCatRanks.DataBind()

        RankNone.Text = "0 %"
        RankA.Text = "0 %"
        RankB.Text = "0 %"
        RankC.Text = "0 %"
        RankD.Text = "0 %"
        RankE.Text = "0 %"


    End Sub


    Protected Sub grdBase_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdBase.SelectedIndexChanged
        lblProductEdit.Text = "Product Edit: " + grdBase.SelectedValues("ProdID").ToString()
        MarginOverride.Enabled = "true"
        FixedPrice.Enabled = "true"
        btnFixedPriceRequest.Enabled = "true"
        btnProdIDMarginClear.Enabled = "true"
        btnProdIDMarginOverride.Enabled = "true"

    End Sub
    Protected Sub btnPriceTypeUpdateRequest_Click(sender As Object, e As System.EventArgs) Handles btnPriceTypeUpdateRequest.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixCategoryRevisionRequest", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCategories.SelectedValues("ProdCatId").ToString()
        updateCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        updateCMD1.Parameters.Add("@RequestID", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value

        If M01e.Value = 0 Then
            updateCMD1.Parameters.Add("@M01", SqlDbType.Float).Value = hdnM01.Value
        Else
            updateCMD1.Parameters.Add("@M01", SqlDbType.Float).Value = M01e.Value
        End If

        If M02e.Value = 0 Then
            updateCMD1.Parameters.Add("@M02", SqlDbType.Float).Value = hdnM02.Value
        Else
            updateCMD1.Parameters.Add("@M02", SqlDbType.Float).Value = M02e.Value
        End If

        If M03e.Value = 0 Then
            updateCMD1.Parameters.Add("@M03", SqlDbType.Float).Value = hdnM03.Value
        Else
            updateCMD1.Parameters.Add("@M03", SqlDbType.Float).Value = M03e.Value
        End If

        If M04e.Value = 0 Then
            updateCMD1.Parameters.Add("@M04", SqlDbType.Float).Value = hdnM04.Value
        Else
            updateCMD1.Parameters.Add("@M04", SqlDbType.Float).Value = M04e.Value
        End If

        If M05e.Value = 0 Then
            updateCMD1.Parameters.Add("@M05", SqlDbType.Float).Value = hdnM05.Value
        Else
            updateCMD1.Parameters.Add("@M05", SqlDbType.Float).Value = M05e.Value
        End If

        If M06e.Value = 0 Then
            updateCMD1.Parameters.Add("@M06", SqlDbType.Float).Value = hdnM06.Value
        Else
            updateCMD1.Parameters.Add("@M06", SqlDbType.Float).Value = M06e.Value
        End If

        If M07e.Value = 0 Then
            updateCMD1.Parameters.Add("@M07", SqlDbType.Float).Value = hdnM07.Value
        Else
            updateCMD1.Parameters.Add("@M07", SqlDbType.Float).Value = M07e.Value
        End If

        If M08e.Value = 0 Then
            updateCMD1.Parameters.Add("@M08", SqlDbType.Float).Value = hdnM08.Value
        Else
            updateCMD1.Parameters.Add("@M08", SqlDbType.Float).Value = M08e.Value
        End If

        If M09e.Value = 0 Then
            updateCMD1.Parameters.Add("@M09", SqlDbType.Float).Value = hdnM09.Value
        Else
            updateCMD1.Parameters.Add("@M09", SqlDbType.Float).Value = M09e.Value
        End If

        If M10e.Value = 0 Then
            updateCMD1.Parameters.Add("@M10", SqlDbType.Float).Value = hdnM10.Value
        Else
            updateCMD1.Parameters.Add("@M10", SqlDbType.Float).Value = M10e.Value
        End If

        If M11e.Value = 0 Then
            updateCMD1.Parameters.Add("@M11", SqlDbType.Float).Value = hdnM11.Value
        Else
            updateCMD1.Parameters.Add("@M11", SqlDbType.Float).Value = M11e.Value
        End If

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

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()

        grdCatUpdateReview.DataSourceID = SqlDS_grdCatUpdateReview.ID
        grdCatUpdateReview.DataBind()

        grdOpenCatRequests.DataSourceID = SqlDS_grdOpenCatRequests.ID
        grdOpenCatRequests.DataBind()



        ' Instantiate a new instance of MailMessage
        Dim mMailMessage As New MailMessage()

        ' Set the sender address of the mail message
        mMailMessage.From = New MailAddress("devadmin@danakepner.com")
        Dim eMailTo As String = "dejohnson@danakepner.com " + "," + Request.Cookies("eMail").Value.ToString()
        mMailMessage.To.Add(eMailTo)

        ' Set the subject of the mail message
        mMailMessage.Subject = "Pricig Model Update Request Submitted "
        ' Set the body of the mail message

        mMailMessage.Body = "Warehouse: " + selectBranch.SelectedTab.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />PriceType: " + grdCategories.SelectedValues("ProdCatId").ToString()
        mMailMessage.Body &= "<Br /><Br />Requestor: " + Request.Cookies("FullName").Value

        ' Set the format of the mail message body as HTML
        mMailMessage.IsBodyHtml = True
        ' Set the priority of the mail message to normal
        mMailMessage.Priority = MailPriority.Normal

        ' Instantiate a new instance of SmtpClient
        Dim mSmtpClient As New SmtpClient()
        ' Send the mail message
        mSmtpClient.Send(mMailMessage)



    End Sub
    Protected Sub btnPriceTypeUpdateRequest2_Click(sender As Object, e As System.EventArgs) Handles btnPriceTypeUpdateRequest2.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixCategoryRevisionRequest", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatMargins.SelectedValues("ProdCatID").ToString()
        updateCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        updateCMD1.Parameters.Add("@RequestID", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value

        If CRM01e.Value = 0 Then
            updateCMD1.Parameters.Add("@M01", SqlDbType.Float).Value = hdnCRM01.Value
        Else
            updateCMD1.Parameters.Add("@M01", SqlDbType.Float).Value = CRM01e.Value
        End If

        If CRM02e.Value = 0 Then
            updateCMD1.Parameters.Add("@M02", SqlDbType.Float).Value = hdnCRM02.Value
        Else
            updateCMD1.Parameters.Add("@M02", SqlDbType.Float).Value = CRM02e.Value
        End If

        If CRM03e.Value = 0 Then
            updateCMD1.Parameters.Add("@M03", SqlDbType.Float).Value = hdnCRM03.Value
        Else
            updateCMD1.Parameters.Add("@M03", SqlDbType.Float).Value = CRM03e.Value
        End If

        If CRM04e.Value = 0 Then
            updateCMD1.Parameters.Add("@M04", SqlDbType.Float).Value = hdnCRM04.Value
        Else
            updateCMD1.Parameters.Add("@M04", SqlDbType.Float).Value = CRM04e.Value
        End If

        If CRM05e.Value = 0 Then
            updateCMD1.Parameters.Add("@M05", SqlDbType.Float).Value = hdnCRM05.Value
        Else
            updateCMD1.Parameters.Add("@M05", SqlDbType.Float).Value = CRM05e.Value
        End If

        If CRM06e.Value = 0 Then
            updateCMD1.Parameters.Add("@M06", SqlDbType.Float).Value = hdnCRM06.Value
        Else
            updateCMD1.Parameters.Add("@M06", SqlDbType.Float).Value = CRM06e.Value
        End If

        If CRM07e.Value = 0 Then
            updateCMD1.Parameters.Add("@M07", SqlDbType.Float).Value = hdnCRM07.Value
        Else
            updateCMD1.Parameters.Add("@M07", SqlDbType.Float).Value = CRM07e.Value
        End If

        If CRM08e.Value = 0 Then
            updateCMD1.Parameters.Add("@M08", SqlDbType.Float).Value = hdnCRM08.Value
        Else
            updateCMD1.Parameters.Add("@M08", SqlDbType.Float).Value = CRM08e.Value
        End If

        If CRM09e.Value = 0 Then
            updateCMD1.Parameters.Add("@M09", SqlDbType.Float).Value = hdnCRM09.Value
        Else
            updateCMD1.Parameters.Add("@M09", SqlDbType.Float).Value = CRM09e.Value
        End If

        If CRM10e.Value = 0 Then
            updateCMD1.Parameters.Add("@M10", SqlDbType.Float).Value = hdnCRM10.Value
        Else
            updateCMD1.Parameters.Add("@M10", SqlDbType.Float).Value = CRM10e.Value
        End If

        If CRM11e.Value = 0 Then
            updateCMD1.Parameters.Add("@M11", SqlDbType.Float).Value = hdnCRM11.Value
        Else
            updateCMD1.Parameters.Add("@M11", SqlDbType.Float).Value = CRM11e.Value
        End If

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

        'grdCatMargins.DataSourceID = SqlDS_grdCatMargins.ID
        'grdCatMargins.DataBind()

        grdOpenCatRequests.DataSourceID = SqlDS_grdOpenCatRequests.ID
        grdOpenCatRequests.DataBind()

        grdCatUpdateReview.DataSourceID = SqlDS_grdCatUpdateReview.ID
        SqlDS_grdCatUpdateReview.DataBind()



        ' Instantiate a new instance of MailMessage
        Dim mMailMessage As New MailMessage()

        ' Set the sender address of the mail message
        mMailMessage.From = New MailAddress("devadmin@danakepner.com")
        Dim eMailTo As String = "dejohnson@danakepner.com " + "," + Request.Cookies("eMail").Value.ToString()
        mMailMessage.To.Add(eMailTo)

        ' Set the subject of the mail message
        mMailMessage.Subject = "Pricig Model Update Request Submitted "
        ' Set the body of the mail message

        mMailMessage.Body = "Warehouse: " + selectBranch.SelectedTab.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />PriceType: " + grdCatMargins.SelectedValues("ProdCatID").ToString()
        mMailMessage.Body &= "<Br /><Br />Requestor: " + Request.Cookies("FullName").Value

        ' Set the format of the mail message body as HTML
        mMailMessage.IsBodyHtml = True
        ' Set the priority of the mail message to normal
        mMailMessage.Priority = MailPriority.Normal

        ' Instantiate a new instance of SmtpClient
        Dim mSmtpClient As New SmtpClient()
        ' Send the mail message
        mSmtpClient.Send(mMailMessage)

    End Sub
    Protected Sub btnFixedPriceRequest_Click(sender As Object, e As System.EventArgs) Handles btnFixedPriceRequest.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixFixedPriceRequest", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        updateCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdBase.SelectedValues("ProdID").ToString()
        updateCMD1.Parameters.Add("@Price", SqlDbType.Float).Value = FixedPrice.Value

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

        grdFixedPriceStage.DataSourceID = SqlDS_grdFixedPriceStage.ID
        grdFixedPriceStage.DataBind()



        ' Instantiate a new instance of MailMessage
        Dim mMailMessage As New MailMessage()

        ' Set the sender address of the mail message
        mMailMessage.From = New MailAddress("devadmin@danakepner.com")
        Dim eMailTo As String = "dejohnson@danakepner.com " + "," + Request.Cookies("eMail").Value.ToString()
        mMailMessage.To.Add(eMailTo)

        ' Set the subject of the mail message
        mMailMessage.Subject = "Pricig Model Update Request Submitted "
        ' Set the body of the mail message

        mMailMessage.Body = "Warehouse: " + selectBranch.SelectedTab.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />Fixed Price: " + grdBase.SelectedValues("ProdID").ToString() + "  $" + FixedPrice.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />Requestor: " + Request.Cookies("FullName").Value

        ' Set the format of the mail message body as HTML
        mMailMessage.IsBodyHtml = True
        ' Set the priority of the mail message to normal
        mMailMessage.Priority = MailPriority.Normal

        ' Instantiate a new instance of SmtpClient
        Dim mSmtpClient As New SmtpClient()
        ' Send the mail message
        mSmtpClient.Send(mMailMessage)

    End Sub
    Protected Sub btnProdIDMarginOverride_Click(sender As Object, e As System.EventArgs) Handles btnProdIDMarginOverride.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixProductTargetCashMarginUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        updateCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdBase.SelectedValues("ProdID").ToString()
        updateCMD1.Parameters.Add("@TargetCashMargin", SqlDbType.Float).Value = MarginOverride.Value

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

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()

    End Sub
    Protected Sub btnProdIDMarginClear_Click(sender As Object, e As System.EventArgs) Handles btnProdIDMarginClear.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixProductTargetCashMarginDelete", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()
        updateCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdBase.SelectedValues("ProdID").ToString()

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

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()
    End Sub
    Protected Sub grdCatMargins_DataBound(sender As Object, e As System.EventArgs) Handles grdCatMargins.DataBound
        If IsPostBack = "false" Then
            grdCatMargins.MasterTableView.Items(0).Selected = "True"
        End If
    End Sub
    Protected Sub grdCatMargins_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdCatMargins.SelectedIndexChanged


        Dim DKConnectionString10 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection10 As New SqlConnection(DKConnectionString10)

        Dim selectCMD10 As SqlCommand = New SqlCommand("uspMatrixGetCatDetail", DKConnection10)
        selectCMD10.CommandType = CommandType.StoredProcedure
        selectCMD10.Parameters.Add("@CatID", SqlDbType.NVarChar).Value = grdCatMargins.SelectedValues("ProdCatID").ToString()
        selectCMD10.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = selectBranch.SelectedTab.Value.ToString()


        Try
            DKConnection10.Open()

            Dim result As Integer = selectCMD10.ExecuteNonQuery()
            Dim myReader10 As SqlDataReader = selectCMD10.ExecuteReader()
            myReader10.Read()

            lblCRM01.Text = myReader10("Cashmargin01").ToString() + "%"
            lblCRM02.Text = myReader10("Munigoodmargin02").ToString() + "%"
            lblCRM03.Text = myReader10("Munibettermargin03").ToString() + "%"
            lblCRM04.Text = myReader10("Munibestmargin04").ToString() + "%"
            lblCRM05.Text = myReader10("Contrgoodmargin05").ToString() + "%"
            lblCRM06.Text = myReader10("Contrbettermargin06").ToString() + "%"
            lblCRM07.Text = myReader10("Contrbestmargin07").ToString() + "%"
            lblCRM08.Text = myReader10("Contrsupermargin08").ToString() + "%"
            lblCRM09.Text = myReader10("Jobbermargin09").ToString() + "%"
            lblCRM10.Text = myReader10("Other1Margin10").ToString() + "%"
            lblCRM11.Text = myReader10("Other2Margin11").ToString() + "%"

            hdnCRM01.Value = myReader10("Cashmargin01")
            hdnCRM02.Value = myReader10("Munigoodmargin02")
            hdnCRM03.Value = myReader10("Munibettermargin03")
            hdnCRM04.Value = myReader10("Munibestmargin04")
            hdnCRM05.Value = myReader10("Contrgoodmargin05")
            hdnCRM06.Value = myReader10("Contrbettermargin06")
            hdnCRM07.Value = myReader10("Contrbestmargin07")
            hdnCRM08.Value = myReader10("Contrsupermargin08")
            hdnCRM09.Value = myReader10("Jobbermargin09")
            hdnCRM10.Value = myReader10("Other1Margin10")
            hdnCRM11.Value = myReader10("Other2Margin11")

            myReader10.Close()

        Catch ex As SqlException

        Finally
            DKConnection10.Close()
        End Try


    End Sub
    Protected Sub grdCatUpdateReview_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdCatUpdateReview.SelectedIndexChanged

        Dim DKConnectionString10 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection10 As New SqlConnection(DKConnectionString10)

        Dim selectCMD10 As SqlCommand = New SqlCommand("uspMatrixGetCatRevisionDetail", DKConnection10)
        selectCMD10.CommandType = CommandType.StoredProcedure
        selectCMD10.Parameters.Add("@TableIndex", SqlDbType.BigInt).Value = grdCatUpdateReview.SelectedValues("TableIndex")


        Try
            DKConnection10.Open()

            Dim result As Integer = selectCMD10.ExecuteNonQuery()
            Dim myReader10 As SqlDataReader = selectCMD10.ExecuteReader()
            myReader10.Read()

            lblCatReviewTitle.Text = "Request Under Review: " + myReader10("WhseID").ToString() + " - " + myReader10("ProdCatID").ToString()
            lblROM01.Text = myReader10("Cashmargin01").ToString() + "%"
            lblROM02.Text = myReader10("Munigoodmargin02").ToString() + "%"
            lblROM03.Text = myReader10("Munibettermargin03").ToString() + "%"
            lblROM04.Text = myReader10("Munibestmargin04").ToString() + "%"
            lblROM05.Text = myReader10("Contrgoodmargin05").ToString() + "%"
            lblROM06.Text = myReader10("Contrbettermargin06").ToString() + "%"
            lblROM07.Text = myReader10("Contrbestmargin07").ToString() + "%"
            lblROM08.Text = myReader10("Contrsupermargin08").ToString() + "%"
            lblROM09.Text = myReader10("Jobbermargin09").ToString() + "%"
            lblROM10.Text = myReader10("Other1Margin10").ToString() + "%"
            lblROM11.Text = myReader10("Other2Margin11").ToString() + "%"


            hdnTableIndex.Value = myReader10("TableIndex")
            hdnROM01.Value = myReader10("Cashmargin01")
            hdnROM02.Value = myReader10("Munigoodmargin02")
            hdnROM03.Value = myReader10("Munibettermargin03")
            hdnROM04.Value = myReader10("Munibestmargin04")
            hdnROM05.Value = myReader10("Contrgoodmargin05")
            hdnROM06.Value = myReader10("Contrbettermargin06")
            hdnROM07.Value = myReader10("Contrbestmargin07")
            hdnROM08.Value = myReader10("Contrsupermargin08")
            hdnROM09.Value = myReader10("Jobbermargin09")
            hdnROM10.Value = myReader10("Other1Margin10")
            hdnROM11.Value = myReader10("Other2Margin11")

            myReader10.Close()

        Catch ex As SqlException

        Finally
            DKConnection10.Close()
        End Try

        btnPriceTypeCommit.Enabled = "True"
        btnPriceTypeRequestDelete.Enabled = "True"
        btnPriceTypeUpdateRequest3.Enabled = "True"

    End Sub
    Protected Sub btnPriceTypeCommit_Click(sender As Object, e As System.EventArgs) Handles btnPriceTypeCommit.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixCategoryRevisionCommit", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@TableIndex", SqlDbType.BigInt).Value = grdCatUpdateReview.SelectedValues("TableIndex")
        updateCMD1.Parameters.Add("@AuthorizeID", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value


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


        grdCatUpdateReview.DataSourceID = SqlDS_grdCatUpdateReview.ID
        grdCatUpdateReview.DataBind()

        grdCatMargins.DataSourceID = SqlDS_grdCatMargins.ID
        grdCatMargins.DataBind()

        grdBase.DataSourceID = SqlDS_grdBase.ID
        grdBase.DataBind()

    End Sub
    Protected Sub btnPriceTypeRequestDelete_Click(sender As Object, e As System.EventArgs) Handles btnPriceTypeRequestDelete.Click

        Dim DKConnectionString10 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection10 As New SqlConnection(DKConnectionString10)

        Dim selectCMD10 As SqlCommand = New SqlCommand("uspMatrixCatRevisionDelete", DKConnection10)
        selectCMD10.CommandType = CommandType.StoredProcedure
        selectCMD10.Parameters.Add("@TableIndex", SqlDbType.BigInt).Value = grdCatUpdateReview.SelectedValues("TableIndex")


        Try
            DKConnection10.Open()

            Dim result As Integer = selectCMD10.ExecuteNonQuery()
            Dim myReader10 As SqlDataReader = selectCMD10.ExecuteReader()
            myReader10.Read()

            myReader10.Close()

        Catch ex As SqlException

        Finally
            DKConnection10.Close()
        End Try

        grdCatUpdateReview.DataSourceID = SqlDS_grdCatUpdateReview.ID
        grdCatUpdateReview.DataBind()

        grdOpenCatRequests.DataSourceID = SqlDS_grdOpenCatRequests.ID
        grdOpenCatRequests.DataBind()



        lblCatReviewTitle.Text = "Request Under Review: Select next request"

        lblROM01.Text = "0 %"
        lblROM02.Text = "0 %"
        lblROM03.Text = "0 %"
        lblROM04.Text = "0 %"
        lblROM05.Text = "0 %"
        lblROM06.Text = "0 %"
        lblROM07.Text = "0 %"
        lblROM08.Text = "0 %"
        lblROM09.Text = "0 %"
        lblROM10.Text = "0 %"
        lblROM11.Text = "0 %"
        ROM01e.Value = 0
        ROM02e.Value = 0
        ROM03e.Value = 0
        ROM04e.Value = 0
        ROM05e.Value = 0
        ROM06e.Value = 0
        ROM07e.Value = 0
        ROM08e.Value = 0
        ROM09e.Value = 0
        ROM10e.Value = 0
        ROM11e.Value = 0
        hdnROM01.Value = 0
        hdnROM02.Value = 0
        hdnROM03.Value = 0
        hdnROM04.Value = 0
        hdnROM05.Value = 0
        hdnROM06.Value = 0
        hdnROM07.Value = 0
        hdnROM08.Value = 0
        hdnROM09.Value = 0
        hdnROM10.Value = 0
        hdnROM11.Value = 0

    End Sub
    Protected Sub btnPriceTypeRequestDelete2_Click(sender As Object, e As System.EventArgs) Handles btnPriceTypeRequestDelete2.Click

        Dim DKConnectionString10 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection10 As New SqlConnection(DKConnectionString10)

        Dim selectCMD10 As SqlCommand = New SqlCommand("uspMatrixCatRevisionDelete", DKConnection10)
        selectCMD10.CommandType = CommandType.StoredProcedure
        selectCMD10.Parameters.Add("@TableIndex", SqlDbType.BigInt).Value = grdOpenCatRequests.SelectedValues("TableIndex")


        Try
            DKConnection10.Open()

            Dim result As Integer = selectCMD10.ExecuteNonQuery()
            Dim myReader10 As SqlDataReader = selectCMD10.ExecuteReader()
            myReader10.Read()

            myReader10.Close()

        Catch ex As SqlException

        Finally
            DKConnection10.Close()
        End Try


        lblCatRequestDetail.Text = "Category Request: Select a request from the Open Category Requests table to see detail here."
        lblCRRM01.Text = ""
        lblCRRM02.Text = ""
        lblCRRM03.Text = ""
        lblCRRM04.Text = ""
        lblCRRM05.Text = ""
        lblCRRM06.Text = ""
        lblCRRM07.Text = ""
        lblCRRM08.Text = ""
        lblCRRM09.Text = ""
        lblCRRM10.Text = ""
        lblCRRM11.Text = ""

        grdCatUpdateReview.DataSourceID = SqlDS_grdCatUpdateReview.ID
        grdCatUpdateReview.DataBind()

        grdOpenCatRequests.DataSourceID = SqlDS_grdOpenCatRequests.ID
        grdOpenCatRequests.DataBind()

        btnPriceTypeRequestDelete2.Enabled = "false"
    End Sub
    Protected Sub btnPriceTypeUpdateRequest3_Click(sender As Object, e As System.EventArgs) Handles btnPriceTypeUpdateRequest3.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixCategoryRevisionRequestUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@TableIndex", SqlDbType.BigInt).Value = grdCatUpdateReview.SelectedValues("TableIndex")
        updateCMD1.Parameters.Add("@AuthorizeID", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value

        If ROM01e.Value = 0 Then
            updateCMD1.Parameters.Add("@M01", SqlDbType.Float).Value = hdnROM01.Value
        Else
            updateCMD1.Parameters.Add("@M01", SqlDbType.Float).Value = ROM01e.Value
        End If

        If ROM02e.Value = 0 Then
            updateCMD1.Parameters.Add("@M02", SqlDbType.Float).Value = hdnROM02.Value
        Else
            updateCMD1.Parameters.Add("@M02", SqlDbType.Float).Value = ROM02e.Value
        End If

        If ROM03e.Value = 0 Then
            updateCMD1.Parameters.Add("@M03", SqlDbType.Float).Value = hdnROM03.Value
        Else
            updateCMD1.Parameters.Add("@M03", SqlDbType.Float).Value = ROM03e.Value
        End If

        If ROM04e.Value = 0 Then
            updateCMD1.Parameters.Add("@M04", SqlDbType.Float).Value = hdnROM04.Value
        Else
            updateCMD1.Parameters.Add("@M04", SqlDbType.Float).Value = ROM04e.Value
        End If

        If ROM05e.Value = 0 Then
            updateCMD1.Parameters.Add("@M05", SqlDbType.Float).Value = hdnROM05.Value
        Else
            updateCMD1.Parameters.Add("@M05", SqlDbType.Float).Value = ROM05e.Value
        End If

        If ROM06e.Value = 0 Then
            updateCMD1.Parameters.Add("@M06", SqlDbType.Float).Value = hdnROM06.Value
        Else
            updateCMD1.Parameters.Add("@M06", SqlDbType.Float).Value = ROM06e.Value
        End If

        If ROM07e.Value = 0 Then
            updateCMD1.Parameters.Add("@M07", SqlDbType.Float).Value = hdnROM07.Value
        Else
            updateCMD1.Parameters.Add("@M07", SqlDbType.Float).Value = ROM07e.Value
        End If

        If ROM08e.Value = 0 Then
            updateCMD1.Parameters.Add("@M08", SqlDbType.Float).Value = hdnROM08.Value
        Else
            updateCMD1.Parameters.Add("@M08", SqlDbType.Float).Value = ROM08e.Value
        End If

        If ROM09e.Value = 0 Then
            updateCMD1.Parameters.Add("@M09", SqlDbType.Float).Value = hdnROM09.Value
        Else
            updateCMD1.Parameters.Add("@M09", SqlDbType.Float).Value = ROM09e.Value
        End If

        If ROM10e.Value = 0 Then
            updateCMD1.Parameters.Add("@M10", SqlDbType.Float).Value = hdnROM10.Value
        Else
            updateCMD1.Parameters.Add("@M10", SqlDbType.Float).Value = ROM10e.Value
        End If

        If ROM11e.Value = 0 Then
            updateCMD1.Parameters.Add("@M11", SqlDbType.Float).Value = hdnROM11.Value
        Else
            updateCMD1.Parameters.Add("@M11", SqlDbType.Float).Value = ROM11e.Value
        End If

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


        grdCatUpdateReview.DataSourceID = SqlDS_grdCatUpdateReview.ID
        grdCatUpdateReview.DataBind()
    End Sub
    Protected Sub fltrCatReviewStatus_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrCatReviewStatus.SelectedIndexChanged
        SqlDS_grdCatUpdateReview.SelectParameters("Status").DefaultValue = fltrCatReviewStatus.SelectedValue.ToString()

        grdCatUpdateReview.DataSourceID = SqlDS_grdCatUpdateReview.ID
        grdCatUpdateReview.DataBind()

        If fltrCatReviewStatus.SelectedValue = "Committed" Then
            btnPriceTypeCommit.Enabled = "false"
            btnPriceTypeRequestDelete.Enabled = "false"
            btnPriceTypeUpdateRequest3.Enabled = "false"
        End If
    End Sub
    Protected Sub grdOpenCatRequests_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdOpenCatRequests.SelectedIndexChanged
        btnPriceTypeRequestDelete2.Enabled = "true"

        Dim DKConnectionString10 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection10 As New SqlConnection(DKConnectionString10)

        Dim selectCMD10 As SqlCommand = New SqlCommand("uspMatrixGetCatRevisionDetail", DKConnection10)
        selectCMD10.CommandType = CommandType.StoredProcedure
        selectCMD10.Parameters.Add("@TableIndex", SqlDbType.BigInt).Value = grdOpenCatRequests.SelectedValues("TableIndex")


        Try
            DKConnection10.Open()

            Dim result As Integer = selectCMD10.ExecuteNonQuery()
            Dim myReader10 As SqlDataReader = selectCMD10.ExecuteReader()
            myReader10.Read()

            lblCatRequestDetail.Text = " Category Request: " + myReader10("WhseID").ToString() + " - " + myReader10("ProdCatID").ToString()
            lblCRRM01.Text = myReader10("Cashmargin01").ToString() + "%"
            lblCRRM02.Text = myReader10("Munigoodmargin02").ToString() + "%"
            lblCRRM03.Text = myReader10("Munibettermargin03").ToString() + "%"
            lblCRRM04.Text = myReader10("Munibestmargin04").ToString() + "%"
            lblCRRM05.Text = myReader10("Contrgoodmargin05").ToString() + "%"
            lblCRRM06.Text = myReader10("Contrbettermargin06").ToString() + "%"
            lblCRRM07.Text = myReader10("Contrbestmargin07").ToString() + "%"
            lblCRRM08.Text = myReader10("Contrsupermargin08").ToString() + "%"
            lblCRRM09.Text = myReader10("Jobbermargin09").ToString() + "%"
            lblCRRM10.Text = myReader10("Other1Margin10").ToString() + "%"
            lblCRRM11.Text = myReader10("Other2Margin11").ToString() + "%"

            myReader10.Close()

        Catch ex As SqlException

        Finally
            DKConnection10.Close()
        End Try

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim selectCMD As SqlCommand = New SqlCommand("uspMatrixGetCatDetail", DKConnection)
        selectCMD.CommandType = CommandType.StoredProcedure
        selectCMD.Parameters.Add("@CatID", SqlDbType.NVarChar).Value = grdOpenCatRequests.SelectedValues("ProdCatID").ToString()
        selectCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = grdOpenCatRequests.SelectedValues("WhseID").ToString()


        Try
            DKConnection.Open()

            Dim result As Integer = selectCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD.ExecuteReader()
            myReader.Read()

            lblCRRMc01.Text = myReader("Cashmargin01").ToString() + "%"
            lblCRRMc02.Text = myReader("Munigoodmargin02").ToString() + "%"
            lblCRRMc03.Text = myReader("Munibettermargin03").ToString() + "%"
            lblCRRMc04.Text = myReader("Munibestmargin04").ToString() + "%"
            lblCRRMc05.Text = myReader("Contrgoodmargin05").ToString() + "%"
            lblCRRMc06.Text = myReader("Contrbettermargin06").ToString() + "%"
            lblCRRMc07.Text = myReader("Contrbestmargin07").ToString() + "%"
            lblCRRMc08.Text = myReader("Contrsupermargin08").ToString() + "%"
            lblCRRMc09.Text = myReader("Jobbermargin09").ToString() + "%"
            lblCRRMc10.Text = myReader("Other1Margin10").ToString() + "%"
            lblCRRMc11.Text = myReader("Other2Margin11").ToString() + "%"

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try



    End Sub
    Protected Sub RadToolTipbtnUpdateRankVariance_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnUpdateRankVariance.Load
        RadToolTipbtnUpdateRankVariance.Text = "Upon clicking, your changes to Rank Variances become active in the Pricing Model."
    End Sub
    Protected Sub RadToolTipbtnPriceTypeUpdateRequest_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnPriceTypeUpdateRequest.Load
        RadToolTipbtnPriceTypeUpdateRequest.Text = "Upon clicking, your product category changes changes to the Pricing Model are sent for review before they are updated in SXe (aka 'GUI'). <br /><br />PLEASE SUBMIT ONLY ONE REQUEST PER CATEGORY."
    End Sub
    Protected Sub RadToolTipbtnPriceTypeUpdateRequest2_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnPriceTypeUpdateRequest2.Load
        RadToolTipbtnPriceTypeUpdateRequest2.Text = "Upon clicking, your product category changes changes to the Pricing Model are sent for review before they are updated in SXe (aka 'GUI'). <br /><br />PLEASE SUBMIT ONLY ONE REQUEST PER CATEGORY."
    End Sub
    Protected Sub RadToolTipbtnProdIDMarginOverride_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnProdIDMarginOverride.Load
        RadToolTipbtnProdIDMarginOverride.Text = "Use this button to apply an override margin to a product.  No subsequent review/authorization is needed, so this change will take effect immediately in the model.<br /><br />These products will not inherit a Rank Variance."
    End Sub
    Protected Sub RadToolTipbtnFixedPriceRequest_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnFixedPriceRequest.Load
        RadToolTipbtnFixedPriceRequest.Text = "A manual process is required in SXe (aka GUI) to affix a fixed price, therefore there is a review process. <br /><br />A fixed price will prevail for all customers."
    End Sub
    Protected Sub RadToolTipbtnProdIDMarginClear_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnProdIDMarginClear.Load
        RadToolTipbtnProdIDMarginClear.Text = "Clicking this button will remove any special margin and place the product under the same rules for all other standard products in this category."
    End Sub
    Protected Sub RadToolTipbtnPriceTypeCommit_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnPriceTypeCommit.Load
        RadToolTipbtnPriceTypeCommit.Text = "Commits the changes to the Pricing Model.  Click this button after the changes have been made in SXe."
    End Sub
    Protected Sub RadToolTipbtnPriceTypeUpdateRequest3_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnPriceTypeUpdateRequest3.Load
        RadToolTipbtnPriceTypeUpdateRequest3.Text = "Updates the current request.  This does not commit the change to the Pricing Model."
    End Sub
    Protected Sub RadToolTipbtnPriceTypeRequestDelete_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnPriceTypeRequestDelete.Load
        RadToolTipbtnPriceTypeRequestDelete.Text = "Deletes the request."
    End Sub
    Protected Sub RadToolTipbtnPriceTypeRequestDelete2_Load(sender As Object, e As System.EventArgs) Handles RadToolTipbtnPriceTypeRequestDelete2.Load
        RadToolTipbtnPriceTypeRequestDelete2.Text = "Deletes the request."
    End Sub
    Protected Sub grdCustomers_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdCustomers.SelectedIndexChanged

        PriceTypeNew.Enabled = "true"
        btnPriceTypeRequestAdd.Enabled = "true"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim selectCMD As SqlCommand = New SqlCommand("uspCustomerDetailGet", DKConnection)
        selectCMD.CommandType = CommandType.StoredProcedure
        selectCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = grdCustomers.SelectedValues("CustID").ToString()


        Try
            DKConnection.Open()

            Dim result As Integer = selectCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD.ExecuteReader()
            myReader.Read()

            lblCustPriceTypeRequest.Text = myReader("CustName").ToString()
            lblCustPriceTypeRequestCurrentType.Text = "Current Price Type:  " + myReader("PriceType").ToString()
            hdnCustName.Value = myReader("CustName")
            hdnPriceTypeCurrent.Value = myReader("PriceType").ToString()
            PriceTypeNew.SelectedValue = myReader("PriceType").ToString()

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try
    End Sub
    Protected Sub btnPriceTypeRequestAdd_Click(sender As Object, e As System.EventArgs) Handles btnPriceTypeRequestAdd.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspMatrixCusPriceTypeRequest", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = grdCustomers.SelectedValues("CustID")
        updateCMD1.Parameters.Add("@CustName", SqlDbType.NVarChar).Value = hdnCustName.Value.ToString()
        updateCMD1.Parameters.Add("@OldPriceType", SqlDbType.NVarChar).Value = hdnPriceTypeCurrent.Value.ToString()
        updateCMD1.Parameters.Add("@NewPriceType", SqlDbType.NVarChar).Value = PriceTypeNew.SelectedValue.ToString()
        updateCMD1.Parameters.Add("@RequestID", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value

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

        grdOpenPTRequests.DataSourceID = SqlDS_grdOpenPTRequests.ID
        grdOpenPTRequests.DataBind()

    End Sub
    'Protected Sub RadToolTipRankNote_Load(sender As Object, e As System.EventArgs) Handles RadToolTipRankNote.Load
    '    RadToolTipRankNote.Text = "When using Rank Variances, the final calculated price will be correct for the -01 price type and slightly higher for all other price types.<br /><br /> "
    '    RadToolTipRankNote.Text &= "Due to a multitude of variables necessary in pricetype modelling, a 'chicken or the egg' scenario is created that does not allow for 100% accuracy in the rank variance price calculations."
    '    RadToolTipRankNote.Text &= "This short coming will be addressed in a future release of the Pricing Model."
    'End Sub

    Protected Sub grdCatRanks_DataBound(sender As Object, e As System.EventArgs) Handles grdCatRanks.DataBound
        If IsPostBack = "false" Then
            grdCatRanks.MasterTableView.Items(0).Selected = "True"


            Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection1 As New SqlConnection(DKConnectionString1)

            Dim selectCMD1 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection1)
            selectCMD1.CommandType = CommandType.StoredProcedure
            selectCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
            selectCMD1.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId")
            selectCMD1.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = ""

            Try
                DKConnection1.Open()

                Dim result1 As Integer = selectCMD1.ExecuteNonQuery()
                Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
                myReader1.Read()

                RankNone.Text = (100 * myReader1("Variance")).ToString() + " %"
                hdnRankNone.Value = myReader1("Variance")
                RankVarianceNoRank.Value = myReader1("Variance") * 100

                myReader1.Close()

            Catch ex As SqlException

            Finally
                DKConnection1.Close()
            End Try

            Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection2 As New SqlConnection(DKConnectionString2)

            Dim selectCMD2 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection2)
            selectCMD2.CommandType = CommandType.StoredProcedure

            selectCMD2.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
            selectCMD2.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
            selectCMD2.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "A"

            Try
                DKConnection2.Open()

                Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
                Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
                myReader2.Read()

                RankA.Text = (100 * myReader2("Variance")).ToString() + " %"
                hdnRankA.Value = myReader2("Variance")
                RankVarianceA.Value = myReader2("Variance") * 100

                myReader2.Close()

            Catch ex As SqlException

            Finally
                DKConnection2.Close()
            End Try

            Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection3 As New SqlConnection(DKConnectionString3)

            Dim selectCMD3 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection3)
            selectCMD3.CommandType = CommandType.StoredProcedure

            selectCMD3.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
            selectCMD3.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
            selectCMD3.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "B"

            Try
                DKConnection3.Open()

                Dim result3 As Integer = selectCMD3.ExecuteNonQuery()
                Dim myReader3 As SqlDataReader = selectCMD3.ExecuteReader()
                myReader3.Read()

                RankB.Text = (100 * myReader3("Variance")).ToString() + " %"
                hdnRankB.Value = myReader3("Variance")
                RankVarianceB.Value = myReader3("Variance") * 100

                myReader3.Close()

            Catch ex As SqlException

            Finally
                DKConnection3.Close()
            End Try

            Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection4 As New SqlConnection(DKConnectionString4)

            Dim selectCMD4 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection4)
            selectCMD4.CommandType = CommandType.StoredProcedure

            selectCMD4.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
            selectCMD4.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
            selectCMD4.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "C"

            Try
                DKConnection4.Open()

                Dim result4 As Integer = selectCMD4.ExecuteNonQuery()
                Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
                myReader4.Read()

                RankC.Text = (100 * myReader4("Variance")).ToString() + " %"
                hdnRankC.Value = myReader4("Variance")
                RankVarianceC.Value = myReader4("Variance") * 100

                myReader4.Close()

            Catch ex As SqlException

            Finally
                DKConnection4.Close()
            End Try

            Dim DKConnectionString5 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection5 As New SqlConnection(DKConnectionString5)

            Dim selectCMD5 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection5)
            selectCMD5.CommandType = CommandType.StoredProcedure

            selectCMD5.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
            selectCMD5.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
            selectCMD5.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "D"

            Try
                DKConnection5.Open()

                Dim result5 As Integer = selectCMD5.ExecuteNonQuery()
                Dim myReader5 As SqlDataReader = selectCMD5.ExecuteReader()
                myReader5.Read()

                RankD.Text = (100 * myReader5("Variance")).ToString() + " %"
                hdnRankD.Value = myReader5("Variance")
                RankVarianceD.Value = myReader5("Variance") * 100

                myReader5.Close()

            Catch ex As SqlException

            Finally
                DKConnection5.Close()
            End Try

            Dim DKConnectionString6 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection6 As New SqlConnection(DKConnectionString6)

            Dim selectCMD6 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection6)
            selectCMD6.CommandType = CommandType.StoredProcedure

            selectCMD6.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
            selectCMD6.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
            selectCMD6.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "E"

            Try
                DKConnection6.Open()

                Dim result6 As Integer = selectCMD6.ExecuteNonQuery()
                Dim myReader6 As SqlDataReader = selectCMD6.ExecuteReader()
                myReader6.Read()

                RankE.Text = (100 * myReader6("Variance")).ToString() + " %"
                hdnRankE.Value = myReader6("Variance")
                RankVarianceE.Value = myReader6("Variance") * 100

                myReader6.Close()

            Catch ex As SqlException

            Finally
                DKConnection6.Close()
            End Try

           

        End If
    End Sub

    Protected Sub grdCatRanks_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdCatRanks.SelectedIndexChanged

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD1.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
        selectCMD1.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = ""

        Try
            DKConnection1.Open()

            Dim result1 As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            RankNone.Text = (100 * myReader1("Variance")).ToString() + " %"
            hdnRankNone.Value = myReader1("Variance")
            RankVarianceNoRank.Value = myReader1("Variance") * 100

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure

        selectCMD2.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD2.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
        selectCMD2.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "A"

        Try
            DKConnection2.Open()

            Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            RankA.Text = (100 * myReader2("Variance")).ToString() + " %"
            hdnRankA.Value = myReader2("Variance")
            RankVarianceA.Value = myReader2("Variance") * 100

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try

        Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection3 As New SqlConnection(DKConnectionString3)

        Dim selectCMD3 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection3)
        selectCMD3.CommandType = CommandType.StoredProcedure

        selectCMD3.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD3.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
        selectCMD3.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "B"

        Try
            DKConnection3.Open()

            Dim result3 As Integer = selectCMD3.ExecuteNonQuery()
            Dim myReader3 As SqlDataReader = selectCMD3.ExecuteReader()
            myReader3.Read()

            RankB.Text = (100 * myReader3("Variance")).ToString() + " %"
            hdnRankB.Value = myReader3("Variance")
            RankVarianceB.Value = myReader3("Variance") * 100

            myReader3.Close()

        Catch ex As SqlException

        Finally
            DKConnection3.Close()
        End Try

        Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection4 As New SqlConnection(DKConnectionString4)

        Dim selectCMD4 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection4)
        selectCMD4.CommandType = CommandType.StoredProcedure

        selectCMD4.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD4.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
        selectCMD4.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "C"

        Try
            DKConnection4.Open()

            Dim result4 As Integer = selectCMD4.ExecuteNonQuery()
            Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
            myReader4.Read()

            RankC.Text = (100 * myReader4("Variance")).ToString() + " %"
            hdnRankC.Value = myReader4("Variance")
            RankVarianceC.Value = myReader4("Variance") * 100

            myReader4.Close()

        Catch ex As SqlException

        Finally
            DKConnection4.Close()
        End Try

        Dim DKConnectionString5 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection5 As New SqlConnection(DKConnectionString5)

        Dim selectCMD5 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection5)
        selectCMD5.CommandType = CommandType.StoredProcedure

        selectCMD5.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD5.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
        selectCMD5.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "D"

        Try
            DKConnection5.Open()

            Dim result5 As Integer = selectCMD5.ExecuteNonQuery()
            Dim myReader5 As SqlDataReader = selectCMD5.ExecuteReader()
            myReader5.Read()

            RankD.Text = (100 * myReader5("Variance")).ToString() + " %"
            hdnRankD.Value = myReader5("Variance")
            RankVarianceD.Value = myReader5("Variance") * 100

            myReader5.Close()

        Catch ex As SqlException

        Finally
            DKConnection5.Close()
        End Try

        Dim DKConnectionString6 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection6 As New SqlConnection(DKConnectionString6)

        Dim selectCMD6 As SqlCommand = New SqlCommand("uspMatrixRankVarianceGetByWhseCat", DKConnection6)
        selectCMD6.CommandType = CommandType.StoredProcedure

        selectCMD6.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = Response.Cookies("Whse1").Value.ToString()
        selectCMD6.Parameters.Add("@ProdCatID", SqlDbType.NVarChar).Value = grdCatRanks.SelectedValues("ProdCatId").ToString()
        selectCMD6.Parameters.Add("@Rank", SqlDbType.NVarChar).Value = "E"

        Try
            DKConnection6.Open()

            Dim result6 As Integer = selectCMD6.ExecuteNonQuery()
            Dim myReader6 As SqlDataReader = selectCMD6.ExecuteReader()
            myReader6.Read()

            RankE.Text = (100 * myReader6("Variance")).ToString() + " %"
            hdnRankE.Value = myReader6("Variance")
            RankVarianceE.Value = myReader6("Variance") * 100

            myReader6.Close()

        Catch ex As SqlException

        Finally
            DKConnection6.Close()
        End Try

        SqlDS_grdRankBase.SelectParameters("PriceType").DefaultValue = grdCatRanks.SelectedValues("ProdCatId").ToString()
        SqlDS_grdRankBase.SelectParameters("RequestType").DefaultValue = "Initial"
        SqlDS_grdRankBase.SelectParameters("RankVarNone").DefaultValue = hdnRankNone.Value
        SqlDS_grdRankBase.SelectParameters("RankVarA").DefaultValue = hdnRankA.Value
        SqlDS_grdRankBase.SelectParameters("RankVarB").DefaultValue = hdnRankB.Value
        SqlDS_grdRankBase.SelectParameters("RankVarC").DefaultValue = hdnRankC.Value
        SqlDS_grdRankBase.SelectParameters("RankVarD").DefaultValue = hdnRankD.Value
        SqlDS_grdRankBase.SelectParameters("RankVarE").DefaultValue = hdnRankE.Value

        grdRankBase.DataSourceID = SqlDS_grdRankBase.ID
        grdRankBase.DataBind()

    End Sub

    Protected Sub RankVarianceNoRank_TextChanged(sender As Object, e As System.EventArgs) Handles RankVarianceNoRank.TextChanged
        SqlDS_grdRankBase.SelectParameters("RankVarNone").DefaultValue = RankVarianceNoRank.Value / 100
        SqlDS_grdRankBase.SelectParameters("RequestType").DefaultValue = "Update"

        grdRankBase.DataSourceID = SqlDS_grdRankBase.ID
        grdRankBase.DataBind()

    End Sub

    Protected Sub RankVarianceA_TextChanged(sender As Object, e As System.EventArgs) Handles RankVarianceA.TextChanged
        SqlDS_grdRankBase.SelectParameters("RankVarA").DefaultValue = RankVarianceA.Value / 100
        SqlDS_grdRankBase.SelectParameters("RequestType").DefaultValue = "Update"

        grdRankBase.DataSourceID = SqlDS_grdRankBase.ID
        grdRankBase.DataBind()
    End Sub

    Protected Sub RankVarianceB_TextChanged(sender As Object, e As System.EventArgs) Handles RankVarianceB.TextChanged
        SqlDS_grdRankBase.SelectParameters("RankVarB").DefaultValue = RankVarianceB.Value / 100
        SqlDS_grdRankBase.SelectParameters("RequestType").DefaultValue = "Update"

        grdRankBase.DataSourceID = SqlDS_grdRankBase.ID
        grdRankBase.DataBind()
    End Sub

    Protected Sub RankVarianceC_TextChanged(sender As Object, e As System.EventArgs) Handles RankVarianceC.TextChanged
        SqlDS_grdRankBase.SelectParameters("RankVarC").DefaultValue = RankVarianceC.Value / 100
        SqlDS_grdRankBase.SelectParameters("RequestType").DefaultValue = "Update"

        grdRankBase.DataSourceID = SqlDS_grdRankBase.ID
        grdRankBase.DataBind()
    End Sub

    Protected Sub RankVarianceD_TextChanged(sender As Object, e As System.EventArgs) Handles RankVarianceD.TextChanged
        SqlDS_grdRankBase.SelectParameters("RankVarD").DefaultValue = RankVarianceD.Value / 100
        SqlDS_grdRankBase.SelectParameters("RequestType").DefaultValue = "Update"

        grdRankBase.DataSourceID = SqlDS_grdRankBase.ID
        grdRankBase.DataBind()
    End Sub

    Protected Sub RankVarianceE_TextChanged(sender As Object, e As System.EventArgs) Handles RankVarianceE.TextChanged
        SqlDS_grdRankBase.SelectParameters("RankVarE").DefaultValue = RankVarianceE.Value / 100
        SqlDS_grdRankBase.SelectParameters("RequestType").DefaultValue = "Update"

        grdRankBase.DataSourceID = SqlDS_grdRankBase.ID
        grdRankBase.DataBind()
    End Sub
End Class
