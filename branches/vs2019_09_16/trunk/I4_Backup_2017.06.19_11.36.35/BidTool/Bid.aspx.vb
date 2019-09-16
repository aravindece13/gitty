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
Imports System.Net.Mail


Partial Class BidTool_Bid
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.Title = "BidTool Quote"
        'wndwQuoteActivity.NavigateUrl = "~/BidTool/QuoteActivity.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
        hdnQuoteID.Value = Request.QueryString("QuoteID").ToString()

        lblTaxStatusProdID.Text = "Select a product at left to edit"
        lblProductListCopyConfirm.Text = "Project to Copy:"
        btnCopyProductList.Enabled = "false"

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)
        Dim selectCMD1 As SqlCommand = New SqlCommand("uspQuoteGetDetails", DKConnection1)

        Dim DKConnectionString5 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection5 As New SqlConnection(DKConnectionString5)
        Dim selectCMD5 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection5)


        If IsPostBack = "False" Then

            lnkQuoteFormalPDF.NavigateUrl = "~/Reports2/Quote_Formal_PDF.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteFormalPDFNoBreak.NavigateUrl = "~/Reports2/Quote_Formal_PDF_NoBreak.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteFormalNoAveragePDF.NavigateUrl = "~/Reports2/Quote_Formal_NoAveraging_PDF.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteFormalNoMatListPDF.NavigateUrl = "~/Reports2/Quote_Formal2_PDF.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteFormal3PDF.NavigateUrl = "~/Reports2/Quote_Formal3_PDF.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteFormalNoMatListPDF_NoBreak.NavigateUrl = "~/Reports2/Quote_Formal2_PDF_NoBreak.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteScopeOfWork.NavigateUrl = "~/Reports2/Quote_ScopeOfWork_PDF.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteSubmittal.NavigateUrl = "~/Reports2/Quote_Formal_PDF_NoPrice.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()

            lnkQuoteTrimPDF.NavigateUrl = "~/Reports2/Quote_Trim_PDF.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteMaterialListPDF.NavigateUrl = "~/Reports2/Quote_MaterialList_PDF.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteStructuredExcel.NavigateUrl = "~/Reports2/Quote_Formal_Excel.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteStructuredExcel2.NavigateUrl = "~/Reports2/Quote_Formal2_Excel.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteMaterialListExcel.NavigateUrl = "~/Reports2/Quote_MaterialList_Excel.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkInforContractPricing.NavigateUrl = "~/Reports2/Quote_SXe_Contracts_Excel.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            'lnkInforQuoteOrder.NavigateUrl = "~/Reports2/Quote_SXe_QuoteOrder_Excel.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteManEntry.NavigateUrl = "~/Reports2/Quote_SXe_ManualEntry.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteManEntryMatList.NavigateUrl = "~/Reports2/Quote_SXe_ManualEntryMatList.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteManEntrySectionalMatList.NavigateUrl = "~/Reports2/Quote_SXe_ManualEntrysectionalMatList.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteManEntryMatListWithLocation.NavigateUrl = "~/Reports2/Quote_SXe_ManualEntryMatListWithLocation.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()

            lnkQuoteFormalAMRPDF.NavigateUrl = "~/Reports2/Quote_Formal_AMR_PDF.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()
            lnkQuoteFormalNoMatListAMRPDF.NavigateUrl = "~/Reports2/Quote_Formal2_AMR_PDF.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString()

            ContractStartDate.SelectedDate = "1/1/" + Now.Year.ToString()
            ContractEndDate.SelectedDate = "12/31/" + Now.Year.ToString()

            btnTargetMarginUpdate3.Enabled = "False"
            btnTaxTypeUpdate.Enabled = "false"

            btnEditCostingUpdateCost.Enabled = "false"
            'btnEditCostingUpdateCostCommentOnly.Visible = "false"
            editProdDesc.Enabled = "false"
            btnProdDescUpdate.Enabled = "false"

            btnCopySelectedTakeOff.Enabled = "false"

            btnUpdateTerm.Enabled = "False"
            btnUtilityCopyQuoteGoToNew.Enabled = "false"

            btnUtilityMatrixUpdate.Text = "Update Matrix Pricing"
            btnUtilityContractUpdate.Text = "Update Contract Pricing"

            btnAddSubsection.Enabled = "True"
            txtBoxNewSubsection.Text = "Select a Parent Section at left"
            txtBoxNewSubsection.Enabled = "false"

            btnUpdateSection.Enabled = "True"
            txtBoxSectionName.Text = "Select a Section at left to edit"
            txtBoxSectionName.Enabled = "false"
            txtBoxSectionSeq.Enabled = "false"

            btnUpdateSubsection.Enabled = "True"
            txtBoxSubsectionName.Text = "Select a Subsection at left to edit"
            txtBoxSubsectionName.Enabled = "false"
            txtBoxSubsectionSeq.Enabled = "false"

            btnDeleteSection.Enabled = "false"
            lblSectionDelete.Text = "Section to Delete: Select a Section at left to delete"
            'txtBoxSectionDelete.Text = "Select a Section at left to delete"
            'txtBoxSectionDelete.Enabled = "false"

            btnDeleteSubsection.Enabled = "false"
            lblSubsectionDelete.Text = "Subsection to Delete: Select a Subsection at Left"
            'txtBoxSubsectionDelete.Text = "Select a Subsection at left to delete"
            'txtBoxSubsectionDelete.Enabled = "false"

            SqlDS_grdPricing2.SelectParameters("ProdID").DefaultValue = "%"
            SqlDS_grdPricing2.SelectParameters("Desc").DefaultValue = "%"
            SqlDS_grdPricing2.SelectParameters("HowPriced").DefaultValue = "%"
            SqlDS_grdPricing2.SelectParameters("PricedBy").DefaultValue = "%"
            SqlDS_grdPricing2.SelectParameters("TimeSinceChange").DefaultValue = 0
            SqlDS_grdPricing2.SelectParameters("MarginReview").DefaultValue = 99
            SqlDS_grdPricing2.SelectParameters("ZeroCost").DefaultValue = 0

            fltrgrdPricing2ZeroCost.Checked = "false"
            fltrgrdPricing2ZeroQty.Checked = "true"

            btnProdDescUpdate.Enabled = "false"
            btnEditCostingUpdateCost.Enabled = "false"

            SqlDS_grdCosting2.SelectParameters("ProdID").DefaultValue = "%"
            SqlDS_grdCosting2.SelectParameters("Desc").DefaultValue = "%"
            SqlDS_grdCosting2.SelectParameters("ZeroCost").DefaultValue = 0
            SqlDS_grdCosting2.SelectParameters("ZeroQty").DefaultValue = 1
            SqlDS_grdCosting2.SelectParameters("CostOverRide").DefaultValue = "%"
            SqlDS_grdCosting2.SelectParameters("ExtendedCostMin").DefaultValue = 0
            SqlDS_grdCosting2.SelectParameters("TimeSinceChange").DefaultValue = 0




            fltrgrdCosting2ZeroCost.Checked = "false"
            fltrgrdCosting2ZeroQty.Checked = "true"

            selectCMD1.CommandType = CommandType.StoredProcedure
            selectCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = Request.QueryString("QuoteID").ToString()


            Try
                DKConnection1.Open()

                Dim result As Integer = selectCMD1.ExecuteNonQuery()
                Dim myReader As SqlDataReader = selectCMD1.ExecuteReader()
                myReader.Read()

                hdnQuoteID.Value = myReader("QuoteID")
                hdnJobID.Value = myReader("JobID")
                hdnTakeOffID.Value = myReader("TakeOffID")
                lnkComparisonTakeOff.NavigateUrl = "~/Reports2/Quote_Comparison_TakeOff.aspx?JobID=" + hdnJobID.Value.ToString()
                SqlDS_TakeOffs.SelectParameters("JobID").DefaultValue = myReader("JobID")
                hdnTakeOffID.Value = myReader("TakeOffID")
                comboBoxTakeOffAssign.SelectedValue = myReader("TakeOffID")

                hdnCustID.Value = myReader("CustID")
                hdnPriceType.Value = myReader("PriceType")
                hdnModifiedBy.Value = Request.Cookies("FullName").Value
                txtBoxNewCustomer.Text = myReader("CustName").ToString()

                lblCurrentSalesRep.Text = myReader("SalesName3").ToString()
                hdnSalesRepID_Old.Value = myReader("SalesRepID")
                editScaling.Value = myReader("Scaling").ToString()
                txtBoxTaxRateUpdate.DbValue = myReader("TaxRate") * 100.ToString()

                Page.Title = "Quote | " + myReader("Custname") + " | " + myReader("ProjectName") + "-" + myReader("ProjectSubtitle") + " | " + myReader("QuoteName")

                editQuoteName.Text = myReader("QuoteName").ToString()
                editQuoteComment1.Content = myReader("QuoteComment1").ToString()
                editQuoteComment2.Content = myReader("QuoteComment2").ToString()

                If Len(myReader("ProjectSubTitle").ToString()) > 0 Then
                    lblProjectName.Text = myReader("ProjectName").ToString() + " | " + myReader("ProjectSubTitle").ToString()
                Else
                    lblProjectName.Text = myReader("ProjectName").ToString()
                End If

                lblCreation.Text = "<b>Created By:</b> " + myReader("CreatedBy").ToString() + " at " + myReader("Created").ToString()

                If myReader("StartDate") <> "1/1/1900" Then
                    ContractStartDate.SelectedDate = myReader("StartDate")

                End If
                If myReader("EndDate") <> "1/1/1900" Then
                    ContractEndDate.SelectedDate = myReader("EndDate")
                End If
                txtBoxNewShipTo.Text = myReader("ShipToID").ToString()

                myReader.Close()

                grdSect.DataSourceID = SqlDS_grdSect.ID
                grdSect.DataBind()
                grdSect.MasterTableView.Items(0).Selected = "True"

                SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValue
                grdSub.DataSourceID = SqlDS_grdSub.ID
                grdSub.DataBind()
                grdSub.MasterTableView.Items(0).Selected = "true"

            Catch ex As SqlException

            Finally
                DKConnection1.Close()
            End Try


            Try
                DKConnection5.Open()
                selectCMD5.CommandType = CommandType.StoredProcedure
                selectCMD5.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
                SqlDS_grdSubsectionDetail.SelectParameters("SubsectionID").DefaultValue = grdSub.SelectedValues("SubsectionID")

                Dim result5 As Integer = selectCMD5.ExecuteNonQuery()
                Dim myReader5 As SqlDataReader = selectCMD5.ExecuteReader()
                myReader5.Read()

                lblEditSubsectionTitle.Text = "Now Editing: " + myReader5("SubsectionName").ToString()
                txtBoxSubsectionUnitsPerSection.Text = myReader5("UnitsPerSection").ToString()
                txtBoxSubsectionTotalUnits.DbValue = myReader5("TotalUnits")
                editSubsectionComment.Text = myReader5("SubsectionComment").ToString()
                editSectionComment.Text = myReader5("SectionComment").ToString()

                myReader5.Close()

            Catch ex As SqlException
            Finally
                DKConnection5.Close()
            End Try

            'Grab general cost notes for the project

            Dim SelectSQL6 As String
            SelectSQL6 = "SELECT [CostNoteIndex],[JobID],[Notes] FROM [dbo].[Project_Products_CostNotes] WHERE [JobID]= " + hdnJobID.Value.ToString()

            Dim DKConnectionString6 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection6 As New SqlConnection(DKConnectionString6)

            Dim SelectCMD6 As New SqlCommand(SelectSQL6, DKConnection6)

            Try
                'Try to open the connection and execute the update
                DKConnection6.Open()

                Dim result As Integer = SelectCMD6.ExecuteNonQuery()
                Dim myReader6 As SqlDataReader = SelectCMD6.ExecuteReader()
                myReader6.Read()

                txtBoxCostNotes.Text = myReader6("Notes").ToString()
                hdnCostNoteIndex.Value = myReader6("CostNoteIndex")

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection6.Close()

            End Try

        End If

        Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection3 As New SqlConnection(DKConnectionString3)

        Dim selectCMD3 As SqlCommand = New SqlCommand("uspProjectDetailGet", DKConnection3)
        selectCMD3.CommandType = CommandType.StoredProcedure
        selectCMD3.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value

        Try
            DKConnection3.Open()

            Dim result As Integer = selectCMD3.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD3.ExecuteReader()
            myReader.Read()

            hdnWhseID.Value = myReader("PrimaryBranchno")
            lnkEditProject.NavigateUrl = "../Projects/ProjectDetail.aspx?JobID=" + myReader("JobID").ToString()
            lblProjectName2.Text = myReader("ProjectName").ToString()

            lblSubTitle.Text = myReader("ProjectSubTitle").ToString()

            lblFlag.Text = myReader("Flag").ToString()


            uFlag.SelectedValue = myReader("Flag").ToString()

            If myReader("Flag").ToString.Contains("NELSON") Then
                lblFlagWarning.Text = myReader("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "Red")
            ElseIf myReader("Flag").ToString.Contains("AIS") Then
                lblFlagWarning.Text = myReader("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "Orange")
            ElseIf myReader("Flag").ToString.Contains("ARRA") Then
                lblFlagWarning.Text = myReader("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "Green")
            ElseIf myReader("Flag").ToString.Contains("BUY AMERICA") Then
                lblFlagWarning.Text = myReader("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "MediumVioletRed")
            ElseIf myReader("Flag").ToString.Contains("PRIVATE") Then
                lblFlagWarning.Text = myReader("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "Red")
            Else
                lblFlagWarning.Text = " "
                divFlagWarning.Style.Add("background-color", "White")

            End If

            lblCity.Text = myReader("WorkCity").ToString() + ", " + myReader("State").ToString() + "  " + myReader("ProjectZip").ToString()
            lblAddress.Text = myReader("ProjectAddress").ToString()
            lblDistrictName.Text = myReader("DistrictName").ToString()

            lblLogged.Text = myReader("Logged").ToString()
            lblBidTime.Text = myReader("BidTime").ToString()
            lblPreBid_Time.Text = myReader("PreBid_Time").ToString()

            If myReader("BidDate") = "1950-01-01 00:00:00.000" Then
                lblBidDate.Text = "-"
            Else
                lblBidDate.Text = FormatDateTime(myReader("BidDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
            End If

            If myReader("DueDate") = "1950-01-01 00:00:00.000" Then
                lblDueDate.Text = "-"
            Else
                lblDueDate.Text = FormatDateTime(myReader("DueDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
            End If

            If myReader("PreBid_Date") = "1950-01-01 00:00:00.000" Then
                lblPreBid_Date.Text = "-"
            Else
                lblPreBid_Date.Text = FormatDateTime(myReader("PreBid_Date"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
            End If

            lblBidNotes.Text = myReader("Bid_Notes").ToString()
            lblPlanNotes.Text = myReader("Plans_Note").ToString()
            lblPVC_Notes.Text = myReader("PVC_Notes").ToString()
            lblRestraint_Notes.Text = myReader("Restraint_Notes").ToString()
            lblFitting_Notes.Text = myReader("Fitting_Notes").ToString()
            lblDIP_Notes.Text = myReader("DIP_Notes").ToString()
            lblHDPE_Notes.Text = myReader("HDPE_Notes").ToString()
            lblOther_Notes.Text = myReader("Other_Notes").ToString()
            'lblMuniSpecName.Text = myReader("DistrictName").ToString() + " Municipal Specification"
            'lblname1.Text = myReader("name1").ToString()
            'lbltitle1.Text = myReader("title1").ToString()
            'lblphone1.Text = myReader("phone1").ToString()
            'lblmobile1.Text = myReader("mobile1").ToString()
            'lblemail1.Text = myReader("email1").ToString()
            'lblname2.Text = myReader("name2").ToString()
            'lbltitle2.Text = myReader("title2").ToString()
            'lblphone2.Text = myReader("phone2").ToString()
            'lblmobile2.Text = myReader("mobile2").ToString()
            'lblemail2.Text = myReader("email2").ToString()
            'lblname3.Text = myReader("name3").ToString()
            'lbltitle3.Text = myReader("title3").ToString()
            'lblphone3.Text = myReader("phone3").ToString()
            'lblmobile3.Text = myReader("mobile3").ToString()
            'lblemail3.Text = myReader("email3").ToString()
            'lblDIP.Text = myReader("DIP").ToString()
            'lblPVCWater.Text = myReader("PVCWater").ToString()
            'lblTapSleeve.Text = myReader("TapSleeve").ToString()
            'lblTracerWarn.Text = myReader("TracerWarn").ToString()
            'lblMJFIT.Text = myReader("MJFit").ToString()
            'lblDIPFitRest.Text = myReader("DIPFitRest").ToString()
            'lblPVCFitRest.Text = myReader("PVCFitRest").ToString()
            'lblValveGate.Text = myReader("ValveGate").ToString()
            'lblValveBox.Text = myReader("ValveBox").ToString()
            'lblDebrisCap.Text = myReader("DebrisCap").ToString()
            'lblHydrant.Text = myReader("Hydrant").ToString()
            'lblTapSadDIP.Text = myReader("TapSadDIP").ToString()
            'lblTapSadPVC.Text = myReader("TapSadPVC").ToString()
            'lblCurbStopBox.Text = myReader("CurbStopBox").ToString()
            'lblMeterBox.Text = myReader("MeterBox").ToString()
            'lblMeterPit.Text = myReader("MeterPit").ToString()
            'lblMeterCover.Text = myReader("MeterCover").ToString()
            'lblCorpStop.Text = myReader("CorpStop").ToString()
            'lblAngleValve.Text = myReader("AngleValve").ToString()
            'lblCopperSetter.Text = myReader("CopperSetter").ToString()
            'lblCustomSetter.Text = myReader("CustomSetter").ToString()
            'lblMeter.Text = myReader("Meter").ToString()
            'lblDIPSewer.Text = myReader("DIPSewer").ToString()
            'lblPVCSewer.Text = myReader("PVCSewer").ToString()
            'lblClaySewer.Text = myReader("ClaySewer").ToString()
            'lblTracerWarnSewer.Text = myReader("TracerWarnSewer").ToString()
            'lblUnderdrain.Text = myReader("Underdrain").ToString()
            'lblDIPFitSewer.Text = myReader("DIPFitSewer").ToString()
            'lblPVCFitSewer.Text = myReader("PVCFitSewer").ToString()
            'lblClayFitSewer.Text = myReader("ClayFitSewer").ToString()
            'lblHDPEDrainPipe.Text = myReader("HDPEDrainPipe").ToString()
            'lblHDPEDrainFit.Text = myReader("HDPEDrainFit").ToString()
            'lblmisc1.Text = myReader("misc1").ToString()
            'lblmisc2.Text = myReader("misc2").ToString()
            'lblmisc3.Text = myReader("misc3").ToString()
            'lblmisc4.Text = myReader("misc4").ToString()
            'lblmisc5.Text = myReader("misc5").ToString()

            'link1.Text = myReader("link1label")
            'link1.NavigateUrl = myReader("link1")
            'link2.Text = myReader("link2label")
            'link2.NavigateUrl = myReader("link2")

            'If myReader("link1") = "http://" Then
            '    link1.Visible = "false"
            'End If

            'If myReader("link2") = "http://" Then
            '    link2.Visible = "false"
            'End If

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection3.Close()
        End Try

        'Update the list of recent quotes visited the first time the page is loaded

        Dim InsertSQL As String
        InsertSQL = "INSERT INTO Quote_Recent ([QuoteID],[FullName]) VALUES ("
        InsertSQL &= hdnQuoteID.Value.ToString() + ", "
        InsertSQL &= "'" + Request.Cookies("FullName").Value.ToString() + "')"


        Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection4 As New SqlConnection(DKConnectionString4)

        Dim InsertCMD4 As New SqlCommand(InsertSQL, DKConnection4)

        Dim inserted As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection4.Open()
            inserted = InsertCMD4.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection4.Close()

        End Try



        Dim DKConnectionString7 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection7 As New SqlConnection(DKConnectionString7)

        Dim selectCMD7 As SqlCommand = New SqlCommand("uspCustomerDetailGet", DKConnection7)
        selectCMD7.CommandType = CommandType.StoredProcedure
        selectCMD7.Parameters.Add("@CustID", SqlDbType.BigInt).Value = hdnCustID.Value

        Try
            DKConnection7.Open()

            Dim result As Integer = selectCMD7.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD7.ExecuteReader()
            myReader.Read()

            lblCustomer.Text = myReader("CustName").ToString() + " (Customer #: " + myReader("CustID").ToString() + ")"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection7.Close()

        End Try





        lnkQuotePricingReview.NavigateUrl = "~/Reports2/Quote_PricingReview.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString() + "&TakeOffID=" + hdnTakeOffID.Value.ToString()
        lnkVendorQuoteRequest.NavigateUrl = "~/Reports2/Quote_VendorQuoteRequest.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString() + "&TakeOffID=" + hdnTakeOffID.Value.ToString()
        lnkQuotePricingReview2.NavigateUrl = "~/Reports2/Quote_PricingReview.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString() + "&TakeOffID=" + hdnTakeOffID.Value.ToString()
        lnkVendorQuoteRequest2.NavigateUrl = "~/Reports2/Quote_VendorQuoteRequest.aspx?QuoteID=" + Request.QueryString("QuoteID").ToString() + "&TakeOffID=" + hdnTakeOffID.Value.ToString()


    End Sub

    'Updating Quote Details

    Protected Sub searchCustomer_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles searchCustomer.SelectedIndexChanged

        Dim SelectSQL As String
        SelectSQL = "SELECT [CustID],[CustName],[PriceType] FROM [dbo].[Customers] WHERE [CustID]= '" + searchCustomer.SelectedValue.ToString() + "'"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim SelectCMD As New SqlCommand(SelectSQL, DKConnection)


        Try
            'Try to open the connection and execute the update
            DKConnection.Open()

            Dim result As Integer = SelectCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = SelectCMD.ExecuteReader()
            myReader.Read()

            If myReader.HasRows Then
                uCustID.Value = myReader("CustID").ToString()
                uCustName.Value = myReader("CustName").ToString()
                uPriceType.Value = myReader("PriceType").ToString()
            Else
                uCustID.Value = hdnCustID.Value
                uCustName.Value = txtBoxNewCustomer.Text
                uPriceType.Value = hdnPriceType.Value
            End If

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub btnCustNameMod_Click(sender As Object, e As System.EventArgs) Handles btnCustNameMod.Click

        Dim UpdateSQL As String
        UpdateSQL = "UPDATE Quote "
        UpdateSQL &= "SET CustName = " + "'" + txtBoxNewCustomer.Text + "'"
        UpdateSQL &= " WHERE QuoteID = " + hdnQuoteID.Value.ToString()

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim UpdateCMD1 As New SqlCommand(UpdateSQL, DKConnection)

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = UpdateCMD1.ExecuteNonQuery()
            searchCustomer.Text = ""

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try
    End Sub

    Protected Sub btnUpdateCustomer_Click(sender As Object, e As System.EventArgs) Handles btnUpdateCustomer.Click

        hdnCustID.Value = uCustID.Value
        hdnPriceType.Value = uPriceType.Value

        If uCustID.Value = "" Then
            uCustID.Value = hdnCustID.Value
        End If

        Dim UpdateSQL As String
        UpdateSQL = "UPDATE Quote "
        UpdateSQL &= "SET CustID = " + "'" + uCustID.Value.ToString() + "'"
        UpdateSQL &= ", CustName = " + "'" + uCustName.Value.ToString() + "'"
        UpdateSQL &= ", PriceType = " + "'" + uPriceType.Value.ToString() + "'"
        UpdateSQL &= " WHERE QuoteID = " + hdnQuoteID.Value.ToString()

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim UpdateCMD1 As New SqlCommand(UpdateSQL, DKConnection)

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = UpdateCMD1.ExecuteNonQuery()
            searchCustomer.Text = ""

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        txtBoxNewCustomer.Text = uCustName.Value.ToString()


        Dim DKConnectionString7 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection7 As New SqlConnection(DKConnectionString7)

        Dim selectCMD7 As SqlCommand = New SqlCommand("uspCustomerDetailGet", DKConnection7)
        selectCMD7.CommandType = CommandType.StoredProcedure
        selectCMD7.Parameters.Add("@CustID", SqlDbType.BigInt).Value = hdnCustID.Value

        Try
            DKConnection7.Open()

            Dim result As Integer = selectCMD7.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD7.ExecuteReader()
            myReader.Read()

            lblCustomer.Text = myReader("CustName").ToString() + " (Customer #: " + myReader("CustID").ToString() + ")"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection7.Close()

        End Try

    End Sub



    Protected Sub searchSalesRep_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles searchSalesRep.SelectedIndexChanged
        hdnSalesRepID.Value = searchSalesRep.SelectedValue.ToString()
    End Sub


    Protected Sub btnUpdateSalesRep_Click(sender As Object, e As System.EventArgs) Handles btnUpdateSalesRep.Click

        If hdnSalesRepID.Value = "" Then
            hdnSalesRepID.Value = hdnSalesRepID_Old.Value
        End If

        Dim UpdateSQL As String
        UpdateSQL = "UPDATE Quote "
        UpdateSQL &= "SET SalesRepID = " + "'" + hdnSalesRepID.Value.ToString() + "'"
        UpdateSQL &= " WHERE QuoteID = " + hdnQuoteID.Value.ToString()

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim UpdateCMD1 As New SqlCommand(UpdateSQL, DKConnection)

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = UpdateCMD1.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


        Dim DKConnectionString7 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection7 As New SqlConnection(DKConnectionString7)
        Dim selectCMD7 As SqlCommand = New SqlCommand("uspQuoteGetDetails", DKConnection7)

        selectCMD7.CommandType = CommandType.StoredProcedure
        selectCMD7.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = Request.QueryString("QuoteID").ToString()

        Try
            DKConnection7.Open()

            Dim result As Integer = selectCMD7.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD7.ExecuteReader()
            myReader.Read()

            lblCurrentSalesRep.Text = myReader("SalesName3").ToString()
            searchSalesRep.Text = ""

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection7.Close()
        End Try

    End Sub

    Protected Sub btnUpdateStartEndShipTo_Click(sender As Object, e As System.EventArgs) Handles btnUpdateStartEndShipTo.Click
        If ContractStartDate.SelectedDate Is Nothing Then
            ContractStartDate.SelectedDate = "1/1/" + Now.Year.ToString()
        End If
        If ContractEndDate.SelectedDate Is Nothing Then
            ContractEndDate.SelectedDate = "12/31/" + Now.Year.ToString()
        End If
        If txtBoxNewShipTo.Text = "" Then
            txtBoxNewShipTo.Text = "TBD"
        End If

        Dim UpdateSQL As String
        UpdateSQL = "UPDATE Quote "
        UpdateSQL &= "SET ShipToID = " + "'" + txtBoxNewShipTo.Text + "'"
        UpdateSQL &= ", StartDate = " + "'" + ContractStartDate.DbSelectedDate.ToString() + "'"
        UpdateSQL &= ", EndDate = " + "'" + ContractEndDate.DbSelectedDate.ToString() + "'"
        UpdateSQL &= " WHERE QuoteID = " + hdnQuoteID.Value.ToString()

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim UpdateCMD1 As New SqlCommand(UpdateSQL, DKConnection)

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = UpdateCMD1.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try
    End Sub

    Protected Sub btnUpdateQuote_Click(sender As Object, e As System.EventArgs) Handles btnUpdateQuote.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteUpdateName", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        updateCMD1.Parameters.Add("@QuoteName", SqlDbType.NVarChar).Value = editQuoteName.Text

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

    End Sub

    Protected Sub btnUpdateQuoteComments_Click(sender As Object, e As System.EventArgs) Handles btnUpdateQuoteComments.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteUpdateComments", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        updateCMD1.Parameters.Add("@QuoteComment1", SqlDbType.NVarChar).Value = editQuoteComment1.Content
        updateCMD1.Parameters.Add("@QuoteComment2", SqlDbType.NVarChar).Value = editQuoteComment2.Content

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
    End Sub

    Protected Sub btnTakeOffAssignUpdate_Click(sender As Object, e As System.EventArgs) Handles btnTakeOffAssignUpdate.Click

        hdnTakeOffID.Value = comboBoxTakeOffAssign.SelectedValue.ToString()

        Dim UpdateSQL As String
        UpdateSQL = "UPDATE Quote "
        UpdateSQL &= "SET TakeOffID = " + comboBoxTakeOffAssign.SelectedValue.ToString()
        UpdateSQL &= " WHERE QuoteID = " + hdnQuoteID.Value.ToString()

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim UpdateCmd As New SqlCommand(UpdateSQL, DKConnection)

        Dim Reader As SqlDataReader
        Try
            DKConnection.Open()
            Reader = UpdateCmd.ExecuteReader()
            Reader.Read()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        SqlDS_grdSections.SelectParameters("TakeOffID").DefaultValue = comboBoxTakeOffAssign.SelectedValue
        grdSections.DataSourceID = SqlDS_grdSections.ID
        grdSections.DataBind()
        comboBoxSectionCopySource.Items.Clear()
        comboBoxSectionCopySource.DataSourceID = SqlDS_comboBoxSectionCopySource.ID
        comboBoxSectionCopySource.DataBind()

        SqlDS_grdSubsections.SelectParameters("SectionID").DefaultValue = 0
        grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
        grdSubsections.DataBind()

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)
        Dim selectCMD1 As SqlCommand = New SqlCommand("uspQuoteGetDetails", DKConnection1)

        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)
        Dim selectCMD2 As SqlCommand = New SqlCommand("uspProjectTakeOffGetSpecific", DKConnection2)

        Dim DKConnectionString5 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection5 As New SqlConnection(DKConnectionString5)
        Dim selectCMD5 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection5)


        btnPricingQuoteCopy.Enabled = "false"
        btnTargetMarginUpdate3.Enabled = "False"
        btnTaxTypeUpdate.Enabled = "false"

        btnEditCostingUpdateCost.Enabled = "false"
        editProdDesc.Enabled = "false"
        btnProdDescUpdate.Enabled = "false"

        btnCopySelectedTakeOff.Enabled = "false"

        btnUpdateTerm.Enabled = "False"
        btnUtilityCopyQuoteGoToNew.Enabled = "false"

        btnUtilityMatrixUpdate.Text = "Update Matrix Pricing"
        btnUtilityContractUpdate.Text = "Update Contract Pricing"

        btnAddSubsection.Enabled = "True"
        txtBoxNewSubsection.Text = "Select a Parent Section at left"
        txtBoxNewSubsection.Enabled = "false"

        btnUpdateSection.Enabled = "True"
        txtBoxSectionName.Text = "Select a Section at left to edit"
        txtBoxSectionName.Enabled = "false"
        txtBoxSectionSeq.Enabled = "false"

        btnUpdateSubsection.Enabled = "True"
        txtBoxSubsectionName.Text = "Select a Subsection at left to edit"
        txtBoxSubsectionName.Enabled = "false"
        txtBoxSubsectionSeq.Enabled = "false"

        btnDeleteSection.Enabled = "false"
        lblSectionDelete.Text = "Section to Delete: Select a Section at left to delete"
        'txtBoxSectionDelete.Text = "Select a Section at left to delete"
        'txtBoxSectionDelete.Enabled = "false"

        btnDeleteSubsection.Enabled = "false"
        lblSubsectionDelete.Text = "Subsection to Delete: Select a Subsection at Left"
        'txtBoxSubsectionDelete.Text = "Select a Subsection at left to delete"
        'txtBoxSubsectionDelete.Enabled = "false"

        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = Request.QueryString("QuoteID").ToString()


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD1.ExecuteReader()
            myReader.Read()

            hdnQuoteID.Value = myReader("QuoteID")
            hdnJobID.Value = myReader("JobID")
            SqlDS_TakeOffs.SelectParameters("JobID").DefaultValue = myReader("JobID")
            hdnTakeOffID.Value = myReader("TakeOffID")
            comboBoxTakeOffAssign.SelectedValue = myReader("TakeOffID")

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try


        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value

        Try
            DKConnection2.Open()

            Dim result As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            SqlDS_grdSect.SelectParameters("TakeOffID").DefaultValue = myReader2("TakeOffID")
            grdSect.DataSourceID = SqlDS_grdSect.ID
            grdSect.DataBind()
            grdSect.MasterTableView.Items(0).Selected = "True"

            SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValues("SectionID")
            grdSub.DataSourceID = SqlDS_grdSub.ID
            grdSub.DataBind()
            grdSub.MasterTableView.Items(0).Selected = "true"

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try

        Try
            DKConnection5.Open()
            selectCMD5.CommandType = CommandType.StoredProcedure
            selectCMD5.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
            SqlDS_grdSubsectionDetail.SelectParameters("SubsectionID").DefaultValue = grdSub.SelectedValues("SubsectionID")

            Dim result5 As Integer = selectCMD5.ExecuteNonQuery()
            Dim myReader5 As SqlDataReader = selectCMD5.ExecuteReader()
            myReader5.Read()

            lblEditSubsectionTitle.Text = "Now Editing: " + myReader5("SubsectionName").ToString()
            txtBoxSubsectionUnitsPerSection.Text = myReader5("UnitsPerSection").ToString()
            txtBoxSubsectionTotalUnits.DbValue = myReader5("TotalUnits")
            editSubsectionComment.Text = myReader5("SubsectionComment").ToString()
            editSectionComment.Text = myReader5("SectionComment").ToString()

            myReader5.Close()


        Catch ex As SqlException
        Finally
            DKConnection5.Close()
        End Try

        'Grab general cost notes for the project

        Dim SelectSQL6 As String
        SelectSQL6 = "SELECT [CostNoteIndex],[JobID],[Notes] FROM [dbo].[Project_Products_CostNotes] WHERE [JobID]= " + hdnJobID.Value.ToString()


        Dim DKConnectionString6 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection6 As New SqlConnection(DKConnectionString6)

        Dim SelectCMD6 As New SqlCommand(SelectSQL6, DKConnection6)


        Try
            'Try to open the connection and execute the update
            DKConnection6.Open()

            Dim result As Integer = SelectCMD6.ExecuteNonQuery()
            Dim myReader6 As SqlDataReader = SelectCMD6.ExecuteReader()
            myReader6.Read()

            txtBoxCostNotes.Text = myReader6("Notes").ToString()
            hdnCostNoteIndex.Value = myReader6("CostNoteIndex")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection6.Close()

        End Try





        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()

        'Recalculate Quote Stats
        Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection3 As New SqlConnection(DKConnectionString3)
        Dim updateCMD3 As SqlCommand = New SqlCommand("uspQuotePricingRefresh", DKConnection3)
        updateCMD3.CommandType = CommandType.StoredProcedure

        updateCMD3.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        Dim updated3 As Integer

        Try
            DKConnection3.Open()
            updated3 = updateCMD3.ExecuteNonQuery()

        Catch ex As SqlException

        Finally
            DKConnection3.Close()
        End Try


        grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
        grdQuoteStats.DataBind()


    End Sub

    Protected Sub grdTakeOffEdit_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdTakeOffEdit.SelectedIndexChanged

        Dim SelectSQL As String
        SelectSQL = "SELECT TakeOffName, TakeOffID FROM Project_TakeOffs WHERE TakeOffID = " + grdTakeOffEdit.SelectedValues("TakeOffID").ToString


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

        Dim Reader As SqlDataReader
        Try
            'Try to open the connection and execute the Select
            DKConnection.Open()

            Reader = SelectCMD1.ExecuteReader()
            Reader.Read()

            editTakeOffName.Text = Reader("TakeOffName").ToString()
            btnCopySelectedTakeOff.Enabled = "true"

            btnCopySelectedTakeOff.Text = "Make a copy of " + "'" + Reader("TakeOffName").ToString() + "'"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try
    End Sub

    Protected Sub btnUpdateTakeOffName_Click(sender As Object, e As System.EventArgs) Handles btnUpdateTakeOffName.Click
        btnCopySelectedTakeOff.Enabled = "false"

        Dim UpdateSQL As String
        UpdateSQL = "UPDATE Project_TakeOffs "
        UpdateSQL &= "SET TakeOffName = " + "'" + editTakeOffName.Text + "'"
        UpdateSQL &= " WHERE TakeOffID = " + grdTakeOffEdit.SelectedValues("TakeOffID").ToString()

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim UpdateCMD1 As New SqlCommand(UpdateSQL, DKConnection)

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = UpdateCMD1.ExecuteNonQuery()
            editTakeOffName.Text = ""
            grdTakeOffEdit.DataSourceID = SqlDS_TakeOffEdit.ID
            grdTakeOffEdit.DataBind()

            comboBoxTakeOffAssign.Items.Clear()
            comboBoxTakeOffAssign.DataSourceID = SqlDS_TakeOffs.ID
            comboBoxTakeOffAssign.DataBind()
            comboBoxTakeOffAssign.SelectedValue = hdnTakeOffID.Value


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


        ' update the takeoff description label
        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)
        Dim selectCMD2 As SqlCommand = New SqlCommand("uspProjectTakeOffGetSpecific", DKConnection2)


        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value

        Try
            DKConnection2.Open()

            Dim result As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try

    End Sub

    Protected Sub btnCopySelectedTakeOff_Click(sender As Object, e As System.EventArgs) Handles btnCopySelectedTakeOff.Click
        btnCopySelectedTakeOff.Enabled = "false"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectTakeOffCopy", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = grdTakeOffEdit.SelectedValues("TakeOffID")
        updateCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        updateCMD1.Parameters.Add("@CreatedBy", SqlDbType.NVarChar).Value = hdnModifiedBy.Value.ToString()

        updateCMD1.Parameters.Add("@NewTakeOffID", SqlDbType.BigInt).Value = 0
        updateCMD1.Parameters("@NewTakeOffID").Direction = ParameterDirection.Output

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()
            editTakeOffName.Text = ""
            btnCopySelectedTakeOff.Enabled = "false"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
            grdQuoteStats.DataBind()

            grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
            grdPricing2.DataBind()

            grdTakeOffEdit.DataSourceID = SqlDS_TakeOffEdit.ID
            grdTakeOffEdit.DataBind()

            comboBoxTakeOffAssign.Items.Clear()
            comboBoxTakeOffAssign.DataSourceID = SqlDS_TakeOffs.ID
            comboBoxTakeOffAssign.DataBind()
            comboBoxTakeOffAssign.SelectedValue = hdnTakeOffID.Value

        End Try

    End Sub


    Protected Sub btnStartNewTakeOff_Click(sender As Object, e As System.EventArgs) Handles btnStartNewTakeOff.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD1 As SqlCommand = New SqlCommand("uspProjectTakeOffInsert", DKConnection)
        insertCMD1.CommandType = CommandType.StoredProcedure

        insertCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        insertCMD1.Parameters.Add("@TakeOffName", SqlDbType.NVarChar).Value = insertTakeOffName.Text
        insertCMD1.Parameters.Add("@CreatedBy", SqlDbType.NVarChar).Value = hdnModifiedBy.Value.ToString()

        Dim inserted As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted = insertCMD1.ExecuteNonQuery()

            comboBoxTakeOffAssign.Items.Clear()
            comboBoxTakeOffAssign.DataSourceID = SqlDS_TakeOffs.ID
            comboBoxTakeOffAssign.DataBind()
            comboBoxTakeOffAssign.SelectedValue = hdnTakeOffID.Value


            grdTakeOffEdit.DataSourceID = SqlDS_TakeOffEdit.ID
            grdTakeOffEdit.DataBind()

            grdSections.DataSourceID = SqlDS_grdSections.ID
            grdSections.DataBind()
            comboBoxSectionCopySource.Items.Clear()
            comboBoxSectionCopySource.DataSourceID = SqlDS_comboBoxSectionCopySource.ID
            comboBoxSectionCopySource.DataBind()

            grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
            grdSubsections.DataBind()

            grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
            grdSubsectionDetail.DataBind()

            grdSect.DataSourceID = SqlDS_grdSect.ID
            grdSect.DataBind()

            grdSub.DataSourceID = SqlDS_grdSub.ID
            grdSub.DataBind()

            listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabList.ID
            listBoxTakeOffGrabList2.DataBind()

            listBoxTakeOffGrabList.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
            listBoxTakeOffGrabList.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            insertTakeOffName.Text = ""
        End Try

    End Sub

    'Pricing
    Protected Sub grdQuoteSearch_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdQuoteSearch.SelectedIndexChanged
        SqlDS_grdPricingQuoteCopyConfirm.SelectParameters("QuoteID").DefaultValue = grdQuoteSearch.SelectedValues("QuoteID")
        SqlDS_grdPricingQuoteCopyConfirm.SelectParameters("TakeOffID").DefaultValue = grdQuoteSearch.SelectedValues("TakeOffID")

        grdPricingQuoteCopyConfirm.DataSourceID = SqlDS_grdPricingQuoteCopyConfirm.ID
        grdPricingQuoteCopyConfirm.DataBind()

        btnPricingQuoteCopy.Enabled = "True"
        lblQuoteCopySuccess.Text = ""

    End Sub


    Protected Sub btnPricingQuoteCopy_Click(sender As Object, e As System.EventArgs) Handles btnPricingQuoteCopy.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        btnTargetMarginUpdate3.Enabled = "True"

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuotePricingCopy", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@QuoteIDSource", SqlDbType.BigInt).Value = grdQuoteSearch.SelectedValues("QuoteID")
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        updateCMD1.Parameters.Add("@RunBy", SqlDbType.NVarChar).Value = hdnModifiedBy.Value.ToString()

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

            grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
            grdPricing2.DataBind()

            lblQuoteCopySuccess.Text = "Your prices were successfully updated."

        End Try

    End Sub

    Protected Sub btnEditScaling_Click(sender As Object, e As System.EventArgs) Handles btnEditScaling.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteUpdateScaling", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        updateCMD1.Parameters.Add("@Scaling", SqlDbType.Real).Value = editScaling.Value

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

            grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
            grdQuoteStats.DataBind()

            grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
            grdPricing2.DataBind()

        End Try
    End Sub

    Protected Sub btnTargetMarginUpdate2_Click(sender As Object, e As System.EventArgs) Handles btnTargetMarginUpdate2.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteUtilityTargetMarginPricing", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value


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

        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()

        grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
        grdQuoteStats.DataBind()

    End Sub


    Protected Sub btnTargetMarginUpdate3_Click(sender As Object, e As System.EventArgs) Handles btnTargetMarginUpdate3.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteUtilityTargetMarginPricing", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value


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

        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()

        grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
        grdQuoteStats.DataBind()

    End Sub


    'Costing

    Protected Sub grdCosting2_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdCosting2.SelectedIndexChanged
        btnEditCostingUpdateCost.Enabled = "true"
        btnProdDescUpdate.Enabled = "true"

        editProdDesc.Enabled = "true"

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProjectProductDetailGet", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@ProjectPartIndex", SqlDbType.BigInt).Value = grdCosting2.SelectedValues("ProjectPartIndex")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblCostingProdID.Text = "Now Editing: " + myReader1("ProdID").ToString() + " - " + Left(myReader1("Description").ToString(), 75)
            editCostingComment.Text = myReader1("Comment").ToString()
            editCostingNewCost.DbValue = myReader1("UnitCost")

            editProdDesc.Text = myReader1("Description").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

    End Sub
    Protected Sub grdCosting2_ItemDataBound(sender As Object, e As Telerik.Web.UI.GridItemEventArgs) Handles grdCosting2.ItemDataBound
        'Is it a GridDataItem
        If (TypeOf (e.Item) Is GridDataItem) Then
            'Get the instance of the right type
            Dim dataBoundItem As GridDataItem = e.Item

            If (dataBoundItem("ReviewCost").Text = "Review") Then
                dataBoundItem("UnitCost").ForeColor = Color.White
                dataBoundItem("UnitCost").Font.Bold = False
                dataBoundItem("UnitCost").BackColor = Color.CornflowerBlue
            End If

            If (dataBoundItem("FlagCostOverride").Text = "True") Then
                dataBoundItem("UnitCost").ForeColor = Color.White
                dataBoundItem("UnitCost").Font.Bold = False
                dataBoundItem("UnitCost").BackColor = Color.Orange
            End If

        End If

    End Sub
    Protected Sub grdCosting2_PageIndexChanged(sender As Object, e As Telerik.Web.UI.GridPageChangedEventArgs) Handles grdCosting2.PageIndexChanged
        grdCosting2.ClientSettings.Scrolling.ScrollTop = "0"
    End Sub

    Protected Sub fltrgrdCosting2ProdID_TextChanged(sender As Object, e As System.EventArgs) Handles fltrgrdCosting2ProdID.TextChanged
        If Len(fltrgrdCosting2ProdID.Text.ToString()) = 0 Then
            SqlDS_grdCosting2.SelectParameters("ProdID").DefaultValue = "%"
        Else
            SqlDS_grdCosting2.SelectParameters("ProdID").DefaultValue = fltrgrdCosting2ProdID.Text.ToString()
        End If

        grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
        grdCosting2.DataBind()
    End Sub
    Protected Sub fltrgrdCosting2Desc_TextChanged(sender As Object, e As System.EventArgs) Handles fltrgrdCosting2Desc.TextChanged
        If Len(fltrgrdCosting2Desc.Text.ToString()) = 0 Then
            SqlDS_grdCosting2.SelectParameters("Desc").DefaultValue = "%"
        Else
            SqlDS_grdCosting2.SelectParameters("Desc").DefaultValue = fltrgrdCosting2Desc.Text.ToString()
        End If

        grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
        grdCosting2.DataBind()
    End Sub
    Protected Sub fltrgrdCosting2TimeSinceChange_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrgrdCosting2TimeSinceChange.SelectedIndexChanged
        SqlDS_grdCosting2.SelectParameters("TimeSinceChange").DefaultValue = fltrgrdCosting2TimeSinceChange.SelectedValue

        grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
        grdCosting2.DataBind()
    End Sub
    Protected Sub fltrgrdCosting2ExtendedCost_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrgrdCosting2ExtendedCost.SelectedIndexChanged
        SqlDS_grdCosting2.SelectParameters("ExtendedCostMin").DefaultValue = fltrgrdCosting2ExtendedCost.SelectedValue

        grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
        grdCosting2.DataBind()
    End Sub
    Protected Sub fltrgrdCosting2ZeroCost_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrgrdCosting2ZeroCost.CheckedChanged
        If fltrgrdCosting2ZeroCost.Checked = "true" Then
            SqlDS_grdCosting2.SelectParameters("ZeroCost").DefaultValue = 1
        Else
            SqlDS_grdCosting2.SelectParameters("ZeroCost").DefaultValue = 0
        End If

    End Sub
    Protected Sub fltrgrdCosting2ZeroQty_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrgrdCosting2ZeroQty.CheckedChanged
        If fltrgrdCosting2ZeroQty.Checked = "true" Then
            SqlDS_grdCosting2.SelectParameters("ZeroQty").DefaultValue = 1
        Else
            SqlDS_grdCosting2.SelectParameters("ZeroQty").DefaultValue = 0
        End If
    End Sub

    Protected Sub fltrgrdCosting2CostOverRide_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrgrdCosting2CostOverRide.SelectedIndexChanged
        SqlDS_grdCosting2.SelectParameters("CostOverRide").DefaultValue = fltrgrdCosting2CostOverRide.SelectedValue

        grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
        grdCosting2.DataBind()
    End Sub

    Protected Sub btnProdDescUpdate_Click(sender As Object, e As System.EventArgs) Handles btnProdDescUpdate.Click
        Dim grdCostingIndex As Int16 = grdCosting2.SelectedIndexes(0)

        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProjectProductDescriptionUpdate", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value
        selectCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdCosting2.SelectedValues("ProdID").ToString()
        selectCMD1.Parameters.Add("@Description", SqlDbType.NVarChar).Value = editProdDesc.Text.ToString()

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
        grdCosting2.DataBind()
        grdCosting2.SelectedIndexes.Add(grdCostingIndex)

        btnEditCostingUpdateCost.Enabled = "false"

        editProdDesc.Enabled = "false"
        btnProdDescUpdate.Enabled = "false"
    End Sub


    Protected Sub btnEditCostingUpdateCost_Click(sender As Object, e As System.EventArgs) Handles btnEditCostingUpdateCost.Click
        Dim grdCostingIndex As Int16 = grdCosting2.SelectedIndexes(0)

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectProductCostUpdate2", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdCosting2.SelectedValues("ProdID").ToString()
        updateCMD1.Parameters.Add("@UnitCost", SqlDbType.Real).Value = editCostingNewCost.DbValue
        updateCMD1.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = hdnModifiedBy.Value.ToString()
        updateCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        updateCMD1.Parameters.Add("@Comment", SqlDbType.NVarChar).Value = editCostingCommentAdd.Text.ToString()


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

        editCostingNewCost.Value = 0

        editCostingCommentAdd.Text = ""

        grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
        grdCosting2.DataBind()
        grdCosting2.SelectedIndexes.Add(grdCostingIndex)

        grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
        grdQuoteStats.DataBind()

        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()
    End Sub


    Protected Sub btnBlockPricingApply_Click(sender As Object, e As System.EventArgs) Handles btnBlockPricingApply.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteUtilityBlockCostUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure

        updateCMD1.Parameters.Add("@BookName", SqlDbType.NVarChar).Value = comboBoxBookName.SelectedValue.ToString()
        updateCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        updateCMD1.Parameters.Add("@Block", SqlDbType.Int).Value = comboBoxBlock.SelectedValue
        updateCMD1.Parameters.Add("@ModifiedBy", SqlDbType.NVarChar).Value = hdnModifiedBy.Value.ToString()

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

        'Grab general cost notes for the project

        Dim SelectSQL6 As String
        SelectSQL6 = "SELECT [CostNoteIndex],[JobID],[Notes] FROM [dbo].[Project_Products_CostNotes] WHERE [JobID]= " + hdnJobID.Value.ToString()


        Dim DKConnectionString6 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection6 As New SqlConnection(DKConnectionString6)

        Dim SelectCMD6 As New SqlCommand(SelectSQL6, DKConnection6)


        Try
            'Try to open the connection and execute the update
            DKConnection6.Open()

            Dim result As Integer = SelectCMD6.ExecuteNonQuery()
            Dim myReader6 As SqlDataReader = SelectCMD6.ExecuteReader()
            myReader6.Read()

            txtBoxCostNotes.Text = myReader6("Notes").ToString()
            hdnCostNoteIndex.Value = myReader6("CostNoteIndex")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection6.Close()

        End Try


        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()


        grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
        grdQuoteStats.DataBind()

        grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
        grdCosting2.DataBind()
    End Sub

    Protected Sub btnCostNotesUpdate_Click(sender As Object, e As System.EventArgs) Handles btnCostNotesUpdate.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectProductCostNotesUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        updateCMD1.Parameters.Add("@Notes", SqlDbType.NVarChar).Value = txtBoxCostNotes.Text.ToString()

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


        Dim SelectSQL6 As String
        SelectSQL6 = "SELECT [CostNoteIndex],[JobID],[Notes] FROM [dbo].[Project_Products_CostNotes] WHERE [JobID]= " + hdnJobID.Value.ToString()


        Dim DKConnectionString6 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection6 As New SqlConnection(DKConnectionString6)

        Dim SelectCMD6 As New SqlCommand(SelectSQL6, DKConnection6)


        Try
            'Try to open the connection and execute the update
            DKConnection6.Open()

            Dim result As Integer = SelectCMD6.ExecuteNonQuery()
            Dim myReader6 As SqlDataReader = SelectCMD6.ExecuteReader()
            myReader6.Read()

            txtBoxCostNotes.Text = myReader6("Notes").ToString()
            hdnCostNoteIndex.Value = myReader6("CostNoteIndex")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection6.Close()

        End Try

    End Sub

    'Terms and Conditions
    Protected Sub grdTerms_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdTerms.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspQuoteTermsGetSpecific", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@QuoteTermIndex", SqlDbType.BigInt).Value = grdTerms.SelectedValues("QuoteTermIndex").ToString()

        Try
            DKConnection.Open()

            Dim result As Integer = menuCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = menuCMD.ExecuteReader()
            myReader.Read()

            editTC.Content = myReader("TC").ToString()

            hdnQuoteTermIndex.Value = myReader("QuoteTermIndex")
            hdnTermDisplaySeq.Value = myReader("DisplaySeq")

            myReader.Close()

        Catch ex As SqlException

        Finally
            DKConnection.Close()
        End Try

        btnUpdateTerm.Enabled = "true"
    End Sub

    Protected Sub btnUpdateTerm_Click(sender As Object, e As System.EventArgs) Handles btnUpdateTerm.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspQuoteTermsUpdate", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@QuoteTermIndex", SqlDbType.BigInt).Value = hdnQuoteTermIndex.Value.ToString()
        menuCMD.Parameters.Add("@TC", SqlDbType.NVarChar).Value = editTC.Content
        menuCMD.Parameters.Add("@DisplaySeq", SqlDbType.Int).Value = hdnTermDisplaySeq.Value

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = menuCMD.ExecuteNonQuery()
            grdTerms.DataSourceID = SqlDS_Terms.ID
            grdTerms.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            editTC.Content = ""
            btnUpdateTerm.Enabled = "false"
        End Try
    End Sub

    Protected Sub btnAddTerm1_Click(sender As Object, e As System.EventArgs) Handles btnAddTerm1.Click

        Dim Term1Date1 As String = System.DateTime.Now().AddDays(comboBoxTerm1OrderBy.SelectedValue).ToShortDateString()
        Dim Term1Date2 As String = System.DateTime.Now().AddDays(comboBoxTerm1Days.SelectedValue).ToShortDateString()
        Dim Term1 As String = "PVC and HDPE pipe must be ordered by " + Term1Date1 + " and ship complete on or before " + Term1Date2 + "."


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspQuoteTermsInsert", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        'menuCMD.Parameters.Add("@QuoteTermIndex", SqlDbType.BigInt).Value = hdnQuoteTermIndex.Value.ToString()
        menuCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value.ToString()
        menuCMD.Parameters.Add("@TC", SqlDbType.NVarChar).Value = Term1.ToString()
        menuCMD.Parameters.Add("@DisplaySeq", SqlDbType.Int).Value = 0
        menuCMD.Parameters.Add("@TermID", SqlDbType.Int).Value = 0

        Dim inserted As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted = menuCMD.ExecuteNonQuery()
            grdTerms.DataSourceID = SqlDS_Terms.ID
            grdTerms.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub

    Protected Sub btnAddTerm2_Click(sender As Object, e As System.EventArgs) Handles btnAddTerm2.Click

        Dim Term2Date1 As String = System.DateTime.Now().AddDays(comboBoxTerm2OrderBy.SelectedValue).ToShortDateString()
        Dim Term2Date2 As String = System.DateTime.Now().AddDays(comboBoxTerm2Days.SelectedValue).ToShortDateString()
        Dim Term2 As String = "Ductile pipe must be ordered by " + Term2Date1 + " and ship complete on or before " + Term2Date2 + "."

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspQuoteTermsInsert", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure

        menuCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value.ToString()
        menuCMD.Parameters.Add("@TC", SqlDbType.NVarChar).Value = Term2.ToString()
        menuCMD.Parameters.Add("@DisplaySeq", SqlDbType.Int).Value = 0
        menuCMD.Parameters.Add("@TermID", SqlDbType.Int).Value = 0

        Dim inserted As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted = menuCMD.ExecuteNonQuery()
            grdTerms.DataSourceID = SqlDS_Terms.ID
            grdTerms.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            'editTC.Content = ""
            'btnUpdateTerm.Enabled = "false"
        End Try

    End Sub

    'Creating QuickLists for the TakeOff
    Protected Sub listBoxStockGrabListRelated_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listBoxStockGrabListRelated.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffGrabListInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = listBoxStockGrabListRelated.SelectedValue

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()
            listBoxTakeOffGrabList.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
            listBoxTakeOffGrabList.DataBind()

            listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabList.ID
            listBoxTakeOffGrabList2.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabList.ID
        listBoxTakeOffGrabList2.DataBind()

    End Sub

    Protected Sub listBoxStockGrabList_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listBoxStockGrabList.SelectedIndexChanged
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffGrablistAddStockListToProject", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@GrabListID", SqlDbType.BigInt).Value = listBoxStockGrabList.SelectedValue

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()
            listBoxTakeOffGrabList.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
            listBoxTakeOffGrabList.DataBind()
            listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabList.ID
            listBoxTakeOffGrabList2.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try
    End Sub

    Protected Sub grdSections_PreRender(sender As Object, e As System.EventArgs) Handles grdSections.PreRender

        If grdSections.MasterTableView.Items.Count = 1 Then
            btnDeleteSection.Enabled = "false"
        End If

        If IsPostBack = "False" Then
            grdSections.MasterTableView.Items(0).Selected = "True"
            SqlDS_grdSubsections.SelectParameters("SectionID").DefaultValue = grdSections.SelectedValues("SectionID")

            hdnSectionID.Value = grdSections.SelectedValues("SectionID")

            txtBoxNewSubsection.Enabled = "true"
            txtBoxNewSubsection.Text = ""
            txtBoxSectionName.Enabled = "true"
            txtBoxSectionSeq.Enabled = "true"
            btnDeleteSection.Enabled = "true"
            btnUpdateSubsection.Enabled = "false"
            txtBoxSubsectionName.Enabled = "false"

            txtBoxSubsectionName.Enabled = "false"
            txtBoxSubsectionSeq.Enabled = "false"

            btnDeleteSubsection.Enabled = "false"
            'lblSubsectionDelete.Text = "Subsection to Delete: Select a Subsection at Left"
            'txtBoxSubsectionDelete.Text = "Select a Subsection at left to delete"
            'txtBoxSubsectionDelete.Enabled = "false"


            grdSubsections.Visible = "true"

            Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection2 As New SqlConnection(DKConnectionString2)

            Dim selectCMD2 As SqlCommand = New SqlCommand("uspProjectSectionsGetSpecific", DKConnection2)
            selectCMD2.CommandType = CommandType.StoredProcedure
            selectCMD2.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")


            Try
                DKConnection2.Open()

                Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
                Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
                myReader2.Read()

                txtBoxSectionName.Text = myReader2("SectionName")
                txtBoxSectionSeq.DbValue = myReader2("SectionSeq")
                lblSectionDelete.Text = "Section to Delete: " + myReader2("SectionName")
                'txtBoxSectionDelete.Text = myReader2("SectionName")

                hdnOldSectionSeq.Value = myReader2("SectionSeq")

                myReader2.Close()

            Catch ex As SqlException

            Finally
                DKConnection2.Close()
            End Try

            grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
            grdSubsections.DataBind()

            grdSubsections.MasterTableView.Items(0).Selected = "True"
            hdnSubsectionID.Value = grdSubsections.SelectedValues("SubsectionID")

            btnUpdateSubsection.Enabled = "true"
            txtBoxSubsectionName.Enabled = "true"
            txtBoxSubsectionSeq.Enabled = "true"
            btnDeleteSubsection.Enabled = "true"
            'txtBoxSubsectionDelete.Enabled = "false"

            Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection4 As New SqlConnection(DKConnectionString4)

            Dim selectCMD4 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection4)
            selectCMD4.CommandType = CommandType.StoredProcedure
            selectCMD4.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")


            Try
                DKConnection4.Open()

                Dim result4 As Integer = selectCMD4.ExecuteNonQuery()
                Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
                myReader4.Read()

                txtBoxSubsectionName.Text = myReader4("SubsectionName")
                txtBoxSubsectionSeq.DbValue = myReader4("SubsectionSeq")
                lblSubsectionDelete.Text = "Subsection to Delete: " + myReader4("SubsectionName")
                'txtBoxSubsectionDelete.Text = myReader4("SubsectionName")

                hdnOldSubsectionSeq.Value = myReader4("SubsectionSeq")

                myReader4.Close()

            Catch ex As SqlException

            Finally
                DKConnection4.Close()
            End Try

        End If
    End Sub



    'Adding/Editing Quote Structure (Sections and Subsections)
    Protected Sub grdSections_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdSections.SelectedIndexChanged

        hdnSectionID.Value = grdSections.SelectedValues("SectionID")
        btnUpdateSection.Enabled = "true"
        btnAddSubsection.Enabled = "true"
        txtBoxNewSubsection.Enabled = "true"
        'txtBoxNewSubsection.Text = ""
        txtBoxSectionName.Enabled = "true"
        txtBoxSectionSeq.Enabled = "true"
        btnDeleteSection.Enabled = "true"
        btnUpdateSubsection.Enabled = "false"
        txtBoxSubsectionName.Enabled = "false"
        txtBoxSubsectionName.Text = "Select a Subsection at left to edit"
        txtBoxSubsectionName.Enabled = "false"
        txtBoxSubsectionSeq.Enabled = "false"



        'txtBoxSubsectionDelete.Text = "Select a Subsection at left to delete"
        'txtBoxSubsectionDelete.Enabled = "false"


        grdSubsections.Visible = "true"

        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspProjectSectionsGetSpecific", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")


        Try
            DKConnection2.Open()

            Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            txtBoxSectionName.Text = myReader2("SectionName")
            txtBoxSectionSeq.DbValue = myReader2("SectionSeq")
            lblSectionDelete.Text = "Section to Delete: " + myReader2("SectionName")
            'txtBoxSectionDelete.Text = myReader2("SectionName")


            hdnOldSectionSeq.Value = myReader2("SectionSeq")

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try

        '0629
        'Select the first subsection in the section and set it up for editing
        grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
        grdSubsections.DataBind()

        grdSubsections.MasterTableView.Items(0).Selected = "True"
        hdnSubsectionID.Value = grdSubsections.SelectedValues("SubsectionID")

        btnUpdateSubsection.Enabled = "true"
        txtBoxSubsectionName.Enabled = "true"
        txtBoxSubsectionSeq.Enabled = "true"
        btnDeleteSubsection.Enabled = "true"
        'txtBoxSubsectionDelete.Enabled = "false"

        Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection4 As New SqlConnection(DKConnectionString4)

        Dim selectCMD4 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection4)
        selectCMD4.CommandType = CommandType.StoredProcedure
        selectCMD4.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")


        Try
            DKConnection4.Open()

            Dim result4 As Integer = selectCMD4.ExecuteNonQuery()
            Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
            myReader4.Read()

            txtBoxSubsectionName.Text = myReader4("SubsectionName")
            txtBoxSubsectionSeq.DbValue = myReader4("SubsectionSeq")
            lblSubsectionDelete.Text = "Subsection to Delete: " + myReader4("SubsectionName")
            'txtBoxSubsectionDelete.Text = myReader4("SubsectionName")

            hdnOldSubsectionSeq.Value = myReader4("SubsectionSeq")

            myReader4.Close()

        Catch ex As SqlException

        Finally
            DKConnection4.Close()
        End Try

    End Sub

    Protected Sub grdSubsections_PreRender(sender As Object, e As System.EventArgs) Handles grdSubsections.PreRender
        If grdSubsections.MasterTableView.Items.Count = 1 Then
            btnDeleteSubsection.Enabled = "false"
        End If
    End Sub


    Protected Sub grdSubsections_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdSubsections.SelectedIndexChanged

        btnUpdateSubsection.Enabled = "true"
        txtBoxSubsectionName.Enabled = "true"
        txtBoxSubsectionSeq.Enabled = "true"
        btnDeleteSubsection.Enabled = "true"

        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")

        Try
            DKConnection2.Open()

            Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            txtBoxSubsectionName.Text = myReader2("SubsectionName")
            txtBoxSubsectionSeq.DbValue = myReader2("SubsectionSeq")
            lblSubsectionDelete.Text = "Subsection to Delete: " + myReader2("SubsectionName")
            'txtBoxSubsectionDelete.Text = myReader2("SubsectionName")

            hdnOldSubsectionSeq.Value = myReader2("SubsectionSeq")

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try

    End Sub

    Protected Sub btnAddSection_Click(sender As Object, e As System.EventArgs) Handles btnAddSection.Click

        'btnAddSubsection.Enabled = "false"
        'txtBoxNewSubsection.Text = "Select a Parent Section at left"
        'txtBoxNewSubsection.Enabled = "false"

        'btnUpdateSection.Enabled = "False"
        'txtBoxSectionName.Text = "Select a Section at left to edit"
        'txtBoxSectionName.Enabled = "false"
        'txtBoxSectionSeq.Enabled = "false"

        'btnUpdateSubsection.Enabled = "False"
        'txtBoxSubsectionName.Text = "Select a Subsection at left to edit"
        'txtBoxSubsectionName.Enabled = "false"
        'txtBoxSubsectionSeq.Enabled = "false"

        'btnDeleteSection.Enabled = "false"
        'lblSectionDelete.Text = "Section to Delete: Select a Section at left to delete"
        'txtBoxSectionDelete.Text = "Select a Section at left to delete"
        'txtBoxSectionDelete.Enabled = "false"

        'btnDeleteSubsection.Enabled = "false"
        'lblSubsectionDelete.Text = "Subsection to Delete: Select a Subsection at Left"
        'txtBoxSubsectionDelete.Text = "Select a Subsection at left to delete"
        'txtBoxSubsectionDelete.Enabled = "false"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectSectionsAdd", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure

        menuCMD.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value.ToString()
        menuCMD.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value.ToString()
        menuCMD.Parameters.Add("@SectionName", SqlDbType.NVarChar).Value = txtBoxNewSection.Text

        menuCMD.Parameters.Add("@SectionID", SqlDbType.BigInt)
        menuCMD.Parameters("@SectionID").Direction = ParameterDirection.Output

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = menuCMD.ExecuteNonQuery()

            hdnSectionID.Value = menuCMD.Parameters("@SectionID").Value.ToString()
            'grdSections.SelectedIndexes.Add(0)

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        grdSections.DataSourceID = SqlDS_grdSections.ID
        grdSections.DataBind()
        comboBoxSectionCopySource.Items.Clear()
        comboBoxSectionCopySource.DataSourceID = SqlDS_comboBoxSectionCopySource.ID
        comboBoxSectionCopySource.DataBind()

        grdSections.MasterTableView.Items(0).Selected = "True"

        'grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
        'grdSubsections.DataBind()
        'grdSubsections.MasterTableView.Items(0).Selected = "true"

        'Look for SectionSeq of inserted Section
        Dim SelectSQL7 As String
        SelectSQL7 = "SELECT MAX([SectionSeq]) AS LastSectionSeq FROM [dbo].[Project_Sections] WHERE [TakeOffID]= " + hdnTakeOffID.Value.ToString()

        Dim DKConnectionString7 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection7 As New SqlConnection(DKConnectionString7)

        Dim SelectCMD7 As New SqlCommand(SelectSQL7, DKConnection7)

        Try
            'Try to open the connection and execute the update
            DKConnection7.Open()

            Dim result As Integer = SelectCMD7.ExecuteNonQuery()
            Dim myReader7 As SqlDataReader = SelectCMD7.ExecuteReader()
            myReader7.Read()

            grdSections.MasterTableView.Items(myReader7("LastSectionSeq") - 1).selected = "true"

            grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
            grdSubsections.DataBind()
            grdSubsections.MasterTableView.Items(0).Selected = "true"


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection7.Close()

        End Try

        'Retrieves section information for edit and delete functions
        Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection3 As New SqlConnection(DKConnectionString3)
        Dim selectCMD3 As SqlCommand = New SqlCommand("uspProjectSectionsGetSpecific", DKConnection3)
        selectCMD3.CommandType = CommandType.StoredProcedure
        selectCMD3.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")


        Try
            DKConnection3.Open()

            Dim result3 As Integer = selectCMD3.ExecuteNonQuery()
            Dim myReader3 As SqlDataReader = selectCMD3.ExecuteReader()
            myReader3.Read()

            txtBoxSectionName.Text = myReader3("SectionName")
            txtBoxSectionSeq.DbValue = myReader3("SectionSeq")
            lblSectionDelete.Text = "Section to Delete: " + myReader3("SectionName")
            'txtBoxSectionDelete.Text = myReader3("SectionName")

            hdnOldSectionSeq.Value = myReader3("SectionSeq")

            myReader3.Close()

        Catch ex As SqlException

        Finally
            DKConnection3.Close()
        End Try

        'Set the Section up to be edited immediately
        txtBoxSectionName.Enabled = "true"
        txtBoxSectionSeq.Enabled = "true"
        btnUpdateSection.Enabled = "true"
        btnDeleteSection.Enabled = "true"

        'Set the Subsection up to be edited immediately
        btnUpdateSubsection.Enabled = "true"
        txtBoxSubsectionName.Enabled = "true"
        txtBoxSubsectionSeq.Enabled = "true"
        btnDeleteSubsection.Enabled = "true"

        'Rebuild Subsections grid and select the first row
        grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
        grdSubsections.DataBind()
        grdSubsections.MasterTableView.Items(0).Selected = "True"

        'Retrieves subsection info for edit and delete functions
        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")


        Try
            DKConnection2.Open()

            Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            txtBoxSubsectionName.Text = myReader2("SubsectionName")
            txtBoxSubsectionSeq.DbValue = myReader2("SubsectionSeq")
            lblSubsectionDelete.Text = "Subsection to Delete: " + myReader2("SubsectionName")
            'txtBoxSubsectionDelete.Text = myReader2("SubsectionName")

            hdnSubsectionID.Value = grdSubsections.SelectedValues("SubsectionID")
            hdnOldSubsectionSeq.Value = myReader2("SubsectionSeq")

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try

        'Set Add New Subsection Up
        btnAddSubsection.Enabled = "true"
        txtBoxNewSubsection.Enabled = "true"
        txtBoxNewSubsection.Text = ""


        grdSect.DataSourceID = SqlDS_grdSect.ID
        grdSect.DataBind()
        grdSect.MasterTableView.Items(0).Selected = "True"

        SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValues("SectionID")
        grdSub.DataSourceID = SqlDS_grdSub.ID
        grdSub.DataBind()
        grdSub.MasterTableView.Items(0).Selected = "true"



        comboBoxSectionCopySource.Items.Clear()
        comboBoxSectionCopySource.DataSourceID = SqlDS_comboBoxSectionCopySource.ID
        comboBoxSectionCopySource.DataBind()

    End Sub

    Protected Sub btnAddSubsection_Click(sender As Object, e As System.EventArgs) Handles btnAddSubsection.Click

        'btnDeleteSubsection.Enabled = "false"
        'lblSubsectionDelete.Text = "Subsection to Delete: Select a Subsection at Left"
        'txtBoxSubsectionDelete.Text = "Select a Subsection at left to delete"
        'txtBoxSubsectionDelete.Enabled = "false"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspProjectSubsectionsAdd", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure

        menuCMD.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        menuCMD.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value
        menuCMD.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = hdnSectionID.Value
        menuCMD.Parameters.Add("@SubsectionName", SqlDbType.NVarChar).Value = txtBoxNewSubsection.Text

        Dim inserted As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted = menuCMD.ExecuteNonQuery()
            grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
            grdSubsections.DataBind()
            grdSubsections.MasterTableView.Items(0).Selected = "true"
            btnDeleteSubsection.Enabled = "true"



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try



        'Look for SectionSeq of inserted Subsection
        'Dim SelectSQL7 As String
        'SelectSQL7 = "SELECT MAX([SubsectionSeq]) AS LastSubsectionSeq, MAX([SubsectionID]) AS NewSubsectionID FROM [dbo].[Project_Subsections] WHERE [SectionID]= " + hdnSectionID.Value.ToString


        'Dim DKConnectionString7 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection7 As New SqlConnection(DKConnectionString7)

        'Dim SelectCMD7 As New SqlCommand(SelectSQL7, DKConnection7)

        'Try
        '    'Try to open the connection and execute the update
        '    DKConnection7.Open()

        '    Dim result As Integer = SelectCMD7.ExecuteNonQuery()
        '    Dim myReader7 As SqlDataReader = SelectCMD7.ExecuteReader()
        '    myReader7.Read()

        '    grdSubsections.MasterTableView.Items(myReader7("LastSubsectionSeq") - 1).selected = "true"
        '    hdnSubsectionID.Value = myReader7("NewSubsectionID")

        'Catch err As Exception
        '    ' Handle an error by displaying the information

        'Finally
        '    'Either way, make sure the connection is properly closed
        '    DKConnection7.Close()

        'End Try

        grdSect.DataSourceID = SqlDS_grdSect.ID
        grdSect.DataBind()
        grdSect.MasterTableView.Items(0).Selected = "True"

        SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValues("SectionID")
        grdSub.DataSourceID = SqlDS_grdSub.ID
        grdSub.DataBind()
        grdSub.MasterTableView.Items(0).Selected = "true"

        grdSubsections.MasterTableView.Items(0).Selected = "true"

        Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection4 As New SqlConnection(DKConnectionString4)

        Dim selectCMD4 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection4)
        selectCMD4.CommandType = CommandType.StoredProcedure
        selectCMD4.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")


        Try
            DKConnection4.Open()

            Dim result4 As Integer = selectCMD4.ExecuteNonQuery()
            Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
            myReader4.Read()

            txtBoxSubsectionName.Text = myReader4("SubsectionName")
            txtBoxSubsectionSeq.DbValue = myReader4("SubsectionSeq")
            lblSubsectionDelete.Text = "Subsection to Delete: " + myReader4("SubsectionName")
            'txtBoxSubsectionDelete.Text = myReader4("SubsectionName")

            hdnOldSubsectionSeq.Value = myReader4("SubsectionSeq")

            myReader4.Close()

        Catch ex As SqlException

        Finally
            DKConnection4.Close()
        End Try


    End Sub

    Protected Sub btnUpdateSection_Click(sender As Object, e As System.EventArgs) Handles btnUpdateSection.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspProjectSectionsUpdate", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure
        updateCMD.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value
        updateCMD.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")
        updateCMD.Parameters.Add("@SectionName", SqlDbType.NVarChar).Value = txtBoxSectionName.Text
        updateCMD.Parameters.Add("@SectionSeq", SqlDbType.Int).Value = txtBoxSectionSeq.Value
        updateCMD.Parameters.Add("@OldSectionSeq", SqlDbType.Int).Value = hdnOldSectionSeq.Value

        Dim tmpSelectedRowValue As Integer = txtBoxSectionSeq.Value - 1
        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()
            grdSections.DataSourceID = SqlDS_grdSections.ID
            grdSections.DataBind()
            grdSections.MasterTableView.Items(0).Selected = "true"
            'grdSections.MasterTableView.Items(tmpSelectedRowValue).Selected = "true"
            comboBoxSectionCopySource.Items.Clear()
            comboBoxSectionCopySource.DataSourceID = SqlDS_comboBoxSectionCopySource.ID
            comboBoxSectionCopySource.DataBind()


            grdSect.DataSourceID = SqlDS_grdSect.ID
            grdSect.DataBind()
            grdSect.MasterTableView.Items(0).Selected = "True"

            SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValues("SectionID")
            grdSub.DataSourceID = SqlDS_grdSub.ID
            grdSub.DataBind()
            grdSub.MasterTableView.Items(0).Selected = "true"


            grdSubsections.Visible = "true"
            'txtBoxSectionName.Text = ""

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            txtBoxSectionSeq.DbValue = 0

        End Try


        'Retrieves section information for edit and delete functions
        Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection3 As New SqlConnection(DKConnectionString3)
        Dim selectCMD3 As SqlCommand = New SqlCommand("uspProjectSectionsGetSpecific", DKConnection3)
        selectCMD3.CommandType = CommandType.StoredProcedure
        selectCMD3.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")


        Try
            DKConnection3.Open()

            Dim result3 As Integer = selectCMD3.ExecuteNonQuery()
            Dim myReader3 As SqlDataReader = selectCMD3.ExecuteReader()
            myReader3.Read()

            txtBoxSectionName.Text = myReader3("SectionName")
            txtBoxSectionSeq.DbValue = myReader3("SectionSeq")
            lblSectionDelete.Text = "Section to Delete: " + myReader3("SectionName")
            'txtBoxSectionDelete.Text = myReader3("SectionName")

            hdnOldSectionSeq.Value = myReader3("SectionSeq")

            myReader3.Close()

        Catch ex As SqlException

        Finally
            DKConnection3.Close()
        End Try

        'Set the Section up to be edited immediately
        'txtBoxSectionName.Enabled = "true"
        'txtBoxSectionSeq.Enabled = "true"
        'btnUpdateSection.Enabled = "true"
        'btnDeleteSection.Enabled = "true"

        'Set the Subsection up to be edited immediately
        'btnUpdateSubsection.Enabled = "true"
        'txtBoxSubsectionName.Enabled = "true"
        'txtBoxSubsectionSeq.Enabled = "true"
        'btnDeleteSubsection.Enabled = "true"

        'Rebuild Subsections grid and select the first row
        grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
        grdSubsections.DataBind()
        grdSubsections.MasterTableView.Items(0).Selected = "True"

        'Retrieves subsection info for edit and delete functions
        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")


        Try
            DKConnection2.Open()

            Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            txtBoxSubsectionName.Text = myReader2("SubsectionName")
            txtBoxSubsectionSeq.DbValue = myReader2("SubsectionSeq")
            lblSubsectionDelete.Text = "Subsection to Delete: " + myReader2("SubsectionName")


            hdnSubsectionID.Value = grdSubsections.SelectedValues("SubsectionID")
            hdnOldSubsectionSeq.Value = myReader2("SubsectionSeq")

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try



    End Sub

    Protected Sub btnUpdateSubsection_Click(sender As Object, e As System.EventArgs) Handles btnUpdateSubsection.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspProjectSubsectionsUpdate", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure
        updateCMD.Parameters.Add("SectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")
        updateCMD.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")
        updateCMD.Parameters.Add("@SubsectionName", SqlDbType.NVarChar).Value = txtBoxSubsectionName.Text
        updateCMD.Parameters.Add("@SubsectionSeq", SqlDbType.Int).Value = txtBoxSubsectionSeq.Value
        updateCMD.Parameters.Add("@OldSubsectionSeq", SqlDbType.Int).Value = hdnOldSubsectionSeq.Value

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()
            grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
            grdSubsections.DataBind()

            grdSect.DataSourceID = SqlDS_grdSect.ID
            grdSect.DataBind()
            grdSect.MasterTableView.Items(0).Selected = "True"

            SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValues("SectionID")
            grdSub.DataSourceID = SqlDS_grdSub.ID
            grdSub.DataBind()
            grdSub.MasterTableView.Items(0).Selected = "true"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            'btnUpdateSubsection.Enabled = "False"
            txtBoxSubsectionName.Text = "Select a Subsection at left to edit"
            'txtBoxSubsectionName.Enabled = "false"
            'txtBoxSubsectionSeq.Enabled = "false"

            'btnDeleteSubsection.Enabled = "false"
            lblSubsectionDelete.Text = "Subsection to Delete: Select a Subsection at Left"
            'txtBoxSubsectionDelete.Text = "Select a Subsection at left to delete"
            'txtBoxSubsectionDelete.Enabled = "false"
            'txtBoxSubsectionName.Text = ""
            txtBoxSubsectionSeq.DbValue = 0

        End Try

        'Update editing section of Line Items
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")

        SqlDS_grdSubsectionDetail.SelectParameters("SubsectionID").DefaultValue = grdSub.SelectedValues("SubsectionID")

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblEditSubsectionTitle.Text = "Now Editing: " + myReader1("SubsectionName").ToString()
            txtBoxSubsectionUnitsPerSection.Text = myReader1("UnitsPerSection").ToString()
            txtBoxSubsectionTotalUnits.DbValue = myReader1("TotalUnits")
            editSubsectionComment.Text = myReader1("SubsectionComment").ToString()
            editSectionComment.Text = myReader1("SectionComment").ToString()

            myReader1.Close()

            grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
            grdSubsectionDetail.DataBind()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try


        grdSubsections.MasterTableView.Items(0).Selected = "true"

        Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection4 As New SqlConnection(DKConnectionString4)

        Dim selectCMD4 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection4)
        selectCMD4.CommandType = CommandType.StoredProcedure
        selectCMD4.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")


        Try
            DKConnection4.Open()

            Dim result4 As Integer = selectCMD4.ExecuteNonQuery()
            Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
            myReader4.Read()

            txtBoxSubsectionName.Text = myReader4("SubsectionName")
            txtBoxSubsectionSeq.DbValue = myReader4("SubsectionSeq")
            lblSubsectionDelete.Text = "Subsection to Delete: " + myReader4("SubsectionName")
            'txtBoxSubsectionDelete.Text = myReader4("SubsectionName")

            hdnOldSubsectionSeq.Value = myReader4("SubsectionSeq")

            myReader4.Close()

        Catch ex As SqlException

        Finally
            DKConnection4.Close()
        End Try


    End Sub


    Protected Sub btnSectionCopy_Click(sender As Object, e As System.EventArgs) Handles btnSectionCopy.Click


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspProjectSectionsCopy", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure
        updateCMD.Parameters.Add("@DestSectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")
        updateCMD.Parameters.Add("@SourceSectionID", SqlDbType.BigInt).Value = comboBoxSectionCopySource.SelectedValue
        'updateCMD.Parameters.Add("@SectionName", SqlDbType.NVarChar).Value = txtBoxSectionName.Text
        'updateCMD.Parameters.Add("@SectionSeq", SqlDbType.Int).Value = txtBoxSectionSeq.Value
        'updateCMD.Parameters.Add("@OldSectionSeq", SqlDbType.Int).Value = hdnOldSectionSeq.Value


        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()
            grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
            grdSubsections.DataBind()
            grdSubsections.MasterTableView.Items(0).Selected = "true"
            'grdSections.MasterTableView.Items(tmpSelectedRowValue).Selected = "true"

            SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValues("SectionID")
            grdSub.DataSourceID = SqlDS_grdSub.ID
            grdSub.DataBind()
            grdSub.MasterTableView.Items(0).Selected = "true"


            grdSubsections.Visible = "true"
        

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()



        End Try



    End Sub


    Protected Sub btnDeleteSection_Click(sender As Object, e As System.EventArgs) Handles btnDeleteSection.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspProjectSectionDelete", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure
        updateCMD.Parameters.Add("SectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")
        updateCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        updateCMD.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value



        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()
            grdSections.DataSourceID = SqlDS_grdSections.ID
            grdSections.DataBind()
            comboBoxSectionCopySource.Items.Clear()
            comboBoxSectionCopySource.DataSourceID = SqlDS_comboBoxSectionCopySource.ID
            comboBoxSectionCopySource.DataBind()

            lblSubsectionDelete.Text = "Subsection to Delete: Select a Subsection at Left"
            'txtBoxSubsectionDelete.Text = ""

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

            grdSections.DataSourceID = SqlDS_grdSections.ID
            grdSections.DataBind()
            grdSections.MasterTableView.Items(0).Selected = "True"
            'grdSections.SelectedIndexes.Add(0)
            

            SqlDS_grdSubsections.SelectParameters("SectionID").DefaultValue = -1

            grdSect.DataSourceID = SqlDS_grdSect.ID
            grdSect.DataBind()
            grdSect.MasterTableView.Items(0).Selected = "True"

            SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValues("SectionID")
            grdSub.DataSourceID = SqlDS_grdSub.ID
            grdSub.DataBind()
            grdSub.MasterTableView.Items(0).Selected = "true"

            grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
            grdSubsections.DataBind()
            grdSubsections.MasterTableView.Items(0).Selected = "True"

            grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
            grdQuoteStats.DataBind()

            grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
            grdSubsectionDetail.DataBind()

        End Try



        Dim DKConnectionString3 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection3 As New SqlConnection(DKConnectionString3)
        Dim selectCMD3 As SqlCommand = New SqlCommand("uspProjectSectionsGetSpecific", DKConnection3)
        selectCMD3.CommandType = CommandType.StoredProcedure
        selectCMD3.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")


        Try
            DKConnection3.Open()

            Dim result3 As Integer = selectCMD3.ExecuteNonQuery()
            Dim myReader3 As SqlDataReader = selectCMD3.ExecuteReader()
            myReader3.Read()

            txtBoxSectionName.Text = myReader3("SectionName")
            txtBoxSectionSeq.DbValue = myReader3("SectionSeq")
            lblSectionDelete.Text = "Section to Delete: " + myReader3("SectionName")
            'txtBoxSectionDelete.Text = myReader3("SectionName")

            hdnOldSectionSeq.Value = myReader3("SectionSeq")

            myReader3.Close()

        Catch ex As SqlException

        Finally
            DKConnection3.Close()
        End Try


        Dim DKConnectionString4 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection4 As New SqlConnection(DKConnectionString4)

        Dim selectCMD4 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection4)
        selectCMD4.CommandType = CommandType.StoredProcedure
        selectCMD4.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")


        Try
            DKConnection4.Open()

            Dim result4 As Integer = selectCMD4.ExecuteNonQuery()
            Dim myReader4 As SqlDataReader = selectCMD4.ExecuteReader()
            myReader4.Read()

            txtBoxSubsectionName.Text = myReader4("SubsectionName")
            txtBoxSubsectionSeq.DbValue = myReader4("SubsectionSeq")
            lblSubsectionDelete.Text = "Subsection to Delete: " + myReader4("SubsectionName")
            'txtBoxSubsectionDelete.Text = myReader4("SubsectionName")

            hdnOldSubsectionSeq.Value = myReader4("SubsectionSeq")

            myReader4.Close()

        Catch ex As SqlException

        Finally
            DKConnection4.Close()
        End Try



        comboBoxSectionCopySource.Items.Clear()
        comboBoxSectionCopySource.DataSourceID = SqlDS_comboBoxSectionCopySource.ID
        comboBoxSectionCopySource.DataBind()
    End Sub

    Protected Sub btnDeleteSubsection_Click(sender As Object, e As System.EventArgs) Handles btnDeleteSubsection.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspProjectSubsectionDelete", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure
        updateCMD.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = grdSections.SelectedValues("SectionID")
        updateCMD.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")
        updateCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        updateCMD.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()

            lblSubsectionDelete.Text = "Subsection to Delete: Select a Subsection at Left"
            'txtBoxSubsectionDelete.Text = ""
           

            grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
            grdQuoteStats.DataBind()

            grdSect.DataSourceID = SqlDS_grdSect.ID
            grdSect.DataBind()
            grdSect.MasterTableView.Items(0).Selected = "True"

            SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValues("SectionID")
            grdSub.DataSourceID = SqlDS_grdSub.ID
            grdSub.DataBind()
            grdSub.MasterTableView.Items(0).Selected = "true"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        grdSubsections.DataSourceID = SqlDS_grdSubsections.ID
        grdSubsections.DataBind()

        grdSubsections.MasterTableView.Items(0).Selected = "true"

        'Dim SelectSQL7 As String
        'SelectSQL7 = "SELECT MAX([SubsectionSeq]) AS LastSubsectionSeq, MAX([SubsectionID]) AS NewSubsectionID FROM [dbo].[Project_Subsections] WHERE [SectionID]= " + hdnSectionID.Value.ToString

        'Dim DKConnectionString7 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        'Dim DKConnection7 As New SqlConnection(DKConnectionString7)

        'Dim SelectCMD7 As New SqlCommand(SelectSQL7, DKConnection7)

        'Try
        '    'Try to open the connection and execute the update
        '    DKConnection7.Open()

        '    Dim result As Integer = SelectCMD7.ExecuteNonQuery()
        '    Dim myReader7 As SqlDataReader = SelectCMD7.ExecuteReader()
        '    myReader7.Read()

        '    grdSubsections.MasterTableView.Items(myReader7("LastSubsectionSeq") - 1).selected = "true"
        '    hdnSubsectionID.Value = myReader7("NewSubsectionID")

        'Catch err As Exception
        '    ' Handle an error by displaying the information

        'Finally
        '    'Either way, make sure the connection is properly closed
        '    DKConnection7.Close()

        'End Try


        'Set the Subsection up to be edited immediately
        btnUpdateSubsection.Enabled = "true"
        txtBoxSubsectionName.Enabled = "true"
        txtBoxSubsectionSeq.Enabled = "true"
        btnDeleteSubsection.Enabled = "true"

        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSubsections.SelectedValues("SubsectionID")
        'selectCMD2.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = CInt(hdnSubsectionID.Value)

        Try
            DKConnection2.Open()

            Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            txtBoxSubsectionName.Text = myReader2("SubsectionName")
            txtBoxSubsectionSeq.DbValue = myReader2("SubsectionSeq")
            lblSubsectionDelete.Text = "Subsection to Delete: " + myReader2("SubsectionName")
            'txtBoxSubsectionDelete.Text = myReader2("SubsectionName")

            hdnOldSubsectionSeq.Value = myReader2("SubsectionSeq")

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try


    End Sub


    'TakeOff data entry
    Protected Sub btnUpdateSectionUnits_Click(sender As Object, e As System.EventArgs) Handles btnUpdateSectionUnits.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspProjectSubsectionAvgVariablesUpdate", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure

        updateCMD.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
        updateCMD.Parameters.Add("@UnitsPerSection", SqlDbType.VarChar).Value = txtBoxSubsectionUnitsPerSection.Text
        updateCMD.Parameters.Add("@TotalUnits", SqlDbType.Real).Value = txtBoxSubsectionTotalUnits.DbValue

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try
    End Sub

    Protected Sub grdSect_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdSect.SelectedIndexChanged

        SqlDS_grdSub.SelectParameters("SectionID").DefaultValue = grdSect.SelectedValues("SectionID")
        grdSub.DataSourceID = SqlDS_grdSub.ID
        grdSub.DataBind()
        grdSub.MasterTableView.Items(0).Selected = "True"

        lineUpdateDetailIDIndex.Items.Clear()
        lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))

        lineDeleteDetailIDIndex.Items.Clear()
        lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))

        SqlDS_grdSubsectionDetail.SelectParameters("SubsectionID").DefaultValue = grdSub.SelectedValues("SubsectionID")
        grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
        grdSubsectionDetail.DataBind()

        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim selectCMD2 As SqlCommand = New SqlCommand("uspProjectSectionsGetSpecific", DKConnection2)
        selectCMD2.CommandType = CommandType.StoredProcedure
        selectCMD2.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = grdSect.SelectedValues("SectionID")


        Try
            DKConnection2.Open()

            Dim result2 As Integer = selectCMD2.ExecuteNonQuery()
            Dim myReader2 As SqlDataReader = selectCMD2.ExecuteReader()
            myReader2.Read()

            editSectionComment.Text = myReader2("SectionComment")

            myReader2.Close()

        Catch ex As SqlException

        Finally
            DKConnection2.Close()
        End Try

        lineUpdateDetailIDIndex.Items.Clear()
        lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))


        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblEditSubsectionTitle.Text = "Now Editing: " + myReader1("SubsectionName").ToString()
            txtBoxSubsectionUnitsPerSection.Text = myReader1("UnitsPerSection").ToString()
            txtBoxSubsectionTotalUnits.DbValue = myReader1("TotalUnits")
            editSubsectionComment.Text = myReader1("SubsectionComment").ToString()
            editSectionComment.Text = myReader1("SectionComment").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try
    End Sub


    Protected Sub grdSub_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdSub.SelectedIndexChanged

        lineUpdateDetailIDIndex.Items.Clear()
        lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))

        lineDeleteDetailIDIndex.Items.Clear()
        lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))

        pnlEditSubsection.Visible = "true"
        pnlEditSubsection2.Visible = "true"
  

        'Look for the next SubsectionSeq value and assign it to the hdnNextSubsectionSeq 
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProjectSubsectionsGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")

        SqlDS_grdSubsectionDetail.SelectParameters("SubsectionID").DefaultValue = grdSub.SelectedValues("SubsectionID")

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblEditSubsectionTitle.Text = "Now Editing: " + myReader1("SubsectionName").ToString()
            txtBoxSubsectionUnitsPerSection.Text = myReader1("UnitsPerSection").ToString()
            txtBoxSubsectionTotalUnits.DbValue = myReader1("TotalUnits")
            editSubsectionComment.Text = myReader1("SubsectionComment").ToString()
            editSectionComment.Text = myReader1("SectionComment").ToString()

            myReader1.Close()

            grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
            grdSubsectionDetail.DataBind()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

        listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabList.ID
        listBoxTakeOffGrabList2.DataBind()

        grdSubsectionCopy.DataSourceID = SqlDS_grdSubsectionCopy.ID
        grdSubsectionCopy.DataBind()

    End Sub


    Protected Sub listBoxTakeOffGrabList2_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listBoxTakeOffGrabList2.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspProjectSubsectionDetailInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.Int).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value

        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = listBoxTakeOffGrabList2.SelectedValue
        insertCMD.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        insertCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = hdnWhseID.Value
        insertCMD.Parameters.Add("@PriceType", SqlDbType.NVarChar).Value = hdnPriceType.Value
        insertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = hdnCustID.Value

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
        grdSubsectionDetail.DataBind()

        listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabList.ID
        listBoxTakeOffGrabList2.DataBind()

        lineUpdateDetailIDIndex.Items.Clear()
        lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineUpdateDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
        lineUpdateDetailIDIndex.DataBind()

        lineDeleteDetailIDIndex.Items.Clear()
        lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineDeleteDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
        lineDeleteDetailIDIndex.DataBind()
    End Sub

    Protected Sub listBoxTakeOffQuicklistRelated2_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listBoxTakeOffQuicklistRelated2.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspProjectSubsectionDetailInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.Int).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = listBoxTakeOffQuicklistRelated2.SelectedValue
        insertCMD.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        insertCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = hdnWhseID.Value
        insertCMD.Parameters.Add("@PriceType", SqlDbType.NVarChar).Value = hdnPriceType.Value
        insertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = hdnCustID.Value

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()
            listBoxTakeOffQuicklistRelated2.EditIndexes.Clear()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
        grdSubsectionDetail.DataBind()

        listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabList.ID
        listBoxTakeOffGrabList2.DataBind()

        lineUpdateDetailIDIndex.Items.Clear()
        lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineUpdateDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
        lineUpdateDetailIDIndex.DataBind()

        lineDeleteDetailIDIndex.Items.Clear()
        lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineDeleteDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
        lineDeleteDetailIDIndex.DataBind()


    End Sub


    Protected Sub listBoxTakeOffAssemblies_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listBoxTakeOffAssemblies.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffAssemblyAddToSubsection", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@AssemblyID", SqlDbType.BigInt).Value = listBoxTakeOffAssemblies.SelectedValue
        insertCMD.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.Int).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value

        insertCMD.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        insertCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = hdnWhseID.Value
        insertCMD.Parameters.Add("@PriceType", SqlDbType.NVarChar).Value = hdnPriceType.Value
        insertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = hdnCustID.Value

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try


        grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
        grdSubsectionDetail.DataBind()

        lineUpdateDetailIDIndex.Items.Clear()
        lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineUpdateDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
        lineUpdateDetailIDIndex.DataBind()

        listBoxTakeOffAssemblies.DataSourceID = SqlDS_TakeOffAssemblies.ID
        listBoxTakeOffAssemblies.DataBind()

        lineDeleteDetailIDIndex.Items.Clear()
        lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
        lineDeleteDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
        lineDeleteDetailIDIndex.DataBind()

    End Sub

    Protected Sub lineDeleteDetailIDIndex_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles lineDeleteDetailIDIndex.SelectedIndexChanged

        Dim SelectSQL As String
        SelectSQL = "SELECT Line, ProdID FROM Project_Subsections_Detail WHERE DetailIDIndex = " + lineDeleteDetailIDIndex.SelectedValue.ToString()


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

        Dim Reader As SqlDataReader
        Try
            'Try to open the connection and execute the Select
            DKConnection.Open()

            Reader = SelectCMD1.ExecuteReader()
            Reader.Read()

            lineDelete.Value = Reader("Line")
            lineDeleteProdID.Value = Reader("ProdID")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub

    Protected Sub lineUpdateDetailIDIndex_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles lineUpdateDetailIDIndex.SelectedIndexChanged

        Dim SelectSQL As String
        SelectSQL = "SELECT Line FROM Project_Subsections_Detail WHERE DetailIDIndex = " + lineUpdateDetailIDIndex.SelectedValue.ToString()


        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim SelectCMD1 As New SqlCommand(SelectSQL, DKConnection)

        Dim Reader As SqlDataReader
        Try
            'Try to open the connection and execute the Select
            DKConnection.Open()

            Reader = SelectCMD1.ExecuteReader()
            Reader.Read()

            lineUpdateLineOld.Value = Reader("Line")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub


    Protected Sub btnStockSearch_Click(sender As Object, e As System.EventArgs) Handles btnStockSearch.Click
        SqlDS_listBoxTakeOffStockSearch.SelectParameters("WhseID").DefaultValue = hdnWhseID.Value
        SqlDS_listBoxTakeOffStockSearch.SelectParameters("ProdID").DefaultValue = " " + txtStockProdIDSearch.Text.ToString()
        SqlDS_listBoxTakeOffStockSearch.SelectParameters("Description").DefaultValue = " " + txtStockDescSearch.Text.ToString()


        listBoxTakeOffStockSearch.DataSourceID = SqlDS_listBoxTakeOffStockSearch.ID
        listBoxTakeOffStockSearch.DataBind()

    End Sub

    Protected Sub grdSubsectionCopy_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdSubsectionCopy.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspProjectSubsectionDetailCopySubsection", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.Int).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@SubsectionIDSource", SqlDbType.BigInt).Value = grdSubsectionCopy.SelectedValues("SubsectionID")
        insertCMD.Parameters.Add("@SubsectionIDDest", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")

        

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()

            grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
            grdSubsectionDetail.DataBind()

            lineUpdateDetailIDIndex.Items.Clear()
            lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineUpdateDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineUpdateDetailIDIndex.DataBind()

            lineDeleteDetailIDIndex.Items.Clear()
            lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineDeleteDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineDeleteDetailIDIndex.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

    End Sub



    Protected Sub listBoxTakeOffStockSearch_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listBoxTakeOffStockSearch.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspProjectSubsectionDetailInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.Int).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = listBoxTakeOffStockSearch.SelectedValue.ToString()
        insertCMD.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        insertCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = hdnWhseID.Value.ToString()
        insertCMD.Parameters.Add("@PriceType", SqlDbType.NVarChar).Value = hdnPriceType.Value
        insertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = hdnCustID.Value

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()

            grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
            grdSubsectionDetail.DataBind()

            listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabList.ID
            listBoxTakeOffGrabList2.DataBind()

            lineUpdateDetailIDIndex.Items.Clear()
            lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineUpdateDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineUpdateDetailIDIndex.DataBind()

            lineDeleteDetailIDIndex.Items.Clear()
            lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineDeleteDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineDeleteDetailIDIndex.DataBind()

            listBoxTakeOffStockSearch.DataSourceID = SqlDS_listBoxTakeOffStockSearch.ID
            listBoxTakeOffStockSearch.DataBind()

            'xyz
            grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
            grdPricing2.DataBind()

            grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
            grdQuoteStats.DataBind()

            grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
            grdCosting2.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try



    End Sub

    Protected Sub btnStockSearchClear_Click(sender As Object, e As System.EventArgs) Handles btnStockSearchClear.Click
        txtStockProdIDSearch.Text = ""
        txtStockDescSearch.Text = ""

        SqlDS_listBoxTakeOffStockSearch.SelectParameters("ProdID").DefaultValue = ""
        SqlDS_listBoxTakeOffStockSearch.SelectParameters("Description").DefaultValue = ""

        listBoxTakeOffStockSearch.DataSourceID = SqlDS_listBoxTakeOffStockSearch.ID
        listBoxTakeOffStockSearch.DataBind()


    End Sub

    Protected Sub btnDeleteLine_Click(sender As Object, e As System.EventArgs) Handles btnDeleteLine.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectSubsectionDetailDELETERow", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@DetailIDIndex", SqlDbType.BigInt).Value = lineDeleteDetailIDIndex.SelectedValue
        updateCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = lineDeleteProdID.Value
        updateCMD1.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
        updateCMD1.Parameters.Add("@Line", SqlDbType.Int).Value = lineDelete.Value
        updateCMD1.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value

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

            grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
            grdSubsectionDetail.DataBind()

            lineUpdateDetailIDIndex.Items.Clear()
            lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineUpdateDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineUpdateDetailIDIndex.DataBind()

            lineDeleteDetailIDIndex.Items.Clear()
            lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineDeleteDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineDeleteDetailIDIndex.DataBind()

        End Try


        Dim DKConnectionString2 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection2 As New SqlConnection(DKConnectionString2)

        Dim updateCMD2 As SqlCommand = New SqlCommand("uspQuotePricingRefresh", DKConnection2)
        updateCMD2.CommandType = CommandType.StoredProcedure
        updateCMD2.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value


        Dim updated2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection2.Open()
            updated2 = updateCMD2.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection2.Close()

        End Try

        grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
        grdQuoteStats.DataBind()


    End Sub

    Protected Sub btnLineUpdate_Click(sender As Object, e As System.EventArgs) Handles btnLineUpdate.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectSubsectionDetailUpdateLine", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@DetailIDIndex", SqlDbType.BigInt).Value = lineUpdateDetailIDIndex.SelectedValue
        updateCMD1.Parameters.Add("@NewLine", SqlDbType.Int).Value = lineUpdateLineNew.SelectedValue
        updateCMD1.Parameters.Add("@OldLine", SqlDbType.Int).Value = lineUpdateLineOld.Value
        updateCMD1.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")


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

            grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
            grdSubsectionDetail.DataBind()

            lineUpdateDetailIDIndex.Items.Clear()
            lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineUpdateDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineUpdateDetailIDIndex.DataBind()

            lineDeleteDetailIDIndex.Items.Clear()
            lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineDeleteDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineDeleteDetailIDIndex.DataBind()

        End Try
    End Sub

    Protected Sub btnInsertNonStock_Click(sender As Object, e As System.EventArgs) Handles btnInsertNonStock.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspProjectNonStockInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.Int).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = nsInsertProdID.Text
        insertCMD.Parameters.Add("@Description", SqlDbType.NVarChar).Value = nsInsertDescription.Text
        insertCMD.Parameters.Add("@SellUnit", SqlDbType.NVarChar).Value = nsInsertSellUnit.SelectedValue
        insertCMD.Parameters.Add("@UnitCost", SqlDbType.Real).Value = nsInsertUnitCost.DbValue
        insertCMD.Parameters.Add("@Comment", SqlDbType.NVarChar).Value = nsInsertComment.Text


        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()

            nsInsertProdID.Text = ""
            nsInsertDescription.Text = ""
            nsInsertComment.Text = ""
            nsInsertUnitCost.DbValue = 0

            grdNonStockListing.DataSourceID = SqlDS_TakeOffNonStock.ID
            grdNonStockListing.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

        listBoxTakeOffNonStock.DataSourceID = SqlDS_listBoxTakeOffNonStock.ID
        listBoxTakeOffNonStock.DataBind()

    End Sub

    Protected Sub listBoxTakeOffNonStock_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listBoxTakeOffNonStock.SelectedIndexChanged

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspProjectSubsectionDetailInsertNonStock", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.Int).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = listBoxTakeOffNonStock.SelectedValue
        insertCMD.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        insertCMD.Parameters.Add("@WhseID", SqlDbType.NVarChar).Value = hdnWhseID.Value.ToString()
        insertCMD.Parameters.Add("@PriceType", SqlDbType.NVarChar).Value = hdnPriceType.Value.ToString()
        insertCMD.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = hdnCustID.Value.ToString()

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()

            grdSubsectionDetail.DataSourceID = SqlDS_grdSubsectionDetail.ID
            grdSubsectionDetail.DataBind()

            lineUpdateDetailIDIndex.Items.Clear()
            lineUpdateDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineUpdateDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineUpdateDetailIDIndex.DataBind()

            lineDeleteDetailIDIndex.Items.Clear()
            lineDeleteDetailIDIndex.Items.Insert(0, New RadComboBoxItem("-", String.Empty))
            lineDeleteDetailIDIndex.DataSourceID = SqlDS_grdSubsectionDetail.ID
            lineDeleteDetailIDIndex.DataBind()

            listBoxTakeOffNonStock.DataSourceID = SqlDS_listBoxTakeOffNonStock.ID
            listBoxTakeOffNonStock.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try

    End Sub

    Protected Sub grdNonStockListing_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdNonStockListing.SelectedIndexChanged

        RadTabStripNonStocks.SelectedIndex = 1
        RadMultiPage2.SelectedIndex = 1

        'Retrieve the specific row in the takeoff
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProjectNonStockGetSpecific", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@ProjectPartIndex", SqlDbType.BigInt).Value = grdNonStockListing.SelectedValues("ProjectPartIndex")

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            nsEditProdID.Text = myReader1("ProdID").ToString()
            nsEditDescription.Text = myReader1("Description").ToString()
            nsEditComment.Text = myReader1("Comment").ToString()
            nsEditSellUnit.SelectedValue = myReader1("SellUnit").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

    End Sub

    Protected Sub btnUpdateNonStock_Click(sender As Object, e As System.EventArgs) Handles btnUpdateNonStock.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectNonStockUpdate2", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@ProjectPartIndex", SqlDbType.BigInt).Value = grdNonStockListing.SelectedValues("ProjectPartIndex")
        updateCMD1.Parameters.Add("@ProdIDNew", SqlDbType.NVarChar).Value = nsEditProdID.Text
        updateCMD1.Parameters.Add("@Description", SqlDbType.NVarChar).Value = nsEditDescription.Text
        updateCMD1.Parameters.Add("@SellUnit", SqlDbType.NVarChar).Value = nsEditSellUnit.SelectedValue.ToString()
        updateCMD1.Parameters.Add("@Comment", SqlDbType.NVarChar).Value = nsEditComment.Text
        updateCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value


        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()
            grdNonStockListing.DataSourceID = SqlDS_TakeOffNonStock.ID
            grdNonStockListing.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try
    End Sub

    Protected Sub btnUtilityCopyQuote_Click(sender As Object, e As System.EventArgs) Handles btnUtilityCopyQuote.Click
        'btnUtilityCopyQuote.Text = hdnQuoteID.Value.ToString()

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD1 As SqlCommand = New SqlCommand("uspQuoteUtilityQuoteCopy", DKConnection)
        insertCMD1.CommandType = CommandType.StoredProcedure
        insertCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        insertCMD1.Parameters.Add("@CreatedBy", SqlDbType.NVarChar).Value = hdnModifiedBy.Value.ToString()
        insertCMD1.Parameters.Add("@NewQuoteID", SqlDbType.BigInt)
        insertCMD1.Parameters("@NewQuoteID").Direction = ParameterDirection.Output

        'insertCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = 10037

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = insertCMD1.ExecuteNonQuery()

            btnUtilityCopyQuote.Enabled = "false"
            btnUtilityCopyQuoteGoToNew.Enabled = "true"
            btnUtilityCopyQuoteGoToNew.NavigateUrl = "../BidTool/Bid.aspx?QuoteID=" + insertCMD1.Parameters("@NewQuoteID").Value.ToString()
            btnUtilityCopyQuoteGoToNew.Text = "Go To New Quote Now"


        Catch err As Exception
            ' Handle an error by displaying the information


        Finally
            'Either way, make sure the connection is properly closed

            DKConnection.Close()

        End Try

    End Sub


    Protected Sub btnUpdateSectionComment_Click(sender As Object, e As System.EventArgs) Handles btnUpdateSectionComment.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectSectionCommentsUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@SectionID", SqlDbType.BigInt).Value = grdSect.SelectedValues("SectionID")
        updateCMD1.Parameters.Add("@SectionComment", SqlDbType.NVarChar).Value = editSectionComment.Text


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
    End Sub

    Protected Sub btnUpdateSubsectionComment_Click(sender As Object, e As System.EventArgs) Handles btnUpdateSubsectionComment.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectSubsectionCommentsUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@SubsectionID", SqlDbType.BigInt).Value = grdSub.SelectedValues("SubsectionID")
        updateCMD1.Parameters.AddWithValue("@SubsectionComment", SqlDbType.NVarChar).Value = editSubsectionComment.Text

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

    End Sub

    'Utilities
    Protected Sub btnUtilityCostsUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUtilityCostsUpdate.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteUtilityUpdateCosts", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value


        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()

            btnUtilityCostsUpdate.Text = "Update Completed"

            grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
            grdPricing2.DataBind()

            grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
            grdQuoteStats.DataBind()

            grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
            grdCosting2.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub

    Protected Sub btnUtilityMatrixUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUtilityMatrixUpdate.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteUtilityUpdateMatrixPricing", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()

            btnUtilityMatrixUpdate.Text = "Update Completed"

            grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
            grdPricing2.DataBind()

            grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
            grdQuoteStats.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub

    Protected Sub btnUtilityContractUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUtilityContractUpdate.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteUtilityUpdateContractPricing", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value


        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()

            btnUtilityContractUpdate.Text = "Update Completed"

            grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
            grdPricing2.DataBind()

            grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
            grdQuoteStats.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try
    End Sub

    Protected Sub btnRequestQuoteService_Click(sender As Object, e As System.EventArgs) Handles btnRequestQuoteService.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteServiceRequest2", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        updateCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        updateCMD1.Parameters.Add("@Service", SqlDbType.NVarChar).Value = "Contract Pricing"
        updateCMD1.Parameters.Add("@RequestedBy", SqlDbType.NVarChar).Value = Request.Cookies("FullName").Value
        updateCMD1.Parameters.Add("@RequestedEmail", SqlDbType.NVarChar).Value = Request.Cookies("eMail").Value


        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()

            grdServiceRequest.DataSourceID = SqlDS_grdServiceRequests.ID
            grdServiceRequest.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        'Send email notification
        ' Instantiate a new instance of MailMessage
        Dim mMailMessage As New MailMessage()

        ' Set the sender address of the mail message
        mMailMessage.From = New MailAddress("devadmin@danakepner.com")
        ' Set the recepient address of the mail message
        'mMailMessage.To.Add(New MailAddress("smitchell@danakepner.com"))
        'Dim eMailTo As String = "dejohnson@danakepner.com"

        Dim eMailTo As String = "smitchell@danakepner.com, dejohnson@danakepner.com, breiber@danakepner.com, breynolds@danakepner.com"
        mMailMessage.To.Add(eMailTo)
        mMailMessage.CC.Add(Request.Cookies("eMail").Value.ToString())


        ' Set the subject of the mail message
        mMailMessage.Subject = "New Contract Pricing Request from " + Request.Cookies("FullName").Value
        ' Set the body of the mail message

        mMailMessage.Body = "Customer: " + lblCustomer.Text.ToString()
        mMailMessage.Body = "Cust ID: " + hdnCustID.Value.ToString()
        mMailMessage.Body &= "<Br /><Br />Project: " + lblProjectName.Text.ToString()

        mMailMessage.Body &= "<Br /><Br />Quote: " + editQuoteName.Text.ToString()
        mMailMessage.Body &= "<Br /><Br />ShipTo ID: " + txtBoxNewShipTo.Text.ToString()
        mMailMessage.Body &= "<Br /><Br />Start: " + Convert.ToDateTime(ContractStartDate.DbSelectedDate).ToShortDateString().ToString()
        mMailMessage.Body &= "<Br /><Br />End: " + Convert.ToDateTime(ContractEndDate.DbSelectedDate).ToShortDateString().ToString()


        ' Set the format of the mail message body as HTML
        mMailMessage.IsBodyHtml = True
        ' Set the priority of the mail message to normal
        mMailMessage.Priority = MailPriority.Normal

        ' Instantiate a new instance of SmtpClient
        Dim mSmtpClient As New SmtpClient()
        ' Send the mail message
        mSmtpClient.Send(mMailMessage)




    End Sub

    Protected Sub RadToolTipPricingInformation_Load(sender As Object, e As System.EventArgs) Handles RadToolTipPricingInformation.Load
        RadToolTipPricingInformation.Text = "<b>Pricing Demo Functionality</b> <br /><br />"
        RadToolTipPricingInformation.Text &= "Enter a new Target Margin in the 'New %' column, and a new unit price in the 'New Unit Price' column.  Enter pricing for as many products as you like, and then click 'Save Price Changes' or use the Ctrl+S key combination.  Cancel Changes by clicking 'Cancel Changes' or Ctrl+C.<br /><br />"
        RadToolTipPricingInformation.Text &= "Navigate cells using the mouse or Tab key.  The mouse wheel will increase/decrease the margin % in .5% increments, and the unit price in $0.50 increments. <br /><br />"
        RadToolTipPricingInformation.Text &= "Double click on a row to see additional cost, inventory, and past sale information. <br /><br />"
        RadToolTipPricingInformation.Text &= "The user can change column positions by click and dragging the column name/header. Column widths can be adjusted, too.  These changes are reset on page reload.<br /><br />"
        RadToolTipPricingInformation.Text &= "Prices changed in the last 60 minutes will be shaded green in the 'Current Price' column.  You can hide recently updated products using the 'Products Updated' filter options above the pricing grid. <br /><br />"
        RadToolTipPricingInformation.Text &= "Unit Costs below $0.04 will highlight blue in the 'Unit Cost' column and can be filtered using the '$0 Cost Items' check box in the filter area. <br /><br />"
        RadToolTipPricingInformation.Text &= "Margins below 7% highlight yellow in the 'Mrgn %' column.  Lower margin pricing can be identified using the 'Margin Review' filter. <br /><br />"
        RadToolTipPricingInformation.Text &= "The list of products is filterable by entering part of the part number or description.  The more the user types, the narrower the filter. <br /><br />"
        RadToolTipPricingInformation.Text &= "Products can be filtered by pricing method (Matrix, Target Margin, Manual) using the 'How Priced' filter, and by who priced them (System, User Name) using the 'How Priced' filter. <br /><br />"
        RadToolTipPricingInformation.Text &= "The pricing grid displays in a widescreen format, utilizing the higher resolution available on newer displays.  A 'narrow screen' format is available using the 'Display Mode' dropdown in the filter region.  <br /><br />"
        RadToolTipPricingInformation.Text &= "___________________________________________________________________________________<br /><br />"

        RadToolTipPricingInformation.Text &= "Scaling applies a multiplier towards unit pricing, ie. (1 + Scaling Factor)*Unit Price.  If a scaling factor is less than -.50, or greater than +.50, the nearest max or minimum is used. <br /><br /> "


        RadToolTipPricingInformation.Text &= "System Default Pricing Order:  Contract and then Matrix.  '0' if a NonStock.  Only Standard (ie. No Shipto) Contract pricing is used. <br /><br />"
        RadToolTipPricingInformation.Text &= "<b>Default Cost Logic</b>  <br /> "
        RadToolTipPricingInformation.Text &= "1. Is the product AMR/AMI or Meter related?  If so, then Standard Cost + Addon.  <br /> "
        RadToolTipPricingInformation.Text &= "2. Is the product Copper Tubing or PVC Pipe?  If so, then Average Cost + Addon.  <br /> "
        RadToolTipPricingInformation.Text &= "3. Is the product Order As Needed?  If so, then Standard Cost + Addon.  <br /> "
        RadToolTipPricingInformation.Text &= "4. Is there less than 6 units available?  If so, then Standard Cost + Addon.  <br /> "
        RadToolTipPricingInformation.Text &= "5. Is the usage rate less than 1 unit per month?  If so, then Average Cost + Addon.  <br /> "
        RadToolTipPricingInformation.Text &= "6. Is the inventory level greater than 6 months?  If so, then Average Cost + Addon.  <br /> "
        RadToolTipPricingInformation.Text &= "7. If none of the previous scenarios match, then Standard Cost + Addon.  <br /><br /> "
        RadToolTipPricingInformation.Text &= "Standard Cost is typically the same as Replacement Cost  <br /> "

    End Sub


    Protected Sub RadToolTipCostingInformation_Load(sender As Object, e As System.EventArgs) Handles RadToolTipCostingInformation.Load
        RadToolTipCostingInformation.Text = "These costs are used for all quotes on this shared Project. <br /><br /> "
        RadToolTipCostingInformation.Text &= "Select a row to edit. <br /><br />  "
        RadToolTipCostingInformation.Text &= "All columns in the tables are sortable.  Click on the header title to sort ascending, or double click for descending. <br /><br /> "
        RadToolTipCostingInformation.Text &= "Cost changes are time stamped and automaticaly added to the costing comments.  The user does have the ability to add additional comments about where "
        RadToolTipCostingInformation.Text &= "the costs originate, such as quote number, vendor sales rep name, and other quote specifics.  Please refrain from copying large amounts of information into the comments. <br /><br />"
        RadToolTipCostingInformation.Text &= "The 'Updated' column indicates the last time the cost used on the quote has been updated.  This is <b><i>not</i></b> the Replacement Cost Date. <br /><br /> "
        RadToolTipCostingInformation.Text &= "These costs are used for all quotes on this shared Project. <br /><br /> "
        RadToolTipCostingInformation.Text &= "Product comments are carried over to the QU Order Import in SXe, and will be available to Purchasing once an OE is created. <br /><br /> "
        RadToolTipCostingInformation.Text &= "<b>Default Cost Logic</b>  <br /> "
        RadToolTipCostingInformation.Text &= "1. Is the product AMR/AMI or Meter related?  If so, then Standard Cost + Addon.  <br /> "
        RadToolTipCostingInformation.Text &= "2. Is the product Copper Tubing or PVC Pipe?  If so, then Average Cost + Addon.  <br /> "
        RadToolTipCostingInformation.Text &= "3. Is the product Order As Needed?  If so, then Standard Cost + Addon.  <br /> "
        RadToolTipCostingInformation.Text &= "4. Is there less than 6 units available?  If so, then Standard Cost + Addon.  <br /> "
        RadToolTipCostingInformation.Text &= "5. Is the usage rate less than 1 unit per month?  If so, then Average Cost + Addon.  <br /> "
        RadToolTipCostingInformation.Text &= "6. Is the inventory level greater than 6 months?  If so, then Average Cost + Addon.  <br /> "
        RadToolTipCostingInformation.Text &= "7. If none of the previous scenarios match, then Standard Cost + Addon.  <br /><br /> "
        RadToolTipCostingInformation.Text &= "Standard Cost is typically the same as Replacement Cost  <br /> "
    End Sub


    Protected Sub RadToolTipDefineSections_Load(sender As Object, e As System.EventArgs) Handles RadToolTipDefineSections.Load
        RadToolTipDefineSections.Text = "Structured quotes consists of two levels; Sections and Subsections.  Material Lists possess 1 Section and 1 Subsection.   <br /><br />  "
        RadToolTipDefineSections.Text &= "The left side of the page displays the takeoff structure, and the right side is where Adds and Edits occur.  <br /><br /> "
        RadToolTipDefineSections.Text &= "Use the 'Order' controls to rearrange both Sections and Subsections.  Subsections cannot move from one Section to another. <br /><br /> "
        RadToolTipDefineSections.Text &= "An infinite number of Sections and Subsections are available, but not recommended. <br /><br /> "

    End Sub


    Protected Sub RadToolTipHeaderInformation_Load(sender As Object, e As System.EventArgs) Handles RadToolTipHeaderInformation.Load
        RadToolTipHeaderInformation.Text = "Change the Customer on the quote by using the customer search.<br /><br />  "
        RadToolTipHeaderInformation.Text &= "The customer name can be adjusted/cleaned up using the 'Customer' text box.  Save changes by clicking on the 'Update Customer' button. <br /><br /> "
        RadToolTipHeaderInformation.Text &= "If the quote is a copy of another quote, the default name will be 'Copy Of -Original Quote Name-'.  Change the Quote name to better describe the quote.  For instance, "
        RadToolTipHeaderInformation.Text &= "you may use a revised quote date ('Base Quote Revised 08/7/13'), cut scenario ('Street Quote', 'Cut 1', 'Cut 2'), or something else ('Base Quote Less PVC Pipe'). <br /><br />"
        RadToolTipHeaderInformation.Text &= "Two comment areas are available; one that will display on any printed quote, and one that is for internal purposes only.  <br /><br /> "
        'RadToolTipHeaderInformation.Text &= "Once we have been awarded the job, please enter the ShipTo (from SXe/GUI) and Contract Start and End dates into the Contract Start/End Dates and ShipTo section.   <br /><br /> "

    End Sub


    Protected Sub RadToolTipNonStockList_Load(sender As Object, e As System.EventArgs) Handles RadToolTipNonStockList.Load
        RadToolTipNonStockList.Text = "Add NonStock Items: Select 'Add' tab in bottom section and provide necessary information. <br /><br />  "
        RadToolTipNonStockList.Text &= "Edit Description, Comment, and Units:  Select the product to edit in the list, and then change the tab to 'Edit'.  Make changes.  <br /><br /> "
        RadToolTipNonStockList.Text &= "The Product Number is not editable.  <br /><br /> "
        RadToolTipNonStockList.Text &= "To make a change to the cost, please do so on the Costs page. <br /><br /> "

    End Sub


    Protected Sub RadToolTipProductList_Load(sender As Object, e As System.EventArgs) Handles RadToolTipProductList.Load
        RadToolTipProductList.Text = "Choose an option from the Quick Start Group dropdown to see a listing of common products used on a specific job type.  <br /><br />"
        RadToolTipProductList.Text &= "Single click on a product to add it to the TakeOff Grab List. This list will be used later to speed your data entry. <br /><br /> "
        RadToolTipProductList.Text &= "Select an item on the Grab List to see additional related products on the 'Related' list. <br /><br /> "
        RadToolTipProductList.Text &= "Add items from the 'Related' list to the Grab List by a single left click. <br /><br /> "
        RadToolTipProductList.Text &= "You can remove an item from the Grab List by selecting it, and then by clicking on the 'x' button at the top right of the Grab List.  <br /><br /> "

    End Sub

    Protected Sub RadToolTipTerms_Load(sender As Object, e As System.EventArgs) Handles RadToolTipTerms.Load
        RadToolTipTerms.Text = "Select a term at left to modify. <br /><br />  "
        RadToolTipTerms.Text &= "Optional terms are available for Ductile and PVC Pipe.  Samples are provided, and Order By and Ship By dates are populated by selected the number of days from today. "
        RadToolTipTerms.Text &= "If the true Order By and Ship By dates are not correct using the date selections, use one that is close, submit, and then edit the dates.  <br /><br /> "

    End Sub


    Protected Sub RadToolTipLineItems_Load(sender As Object, e As System.EventArgs) Handles RadToolTipLineItems.Load
        RadToolTipLineItems.Text = "The Sections and Subsections to be edited are identified with the tab strips at top.  To start, select a Section to see it's related Subsections. <br /><br />  "
        RadToolTipLineItems.Text &= "Single click a product in the Grab List to add it to the Line Items section in the middle of the screen. <br /><br />"
        RadToolTipLineItems.Text &= "Single click a product in the Line Items section to see a listing at right of products normally bought with that product. Single click from this 'Related' list to add it to Line Items. <br /><br />"
        RadToolTipLineItems.Text &= "Search for products using a combination of description and product number in the search area to the bottom left.  Add the product with a single click. <br /><br />"
        RadToolTipLineItems.Text &= "Single click a NonStock product in the bottom center panel to add it to Line Items. <br /><br />"
        RadToolTipLineItems.Text &= "Delete line items, and edit quantities and line number using the controls in the Row Edit section at the bottom of the Line Items panel.  <br /><br />"
        RadToolTipLineItems.Text &= "Add and Edit comments for both the Section and Subsection in the panels at the very bottom.  <b><i>Spell check is available!</i></b> <br /><br />"
        RadToolTipLineItems.Text &= "Subsection Averages are calculated using the 'Units/Section' and 'Total Units' text boxes located above the Line Items panel. <br /><br />"

    End Sub

    Protected Sub RadToolTipTakeOffs_Load(sender As Object, e As System.EventArgs) Handles RadToolTipTakeOffs.Load
        RadToolTipTakeOffs.Text = "When the first quote in a project is generated, a Base takeoff is created.  A new takeoff can be created, and the user can switch takeoff assignments. <br /><br />  "
        RadToolTipTakeOffs.Text &= "TakeOffs can be shared by several quotes. "
        RadToolTipTakeOffs.Text &= "Unit Pricing is associated with the quote, not the takeoff.  If the user switches takeoffs, they will need to insure that all products in the new quote are priced.  <br /><br /> "

    End Sub

    Protected Sub RadToolTipProjectPage_Load(sender As Object, e As System.EventArgs) Handles RadToolTipProjectPage.Load
        RadToolTipProjectPage.Text = "Click on the 'Update Project' button to edit the project information in a new window.<br /><br />"
        RadToolTipProjectPage.Text &= "The project information is shared across all quotes on the same project."

    End Sub


    Protected Sub RadToolTipTaxes_Load(sender As Object, e As System.EventArgs) Handles RadToolTipTaxes.Load
        RadToolTipTaxes.Text = "Use the Quote Default Tax Rate to apply a specific tax rate to all known taxable products. <br /><br />"
        RadToolTipTaxes.Text &= "Change tax status (Taxable or NonTaxable) for a specific product by selecting the product in the list at left, and then by changing Product Tax Status Override at right."
    End Sub

    Protected Sub RadToolTipCostNotes_Load(sender As Object, e As System.EventArgs) Handles RadToolTipCostNotes.Load
        RadToolTipCostNotes.Text = "Use this box to enter general costing notes.  Provide names, dates, quote numbers, and other pertinent information. <br /><br />"
        RadToolTipCostNotes.Text &= "This information is shared with Purchasing."
    End Sub

    Protected Sub RadToolTipBlockCosts_Load(sender As Object, e As System.EventArgs) Handles RadToolTipBlockCosts.Load
        RadToolTipBlockCosts.Text = "Step 1:  Select the pricebook and the block you would like to use you would like to use. <br /><br />"
        RadToolTipBlockCosts.Text &= "Step 2:  Click the Preview button and review the costs to be used in the Preview window.  <br /><br />"
        RadToolTipBlockCosts.Text &= "Step 3:  If the costs are what you would like to use, click the 'Apply Block Pricing' button at the bottom of the window. <br /><br />"
        RadToolTipBlockCosts.Text &= "+ These costs are shared across all quotes on the project. <br /><br />"
        RadToolTipBlockCosts.Text &= "+ Block pricing comments are added to the individual products, as well as to the General notes."
    End Sub

    Protected Sub listBoxQuicklistStockSearch_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles listBoxQuicklistStockSearch.SelectedIndexChanged
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspTakeOffGrabListInsert", DKConnection)
        insertCMD.CommandType = CommandType.StoredProcedure

        insertCMD.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value
        insertCMD.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = listBoxQuicklistStockSearch.SelectedValue

        Dim inserted2 As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            inserted2 = insertCMD.ExecuteNonQuery()
            listBoxTakeOffGrabList.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
            listBoxTakeOffGrabList.DataBind()

            listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabList.ID
            listBoxTakeOffGrabList2.DataBind()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()
        End Try
    End Sub

    Protected Sub btnStockGrabListSearch_Click(sender As Object, e As System.EventArgs) Handles btnStockGrabListSearch.Click
        SqlDS_listBoxQuicklistStockSearch.SelectParameters("WhseID").DefaultValue = hdnWhseID.Value
        SqlDS_listBoxQuicklistStockSearch.SelectParameters("ProdID").DefaultValue = " " + txtStockGrabListProdIDSearch.Text.ToString()
        SqlDS_listBoxQuicklistStockSearch.SelectParameters("Description").DefaultValue = " " + txtStockGrabListDescSearch.Text.ToString()

        listBoxTakeOffGrabList.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
        listBoxTakeOffGrabList.DataBind()
    End Sub

    Protected Sub btnStockGrabListSearchClear_Click(sender As Object, e As System.EventArgs) Handles btnStockGrabListSearchClear.Click
        txtStockGrabListProdIDSearch.Text = ""
        txtStockGrabListDescSearch.Text = ""

        'The stored procedure needs the xxx to clear the results
        SqlDS_listBoxQuicklistStockSearch.SelectParameters("WhseID").DefaultValue = hdnWhseID.Value
        SqlDS_listBoxQuicklistStockSearch.SelectParameters("ProdID").DefaultValue = "xxx"
        SqlDS_listBoxQuicklistStockSearch.SelectParameters("Description").DefaultValue = "xxx"

        listBoxQuicklistStockSearch.DataSourceID = SqlDS_listBoxQuicklistStockSearch.ID
        listBoxQuicklistStockSearch.DataBind()
    End Sub


    Protected Sub btnTaxRateUpdate_Click(sender As Object, e As System.EventArgs) Handles btnTaxRateUpdate.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteTaxRateUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        updateCMD1.Parameters.Add("@TaxRate", SqlDbType.Real).Value = txtBoxTaxRateUpdate.DbValue / 100

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

            grdTaxes.DataSourceID = SqlDS_grdTaxes.ID
            grdTaxes.DataBind()

        End Try

    End Sub

    Protected Sub grdTaxes_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdTaxes.SelectedIndexChanged
        btnTaxTypeUpdate.Enabled = "true"

        'Retrieve the specific row in grdTaxes
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspQuotePricingGetDetails", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value.ToString()
        selectCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdTaxes.SelectedValues("ProdID").ToString()
        selectCMD1.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            lblTaxStatusProdID.Text = Left("Now Editing: " + myReader1("ProdID") + " - " + myReader1("Description").ToString(), 50)
            comboBoxNonTaxType.SelectedValue = myReader1("NonTaxType").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try

    End Sub

    Protected Sub btnTaxTypeUpdate_Click(sender As Object, e As System.EventArgs) Handles btnTaxTypeUpdate.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspQuoteTaxTypeUpdate", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = hdnQuoteID.Value
        updateCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = grdTaxes.SelectedValues("ProdID")
        updateCMD1.Parameters.Add("@NonTaxType", SqlDbType.NVarChar).Value = comboBoxNonTaxType.SelectedValue.ToString()
        updateCMD1.Parameters.Add("@TaxRate", SqlDbType.Real).Value = txtBoxTaxRateUpdate.DbValue / 100

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

            grdTaxes.DataSourceID = SqlDS_grdTaxes.ID
            grdTaxes.DataBind()

        End Try

    End Sub

    Protected Sub btnSearchProjects_Click(sender As Object, e As System.EventArgs) Handles btnSearchProjects.Click
        SqlDS_grdProductListCopy.SelectParameters("ProjectName").DefaultValue = "%" + sProjectName.Text + "%"
        SqlDS_grdProductListCopy.SelectParameters("ProjectSubTitle").DefaultValue = "%" + sProjectSubTitle.Text + "%"
        SqlDS_grdProductListCopy.SelectParameters("WorkCity").DefaultValue = "%" + sWorkCity.Text + "%"
        SqlDS_grdProductListCopy.SelectParameters("Flag").DefaultValue = "%" + sFlag.Text + "%"

        grdProductListCopy.DataSourceID = SqlDS_grdProductListCopy.ID
        grdProductListCopy.DataBind()

    End Sub

    Protected Sub btnCopyProductList_Click(sender As Object, e As System.EventArgs) Handles btnCopyProductList.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspProjectProductsCopy", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value
        updateCMD1.Parameters.Add("@TakeOffIDSource", SqlDbType.BigInt).Value = grdProductListCopy.SelectedValues("TakeOffID")
        updateCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value

        Dim updated As Integer = 0

        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCMD1.ExecuteNonQuery()

            lblProductListCopyConfirm.Text = "Project Product List Copied"
            btnCopyProductList.Enabled = "false"

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


        lblProductListCopyConfirm.Text = "Project Product List Copied"
        btnCopyProductList.Enabled = "false"

        listBoxTakeOffGrabList.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
        listBoxTakeOffGrabList.DataBind()

        grdNonStockListing.DataSourceID = SqlDS_TakeOffNonStock.ID
        grdNonStockListing.DataBind()

        listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
        listBoxTakeOffGrabList2.DataBind()

        listBoxTakeOffNonStock.DataSourceID = SqlDS_listBoxTakeOffNonStock.ID
        listBoxTakeOffNonStock.DataBind()


    End Sub

    Protected Sub grdProductListCopy_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdProductListCopy.SelectedIndexChanged

        lblProductListCopyConfirm.Text = "Project to Copy: " + grdProductListCopy.SelectedValues("ProjectName").ToString() + " - " + grdProductListCopy.SelectedValues("TakeOffName").ToString()
        btnCopyProductList.Enabled = "True"
    End Sub

    Protected Sub btnTakeOffRelatedSEarch_Click(sender As Object, e As System.EventArgs) Handles btnTakeOffRelatedSEarch.Click
        listBoxTakeOffQuicklistRelated2.DataSourceID = SqlDS_StockGrabListRelated2.ID
        listBoxTakeOffQuicklistRelated2.DataBind()
    End Sub

    Protected Sub grdSubsectionDetail_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdSubsectionDetail.SelectedIndexChanged

        SqlDS_StockGrabListRelated2.SelectParameters("ProdID").DefaultValue = grdSubsectionDetail.SelectedValues("ProdID").ToString()
        SqlDS_StockGrabListRelated2.SelectParameters("WhseID").DefaultValue = hdnWhseID.Value

        'Retrieve the specific row in the takeoff
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProjectSubsectionDetailGetSpecificRow", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@DetailIDIndex", SqlDbType.BigInt).Value = grdSubsectionDetail.SelectedValues("DetailIDIndex")


        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()


            hdnProdID.Value = myReader1("ProdID").ToString()
            hdnLine.Value = myReader1("Line").ToString()

            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try


    End Sub

    Protected Sub btnGridRefresh1_Click(sender As Object, e As System.EventArgs) Handles btnGridRefresh1.Click

        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()


        grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
        grdQuoteStats.DataBind()

        grdCosting2.DataSourceID = SqlDS_grdCosting2.ID
        grdCosting2.DataBind()

    End Sub

    Protected Sub btnTaxProductsLoad_Click(sender As Object, e As System.EventArgs) Handles btnTaxProductsLoad.Click

        SqlDS_grdTaxes.SelectParameters("QuoteID").DefaultValue = hdnQuoteID.Value
        SqlDS_grdTaxes.SelectParameters("TakeOffID").DefaultValue = hdnTakeOffID.Value

        grdTaxes.DataSourceID = SqlDS_grdTaxes.ID
        grdTaxes.DataBind()

    End Sub

    Protected Sub grdPricing2_ItemDataBound(sender As Object, e As Telerik.Web.UI.GridItemEventArgs) Handles grdPricing2.ItemDataBound
        'Is it a GridDataItem
        If (TypeOf (e.Item) Is GridDataItem) Then
            'Get the instance of the right type
            Dim dataBoundItem As GridDataItem = e.Item

            If (dataBoundItem("ReviewMargin").Text = "Review") Then
                dataBoundItem("MarginPct").ForeColor = Color.Red
                dataBoundItem("MarginPct").Font.Bold = False
                dataBoundItem("MarginPct").BackColor = Color.Yellow
            End If

            If (dataBoundItem("ReviewCost").Text = "Review") Then
                dataBoundItem("UnitCost").ForeColor = Color.White
                dataBoundItem("UnitCost").Font.Bold = False
                dataBoundItem("UnitCost").BackColor = Color.CornflowerBlue
            End If

            If (dataBoundItem("FlagCostOverride").Text = "True") Then
                dataBoundItem("UnitCost").ForeColor = Color.White
                dataBoundItem("UnitCost").Font.Bold = False
                dataBoundItem("UnitCost").BackColor = Color.Orange
            End If

            If (dataBoundItem("RecentUpdate").Text = "RU") Then
                dataBoundItem("Price").ForeColor = Color.White
                dataBoundItem("Price").Font.Bold = False
                dataBoundItem("Price").BackColor = Color.Green
            End If

        End If

        grdQuoteStats.DataSourceID = SqlDS_grdQuoteStats.ID
        grdQuoteStats.DataBind()

    End Sub
    Protected Sub fltrgrdPricing2HowPriced_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrgrdPricing2HowPriced.SelectedIndexChanged

        SqlDS_grdPricing2.SelectParameters("HowPriced").DefaultValue = fltrgrdPricing2HowPriced.SelectedValue.ToString()
        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()

    End Sub
    Protected Sub fltrgrdPricing2PricedBy_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrgrdPricing2PricedBy.SelectedIndexChanged
        SqlDS_grdPricing2.SelectParameters("PricedBy").DefaultValue = fltrgrdPricing2PricedBy.SelectedValue.ToString()
        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()
    End Sub
    Protected Sub fltrgrdPricing2ProdID_TextChanged(sender As Object, e As System.EventArgs) Handles fltrgrdPricing2ProdID.TextChanged
        If Len(fltrgrdPricing2ProdID.Text.ToString()) = 0 Then
            SqlDS_grdPricing2.SelectParameters("ProdID").DefaultValue = "%"
        Else
            SqlDS_grdPricing2.SelectParameters("ProdID").DefaultValue = fltrgrdPricing2ProdID.Text.ToString()
        End If

        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()
    End Sub
    Protected Sub fltrgrdPricing2Desc_TextChanged(sender As Object, e As System.EventArgs) Handles fltrgrdPricing2Desc.TextChanged
        If Len(fltrgrdPricing2Desc.Text.ToString()) = 0 Then
            SqlDS_grdPricing2.SelectParameters("Desc").DefaultValue = "%"
        Else
            SqlDS_grdPricing2.SelectParameters("Desc").DefaultValue = fltrgrdPricing2Desc.Text.ToString()
        End If

        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()
    End Sub
    Protected Sub fltrgrdPricing2TimeSinceChange_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrgrdPricing2TimeSinceChange.SelectedIndexChanged
        SqlDS_grdPricing2.SelectParameters("TimeSinceChange").DefaultValue = fltrgrdPricing2TimeSinceChange.SelectedValue

        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()
    End Sub
    Protected Sub fltrgrdPricing2MarginReview_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles fltrgrdPricing2MarginReview.SelectedIndexChanged
        SqlDS_grdPricing2.SelectParameters("MarginReview").DefaultValue = fltrgrdPricing2MarginReview.SelectedValue

        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.DataBind()
    End Sub
    Protected Sub fltrgrdPricing2ZeroCost_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrgrdPricing2ZeroCost.CheckedChanged
        If fltrgrdPricing2ZeroCost.Checked = "true" Then
            SqlDS_grdPricing2.SelectParameters("ZeroCost").DefaultValue = 1
        Else
            SqlDS_grdPricing2.SelectParameters("ZeroCost").DefaultValue = 0
        End If

    End Sub

    Protected Sub fltrgrdPricing2ZeroQty_CheckedChanged(sender As Object, e As System.EventArgs) Handles fltrgrdPricing2ZeroQty.CheckedChanged
        If fltrgrdPricing2ZeroQty.Checked = "true" Then
            SqlDS_grdPricing2.SelectParameters("ZeroQty").DefaultValue = 1
        Else
            SqlDS_grdPricing2.SelectParameters("ZeroQty").DefaultValue = 0
        End If

    End Sub

    Protected Sub grdPricing2_PageIndexChanged(sender As Object, e As Telerik.Web.UI.GridPageChangedEventArgs) Handles grdPricing2.PageIndexChanged
        grdPricing2.ClientSettings.Scrolling.ScrollTop = "0"
    End Sub
    Protected Sub grdPricing2_PreRender(sender As Object, e As System.EventArgs) Handles grdPricing2.PreRender
        If displayMode.Text = "Wide Screen" Then
            grdPricing2.Width = Unit.Pixel(1600)
        Else
            grdPricing2.Width = Unit.Pixel(1080)
        End If

    End Sub
    Protected Sub displayMode_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles displayMode.SelectedIndexChanged
        grdPricing2.DataSourceID = SqlDS_grdPricing2.ID
        grdPricing2.Rebind()
    End Sub

    Protected Sub nsInsertProdID_TextChanged(sender As Object, e As System.EventArgs) Handles nsInsertProdID.TextChanged
        'Check to see if the prodid already exists in the project
        'Retrieve the specific row in the takeoff
        Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection1 As New SqlConnection(DKConnectionString1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspProjectNonStockInsertCheckProdID", DKConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@ProdID", SqlDbType.NVarChar).Value = nsInsertProdID.Text.ToString()
        selectCMD1.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value
        selectCMD1.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value

        Try
            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            If myReader1.HasRows Then
                lblnsInsertProdIDdupWarn.Text = "This ProdID already exists for this project. Please enter a new number."
            Else
                lblnsInsertProdIDdupWarn.Text = ""
            End If


            myReader1.Close()

        Catch ex As SqlException

        Finally
            DKConnection1.Close()
        End Try
    End Sub

    Protected Sub btnProjectUpdate_Click(sender As Object, e As System.EventArgs) Handles btnProjectUpdate.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspProjectDetailUpdate2", DKConnection)
        updateCMD.CommandType = CommandType.StoredProcedure

        updateCMD.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value
        updateCMD.Parameters.Add("@Flag", SqlDbType.NVarChar).Value = uFlag.Text
       

        If uBidDate.SelectedDate Is Nothing Then
            updateCMD.Parameters.Add("@BidDate", SqlDbType.DateTime).Value = "1/1/1950"
        Else
            updateCMD.Parameters.Add("@BidDate", SqlDbType.DateTime).Value = uBidDate.SelectedDate
        End If

        If uDueDate.SelectedDate Is Nothing Then
            updateCMD.Parameters.Add("@DueDate", SqlDbType.DateTime).Value = "1/1/1950"
        Else
            updateCMD.Parameters.Add("@DueDate", SqlDbType.DateTime).Value = uDueDate.SelectedDate
        End If
      
        Dim updated As Integer = 0

        Try
            DKConnection.Open()
            updated = updateCMD.ExecuteNonQuery()

        Catch ex As SqlException

        Finally
            DKConnection.Close()

        End Try

        'Retrieve high level project info

        Dim DKConnectionString9 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection9 As New SqlConnection(DKConnectionString9)
        Dim selectCMD9 As SqlCommand = New SqlCommand("uspProjectDetailGet", DKConnection9)

        selectCMD9.CommandType = CommandType.StoredProcedure
        selectCMD9.Parameters.Add("@JobID", SqlDbType.BigInt).Value = hdnJobID.Value

        Try
            DKConnection9.Open()

            Dim result9 As Integer = selectCMD9.ExecuteNonQuery()
            Dim myReader9 As SqlDataReader = selectCMD9.ExecuteReader()
            myReader9.Read()

            hdnWhseID.Value = myReader9("PrimaryBranchno")
            lblProjectName2.Text = myReader9("ProjectName").ToString()
            lblSubTitle.Text = myReader9("ProjectSubTitle").ToString()

            lblFlag.Text = myReader9("Flag").ToString()
            uFlag.SelectedValue = myReader9("Flag").ToString()

            divFlagWarning.Style.Remove("background-color")

            If myReader9("Flag").ToString.Contains("NELSON") Then
                lblFlagWarning.Text = myReader9("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "Red")
            ElseIf myReader9("Flag").ToString.Contains("AIS") Then
                lblFlagWarning.Text = myReader9("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "Orange")
            ElseIf myReader9("Flag").ToString.Contains("ARRA") Then

                lblFlagWarning.Text = myReader9("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "Green")

            ElseIf myReader9("Flag").ToString.Contains("BUY AMERICA") Then
                lblFlagWarning.Text = myReader9("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "MediumVioletRed")
            ElseIf myReader9("Flag").ToString.Contains("PRIVATE") Then
                lblFlagWarning.Text = myReader9("Flag").ToString()
                divFlagWarning.Style.Add("background-color", "Red")
            ElseIf myReader9("Flag").ToString.Contains("-") Then
                lblFlagWarning.Text = ""
                divFlagWarning.Style.Add("background-color", "White")
            Else

            End If

            If myReader9("BidDate") = "1950-01-01 00:00:00.000" Then
                lblBidDate.Text = "-"
                uBidDate.Clear()
            Else
                lblBidDate.Text = FormatDateTime(myReader9("BidDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
                uBidDate.SelectedDate = myReader9("BidDate")
            End If

            If myReader9("DueDate") = "1950-01-01 00:00:00.000" Then
                uDueDate.Clear()
                lblDueDate.Text = "-"
            Else
                uDueDate.SelectedDate = myReader9("DueDate")
                lblDueDate.Text = FormatDateTime(myReader9("DueDate"), Microsoft.VisualBasic.DateFormat.ShortDate).ToString()
            End If

            myReader9.Close()

        Catch ex As SqlException

        Finally
            DKConnection9.Close()
        End Try
    End Sub

    Protected Sub btnGrabListClear_Click(sender As Object, e As System.EventArgs) Handles btnGrabListClear.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffGrabListDelete", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value
        

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

        listBoxTakeOffGrabList.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
        listBoxTakeOffGrabList.DataBind()

        listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
        listBoxTakeOffGrabList2.DataBind()

    End Sub

    Protected Sub btnGrabListClear2_Click(sender As Object, e As System.EventArgs) Handles btnGrabListClear2.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCMD1 As SqlCommand = New SqlCommand("uspTakeOffGrabListDelete", DKConnection)
        updateCMD1.CommandType = CommandType.StoredProcedure
        updateCMD1.Parameters.Add("@TakeOffID", SqlDbType.BigInt).Value = hdnTakeOffID.Value

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

        listBoxTakeOffGrabList.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
        listBoxTakeOffGrabList.DataBind()

        listBoxTakeOffGrabList2.DataSourceID = SqlDS_TakeOffGrabListBuild.ID
        listBoxTakeOffGrabList2.DataBind()
    End Sub

    
  
End Class
