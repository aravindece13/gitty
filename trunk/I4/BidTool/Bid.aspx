<%@ Page Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Bid.aspx.vb" Inherits="BidTool_Bid" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function pageLoad() {
            window.$ = jQuery = $telerik.$;
        }

        function onKeyPress(sender, args) {
            if (args.get_keyCode() != 13)
                return;

            var el = Telerik.Web.UI.Grid.GetCurrentElement(args.get_domEvent());

            //handles InPlace edit mode
            if ($(el).parents("tr").attr("id") && $(el).parents("tr").attr("id") != "") {
                sender.get_masterTableView().updateItem($(el).parents("tr")[0]);
            } else {
                //handles EditForms edit mode           
                var editFrom = $(el).parents("tr:has(div)");
                if (editFrom.length > 0 && editFrom.prev("tr").attr("id") != "") {
                    sender.get_masterTableView().updateItem(editFrom.prev("tr")[0]);
                }
            }
        }
        
        
        
        function clientClose(sender, args) {
            if (args.get_argument() != null) {
                alert("'" + sender.get_name() + "'" + " was closed and returned the following argument: '" + args.get_argument() + "'");
            }
        }

        
        function grdPricing2RowDblClick(sender, eventArgs) {
            window.radopen("Details_Cost.aspx?ProdID=" + eventArgs.getDataKeyValue("ProdID") + "&WhseID=" + document.getElementById('<%= hdnWhseID.ClientID %>').value + "&CustID=" + document.getElementById('<%= hdnCustID.ClientID %>').value + "&QuoteID=" + document.getElementById('<%= hdnQuoteID.ClientID %>').value, "grdPricing2CostDetals");
            }

        
        function grdCosting2RowDblClick(sender, eventArgs) {
                window.radopen("Details_Cost.aspx?ProdID=" + eventArgs.getDataKeyValue("ProdID") + "&WhseID=" + document.getElementById('<%= hdnWhseID.ClientID %>').value + "&CustID=" + document.getElementById('<%= hdnCustID.ClientID %>').value + "&QuoteID=" + document.getElementById('<%= hdnQuoteID.ClientID %>').value, "grdPricing2CostDetals");
        }

        // Added 2020-02-07 for handling section and subsection delete confirmation 
        function ClickingDeleteSection(sender, args) {
                args.set_cancel(!window.confirm("Are you sure you want to PERMANENTLY delete this section?  This action is not reversible."));
        }
        function ClickingDeleteSubsection(sender, args) {
                args.set_cancel(!window.confirm("Are you sure you want to PERMANENTLY delete this subsection?  This action is not reversible."));
        }

    </script>
</telerik:RadCodeBlock>

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="10" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel2" Runat="server" IsSticky="false" InitialDelayTime="1300" MinDisplayTime="10" Transparency="0">
</telerik:RadAjaxLoadingPanel>
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel3" Runat="server" IsSticky="false" InitialDelayTime="9000" MinDisplayTime="10" Transparency="0">
</telerik:RadAjaxLoadingPanel>


<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
   
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="searchCustomer">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtBoxNewCustomer" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="btnHideQuote">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnHideQuote" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <%--Header Controls--%>
            <telerik:AjaxSetting AjaxControlID="btnProjectUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlFlagWarning"  />
                    <telerik:AjaxUpdatedControl ControlID="lblFlagWarning"  />
                    <telerik:AjaxUpdatedControl ControlID="lblFlag" />
                    <telerik:AjaxUpdatedControl ControlID="lblBidDate" />
                    <telerik:AjaxUpdatedControl ControlID="lblDueDate" />
                    <telerik:AjaxUpdatedControl ControlID="uDueDate" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="uBidDate" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdQuoteActivity">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteActivity" LoadingPanelID="RadAjaxLoadingPanel1"  />
                   
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="searchCustomer">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtBoxNewCustomer" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="hdnPriceType" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="hdnCustID"  />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateCustomer">
                <UpdatedControls>
                  <telerik:AjaxUpdatedControl ControlID="txtBoxNewCustomer" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="searchCustomer" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="lblCustomer" /> 
                    <telerik:AjaxUpdatedControl ControlID="hdnCustID" />                 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnCustNameMod">
                <UpdatedControls>
                  <telerik:AjaxUpdatedControl ControlID="txtBoxNewCustomer" LoadingPanelID="RadAjaxLoadingPanel1"  />
                                     
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="searchSalesRep">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hdnSalesRepID"  />
           
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateSalesRep">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblCurrentSalesRep" LoadingPanelID="RadAjaxLoadingPanel1"  /> 
                    <telerik:AjaxUpdatedControl ControlID="searchSalesRep" LoadingPanelID="RadAjaxLoadingPanel1"  />                   
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateQuote">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="editQuoteName" LoadingPanelID="RadAjaxLoadingPanel1"  />                  
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateQuoteComments">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="editQuoteComment1" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="editQuoteComment2" LoadingPanelID="RadAjaxLoadingPanel1"  />                   
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateStartEndShipTo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtBoxNewShipto" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="ContractStartDate" LoadingPanelID="RadAjaxLoadingPanel1"  /> 
                    <telerik:AjaxUpdatedControl ControlID="ContractEndDate" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderLines" LoadingPanelID="RadAjaxLoadingPanel1"  /> 
                                      
                </UpdatedControls>
            </telerik:AjaxSetting>

             <telerik:AjaxSetting AjaxControlID="btnTaxProductsLoad">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="grdTaxes" LoadingPanelID="RadAjaxLoadingPanel1"  />                        
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnTaxRateUpdate">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="grdTaxes" LoadingPanelID="RadAjaxLoadingPanel1"  />                        
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnTaxTypeUpdate">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="grdTaxes" LoadingPanelID="RadAjaxLoadingPanel1"  />                        
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdTaxes">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="lblTaxStatusProdID" /> 
                    <telerik:AjaxUpdatedControl ControlID="comboBoxNonTaxType" />
                    <telerik:AjaxUpdatedControl ControlID="btnTaxTypeUpdate" />                       
                </UpdatedControls>
            </telerik:AjaxSetting>
    
          
            <telerik:AjaxSetting AjaxControlID="grdTerms">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTerms"  />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelTermsEdit" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateTerm">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTerms" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelTermsEdit" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddTerm1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTerms" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddTerm2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTerms" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <%--Pricing Controls--%>
            <telerik:AjaxSetting AjaxControlID="btnEditScaling"> 
                <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                      <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />              
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnTargetMarginUpdate2"> 
                <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="grdPricing2" LoadingPanelID="RadAjaxLoadingPanel3" />
                      <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />                 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnTargetMarginUpdate3"> 
                <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="grdPricing2" LoadingPanelID="RadAjaxLoadingPanel3" />
                      <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />                 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUtilityCostsUpdate2"> 
                <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="grdCosting" LoadingPanelID="RadAjaxLoadingPanel3" />
                      <telerik:AjaxUpdatedControl ControlID="grdPricing2" LoadingPanelID="RadAjaxLoadingPanel3" />
                      <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />                 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnSearchQuotes"> 
                <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="grdQuoteSearch" LoadingPanelID="RadAjaxLoadingPanel1" />                 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdQuoteSearch"> 
                <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="grdPricingQuoteCopyConfirm" LoadingPanelID="RadAjaxLoadingPanel1" />
                      <telerik:AjaxUpdatedControl ControlID="btnPricingQuoteCopy" LoadingPanelID="RadAjaxLoadingPanel1" />
                      <%--<telerik:AjaxUpdatedControl ControlID="lblQuoteCopySuccess" /> --%>                
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnPricingQuoteCopy"> 
                <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="grdPricingQuoteCopyConfirm" LoadingPanelID="RadAjaxLoadingPanel1" />
                      <telerik:AjaxUpdatedControl ControlID="grdPricing2" LoadingPanelID="RadAjaxLoadingPanel3" />
                      <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />  
                </UpdatedControls>
            </telerik:AjaxSetting>

            
            <%--Costing Controls--%>
            <telerik:AjaxSetting AjaxControlID="grdCosting2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" />
                    <telerik:AjaxUpdatedControl ControlID="pnlEditCosting" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdCosting2ProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdCosting2Desc">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" />
                </UpdatedControls>
            </telerik:AjaxSetting>        
            <telerik:AjaxSetting AjaxControlID="fltrgrdCosting2TimeSinceChange">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" />
                </UpdatedControls>
            </telerik:AjaxSetting>          
            <telerik:AjaxSetting AjaxControlID="fltrgrdCosting2ZeroCost">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdCosting2ZeroQty">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdCosting2CostOverRide">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdCosting2ExtendedCost">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            
            <telerik:AjaxSetting AjaxControlID="btnEditCostingUpdateCost"> 
                <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="pnlEditCosting" />
                      <telerik:AjaxUpdatedControl ControlID="grdCosting2" LoadingPanelID="RadAjaxLoadingPanel1" />
                      <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                      <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />                                
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnProdDescUpdate"> 
                <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="editProdDesc" />
                      <telerik:AjaxUpdatedControl ControlID="grdCosting2" LoadingPanelID="RadAjaxLoadingPanel1" />
                      <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                      <telerik:AjaxUpdatedControl ControlID="grdQuoteStats"  />                                 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUtilityCostsUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />  
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnBlockCostsPreview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBlockPreview" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnCostNotesUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtBoxCostNotes" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnBlockPricingApply">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtBoxCostNotes" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="btnBlockPricingApply" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBlockPreview" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />  
                </UpdatedControls>
            </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnGridRefresh1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" LoadingPanelID="RadAjaxLoadingPanel1" />  
                </UpdatedControls>
           </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnGridRefresh2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" />
                    <telerik:AjaxUpdatedControl ControlID="grdCosting2" LoadingPanelID="RadAjaxLoadingPanel1" />  
                </UpdatedControls>
            </telerik:AjaxSetting>


            <%--grdPricing2 Controls--%>
            <telerik:AjaxSetting AjaxControlID="grdPricing2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="fltrgrdPricing2HowPriced" />
                     <telerik:AjaxUpdatedControl ControlID="fltrgrdPricing2PricedBy" />
                     <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel2" /> 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdPricing2ProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdPricing2Desc">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdPricing2HowPriced">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdPricing2PricedBy">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdPricing2TimeSinceChange">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdPricing2MarginReview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdPricing2ZeroCost">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrgrdPricing2ZeroQty">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="displayMode">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <%--Product List Controls--%>
            <%--<telerik:AjaxSetting AjaxControlID="comboBoxTO_QS_GroupListing">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxStockGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>--%>
            <telerik:AjaxSetting AjaxControlID="listBoxStockGrabList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxStockGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList2"  />

                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="listBoxQuicklistStockSearch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxQuicklistStockSearch" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList2" />
                    <telerik:AjaxUpdatedControl ControlID="listBoxStockGrabListRelated"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            
            <telerik:AjaxSetting AjaxControlID="listBoxTakeOffGrabList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxStockGrabListRelated"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="listBoxStockGrabListRelated">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxStockGrabListRelated"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList2"  />


                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnStockGrabListSearch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxQuicklistStockSearch"   />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnStockGrabListSearchClear">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxQuicklistStockSearch" />
                    <telerik:AjaxUpdatedControl ControlID="txtStockGrabListProdIDSearch"   />
                    <telerik:AjaxUpdatedControl ControlID="txtStockGrabListDescSearch"   />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnSearchProjects">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdProductListCopy" LoadingPanelID="RadAjaxLoadingPanel1"   />
    
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdProductListCopy">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnCopyProductList" />
                    <telerik:AjaxUpdatedControl ControlID="lblProductListCopyConfirm" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnCopyProductList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnCopyProductList"  />
                    <telerik:AjaxUpdatedControl ControlID="lblProductListCopyConfirm" />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList" />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList2" />
                     <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffNonStock" />
                    
                    <telerik:AjaxUpdatedControl ControlID="grdNonstockListing"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnGrabListClear">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList2" LoadingPanelID="RadAjaxLoadingPanel1"  /> 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnGrabListClear2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <%--TakeOff Structure Controls - Sections and Subsections--%>

            <telerik:AjaxSetting AjaxControlID="btnStartNewTakeOff">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTakeOffs" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdTakeOffEdit" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdSections" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="comboBoxSectionCopySource" LoadingPanelID="RadAjaxLoadingPanel1"   />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetails" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="insertTakeOffName"  />
                    <telerik:AjaxUpdatedControl ControlID="comboBoxTakeOffAssign" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdTakeOffEdit">
                <UpdatedControls>
                     <telerik:AjaxUpdatedControl ControlID="btnCopySelectedTakeOff" LoadingPanelID="RadAjaxLoadingPanel1"  />
                     <telerik:AjaxUpdatedControl ControlID="editTakeOffName" />
                   
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnUpdateTakeOffName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTakeOffs" LoadingPanelID="RadAjaxLoadingPanel1"  />
                     <telerik:AjaxUpdatedControl ControlID="grdTakeOffEdit" LoadingPanelID="RadAjaxLoadingPanel1"  />
                     <telerik:AjaxUpdatedControl ControlID="btnCopySelectedTakeOff"  />
                     <telerik:AjaxUpdatedControl ControlID="grdSect" />
                     <telerik:AjaxUpdatedControl ControlID="grdSub" />
                    <telerik:AjaxUpdatedControl ControlID="comboBoxTakeOffAssign" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnCopySelectedTakeOff">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTakeOffs" LoadingPanelID="RadAjaxLoadingPanel1"  />
                     <telerik:AjaxUpdatedControl ControlID="grdTakeOffEdit" LoadingPanelID="RadAjaxLoadingPanel1"  />
                     <telerik:AjaxUpdatedControl ControlID="editTakeOffName" />
                     <telerik:AjaxUpdatedControl ControlID="comboBoxTakeOffAssign" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="grdSections">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections" LoadingPanelID="RadAjaxLoadingPanel1" />
                     <telerik:AjaxUpdatedControl ControlID="grdSect" />
                     <telerik:AjaxUpdatedControl ControlID="grdSub" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSectionsAction" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdSubsections">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSectionsAction" />
                    <telerik:AjaxUpdatedControl ControlID="grdSect" />
                     <telerik:AjaxUpdatedControl ControlID="grdSub" />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnSectionCopy">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSectionsAction" />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdSub" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnDeleteSection">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSectionsAction" />
                    <telerik:AjaxUpdatedControl ControlID="grdSections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdSect" />
                     <telerik:AjaxUpdatedControl ControlID="grdSub" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnDeleteSubsection">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSectionsAction" />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="grdSect" />
                     <telerik:AjaxUpdatedControl ControlID="grdSub" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddSection">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSectionsAction" />
                    <telerik:AjaxUpdatedControl ControlID="grdSect" />
                    <telerik:AjaxUpdatedControl ControlID="grdSub" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddSubsection">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSectionsAction" />
                    <telerik:AjaxUpdatedControl ControlID="grdSect" />
                    <telerik:AjaxUpdatedControl ControlID="grdSub" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateSection">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSectionsAction" />
                    <telerik:AjaxUpdatedControl ControlID="grdSect" />
                    <telerik:AjaxUpdatedControl ControlID="grdSub" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateSubsection">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSectionsAction" />
                    <telerik:AjaxUpdatedControl ControlID="grdSect" />
                    <telerik:AjaxUpdatedControl ControlID="grdSub" />
                    <telerik:AjaxUpdatedControl ControlID="pnlEditSubsection" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateSectionComment">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnUpdateSectionComment" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <%--<telerik:AjaxUpdatedControl ControlID="editSectionComment" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateSubsectionComment">
                <UpdatedControls>
                    <%--<telerik:AjaxUpdatedControl ControlID="btnUpdateSubsectionComment" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                    <telerik:AjaxUpdatedControl ControlID="editSubsectionComment" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>


            <%--NonStock Development Controls--%>
            <telerik:AjaxSetting AjaxControlID="nsInsertProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="nsInsertProdID"  />
                    <telerik:AjaxUpdatedControl ControlID="lblnsInsertProdIDdupWarn"  />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnInsertNonStock">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlInsertNonStock"  />
                    <telerik:AjaxUpdatedControl ControlID="grdNonstockListing"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffNonStock"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdNonstockListing">
                <UpdatedControls>
                    <%--<telerik:AjaxUpdatedControl ControlID="pnlEditNonStock"  />--%>
                    <telerik:AjaxUpdatedControl ControlID="grdNonstockListing"  />
                    <telerik:AjaxUpdatedControl ControlID="RadTabStripNonStocks"  />
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage2"  />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnUpdateNonStock">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlEditNonStock"  />
                    <telerik:AjaxUpdatedControl ControlID="grdNonstockListing"  />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffNonStock"  />
                </UpdatedControls>
            </telerik:AjaxSetting>

           <%-- TakeOff Controls--%>

           <telerik:AjaxSetting AjaxControlID="grdSect">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSub" />
                    <telerik:AjaxUpdatedControl ControlID="pnlEditSubsection"  />
                    <telerik:AjaxUpdatedControl ControlID="pnlEditSubsection2"  />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionCopy" />                      
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="grdSub">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblEditSubsectionTitle" />
                    <telerik:AjaxUpdatedControl ControlID="pnlEditSubsection"  />
                    <telerik:AjaxUpdatedControl ControlID="pnlEditSubsection2"  />
                    <telerik:AjaxUpdatedControl ControlID="hdnSubsectionIndex"  />
                    <telerik:AjaxUpdatedControl ControlID="btnUpdateSubsectionComment"  />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail" />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionCopy" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateDetailIDIndex" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateLineNew" />
                    <telerik:AjaxUpdatedControl ControlID="lineDeleteDetailIDIndex" />                      
                </UpdatedControls>
           </telerik:AjaxSetting>
  
            <telerik:AjaxSetting AjaxControlID="btnUpdateSectionUnits">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtBoxSubsectionUnitsPerSection" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="txtBoxSubsectionTotalUnits" LoadingPanelID="RadAjaxLoadingPanel1" />
                  
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="listBoxTakeOffGrabList2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateLineNew" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineDeleteDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="listBoxTakeOffAssemblies">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateLineNew" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineDeleteDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdSubsectionDetail">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="pnlEditSubsection"  />
                   <telerik:AjaxUpdatedControl ControlID="pnlEditSubsection2"  />
                   <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail"  />
                   <telerik:AjaxUpdatedControl ControlID="lineUpdateDetailIDIndex" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lineUpdateDetailIDIndex">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="lineUpdateLineOld" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lineDeleteDetailIDIndex">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="lineDelete" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnTakeOffRelatedSEarch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffQuicklistRelated2" LoadingPanelID="RadAjaxLoadingPanel3" />
                </UpdatedControls>
            </telerik:AjaxSetting> 
            
            <telerik:AjaxSetting AjaxControlID="listBoxTakeOffQuicklistRelated2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffQuicklistRelated2" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList2" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateLineNew" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateLineOld" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineDeleteDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3" />
                </UpdatedControls>
            </telerik:AjaxSetting>           
            <telerik:AjaxSetting AjaxControlID="btnStockSearch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffStockSearch" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnStockSearchClear">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffStockSearch" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="listBoxTakeOffStockSearch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="listBoxTakeOffGrabList2" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3"/>
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateLineNew" LoadingPanelID="RadAjaxLoadingPanel3"/>
                    <telerik:AjaxUpdatedControl ControlID="lineDeleteDetailIDIndex"  LoadingPanelID="RadAjaxLoadingPanel3"/>  
                    <telerik:AjaxUpdatedControl ControlID="grdPricing2" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteStats" />
                    <telerik:AjaxUpdatedControl ControlID="grdCosting" />

                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="listBoxTakeOffNonStock">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateLineNew" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineDeleteDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdSubsectionCopy">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateLineNew" LoadingPanelID="RadAjaxLoadingPanel3" />
                    <telerik:AjaxUpdatedControl ControlID="lineDeleteDetailIDIndex" LoadingPanelID="RadAjaxLoadingPanel3" />
                </UpdatedControls>
            </telerik:AjaxSetting>
                   
            <telerik:AjaxSetting AjaxControlID="btnLineUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>

             <telerik:AjaxSetting AjaxControlID="btnDeleteLine">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSubsectionDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lineUpdateLineNew" />
                    <telerik:AjaxUpdatedControl ControlID="lineDeleteDetailIDIndex" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <%--Utility Controls--%>
            <telerik:AjaxSetting AjaxControlID="btnUtilityCopyQuote">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnUtilityCopyQuote" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="btnUtilityCopyQuoteGoToNew" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUtilityCostsUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnUtilityCostsUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCosting" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUtilityMatrixUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnUtilityMatrixUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUtilityContractUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnUtilityContractUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdOrderHeaders">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOrderLines" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnRequestQuoteService">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdServiceRequest" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <%--Output controls--%>

            <telerik:AjaxSetting AjaxControlID="lnkQuoteFormalAMRPDF">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteFormalAMRPDF" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteFormalNoMatListAMRPDF">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteFormalNoMatListAMRPDF" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteFormalPDF">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteFormalPDF" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteFormalPDFNoBreak">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteFormalPDFNoBreak" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteFormalNoAveragePDF">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteFormalNoAveragePDF" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteFormalNoMatListPDF">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteFormalNoMatListPDF" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteFormal3PDF">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteFormal3PDF" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteFormalNoMatListPDF_NoBreak">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteFormalNoMatListPDF_NoBreak" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteTrimPDF">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteTrimPDF" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteMaterialListPDF">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteMaterialListPDF" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteStructuredExcel">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteStructuredExcel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteStructuredExcel2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteStructuredExcel2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteMaterialListExcel">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteMaterialListExcel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkInforContractPricing">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkInforContractPricing" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkInforQuoteOrder">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkInforQuoteOrder" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteManEntry">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteManEntry" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteManEntryMatList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteManEntryMatList" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuotePricingReview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuotePricingReview" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkVendorQuoteRequest">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkVendorQuoteRequest" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuotePricingReview2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuotePricingReview2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkVendorQuoteRequest2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkVendorQuoteRequest2" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteScopeOfWork">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteScopeOfWork" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteSubmittal">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteSubmittal" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkGrablistComp">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkGrablistComp" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkComparisonTakeOff">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkComparisonTakeOff" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteManEntrySectionalMatList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteManEntrySectionalMatList" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkQuoteManEntryMatListWithLocation">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkQuoteManEntryMatListWithLocation" />
                </UpdatedControls>
            </telerik:AjaxSetting>



            <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<asp:HiddenField ID="hdnModifiedBy" runat="server" />
<asp:HiddenField ID="hdnQuoteID" runat="server" />
<asp:HiddenField ID="hdnJobID" runat="server" />
<asp:HiddenField ID="hdnWhseID" runat="server" Value="1" />

<asp:HiddenField ID="hdnTakeOffID" runat="server" />
<asp:HiddenField ID="hdnCustID" runat="server" />
<asp:HiddenField ID="hdnPriceType" runat="server" />
<asp:HiddenField ID="hdnCostNoteIndex" runat="server" />

<asp:Panel ID="pnlFlagWarning" runat="server" Height="20px">
    
    
    <div id="divFlagWarning" runat="server" style="width:100%; height:20px; padding:3px; color:White; font-weight:bold; font-size:medium;">
            <asp:Label ID="lblFlagWarning" runat="server" Width="500px"></asp:Label>
    </div>
</asp:Panel>
<div id="divBody" style="width:1800px; margin:5px;">

    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="MetroTouch" AutoPostBack="false" CausesValidation="false" >
        <Tabs>    
            <telerik:RadTab runat="server" Text="Header" PageViewID="QuoteHeader" Selected="true" >
                <Tabs> 
                    <telerik:RadTab runat="server" Text="Customer &amp; Sales Rep " PageViewID="QuoteHeader" Selected="true"></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Comments" PageViewID="Comments" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Copy This Quote" PageViewID="CopyQuote" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Quote Access History" PageViewID="AccessHistory" ></telerik:RadTab>    
                </Tabs>
            </telerik:RadTab>
            <telerik:RadTab runat="server" Text="Project" PageViewID="Project"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Terms" PageViewID="Terms"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="TakeOff" PageViewID="DefineSections">
                <Tabs> 
                    <telerik:RadTab runat="server" Text="TakeOffs" PageViewID="AvailTakeOffs" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Define Sections" PageViewID="DefineSections" Selected="true"></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Product List Copy" PageViewID="ProductListCopy" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Grab List" PageViewID="StockProductList" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="NonStock List" PageViewID="NonStockProductList"></telerik:RadTab>     
                    <telerik:RadTab runat="server" Text="Line Items" PageViewID="LineItems"></telerik:RadTab> 
                </Tabs>
            </telerik:RadTab>
            <telerik:RadTab runat="server" Text="Costs" PageViewID="Costs">
                <tabs>
                    <telerik:RadTab runat="server" Text="Costs" PageViewID="Costs" Selected="true"></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Notes" PageViewID="CostNotes"></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Block Costs" PageViewID="BlockCosts" ></telerik:RadTab>
                </tabs>
            </telerik:RadTab>
            <telerik:RadTab runat="server" Text="Pricing" PageViewID="Pricing">
                <Tabs>    
                    <telerik:RadTab runat="server" Text="Pricing" PageViewID="Pricing" Selected="true"></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Copy Prior Quote Pricing" PageViewID="CopyQuotePricing"></telerik:RadTab>
                </Tabs>
            </telerik:RadTab>
            <telerik:RadTab runat="server" Text="Taxes" PageViewID="Taxes"></telerik:RadTab>                 
            <%--<telerik:RadTab runat="server" Text="Muni Specs" PageViewID="MuniSpecs"></telerik:RadTab>--%>
            
            <telerik:RadTab runat="server" Text="Output" PageViewID="OP_CustomerPDFs">
                <Tabs>
                    <telerik:RadTab runat="server" Text="AMR - PDF's" PageViewID="OP_AMRPDFs" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Contractor - PDF's" PageViewID="OP_ContractorPDFs" Selected="true" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Contractor - Excel" PageViewID="OP_ContractorExcel" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Internal Use" PageViewID="OP_Internal"  ></telerik:RadTab>
                </Tabs>
            </telerik:RadTab>

            <telerik:RadTab runat="server" Text="Contract Pricing" PageViewID="Services"></telerik:RadTab>
            <%--<telerik:RadTab runat="server" Text="Orders" PageViewID="Orders"></telerik:RadTab>--%>
        </Tabs>
    </telerik:RadTabStrip>

    <telerik:RadMultiPage ID="RadMultiPage1" runat="server">
        <telerik:RadPageView ID="Project" runat="server" >
            <%--<h2>Project Description</h2>--%>
            <div id="div4" style="width:100%; height:15px; margin:10px; vertical-align:middle;">
                <div style="vertical-align:middle; height:15px;">  
                    <label id="lblProjectPage" style=" font-weight:bold; font-size:small; color:Red; padding:2px;">Page Notes</label> 
                </div>  
                <telerik:RadToolTip ID="RadToolTipProjectPage" runat="server" RelativeTo="Element" Width="700px" Title="Project" 
                        TargetControlID="lblProjectPage" ShowEvent="OnMouseOver" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade" >
                </telerik:RadToolTip>
            </div>
            <div style="width:1300px; height:50px; float:left; Margin:5px 0px 40px 15px; border: 2px solid #4c68a2;">
                <div style="width:275px; height:40px; margin-right:10px; float:left; ">
                    <div style="width:110px; height:20px; float:left;padding:12px 0px 0px 10px;">
                        <asp:Label ID="Label10" runat="server" Text="New Due Date:" CssClass="myLabelCss"></asp:Label>
                    </div>
                                  
                    <div style="width:130px; float:left;padding:10px 0px 0px 10px;">     
                             <telerik:RadDatePicker ID="uDueDate"  runat="server" Width="100px" 
                                              Culture="en-US"  MinDate="1900-01-01" MaxDate="2030-01-01" DatePopupButton-ToolTip="The date the quote is due to the customer." >
                                              <Calendar ID="Calendar3"  UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                              <DateInput ID="DateInput3"  Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                             </telerik:RadDatePicker>
                    </div>    
                </div>
                              
                              
                <div style="width:275px; margin-right:10px; float:left;  ">
                    <div style="width:110px; height:20px; float:left;padding:12px 0px 0px 10px; ">
                        <asp:Label ID="Label28" runat="server" Text="New Bid Date:" CssClass="myLabelCss"></asp:Label>
                    </div>
                    <div style="width:130px; height:20px; float:left; padding:10px 0px 0px 10px;">     
                            <telerik:RadDatePicker ID="uBidDate"  runat="server" Culture="English (United States)" Width="100px" 
                                DatePopupButton-ToolTip="The date the job goes to bid."  MinDate="1/1/1900" MaxDate="1/1/2030">
                                    <Calendar ID="Calendar4" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x" runat="server"></Calendar>
                                    <DateInput ID="DateInput4" Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                            </telerik:RadDatePicker>
                    </div>
                                
                </div>
                <div style="width:280px; float:left; padding:10px 0px 0px 10px;">
                    
                    <telerik:RadComboBox ID="uFlag" Width="250px"  Runat="server" Label="Flag:" LabelCssClass="myLabelCss" 
                            DataSourceID="SqlDS_Flag" DataTextField="label" DataValueField="label" AppendDataBoundItems="false">
                       <%-- <Items>
                            <telerik:RadComboBoxItem runat="server" Text="-" Value="-" Selected="true" />
                        </Items>--%>
                    </telerik:RadComboBox>
                    <telerik:RadToolTip ID="RadToolTipnFlag" runat="server" TargetControlID="uFlag" Title="Flag" Position="BottomRight"  width="200px" HideEvent="LeaveToolTip" 
                            Text="The flag identifies special conditions for the project (such as premium customer participation)." >
                    </telerik:RadToolTip>
                </div>
                <div style="width:210px; float:right; vertical-align:middle; padding:4px 0px 0px 10px;">
                    <telerik:RadButton ID="btnProjectUpdate" runat="server" Text="Update" UseSubmitBehavior="True" Width="200px" Skin="BlackMetroTouch" OnClick="btnProjectUpdate_Click" >
                    </telerik:RadButton>
                </div>


                <asp:SqlDataSource ID="SqlDS_Flag" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Flag" Name="Type" Type="String" />
                        <asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
                        <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="Region1" Type="String" />
                        <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="Region2" Type="String" />
                        <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="Region3" Type="String" />
                        <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="Region4" Type="String" />
                        <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="Region5" Type="String" />
                        <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="Region6" Type="String" />
                        <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="Region7" Type="String" />
                        <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="Region8" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

            <div style="width:1300px; height:200px; float:left; Margin:5px 0px 0px 15px; ">
 
                <div style="width:1000px; float:left;  margin:3px;">
                    <telerik:RadButton ID="lnkEditProject" ButtonType="LinkButton" runat="server" Text="Edit Project"  Width="200px" Target="_blank" Skin="BlackMetroTouch"></telerik:RadButton>
                </div>
                
                
                <div style="width:500px; float:left; margin-bottom:20px;">
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:100px;float:left; "><asp:Label ID="lblP" runat="server" Text="Project: " Width="60px" CssClass="myLabelCss"></asp:Label></div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblProjectName2" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:100px;float:left;">
                            <asp:Label ID="Label13" runat="server" Text="SubTitle: " Width="60px" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblSubTitle" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:100px;float:left; font-size:small;">
                            <asp:Label ID="Label14" runat="server" Text="Flag: " Width="60px" CssClass="myLabelCss">
                            </asp:Label>
                        </div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblFlag" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:100px;float:left; font-size:small;">
                            <asp:Label ID="Label15" runat="server" Text="Address: " Width="60px" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblAddress" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:100px;float:left; font-size:small;">
                            <asp:Label ID="Label16" runat="server" Text="&nbsp;" Width="60px" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblCity" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px; margin-bottom:20px;">
                        <div style="width:100px;float:left; font-size:small;">
                            <asp:Label ID="Label17" runat="server" Text="District: " Width="60px" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:300px;float: left; font-size:small;">
                            <asp:Label ID="lblDistrictName" runat="server"></asp:Label>
                        </div>
                    </div>
                   
                </div>
                <div style="width:500px; float:left;">
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:150px;float:left; ">
                            <asp:Label ID="Label18" runat="server" Text="Project Logged: " Width="100px" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblLogged" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:150px;float:left; ">
                            <asp:Label ID="Label4" runat="server" Text="Due Date: " Width="100px" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblDueDate" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:150px;float:left; ">
                            <asp:Label ID="Label19" runat="server" Text="Bid Date: " Width="100px" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblBidDate" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:150px;float:left; ">
                            <asp:Label ID="Label20" runat="server" Text="Bid Time: " Width="100px" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblBidTime" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:150px;float:left; ">
                            <asp:Label ID="Label21" runat="server" Text="Pre-Bid Date: " Width="100px" CssClass="myLabelCss"></asp:Label></div>
                        <div style="width:300px;float: left;font-size:small;">
                            <asp:Label ID="lblPreBid_Date" runat="server"></asp:Label></div>
                    </div>
                    <div style="width:100%; float:left; margin-top:10px;">
                        <div style="width:150px;float:left; ">
                            <asp:Label ID="Label22" runat="server" Text="Pre-Bid Time:" Width="100px" CssClass="myLabelCss"></asp:Label></div>
                        <div style="width:300px;float: left; font-size:small;">
                            <asp:Label ID="lblPreBid_Time" runat="server"></asp:Label></div>
                    </div>
                     
                </div>     
            </div>
            <div style="width:75%;margin:15px;">
                <div style="Width:45%; float:left; margin-top:10px;">
                        <div style="width:120px;float:left; ">
                            <asp:Label ID="Label1" runat="server" Text="Bid Notes:" CssClass="myLabelCss"></asp:Label></div>
                        <div style="Width:400px;float: left;">
                            <telerik:RadTextBox ID="lblBidNotes" runat="server" TextMode="MultiLine" Width="400px" Height="75px" Wrap="true" ReadOnly="True" DisabledStyle-ForeColor="Black" >
                            </telerik:RadTextBox>
                        </div>
                </div>
                <div style="Width:45%; float:left; margin-top:10px;">
                        <div style="width:120px;float:left; ">
                            <asp:Label ID="Label9" runat="server" Text="Plan Notes:" CssClass="myLabelCss"></asp:Label></div>
                        <div style="Width:400px;float: left;">
                            <telerik:RadTextBox ID="lblPlanNotes" runat="server" TextMode="MultiLine" Width="400px" Height="75px" Wrap="true" ReadOnly="True" DisabledStyle-ForeColor="Black" >
                            </telerik:RadTextBox>
                        </div>
                </div>
                
                <div style="Width:45%; float:left; margin-top:10px;">
                        <div style="width:120px;float:left; "> 
                            <asp:Label ID="Label2" runat="server" Text="Restraint Notes:" CssClass="myLabelCss"></asp:Label></div>
                        <div style="Width:400px;float: left;">
                            <telerik:RadTextBox ID="lblRestraint_Notes" runat="server" TextMode="MultiLine" Width="400px" Height="75px" Wrap="true" ReadOnly="True" DisabledStyle-ForeColor="Black" >
                            </telerik:RadTextBox>
                        </div>
                </div>
                <div style="Width:45%; float:left; margin-top:10px;">
                        <div style="width:120px;float:left;"><asp:Label ID="Label3" runat="server" Text="Fitting Notes:" CssClass="myLabelCss"></asp:Label></div>
                        <div style="Width:400px;float: left;">
                            <telerik:RadTextBox ID="lblFitting_Notes" runat="server" TextMode="MultiLine" Width="400px" Height="75px" Wrap="true" ReadOnly="True" DisabledStyle-ForeColor="Black" >
                            </telerik:RadTextBox>
                        </div>                   
                </div>
                <div style="Width:45%; float:left; margin-top:10px;">
                        <div style="width:120px;float:left; ">
                            <asp:Label ID="Label5" runat="server" Text="PVC Notes:" CssClass="myLabelCss"></asp:Label></div>
                        <div style="Width:400px;float: left;">
                            <telerik:RadTextBox ID="lblPVC_Notes" runat="server" TextMode="MultiLine" Width="400px" Height="75px" Wrap="true" ReadOnly="True" DisabledStyle-ForeColor="Black" >
                            </telerik:RadTextBox>
                        </div>                   
                </div>

                <div style="Width:45%; float:left; margin-top:10px;">
                        <div style="width:120px;float:left;"><asp:Label ID="Label6" runat="server" Text="Ductile Notes:" CssClass="myLabelCss"></asp:Label></div>
                        <div style="Width:400px;float: left;">
                            <telerik:RadTextBox ID="lblDIP_Notes" runat="server" TextMode="MultiLine" Width="400px" Height="75px" Wrap="true" ReadOnly="True" DisabledStyle-ForeColor="Black" >
                            </telerik:RadTextBox>
                        </div>
                </div>
                <div style="Width:45%; float:left; margin-top:10px;">
                        <div style="width:120px;float:left; ">
                            <asp:Label ID="Label7" runat="server" Text="HDPE Notes:" CssClass="myLabelCss"></asp:Label></div>
                        <div style="Width:400px;float: left;">
                            <telerik:RadTextBox ID="lblHDPE_Notes" runat="server" TextMode="MultiLine" Width="400px" Height="75px" Wrap="true" ReadOnly="True" DisabledStyle-ForeColor="Black">
                            </telerik:RadTextBox>
                        </div>                   
                </div>
                <div style="Width:45%; float:left; margin-top:10px;">
                        <div style="width:120px;float:left; ">
                            <asp:Label ID="Label8" runat="server" Text="Other Notes:" CssClass="myLabelCss"></asp:Label></div>
                        <div style="Width:400px;float: left;">
                            <telerik:RadTextBox ID="lblOther_Notes" runat="server" TextMode="MultiLine" Width="400px" Height="75px" Wrap="true" ReadOnly="True" DisabledStyle-ForeColor="Black">
                            </telerik:RadTextBox>
                        </div>                   
                </div>
            </div>

        
        
        </telerik:RadPageView>
        <telerik:RadPageView ID="QuoteHeader" runat="server" Selected="true" >
            <div id="divHeaderInformationPageNotes" style="width:100px; height:15px; margin:10px; vertical-align:middle;">
                 <label id="lblHeaderInformaitonPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                        <telerik:RadToolTip ID="RadToolTipHeaderInformation" runat="server" RelativeTo="Element" Width="700px" Title="Header Page Notes" 
                                Height="50px" TargetControlID="lblHeaderInformaitonPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade">
                        </telerik:RadToolTip>
            </div>
            
            <div style="margin:10px;width:1000px;">    
        
                    <asp:Panel ID="pnlEditHeader" runat="server" >
                        <div style="width:100%; height:20px; margin-bottom:15px;float:left;"> 
                            <div style="width:600px;float:left;">
                                <asp:Label ID="lblProjectName" runat="server" Font-Size="Large" ForeColor="#4c68a2" ></asp:Label> 
                            </div>  
                            <div style="width:400px;float:left;">
                                <asp:Label ID="lblCreation" runat="server"></asp:Label>
                            </div>

                        </div>
                        <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2; height:100px;">  
                             
                            <div style="width:1000px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                               Quote Name
                            </div>
                                <div style="margin:10px;"> 
                                    <div style="width:900px; float:left; ">
                                    
                                    <div style="width:540px; float:left; vertical-align:middle; margin:10px;">      
                                        <telerik:RadTextBox ID="editQuoteName" runat="server" Label="Quote Name:" MaxLength="40" Width="500px" LabelWidth="200px" Font-Size="Medium" LabelCssClass="myLabelCssMedium">
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="width:220px; float:left; vertical-align:middle;">
                                        <telerik:RadButton ID="btnUpdateQuote" runat="server" Text="Update Quote Name" UseSubmitBehavior="false" 
                                            Width="200px" Skin="BlackMetroTouch" >
                                        </telerik:RadButton>
                                    </div>

                                    </div>
                                </div>
                        </div>
                        <div style="width:1000px; height:250px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                             
                             <div style="width:1000px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                                Customer Selection / Edit Customer Name
                             </div>
                            <div style="margin:10px;">
                                
                                <div style="width:900px; float:left; ">
                                    <h3>Current Customer</h3>
                                     <div style="width:540px; float:left; vertical-align:middle; margin:10px;">   
                                        <telerik:RadTextBox ID="txtBoxNewCustomer" runat="server" Label="Modify Customer Name:" Width="500px" LabelWidth="200px" LabelCssClass="myLabelCssMedium" Font-Size="Medium">
                                        </telerik:RadTextBox>
                                     </div>
                                     <div style="width:220px; float:left; vertical-align:middle;">
                                        <telerik:RadButton ID="btnCustNameMod" runat="server" Text="Modify Name" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                     </div>
                                
                                </div>
                                
                                <div style="float:left; width:900px; margin:20px 0px 20px 0px;">
                                   <h3>Change Customer</h3> 
                                    <div style="width:540px; float:left; vertical-align:middle; margin:10px;">
                                         <div style="width:200px; float:left;">   
                                            <asp:Label ID="Label25" runat="server" Text="Change Customer:" CssClass="myLabelCssMedium"></asp:Label>
                                         </div>
                                         <div style="width:340px; float:left;">  
                                            <telerik:RadComboBox ID="searchCustomer" runat="server" Width="300px" LabelCssClass="myLabelCssMedium" Font-Size="Medium"
                                                DataSourceID="SqlDS_CustomerSearch" DataTextField="CustName" DataValueField="CustID"                                         
                                                Filter="Contains" EnableAutomaticLoadOnDemand="true" EmptyMessage="Type part of name to see list."  >
                                            </telerik:RadComboBox>
                                         </div>
                                    </div>

                                    <asp:SqlDataSource ID="SqlDS_CustomerSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                        SelectCommand="SELECT CustID, CustName, SalesRepID, PriceType FROM Customers WHERE (Status = 'Active')">
                                        <%--<SelectParameters>
                                            <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                                        </SelectParameters>--%>
                                    </asp:SqlDataSource>

                                        <asp:HiddenField ID="uCustID" runat="server" />
                                        <asp:HiddenField ID="uPriceType" runat="server" />
                                        <asp:HiddenField ID="uCustName" runat="server" />
                                    
                                    <div style="width:220px; float:left; vertical-align:middle;">
                                        <telerik:RadButton ID="btnUpdateCustomer" runat="server" Text="Change Customer" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                    </div>
                                </div>
  
                            </div>
                        </div>
                        <div style="width:1000px; height:250px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                             
                             <div style="width:1000px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                                Sales Rep Assignment 
                             </div>
                                <div style="width:900px; margin:10px;">
                                    <h3>Current Sales Rep</h3>
                                    <div style="width:540px; float:left; vertical-align:middle; margin:10px;">
                                        <telerik:RadTextBox ID="lblCurrentSalesRep" runat="server" Label="Sales Rep:" Width="500px" LabelWidth="100px" Font-Size="Medium"
                                            LabelCssClass="myLabelCssMedium" ReadOnly="True"  ForeColor="#4c68a2">
                                        </telerik:RadTextBox>
                                    </div>


                                    <div style="float:left; width:900px; margin:20px 0px 20px 0px;">
                                     <h3>Change Sales Rep</h3>  
                                        <div style="width:540px; float:left; vertical-align:middle; margin:10px;">  
                                             <div style="width:200px; float:left;">   
                                                <asp:Label ID="Label26" runat="server" Text="Change Sales Rep:" CssClass="myLabelCssMedium"></asp:Label>
                                             </div>
                                             <div style="width:340px; float:left;">  
                                                <telerik:RadComboBox ID="searchSalesRep" runat="server" 
                                                    Width="300px" LabelCssClass="myLabelCss" Font-Size="Medium"
                                                    DataSourceID="SqlDS_SalesRepSearch" DataTextField="SalesName" DataValueField="SalesRepID" 
                                                    Filter="Contains" EnableAutomaticLoadOnDemand="true" EmptyMessage="Type part of name to see list."  >
                                                </telerik:RadComboBox>
                                                <asp:HiddenField ID="hdnSalesRepID" runat="server" />
                                                <asp:HiddenField ID="hdnSalesRepID_Old" runat="server" />

                                                <asp:SqlDataSource ID="SqlDS_SalesRepSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                    SelectCommand="SELECT SalesReps.SalesRepID, SalesReps.WhseID, CASE WHEN SalesReps_Details.SalesName IS NULL THEN SalesReps.SalesRepID + '-' + SalesReps.SalesName ELSE SalesReps.SalesRepID + '-' + SalesReps_Details.SalesName END AS SalesName
                                                           FROM   SalesReps LEFT OUTER JOIN
                                                                                  SalesReps_Details ON SalesReps.SalesRepID = SalesReps_Details.SalesRepID
                                                            WHERE SalesReps.SalesName NOT IN ('.') AND 
	                                                            SalesReps.SalesRepID NOT IN ('ALTO','BOBD','BOBK','CHMS','DALA','DAVP','DENF','DOUE','FM','GARM','GAYZ','GERP','JEFP','JEFS','KARE','KENS','MIKZ','MORB',
	                                                            'PENS','ROBF','ROBH','SHEM','SONJ','SYS','TIMM','TOMS','1401','1402','1403')" >
                                        
                                                </asp:SqlDataSource>

                                             </div>
                                        </div>
                                        <div style="width:220px; float:left; vertical-align:middle;">
                                            <telerik:RadButton ID="btnUpdateSalesRep" runat="server" Text="Update Sales Rep" UseSubmitBehavior="true" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        
                         <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid Red; height:100px;">  
                             
                            <div style="width:1000px; background-color: Red; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                               Hide Quote
                            </div> 
                            <div style="float:left; width:960px; margin:10px 0px 10px 0px;">
                                     
                                <div style="width:540px; float:left; margin:0px 5px 20px 5px; font-size:Medium; padding:10px;">
                                    Click the button at right to hide this quote permanently.  Once you close this quote, it will no longer appear in Quote Search results.  

                                </div>
                                <div style="width:220px; float:left; vertical-align:middle;">
                                                <telerik:RadButton ID="btnHideQuote" runat="server" Text="Hide Quote" UseSubmitBehavior="true" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>
                            </div>
                         </div>
                      
                        
                        

                    </asp:Panel>          

            </div>

        
        </telerik:RadPageView>
        <telerik:RadPageView ID="Comments" runat="server">
     
              <div style="width:1300px; margin:20px; float:left; ">
                <h2>Quote Comments</h2>
                <%--<div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;"> --%>
                <div style="width:1100px; float:left;" >  
                    <%--<div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                                Quote Comments
                    </div>--%>
     
                    
                        
                    <div style="width:850px; height:550px; float:left; margin-left:10px;">
                            <div id="diveditQuoteComment" style="width:1000px; height:264px; float:left; margin-top:10px;">
                                 <div style="width:804px; float:left; border:2px solid Green; ">
                                    <div style="width:100%; height:254px; background-color: Green; color:White; font-size:Medium; font-weight:bold;height:25px; vertical-align:middle;">
                                        Cover Page - Visible to Customer
                                    </div> 
                                    <div style="width:800px; height:220px;"> 
                                        <telerik:RadEditor ID="editQuoteComment1" runat="server" Width="800px" Height="216px" Font-Size="Medium" NewLineMode="Br" ContentFilters="PdfExportFilter" SkinID="MetroTouch" >
                                                <Tools>
                                                    <telerik:EditorToolGroup >
                                                        <telerik:EditorTool Name="Cut" />
                                                        <telerik:EditorTool Name="Copy" />
                                                        <telerik:EditorTool Name="Paste" />
                                                        <telerik:EditorTool Name="Bold" />
                                                        <%--<telerik:EditorTool Name="Underline" />
                                                        <telerik:EditorTool Name="StrikeThrough" />
                                                        <telerik:EditorTool Name="ForeColor" /> does not apply to PDF - do not use--%>
                                                        <telerik:EditorTool Name="FontSize" />
                                                        <telerik:EditorTool Name="Undo" />
                                                        <telerik:EditorTool Name="Redo" />
                                                        <telerik:EditorTool Name="AjaxSpellCheck" />
                                                    </telerik:EditorToolGroup>
                                                </Tools>
                                        </telerik:RadEditor>
                                    </div>
                                 </div>
                                 <div style="width:804px; float:left; border:2px solid Green; margin-top:20px;">
                                    <div style="width:100%; height:254px; background-color: Green; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">      
                                        Internal Use - <i>Not</i> Visible to Customer
                                    </div>
                                    <div style="width:800px; height:220px;">
                                        <telerik:RadEditor ID="editQuoteComment2" runat="server" Width="800px" Height="216px" Font-Size="Medium" ContentFilters="PdfExportFilter">
                                            <Tools>
                                                <telerik:EditorToolGroup >
                                                    <telerik:EditorTool Name="Cut" />
                                                    <telerik:EditorTool Name="Copy" />
                                                    <telerik:EditorTool Name="Paste" />
                                                    <telerik:EditorTool Name="Bold" />
                                                        <%--<telerik:EditorTool Name="Underline" />
                                                    <telerik:EditorTool Name="StrikeThrough" />
                                                    <telerik:EditorTool Name="ForeColor" />--%>
                                                    <telerik:EditorTool Name="FontSize" />
                                                    <telerik:EditorTool Name="Undo" />
                                                    <telerik:EditorTool Name="Redo" />
                                                    <telerik:EditorTool Name="AjaxSpellCheck" />
                                                </telerik:EditorToolGroup>
                                            </Tools>
                                        </telerik:RadEditor>
                                    </div>
                                 </div>
                           
                            </div>

                    </div>
                    
                    <div style="width:810px; float:left; margin:10px; ">
                        <telerik:RadButton ID="btnUpdateQuoteComments" runat="server" Text="Update Both Comments"  UseSubmitBehavior="false" Width="800px" Skin="BlackMetroTouch"></telerik:RadButton>
                    </div>
                </div>
              </div>
        </telerik:RadPageView>
        
        <telerik:RadPageView ID="CopyQuote" runat="server">
     
              <div style="width:1300px; margin:20px; float:left; ">  
                    <h2>Copy This Quote</h2>
                        
                    
                    <div style="width:520px; margin:10px; float:left;">
                        <div style="width:500px; float:left; margin:10px 5px 20px 5px; font-size:Large; padding:10px;">
                            This utility creates a new quote that inherits pricing and takeoff assignment from this quote, and opens it in another IE window.  Costs are shared across all quotes on the project.  

                        </div>
                        <div style="width:500px; float:left; margin:0px 5px 10px 10px;">
                            <div style="width:350px; float:left;">
                                <div style="width:80px;float:left;">
                                    <asp:Label ID="Label23" runat="server" Text="Step 1: " Width="60px" CssClass="myLabelCssLarge"></asp:Label>
                                </div>
                                <div style="width:250px;float:left;">
                                    <telerik:RadButton ID="btnUtilityCopyQuote" runat="server" Text="Copy Quote" UseSubmitBehavior="false" Width="250px" Skin="BlackMetroTouch" ></telerik:RadButton>
                                </div>
                            
                            </div>
                            <div style="width:350px;float:left; margin:20px 0px 10px 0px;">
                                
                                <div style="width:80px;float:left;">
                                    <asp:Label ID="Label24" runat="server" Text="Step 2: " Width="60px" CssClass="myLabelCssLarge"></asp:Label>
                                </div>
                                <div style="width:250px;float:left;">
                                    <telerik:RadButton ID="btnUtilityCopyQuoteGoToNew" runat="server" ButtonType="LinkButton" Target="_blank" Text="Go To Quote" Width="250px" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>
                                
                                
                            </div>
                        </div>
                        <div style="width:500px; float:left; margin:30px 0xp 10px 0px;">
                             <div style="Width:500px; font-size:large; padding:10px;">
                                    On the new quote:
                             </div>
                             <div style="Width:500px;float:left; font-size:large; padding:10px;">
                                    If all your changes are pricing related, go ahead and make those changes on the Pricing and Header pages.  If you need to change the customer, make those changes on the Header page.
                             </div>
                             <div style="Width:500px;float:left;font-size:large; padding:10px;">
                                    If your takeoff needs to change (different sections, subsections, products, quantities, etc.), go to the TakeOffs page under TakeOff and:<br />
                                            1. Create a new takeoff or copy an existing takeoff<br />
                                            2. Assign the newly created takeoff to the quote. 
                                        <br /><br />
                             </div>
                             <div style="Width:500px; float:left;font-style:italic; color:Red; font-weight:bold; font-size:large;">
                                    If you do not change the takeoff assignment, your takeoff related changes in the new quote will flow through to the quote you just copied.
                
                             </div>
             
                        </div>

                    </div>
                    <div style="width:500px; float:left;">
                        <img alt="" src="QuoteCopyProcedure.PNG" />
                    </div>
              </div>

        
        </telerik:RadPageView>
        <telerik:RadPageView ID="AccessHistory" runat="server">

           <div style="margin:10px; width:670px; height:600px;">
               
            <div style="width:100%; margin-bottom:15px;float:left; font-size:large; background-color:Orange; color:White; padding:5px;">
                Access History
            </div>
            
                <div style="float:left; width:1300px; height:700px;">
                    <div style="float:left; width:420px; height:600px;">
                        <telerik:RadGrid ID="grdQuoteActivity" runat="server" CellSpacing="-1" Width="400px" Height="600px" 
                            DataSourceID="SqlDS_grdQuoteActivity" GridLines="None" PageSize="100" ShowFooter="false" AllowPaging="false"
                            GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                
                             <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                                    <Selecting AllowRowSelect="false" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" />
                                     
                             </ClientSettings>

                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdQuoteActivity" AllowSorting="True" CommandItemDisplay="Top">
                                <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                    
                                <Columns>
                                    <telerik:GridBoundColumn DataField="FullName" HeaderText="User" SortExpression="FullName" UniqueName="FullName">
                                        <HeaderStyle Width="200px" HorizontalAlign="Left" />
                                        <ItemStyle Width="200px" HorizontalAlign="Left" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="DateTime" DataType="System.DateTime" HeaderText="Last Accessed" SortExpression="DateTime" UniqueName="DateTime">
                                        <HeaderStyle Width="150px" HorizontalAlign="Left" />
                                        <ItemStyle Width="150px" HorizontalAlign="Right" />
                                    </telerik:GridBoundColumn>
                                </Columns>
                            </MasterTableView>
                        </telerik:RadGrid>
                        <asp:SqlDataSource ID="SqlDS_grdQuoteActivity" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="SELECT FullName, DateTime 
                                    FROM Quote_Recent 
                                    WHERE QuoteID = @QuoteID
                                    ORDER BY QuoteID desc, DateTime desc, FullName">
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="0" Name="QuoteID" 
                                    QueryStringField="QuoteID" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div style="float:left; width:250px; height:345px; font-size:small; padding:10px 10px 0px 20px;">
                        The access time identifies the last time the quote was accessed for the date specified.<br /><br />
                        This information is intended to help the user to identify any user conflicts, and ease communication.
                    </div>
                </div>
        
        
           </div>

        </telerik:RadPageView>
        <telerik:RadPageView ID="Terms" runat="server">
            <%--<h2>Terms</h2>--%>
            <div style="margin:10px;">
                <div id="div2" style="width:100%; height:20px; vertical-align:middle;">
                     <label id="lblTermsPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                         <telerik:RadToolTip ID="RadToolTipTerms" runat="server" RelativeTo="Element" Width="700px" Title="Terms Page Notes" 
                                 Height="50px" TargetControlID="lblTermsPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade">
                         </telerik:RadToolTip>
                </div>
                
               <div style="margin-bottom:10px; margin-right:20px; height:400px; "> 
                        <div style="float:left;height:375px;">
                            <telerik:RadAjaxPanel ID="RadAjaxPanelTermsListing" runat="server" Width="575px" Height="375px" >
                                  <div style="width:575px; height:385px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                                       <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                                            Current Terms &amp; Conditions
                                       </div>   
                                    
                                        <telerik:RadGrid ID="grdTerms" runat="server" Width="573px" Height="350px" CellSpacing="0" DataSourceID="SqlDS_Terms" 
                                            GridLines="None" AutoGenerateColumns="False" OnSelectedIndexChanged="grdTerms_SelectedIndexChanged" >
                                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                                    <Scrolling AllowScroll="true" />
                                                    <Selecting AllowRowSelect ="true" />
                                                </ClientSettings>
                                              
                                             <MasterTableView AllowAutomaticDeletes="True" DataKeyNames="QuoteTermIndex" DataSourceID="SqlDS_Terms">
                         
                                             <Columns>
                                                <telerik:GridBoundColumn DataField="DisplaySeq" DataType="System.Int32" HeaderText="Order" UniqueName="DisplaySeq">
                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="40px" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="TC" HeaderText="Term Content" UniqueName="TC">
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="450px" />
                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="450px" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton" ItemStyle-Width="30px" HeaderStyle-Width="30px" />
                                                <telerik:GridBoundColumn DataField="TermID" Display="false" DataType="System.Int32" HeaderText="TermID" UniqueName="TermID">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="QuoteID" Display="false" DataType="System.Int64" HeaderText="QuoteID" UniqueName="QuoteID">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="QuoteTermIndex" Display="false" DataType="System.Int64" HeaderText="QuoteTermIndex" ReadOnly="True" UniqueName="QuoteTermIndex">
                                                </telerik:GridBoundColumn>
                                             </Columns>
                                             </MasterTableView>
                                        </telerik:RadGrid>
                                        <asp:SqlDataSource ID="SqlDS_Terms" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>"  
                                                DeleteCommand="uspQuoteTermsDelete" DeleteCommandType="StoredProcedure" SelectCommand="uspQuoteTermsGet" SelectCommandType="StoredProcedure" >
                            
                                                <DeleteParameters>
                                                    <asp:Parameter Name="QuoteTermIndex" Type="Int64" />
                                                </DeleteParameters>
                                                <SelectParameters>
                                                        <asp:ControlParameter ControlID="hdnQuoteID" DefaultValue="0" Name="QuoteID" PropertyName="Value" Type="Int64" />
                                                </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                            </telerik:RadAjaxPanel>
                  
                        </div>
                        <div style="float:left;width:400px;height:300px; margin-left:20px;">
                            <telerik:RadAjaxPanel ID="RadAjaxPanelTermsEdit" runat="server" >
                                <asp:HiddenField ID="hdnTermDisplaySeq" runat="server" />
                                <asp:HiddenField ID="hdnQuoteTermIndex" runat="server" />
                               <div style="width:400px; height:275px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                                   <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">                     
                                         Select a Term Condition at Left to Edit
                                   </div>
                                    <div style="width:100%; ">
                                        <telerik:RadEditor ID="editTC" runat="server" Width="398px" Height="200px" ContentFilters="PdfExportFilter">
                                            <Tools>
                                                <telerik:EditorToolGroup >
                                                   <telerik:EditorTool Name="Cut" />
                                                    <telerik:EditorTool Name="Copy" />
                                                    <telerik:EditorTool Name="Paste" />
                                                    <telerik:EditorTool Name="Bold" />
                                                    <%-- <telerik:EditorTool Name="Underline" />
                                                    <telerik:EditorTool Name="StrikeThrough" />
                                                    <telerik:EditorTool Name="ForeColor" />--%>
                                                    <telerik:EditorTool Name="FontSize" />
                                                    <telerik:EditorTool Name="Undo" />
                                                    <telerik:EditorTool Name="Redo" />
                                                    <telerik:EditorTool Name="AjaxSpellCheck" />
                                                </telerik:EditorToolGroup>
                                            </Tools>
                                        </telerik:RadEditor>
                                    </div>
                                    <div style="width:100%; float:left; margin:10px 5px 10px 5px;">
                                        <telerik:RadButton ID="btnUpdateTerm" runat="server" Text="Update Term" UseSubmitBehavior="false" Width="380px" Skin="BlackMetroTouch"></telerik:RadButton>
                                    </div>
                               </div>
                            </telerik:RadAjaxPanel>
                        </div>
               </div>
              
                    <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                       
                        <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                            Optional Terms
                        </div> 
                        <div style="margin:10px;">   
                            <div style="width:100%; font-size:small; ">
                               <div style="width:100%; height:40px; margin-top:10px;">
                                    Select the date span below, and then click on &#39;Add Term.&#39; The beginning and end date may be edited after the initial add. 
                                    <b>Delete the old PVC or DIP term to avoid confusion.</b>
                               </div> 
                               <div style="width:100%; height:40px;">
                                    <i>PVC and HDPE pipe must be ordered by MM/DD/YYYY and ship complete on or before MM/DD/YYYY. </i>
                               </div>
                            
                            </div>
                        
                            <div style="width:100%;margin-left:30px; margin-bottom:20px;">
                                <div style="width:300px;float:left;">
                                    <telerik:RadComboBox ID="comboBoxTerm1OrderBy" runat="server" Width="75px" DropDownWidth="75px"  Label="Order By (Days from today):" LabelCssClass="myLabelCss">
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="7 Days" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="14 Days" Value="14"  />
                                            <telerik:RadComboBoxItem runat="server" Text="21 Days" Value="21" />
                                            <telerik:RadComboBoxItem runat="server" Text="30 Days" Value="30" Selected="True" />
                                            <telerik:RadComboBoxItem runat="server" Text="60 Days" Value="60" />
                                            <telerik:RadComboBoxItem runat="server" Text="90 Days" Value="90" />
                                            <telerik:RadComboBoxItem runat="server" Text="120 Days" Value="120" />
                                            <telerik:RadComboBoxItem runat="server" Text="150 Days" Value="150" />
                                            <telerik:RadComboBoxItem runat="server" Text="180 Days" Value="180" />
                                        </Items>
                                     </telerik:RadComboBox>
                                 </div>
                                <div style="width:300px;float:left;">
                                    <telerik:RadComboBox ID="comboBoxTerm1Days" runat="server" Width="75px" DropDownWidth="75px" Label="Ship By (Days from today):" LabelCssClass="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="7 Days" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="14 Days" Value="14" />
                                            <telerik:RadComboBoxItem runat="server" Text="21 Days" Value="21" />
                                            <telerik:RadComboBoxItem runat="server" Text="30 Days" Value="30"  />
                                            <telerik:RadComboBoxItem runat="server" Text="60 Days" Value="60" Selected="True"/>
                                            <telerik:RadComboBoxItem runat="server" Text="90 Days" Value="90" />
                                            <telerik:RadComboBoxItem runat="server" Text="120 Days" Value="120" />
                                            <telerik:RadComboBoxItem runat="server" Text="150 Days" Value="150" />
                                            <telerik:RadComboBoxItem runat="server" Text="180 Days" Value="180" />
                                        </Items>
                                     </telerik:RadComboBox>
                                 </div>
                                 <div style="width:175px; float:left;">
                                        <telerik:RadButton ID="btnAddTerm1" runat="server" Text="Add Term" Width="150px" AutoPostBack="true" Skin="BlackMetroTouch">
                                        </telerik:RadButton>
                                </div>
                            </div>
                        
                            <div style="width:1000px; float:left; font-size:small; margin-top:20px; height:40px;">
                               <i>Ductile pipe must be ordered by MM/DD/YYYY and ship complete on or before MM/DD/YYYY. </i>
                            </div>
                            <div style="width:100%; margin-left:30px; margin-bottom:20px;">
                                <div style="width:300px;float:left;">
                                    <telerik:RadComboBox ID="comboBoxTerm2OrderBy" runat="server" Width="75px" Label="Order By (Days from today):" DropDownWidth="75px" LabelCssClass="myLabelCss">
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="7 Days" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="14 Days" Value="14"  />
                                            <telerik:RadComboBoxItem runat="server" Text="21 Days" Value="21" />
                                            <telerik:RadComboBoxItem runat="server" Text="30 Days" Value="30" Selected="True" />
                                            <telerik:RadComboBoxItem runat="server" Text="60 Days" Value="60" />
                                            <telerik:RadComboBoxItem runat="server" Text="90 Days" Value="90" />
                                        </Items>
                                    </telerik:RadComboBox>
                                 </div>
                                <div style="width:300px; float:left;">
                                
                                    <telerik:RadComboBox ID="comboBoxTerm2Days" runat="server" Width="75px" Label="Ship By (Days from today):" DropDownWidth="75px" LabelCssClass="myLabelCss">
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="7 Days" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="14 Days" Value="14"  />
                                            <telerik:RadComboBoxItem runat="server" Text="21 Days" Value="21" />
                                            <telerik:RadComboBoxItem runat="server" Text="30 Days" Value="30"  />
                                            <telerik:RadComboBoxItem runat="server" Text="60 Days" Value="60" Selected="True"/>
                                            <telerik:RadComboBoxItem runat="server" Text="90 Days" Value="90" />
                                        </Items>
                                    </telerik:RadComboBox>
                                 
                                </div>
                                <div style="width:175px; float:left;margin-bottom:20px;">      
                                    <telerik:RadButton ID="btnAddTerm2" runat="server" Text="Add Term" Width="150px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>

                        
        </telerik:RadPageView>
   
        <telerik:RadPageView runat="server" ID="Pricing" Width="1800px">
            <div id="divPricingPageNotes" style="width:1800px; height:25px; padding:5px; vertical-align:middle;">
              <label id="lblPricingPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes - Hover over this text to see instructions for this page</label> 
                    <telerik:RadToolTip ID="RadToolTipPricingInformation" runat="server" RelativeTo="Element" Width="700px" Title="Pricing Page Notes" 
                                Height="50px" TargetControlID="lblPricingPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade">
                    </telerik:RadToolTip>
            </div>
            <div style="width:1800px; height:60px; margin:5px 0px 10px 10px; vertical-align:middle; ">
                    <div style="width:450px;float:left; ">    
                        <telerik:RadGrid ID="grdQuoteStats" runat="server" Width="446px" CellSpacing="0" DataSourceID="SqlDS_grdQuoteStats" GridLines="None">   
                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdQuoteStats" CommandItemDisplay="None" BorderColor="Green" BorderWidth="2px">
                                        <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                        
                                        <HeaderStyle BackColor="Green" ForeColor="White" Font-Bold="true" BorderStyle="None" />
                                        <ItemStyle borderstyle="None" Font-Bold="true" />
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="ExtendedPrice" DataFormatString="{0:c2}" 
                                                DataType="System.Decimal" HeaderText="Total Price" ReadOnly="True" UniqueName="ExtendedPrice">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="ExtendedCost" DataFormatString="{0:c2}" 
                                                DataType="System.Decimal" HeaderText="Total Cost" ReadOnly="True" UniqueName="ExtendedCost">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="Margin" DataFormatString="{0:c2}" DataType="System.Decimal" 
                                                HeaderText="Margin" ReadOnly="True" UniqueName="Margin">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="MarginPct" DataFormatString="{0:p1}" DataType="System.Decimal" 
                                                HeaderText="Margin Pct" readonly="true" UniqueName="MarginPct" >
                                            </telerik:GridBoundColumn>
                                        </Columns>
                                </MasterTableView>
                        </telerik:RadGrid>
            
                        <asp:SqlDataSource ID="SqlDS_grdQuoteStats" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspQuotePricingGetTotals" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnQuoteID" Name="QuoteID" PropertyName="Value" Type="Int64" />
                               
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:350px; float:left; margin:0px 0px 0px 10px;  padding: 10px 10px 0px 10px; height:55px;">
                        <div style="width:245px; float:left; margin-right:20px;">
                            <telerik:RadNumericTextBox ID="editScaling" runat="server" LabelCssClass="myLabelCss" 
                                Label="Unit Price Scaling (+/- .50):" Width="240px" LabelWidth="175px" height="20px"
                                MaxValue=".50" MinValue="-.50" AllowOutOfRangeAutoCorrect="true" ShowSpinButtons="False"  >
                                <IncrementSettings InterceptMouseWheel="true" Step=".005" />
                                <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                <NegativeStyle Font-Italic="true" />
                                <NumberFormat DecimalDigits="3" />
                                

                            </telerik:RadNumericTextBox>
                        </div>
                        <div style="width:80px; float:left;">  
                                <telerik:RadButton ID="btnEditScaling" runat="server" Text="Scale" UseSubmitBehavior="true" Width="60px" Skin="Metro"></telerik:RadButton>
                        </div>
                    </div>
                    <div style="width:800px; float:left; margin:5px 0px 0px 20px;">
                        <div style="width:130px; float:left;">
                            <telerik:RadButton ID="btnGridRefresh1" ButtonType="StandardButton" runat="server" UseSubmitBehavior="false" Width="120px"    
                                Text="Refresh All" OnClick="btnGridRefresh1_Click" Skin="BlackMetroTouch" Font-Size="X-Small" >
                            </telerik:RadButton>
                            <telerik:RadToolTip ID="tipGridRefresh1" runat="server" RelativeTo="Element"  
                                TargetControlID="btnGridRefresh1" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="150px" Height="50px" Skin="MetroTouch"
                                Text="Click to Refresh all Pricing and Costs tables. Use this after changing quantities.">
                            </telerik:RadToolTip>

                        </div>
                        <div style="width:150px; float:left;">
                            <telerik:RadButton ID="lnkQuotePricingReview" ButtonType="LinkButton" Skin="BlackMetroTouch" Font-Size="X-Small" runat="server" Width="120px" Height="30px"
                                Text="Pricing Review Export" Target="_blank">
                            </telerik:RadButton>
                            <telerik:RadToolTip ID="tiplnkQuotePricingReview" runat="server" RelativeTo="Element"  
                                TargetControlID="lnkQuotePricingReview" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="150px" Height="50px" Skin="MetroTouch"
                                Text="Creates a PDF with pricing and cost information for further review.">
                            </telerik:RadToolTip>
                        </div>
                        <div style="width:130px;float:left;">
                            <telerik:RadButton ID="btnUtilityContractUpdate" runat="server" ButtonType="StandardButton" UseSubmitBehavior="false" Width="120px" Font-Size="X-Small"
                                Skin="BlackMetroTouch">       
                            </telerik:RadButton>
                            <telerik:RadToolTip ID="tipbtnUtilityContractUpdate" runat="server" RelativeTo="Element"  
                                TargetControlID="btnUtilityContractUpdate" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="150px" Height="50px" Skin="MetroTouch"
                                Text="Updates product pricing for products that have general contracts, ie. not associated with a Ship To.">
                            </telerik:RadToolTip>
                        </div>
                            
                        <div style="width:130px; float:left;">
                            <telerik:RadButton ID="btnUtilityCostsUpdate2" ButtonType="StandardButton" runat="server" UseSubmitBehavior="false" Width="120px"  
                                Text="Update Stndrd Costs" OnClick="btnUtilityCostsUpdate_Click" Skin="BlackMetroTouch" Font-Size="X-Small">
                            </telerik:RadButton>
                            <telerik:RadToolTip ID="tipbtnUtilityCostsUpdate2" runat="server" RelativeTo="Element"  
                                TargetControlID="btnUtilityCostsUpdate2" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="150px" Height="50px" Skin="MetroTouch"
                                Text="Click to update costs on standard products. Prior cost overrides are preserved.">
                            </telerik:RadToolTip>
                        </div>
                        <div style="width:130px; float:left;">
                            <telerik:RadButton ID="btnTargetMarginUpdate2" ButtonType="StandardButton" runat="server" UseSubmitBehavior="false" Width="120px" 
                                Text="Update Margin Pricing" OnClick="btnTargetMarginUpdate2_Click" Skin="BlackMetroTouch" Font-Size="X-Small">
                            </telerik:RadButton>
                            <telerik:RadToolTip ID="tipbtnTargetMarginUpdate2" runat="server" RelativeTo="Element"  
                                TargetControlID="btnTargetMarginUpdate2" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="150px" Height="50px" Skin="MetroTouch"
                                Text="Updates pricing on Target Margin products after costs have been updated." >
                            </telerik:RadToolTip>
                        </div>
                       
                         <div style="width:130px;float:left;">
                            <telerik:RadButton ID="btnUtilityMatrixUpdate" runat="server" UseSubmitBehavior="false" Width="120px" Skin="BlackMetroTouch" Font-Size="X-Small">
                            </telerik:RadButton>
                            <telerik:RadToolTip ID="tipbtnUtilityMatrixUpdate" runat="server" RelativeTo="Element"  
                                TargetControlID="btnUtilityMatrixUpdate" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="150px" Height="50px" Skin="MetroTouch"
                                Text="Updates all standard products that have not been priced manually, or by contract." >
                            </telerik:RadToolTip>
                         
                         </div>
                          
                    </div>
            </div>
            <div style="width:1780px; height:75px; margin:10px 0px 0px 10px;">
                <div style="width:1100px; float:left; height:25px; margin-bottom:5px;">
                    <div style="width:220px; float:left;">    
                        <telerik:RadTextBox ID="fltrgrdPricing2ProdID" runat="server" Width="180px"  AutoPostBack="true" Label="ProdID:" LabelWidth="50px" ToolTip="Product number contains..."
                            LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:220px; float:left;">    
                        <telerik:RadTextBox ID="fltrgrdPricing2Desc" runat="server" Width="180px" LabelWidth="50px" AutoPostBack="true" Label="Desc:" ToolTip="Description contains..."
                            LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:220px; float:left;">
                        <telerik:RadComboBox ID="fltrgrdPricing2MarginReview" runat="server" AutoPostBack="True" Label="Margin Review:" LabelCssClass="myLabelCss" ResolvedRenderMode="Classic" Width="80px">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Show All" Value="99" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 1 %" Value=".01" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 2 %" Value=".02" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 3 %" Value=".03" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 4 %" Value=".04" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 5 %" Value=".05" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 6 %" Value=".06" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 7 %" Value=".07" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 8 %" Value=".08" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 9 %" Value=".09" />
                                <telerik:RadComboBoxItem runat="server" Text="<= 10 %" Value=".10" />
                            </Items>
                        </telerik:RadComboBox>
                    </div>
                    <div style="width:300px; float:left;">
                        <telerik:RadComboBox ID="fltrgrdPricing2TimeSinceChange" runat="server" AutoPostBack="True" Label="Products Updated:" LabelCssClass="myLabelCss" ResolvedRenderMode="Classic" Width="150px">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Show All" Value="0" />
                                <telerik:RadComboBoxItem runat="server" Text="More than 30 minutes" Value="30" />
                                <telerik:RadComboBoxItem runat="server" Text="More than 1 Hr Ago" Value="60" />
                                <telerik:RadComboBoxItem runat="server" Text="More than 2 Hr Ago" Value="120" />
                                <telerik:RadComboBoxItem runat="server" Text="More than 3 Hrs Ago" Value="180" />
                                <telerik:RadComboBoxItem runat="server" Text="More than 4 Hrs Ago" Value="240" />
                                <telerik:RadComboBoxItem runat="server" Text="More than 5 Hrs Ago" Value="300" />
                                <telerik:RadComboBoxItem runat="server" Text="More than 1 Day Ago" Value="1440" />
                            </Items>
                        </telerik:RadComboBox>
                    </div>
                </div>
                <div style="width:1100px; float:left; height:25px;">
                    <div style="width:220px; float:left; ">
                        <telerik:RadComboBox ID="displayMode" runat="server" ResolvedRenderMode="Classic" AutoPostBack="true" Label="Display Mode:" LabelCssClass="myLabelCss" Width="100px">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Selected="True" Text="Wide Screen" Value="Wide Screen" />
                                <telerik:RadComboBoxItem runat="server" Text="Narrow Screen" Value="Narrow Screen" />
                            </Items>
                        </telerik:RadComboBox>
                    </div>
                    <div style="width:220px; float:left;"> 
                        <telerik:RadComboBox ID="fltrgrdPricing2HowPriced" runat="server" Width="100px" DropDownWidth="120px" AutoPostBack="true" 
                               ResolvedRenderMode="Classic" Label="How Priced:" LabelCssClass="myLabelCss">
                                <Items>
                                    <telerik:RadComboBoxItem Text="All" Value="%" />
                                    <telerik:RadComboBoxItem Text="Contract" Value="Contract" />
                                    <telerik:RadComboBoxItem Text="Manual" Value="Manual" />
                                    <telerik:RadComboBoxItem Text="Matrix" Value="Matrix" />
                                    <telerik:RadComboBoxItem Text="Target Margin" Value="Target Margin" />
                                </Items>
                        </telerik:RadComboBox>
                       <%-- <asp:SqlDataSource ID="SqlDS_fltrgrdPricing2HowPriced" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="SELECT DISTINCT HowPriced FROM Quote_Pricing WHERE QuoteID = @QuoteID ORDER BY HowPriced">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnQuoteID" Name="QuoteID" PropertyName="Value" />
                            </SelectParameters>
                        </asp:SqlDataSource>--%>
                    </div>
                    <div style="width:220px; float:left;"> 
                        <telerik:RadComboBox ID="fltrgrdPricing2PricedBy" runat="server" Width="120px" DropDownWidth="120px" AutoPostBack="true" 
                            DataSourceID="SqlDS_fltrgrdPricing2PricedBy" AppendDataBoundItems="true"
                            ResolvedRenderMode="Classic" DataTextField="PricedBy" DataValueField="PricedBy" Label="Priced By:" LabelCssClass="myLabelCss">
                                <Items>
                                    <telerik:RadComboBoxItem Text="All" Value="%" />
                                </Items>
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_fltrgrdPricing2PricedBy" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="SELECT DISTINCT PricedBy FROM Quote_Pricing WHERE QuoteID = @QuoteID ORDER BY PricedBy">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnQuoteID" Name="QuoteID" PropertyName="Value" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:150px; float:left;">
                        <asp:CheckBox ID="fltrgrdPricing2ZeroCost" Text="$0 Cost Items" runat="server"  CssClass="myLabelCssXSmall" AutoPostBack="true"  />
                    </div>
                    <div style="width:250px; float:left;">
                        <asp:CheckBox ID="fltrgrdPricing2ZeroQty" Text="Include Zero Qty Products?" runat="server"  CssClass="myLabelCssXSmall" AutoPostBack="true"  />
                    </div>

                </div>

            </div>
                                                
            <div style="width:1800px; height:700px; margin:0px;">
  
                <div style="width:1700px; margin:2px 0px 2px 0px; float:left;">
                    <telerik:RadGrid ID="grdPricing2" runat="server"  Height="600px" 
                        ResolvedRenderMode="Classic" AllowFilteringByColumn="False" AllowSorting="True" DataSourceID="SqlDS_grdPricing2" 
                        AllowAutomaticUpdates="True" AllowMultiRowEdit="True" AllowPaging="true" OnPageIndexChanged="grdPricing2_PageIndexChanged"  >
        
                        <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="false" AllowKeyboardNavigation="true" >
                            <Selecting AllowRowSelect="True" />
                            <KeyboardNavigationSettings AllowSubmitOnEnter="True" AllowActiveRowCycle="true" SaveChangesKey="S" CancelChangesKey="C" EnableKeyboardShortcuts="true" />
                            <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="false" />
                            <Resizing AllowColumnResize="true" AllowRowResize="True" />
                            <ClientEvents OnRowDblClick="grdPricing2RowDblClick" />
                        </ClientSettings>
        
                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdPricing2" DataKeyNames="ProdID, UnitCost" ClientDataKeyNames="ProdID, UnitCost" Width="1900px"
                            AllowAutomaticUpdates="true" AllowAutomaticDeletes="false" EditMode="Batch" CommandItemDisplay="Top" PageSize="50">
            
                            <BatchEditingSettings EditType="Cell" OpenEditingEvent="Click" />
                            <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" SaveChangesText="Save Price Changes" CancelChangesText="Cancel Changes" />
           
                            <Columns>
                            <telerik:GridBoundColumn DataField="QuoteProdPriceIndex" DataType="System.Int64" 
                                HeaderText="QuoteProdPriceIndex" ReadOnly="True" SortExpression="QuoteProdPriceIndex" UniqueName="QuoteProdPriceIndex" Visible="False">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="QuoteID" DataType="System.Int64" 
                                HeaderText="QuoteID" ReadOnly="True" SortExpression="QuoteID" UniqueName="QuoteID" Visible="False">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ProjectPartIndex" DataType="System.Int64" FilterControlAltText="Filter ProjectPartIndex column" 
                                HeaderText="ProjectPartIndex" ReadOnly="True" SortExpression="ProjectPartIndex" UniqueName="ProjectPartIndex" Visible="False">
                            </telerik:GridBoundColumn>               
                            <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="true" SortExpression="ProdID" UniqueName="ProdID">
                                <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>               
                            <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="true"
                                SortExpression="Description" UniqueName="Description">
                                <HeaderStyle Width="250px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="250px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                            </telerik:GridBoundColumn>                
                            <telerik:GridBoundColumn DataField="SellUnit" HeaderText=""   SortExpression="SellUnit" UniqueName="SellUnit" ReadOnly="true">
                                <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Qty" DataType="System.Decimal" HeaderText="Qty" SortExpression="Qty" FilterControlWidth="40px" ReadOnly="true"
                                UniqueName="Qty"  DataFormatString="{0:N0}">
                                <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                            </telerik:GridBoundColumn>
                            <telerik:GridTemplateColumn HeaderText="New %" SortExpression="NewMargin" UniqueName="NewMarginPctTemplateColumn" DataField="NewMargin"   >
                                <HeaderStyle Width="60px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" />
                                <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" Font-Size="X-Small" Font-Bold="true" ForeColor="Green" BackColor="#A3E0FF"  />
                                <ItemTemplate>                    
                                            <asp:Label runat="server" ID="lblNewMargin" Font-Size="Small" Text='<%# Eval("NewMargin","{0:P1}") %>'></asp:Label> 
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <span>
                                    <%-- <span style="color:Red; font-weight:bold;">--%>
                                        <telerik:RadNumericTextBox runat="server" width="50px" ID="txtBoxNewMarginUpdate" Type="Percent" MinValue="-1" MaxValue="95" Font-Size="Small"  >
                                            <IncrementSettings Step=".5" InterceptArrowKeys="true" InterceptMouseWheel = "true" />
                                        </telerik:RadNumericTextBox>
                                    </span>
                                </EditItemTemplate>

                            </telerik:GridTemplateColumn>
                            <telerik:GridTemplateColumn HeaderText="New Unit Price" SortExpression="NewUnitPrice" UniqueName="NewUnitPriceTemplateColumn" DataField="NewUnitPrice" >
                                <HeaderStyle Width="80px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" />
                                <ItemStyle Width="80px" VerticalAlign="Top" HorizontalAlign="Right" Font-Size="X-Small" Font-Bold="true" ForeColor="Green" BackColor="#A3E0FF" />

                                <ItemTemplate>                       
                                            <asp:Label runat="server" ID="lblNewUnitPrice" Font-Size="Small" Text='<%# Eval("NewUnitPrice","{0:C2}") %>'></asp:Label>                 
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <span style="color:Red; font-weight:bold;">
                                        <telerik:RadNumericTextBox runat="server" width="40px" ID="txtBoxNewUnitPriceUpdate" Type="Currency" MinValue="-1" Font-Size="Small"  >
                                            <IncrementSettings Step=".5" InterceptArrowKeys="true" InterceptMouseWheel = "true" />
                                        </telerik:RadNumericTextBox>
                                    </span>
                                </EditItemTemplate>

                            </telerik:GridTemplateColumn>  
                            <telerik:GridBoundColumn DataField="Price" DataType="System.Decimal" HeaderText="Current Price" 
                                    ReadOnly="True" SortExpression="Price" UniqueName="Price" DataFormatString="{0:c2}">
                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                            </telerik:GridBoundColumn>                
                            <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" HeaderText="Mrgn %" 
                                    ReadOnly="True" SortExpression="MarginPct" UniqueName="MarginPct" DataFormatString="{0:p1}">
                                <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>              
                            <telerik:GridBoundColumn DataField="HowPriced" HeaderText="How Priced"  ReadOnly="true"
                                    SortExpression="HowPriced" UniqueName="HowPriced">
                                <HeaderStyle Width="80px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="80px" VerticalAlign="Top" HorizontalAlign="Left" />

                            </telerik:GridBoundColumn>            
                            <telerik:GridBoundColumn DataField="UnitCost" DataType="System.Decimal" HeaderText="Unit Cost"  ReadOnly="true"
                                    SortExpression="UnitCost" UniqueName="UnitCost" DataFormatString="{0:c2}">
                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ExtendedPrice" DataType="System.Decimal" HeaderText="Extended Price" FilterControlWidth="40px"
                                ReadOnly="True" SortExpression="ExtendedPrice" UniqueName="ExtendedPrice" DataFormatString="{0:c2}">
                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>                
                            <telerik:GridBoundColumn DataField="ExtendedCost" DataType="System.Decimal" HeaderText="Extended Cost" FilterControlWidth="40px"
                                ReadOnly="True" SortExpression="ExtendedCost" UniqueName="ExtendedCost" DataFormatString="{0:c2}">
                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>               
                            <telerik:GridBoundColumn DataField="Margin" DataType="System.Decimal" HeaderText="Margin" ReadOnly="True"  FilterControlWidth="40px"
                                SortExpression="Margin" UniqueName="Margin" DataFormatString="{0:c2}">
                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="PricedBy" HeaderText="Priced By" FilterControlWidth="40px" ReadOnly="true"
                                SortExpression="PricedBy" UniqueName="PricedBy">
                                <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="PriceUpdated" DataType="System.DateTime" HeaderText="Price Updated" 
                                SortExpression="PriceUpdated" UniqueName="PriceUpdated" ReadOnly="true">
                                <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="CostUpdated" HeaderText="Cost Updated" ReadOnly="True" SortExpression="CostUpdated" UniqueName="CostUpdated" >
                                <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                            </telerik:GridBoundColumn>            
                            <telerik:GridBoundColumn DataField="FlagCostOverride"    
                                HeaderText="Cost OR" ReadOnly="True" SortExpression="FlagCostOverride" UniqueName="FlagCostOverride">
                                <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ReviewMargin" HeaderText="Review Margin"  
                                ReadOnly="True" SortExpression="ReviewMargin" UniqueName="ReviewMargin">
                                <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ReviewCost" HeaderText="Review Cost"  
                                ReadOnly="True" SortExpression="ReviewCost" UniqueName="ReviewCost">
                                <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                            </telerik:GridBoundColumn> 
                            <telerik:GridBoundColumn DataField="RecentUpdate" HeaderText="" 
                                ReadOnly="True" SortExpression="RecentUpdate" UniqueName="RecentUpdate">
                                <HeaderStyle Width="15px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                <ItemStyle Width="15px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                            </telerik:GridBoundColumn> 
                            </Columns>
                        </MasterTableView>
       
                    </telerik:RadGrid>
                </div>

                <asp:SqlDataSource ID="SqlDS_grdPricing2" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="uspQuotePricingGet3" SelectCommandType="StoredProcedure"
                    UpdateCommand="uspQuotePricingUpdateBatch" UpdateCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hdnQuoteID" Name="QuoteID" DefaultValue="0" />
                        <asp:ControlParameter ControlID="hdnTakeOffID" Name="TakeOffID" DefaultValue ="0" />
                        <asp:Parameter Name="ProdID" DefaultValue="" />
                        <asp:Parameter Name="Desc" DefaultValue="" />
                        <asp:Parameter Name="HowPriced" DefaultValue="%" />
                        <asp:Parameter Name="PricedBy" DefaultValue="%" />
                        <asp:Parameter Name="TimeSinceChange" DefaultValue="0" />
                        <asp:Parameter Name="MarginReview" DefaultValue="99" />
                        <asp:Parameter Name="ZeroCost" DefaultValue="0" />
                        <asp:Parameter Name="ZeroQty" DefaultValue="1" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ProdID" Type="String" />
                        <asp:Parameter Name="NewMargin" Type="Double" />
                        <asp:Parameter Name="NewUnitPrice" Type="Double" />
                        <asp:Parameter Name="UnitCost" Type="Double" />
                        <asp:ControlParameter Name="QuoteID" ControlID="hdnQuoteID" PropertyName="Value" DefaultValue="" />
                        <asp:ControlParameter Name="PricedBy" ControlID="hdnModifiedBy" PropertyName="Value" DefaultValue="" />
                    </UpdateParameters>
                </asp:SqlDataSource>
   
            </div>
        </telerik:RadPageView>
                
        <telerik:RadPageView runat="server" ID="CopyQuotePricing">
            <div style="width:100%; height:100px; margin-top:5px; vertical-align:middle;">
                <div style="width:1100px;float:left; border:2px solid #4c68a2;"> 
                    <div style="width:100%; height:25px; color:White; background-color: #4c68a2; font-weight:bold; vertical-align:middle;font-size:medium;">
                        Copying Prior Quote Pricing
                    </div>
                    <div style="width:95%; float:left; font-size:small; margin: 3px;">
                        Please use caution when using this functionality to update your current quote with pricing from a prior quote. Costs and market pricing are changing constantly, so the older the quote the higher
                        the probability for bad pricing. Copying pricing from premium customers for other customers is also discouraged without approval from your branch manager or Dave Wickett.
                        <br /><br />
                        ** Pricing copied is not scaled. **
                    </div>
                </div>
        
            </div>
                
                
                
        <div style="width:1104px; height:304px; border: 1px solid green; margin-top:20px;">              
            <div style="width:100%; height:25px; color:White; background-color: Green; font-weight:bold; vertical-align:middle; font-size:medium;">
                    <b>Step 1:</b>  Quote Search and Selection
            </div>
                    
            <div style="height:30px; width:1100px; margin:10px 10px 5px 10px;">
                <div style="width:1100px; height:20px;float:left; margin:0px 0px 0px 0px; vertical-align:middle;">
                    <div style="width:270px; float:left; vertical-align:middle;">
                        <telerik:RadTextBox ID="searchQuProjectName" runat="server" Label="Project Name: " MaxLength="40" Width="250px" LabelWidth="100px" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:270px; float:left; vertical-align:middle;">
                        <telerik:RadTextBox ID="searchQuCustomer" runat="server" Label="Customer: " MaxLength="40" Width="250px" LabelWidth="100px" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div> 
                    <div style="width:270px; float:left; vertical-align:middle;">
                        <telerik:RadTextBox ID="searchQuName" runat="server" Label="Quote Name: " MaxLength="50" Width="250px" LabelWidth="90px" LabelCssClass="myLabelCss" >
                        </telerik:RadTextBox>
                    </div> 
                         

                    <div style="width:140px; float:left; vertical-align:middle;">
                            <telerik:RadButton ID="btnSearchQuotes" runat="server" Text="Search" UseSubmitBehavior="false" Width="120px" Skin="BlackMetroTouch"></telerik:RadButton>
                    </div>

                </div>
                   
            </div>

        <div style="width:1100px; height:250px;float:left;">

            <telerik:RadGrid ID="grdQuoteSearch" runat="server" Width="1100px" Height="225px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_QuoteSearch" 
                    GridLines="None" AllowPaging="true" PageSize="10" >
                        <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                <Selecting AllowRowSelect="true" />
                                <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                     
                        </ClientSettings>
                    <PagerStyle AlwaysVisible ="true" />

                    <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_QuoteSearch" CommandItemDisplay="Top" Width="1100px" DataKeyNames="QuoteID, TakeOffID" ClientDataKeyNames="QuoteID, TakeOffID">
                        <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                     
                        <Columns>
                                                                  
                            <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                <HeaderStyle Width="225px" VerticalAlign="Bottom" HorizontalAlign="Left" Font-Size="X-Small" />
                                <ItemStyle Width="225px" VerticalAlign="Top" HorizontalAlign="Left" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="QuoteName" HeaderText="Quote Name" SortExpression="QuoteName" UniqueName="QuoteName">
                                <HeaderStyle Width="145px" VerticalAlign="Bottom" HorizontalAlign="Left" Font-Size="X-Small" />
                                <ItemStyle Width="145px" VerticalAlign="Top" HorizontalAlign="Left" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project Name" SortExpression="ProjectName" UniqueName="ProjectName">
                                <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" Font-Size="X-Small" />
                                <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ProjectSubTitle" HeaderText="SubTitle" SortExpression="ProjectSubTitle" UniqueName="ProjectSubTitle">
                                <HeaderStyle Width="180px" VerticalAlign="Bottom" HorizontalAlign="Left" Font-Size="X-Small" />
                                <ItemStyle Width="180px" VerticalAlign="Top" HorizontalAlign="Left" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ExtendedPrice" HeaderText="Value" SortExpression="ExtendedPrice" UniqueName="ExtendedPrice" DataFormatString="{0:c0}">
                                <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" Font-Size="X-Small" />
                                <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                                  
                            <telerik:GridBoundColumn DataField="MarginPct" HeaderText="Mgn %" SortExpression="MarginPct" UniqueName="MarginPct" DataFormatString="{0:p1}">
                                <HeaderStyle Width="65px" VerticalAlign="Bottom" HorizontalAlign="Left" Font-Size="X-Small" />
                                <ItemStyle Width="65px" VerticalAlign="Top" HorizontalAlign="Right" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                                 

                            <telerik:GridBoundColumn DataField="BidDate" DataType="System.DateTime" HeaderText="Bid" SortExpression="BidDate" UniqueName="BidDate" DataFormatString="{0: MM/dd/yy}" >
                                <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" Font-Size="X-Small" />
                                <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <%--<telerik:GridBoundColumn DataField="Scaling" HeaderText="Scaling" SortExpression="Scaling" UniqueName="Scaling" DataFormatString="{0:n3}">
                            <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>--%>

                            <telerik:GridBoundColumn DataField="WorkCity" HeaderText="City" SortExpression="WorkCity" UniqueName="WorkCity">
                                <HeaderStyle Width="170px" VerticalAlign="Bottom" HorizontalAlign="Left" Font-Size="X-Small" />
                                <ItemStyle Width="170px" VerticalAlign="Top" HorizontalAlign="Left" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                                 
                                  

                            <telerik:GridBoundColumn DataField="QuoteID" DataType="System.Int64" HeaderText="QuoteID" SortExpression="QuoteID" UniqueName="QuoteID" Visible="False">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="TakeOffID" DataType="System.Int64" HeaderText="TakeOffID" SortExpression="TakeOffID" UniqueName="TakeOffID" Visible="False">
                            </telerik:GridBoundColumn>
                                 
                                  
                        </Columns>
                            
                        <%--<PagerStyle PageSizeControlType="RadComboBox" />--%>
                    </MasterTableView>
                    <%--<PagerStyle PageSizeControlType="RadComboBox" />--%>
                        
            </telerik:RadGrid>


            <asp:SqlDataSource ID="SqlDS_QuoteSearch" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspQuoteSearch" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter Name="ProjectName" ControlID="searchQuProjectName" DefaultValue="zzz" Type="String" />
                        <asp:Parameter Name="Branch" DefaultValue="%" Type="String" />
                        <asp:Parameter Name="ProjectStatus" DefaultValue="%" Type="String" />
                        <asp:ControlParameter Name="CustName" ControlID="searchQuCustomer" DefaultValue="%" Type="String" />
                        <asp:ControlParameter Name="QuoteName" ControlID="searchQuName" DefaultValue="%" Type="String" />
                        <asp:Parameter Name="WorkCity"  DefaultValue="%" Type="String" />
                        <asp:Parameter Name="CreatedBy" DefaultValue="%" Type="String" />
                                
                        <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="State1" Type="String" />
                        <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="State2" Type="String" />
                        <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="State3" Type="String" />
                        <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="State4" Type="String" />
                        <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="State5" Type="String" />
                        <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="State6" Type="String" />
                        <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="State7" Type="String" />
                        <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="State8" Type="String" />
                    </SelectParameters>
            </asp:SqlDataSource>

        </div>
        </div>

        <div style="width:1200px; float:left;">
            <div style="width:604px; height:304px; border: 1px solid green; margin:5px 20px 0px 0px; float:left;">              
                <div style="width:100%; height:25px; color:White; background-color: Green; font-weight:bold; vertical-align:middle; font-size:medium;">
                        <b>Step 2:</b>  Confirm Prices
                </div>
                <div style="width: 100%; margin: 5px 0px 0px 0px;">
                    <telerik:RadGrid ID="grdPricingQuoteCopyConfirm" runat="server" Width="600px" Height="265px" AllowPaging="true" AllowSorting="True" CellSpacing="0" 
                        DataSourceID="SqlDS_grdPricingQuoteCopyConfirm" GridLines="None" PageSize="25" ShowFooter="false"  >
                 
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                <Selecting AllowRowSelect="true" />
                                <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                     
                            </ClientSettings>
                            <PagerStyle AlwaysVisible="true" HorizontalAlign="Left"  />
                            <MasterTableView AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDS_grdPricingQuoteCopyConfirm" Width="600px" CommandItemDisplay="Top" ShowHeadersWhenNoRecords="true">
                                    <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                <Columns>
                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                        <HeaderStyle Width="90px" VerticalAlign="Bottom" />
                                        <ItemStyle Width="90px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                        <HeaderStyle Width="240px" VerticalAlign="Bottom" />
                                        <ItemStyle Width="240px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top"  />
                                    </telerik:GridBoundColumn>
                                            
                                    <telerik:GridBoundColumn DataField="Price" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Price" SortExpression="Price" UniqueName="Price">
                                        <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                        <ItemStyle Width="50px" HorizontalAlign="Right" Font-Size="X-Small" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                           
                                    <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" DataFormatString="{0:P1}" HeaderText="Mgn %" ReadOnly="True" SortExpression="MarginPct" UniqueName="MarginPct">
                                        <HeaderStyle Width="60px" VerticalAlign="Bottom" />
                                        <ItemStyle Width="60px" HorizontalAlign="Right" Font-Size="X-Small" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                            
                                            
                                    <telerik:GridBoundColumn DataField="HowPriced" HeaderText="How Priced" SortExpression="HowPriced" UniqueName="HowPriced">
                                        <HeaderStyle Width="90px" VerticalAlign="Bottom" />
                                        <ItemStyle Width="90px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                    
                                                         
                                </Columns>

                                <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
                            </MasterTableView>

                        <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>

                    </telerik:RadGrid>
                    <asp:SqlDataSource ID="SqlDS_grdPricingQuoteCopyConfirm" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                        SelectCommand="uspQuotePricingGet" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter Name="QuoteID"  Type="Int64" />
                            <asp:Parameter Name="TakeOffID"  Type="Int64" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                            
                </div>
            </div>
            <div style="width:480px; height:100px; border: 1px solid green; margin:5px 0px 0px 0px; float:left;">              
                <div style="width:100%; height:25px; color:White; background-color: Green; font-weight:bold; vertical-align:middle; font-size:medium;">
                        <b>Step 3:</b>  Apply Copy
                </div>
                <div style="width:200px; margin:20px;">
                    <telerik:RadButton ID="btnPricingQuoteCopy" runat="server" Text="Copy Pricing" Skin="Metro" UseSubmitBehavior="false" Width="200px"></telerik:RadButton>
                </div>
                <div style="width:100%; height:40px; margin:5px 0px 0px 5px; font-size: medium; font-weight:bold; color:#4c68a2;">
                    <asp:Label ID="lblQuoteCopySuccess" runat="server"></asp:Label>
                </div>
                        
                    
                    
            </div>
            <div style="width:480px; height:140px; border: 1px solid green; margin:5px 0px 0px 0px; float:left;">              
                <div style="width:100%; height:25px; color:White; background-color: Green; font-weight:bold; vertical-align:middle; font-size:medium;">
                        <b>Step 4 (Optional):</b>  Update Target Margin Prices
                </div>
                <div style="width: 90%; margin:5px; float:left;">
                    The quote copy does not recalculate unit prices on Target Margin items, just the target margin percentage.  Click here to update unit prices to match the Target Margin.
                </div>
                <div style="width:200px; float:left; margin:20px;">
                        <telerik:RadButton ID="btnTargetMarginUpdate3" runat="server" UseSubmitBehavior="false" Width="200px" 
                            Text="Update Target Margin Prices" OnClick="btnTargetMarginUpdate3_Click" Skin="BlackMetroTouch" Font-Size="Small">
                        </telerik:RadButton>
                </div> 
                    
            </div>
                
        </div>

 
                    
        </telerik:RadPageView>

        <telerik:RadPageView ID="Costs" runat="server" Width="1800px">

            <div style="width:100%; margin:10px;">    
   
                <div id="divCostingPageNotes" style="width:100%; height:50px; vertical-align:middle;">
                        <div style="width:150px;float:left;">
                            <label id="lblCostingPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                                <telerik:RadToolTip ID="RadToolTipCostingInformation" runat="server" RelativeTo="Element" Width="700px" Title="Costing Page Notes" 
                                        Height="50px" TargetControlID="lblCostingPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade" >
                                </telerik:RadToolTip>
                        </div>
                        <div style="height:30px;margin:5px 0px 5px 0px;">
                            <div style="width:300px; float:left;">
                                <telerik:RadButton ID="btnGridRefresh2" ButtonType="StandardButton" runat="server" UseSubmitBehavior="false" Width="275px"   
                                    Text="Refresh All Costs and Pricing" OnClick="btnGridRefresh1_Click" Skin="BlackMetroTouch" >
                                </telerik:RadButton>
                                <telerik:RadToolTip ID="tipbtnGridRefresh2" runat="server" RelativeTo="Element"  
                                    TargetControlID="btnGridRefresh2" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="250px" Height="50px" Skin="MetroTouch"
                                    Text="Click to Refresh all Pricing and Costs tables. This only needed after changing quantities on your TakeOff.">
                                </telerik:RadToolTip>
                            </div>
                             
                             <div style="width:300px; float:left;">   
                                <telerik:RadButton ID="btnUtilityCostsUpdate" runat="server" UseSubmitBehavior="false" Width="275px" 
                                    Text="Update Standard Costs" OnClick="btnUtilityCostsUpdate_Click" Skin="BlackMetroTouch">
                                </telerik:RadButton>
                                <telerik:RadToolTip ID="tipbtnUtilityCostsUpdate" runat="server" RelativeTo="Element"  
                                    TargetControlID="btnUtilityCostsUpdate" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="250px" Height="50px" Skin="MetroTouch"
                                    Text="Click to update unit costs on products that have not been manually overridden.  The refesh date appears in the 'Cost Updated' column below.">
                                </telerik:RadToolTip>
                             </div>
                             <div style="width:300px; float:left;">
                                <telerik:RadButton ID="lnkVendorQuoteRequest" ButtonType="LinkButton" Skin="BlackMetroTouch" runat="server" Width="275px" Text="Vendor Quote Request Form"  Target="_blank"></telerik:RadButton>
                                <telerik:RadToolTip ID="tiplnkVendorQuoteRequest" runat="server" RelativeTo="Element"  
                                    TargetControlID="lnkVendorQuoteRequest" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="250px" Height="50px" Skin="MetroTouch"
                                    Text="Click to generate an Excel document that can be used in soliciting vendor quotes.">
                                </telerik:RadToolTip>
                             </div>
                    
                        </div>
                
                </div>
            
                <div style="width:1800px; height:30px;">
                    <div style="width:1600px; float:left; height:25px; margin-bottom:5px;">
                        <div style="width:200px; float:left;">    
                            <telerik:RadTextBox ID="fltrgrdCosting2ProdID" runat="server" Width="180px"  AutoPostBack="true" Label="ProdID:" LabelWidth="50px" ToolTip="Product number contains..."
                                LabelCssClass="myLabelCss">
                            </telerik:RadTextBox>
                        </div>
                        <div style="width:200px; float:left;">    
                            <telerik:RadTextBox ID="fltrgrdCosting2Desc" runat="server" Width="180px" LabelWidth="50px" AutoPostBack="true" Label="Desc:" ToolTip="Description contains..."
                                LabelCssClass="myLabelCss">
                            </telerik:RadTextBox>
                        </div>
                        <div style="width:240px; float:left;">
                            <telerik:RadComboBox ID="fltrgrdCosting2ExtendedCost" runat="server" AutoPostBack="True" Label="Extended Cost:" LabelCssClass="myLabelCss" ResolvedRenderMode="Classic" Width="110px">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="Show All" Value="0" />
                                    <telerik:RadComboBoxItem runat="server" Text=">     $50" Value="50" />
                                    <telerik:RadComboBoxItem runat="server" Text=">    $100" Value="100" />
                                    <telerik:RadComboBoxItem runat="server" Text=">    $200" Value="200" />
                                    <telerik:RadComboBoxItem runat="server" Text=">    $500" Value="500" />
                                    <telerik:RadComboBoxItem runat="server" Text=">  $1,000" Value="1000" />
                                    <telerik:RadComboBoxItem runat="server" Text=">  $2,000" Value="2000" />
                                    <telerik:RadComboBoxItem runat="server" Text=">  $5,000" Value="5000" />
                                    <telerik:RadComboBoxItem runat="server" Text="> $10,000" Value="10000" />
                                    <telerik:RadComboBoxItem runat="server" Text="> $20,000" Value="20000" />
                                    <telerik:RadComboBoxItem runat="server" Text="> $50,000" Value="50000" />
                                    <telerik:RadComboBoxItem runat="server" Text=">$100,000" Value="100000" />
                                </Items>
                            </telerik:RadComboBox>
                        </div>
                        <div style="width:300px; float:left;">
                            <telerik:RadComboBox ID="fltrgrdCosting2TimeSinceChange" runat="server" AutoPostBack="True" Label="Products Updated:" LabelCssClass="myLabelCss" ResolvedRenderMode="Classic" Width="150px">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="Show All" Value="0" />
                                    <telerik:RadComboBoxItem runat="server" Text="More than 30 minutes" Value="30" />
                                    <telerik:RadComboBoxItem runat="server" Text="More than 1 Hr Ago" Value="60" />
                                    <telerik:RadComboBoxItem runat="server" Text="More than 2 Hr Ago" Value="120" />
                                    <telerik:RadComboBoxItem runat="server" Text="More than 3 Hrs Ago" Value="180" />
                                    <telerik:RadComboBoxItem runat="server" Text="More than 4 Hrs Ago" Value="240" />
                                    <telerik:RadComboBoxItem runat="server" Text="More than 5 Hrs Ago" Value="300" />
                                    <telerik:RadComboBoxItem runat="server" Text="More than 1 Day Ago" Value="1440" />
                                </Items>
                            </telerik:RadComboBox>
                        </div>

                       
                        <div style="width:250px; float:left;"> 
                           <telerik:RadComboBox ID="fltrgrdCosting2CostOverRide" runat="server" AutoPostBack="True" Label="Cost Overrides:" LabelCssClass="myLabelCss" ResolvedRenderMode="Classic" Width="120px">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="Show All Products" Value="%" />
                                    <telerik:RadComboBoxItem runat="server" Text="Modified Cost" Value="1" />
                                    <telerik:RadComboBoxItem runat="server" Text="Unmodified Cost" Value="0" />
                                </Items>
                           </telerik:RadComboBox>
                        </div>
       
                        <div style="width:140px; float:left;">
                            <asp:CheckBox ID="fltrgrdCosting2ZeroCost" Text="$0 Cost Items" runat="server"  CssClass="myLabelCssXSmall" AutoPostBack="true"  />
                        </div>
                        <div style="width:160px; float:left;">
                            <asp:CheckBox ID="fltrgrdCosting2ZeroQty" Text="Include Zero Qty" runat="server"  CssClass="myLabelCssXSmall" AutoPostBack="true"  />
                        </div>
                    </div>

                </div>    
                
                <div style="width:1800px; height:420px; margin:0px;">
  
                        <div style="width:1700px; margin:2px 0px 2px 0px; float:left;">
                            <telerik:RadGrid ID="grdCosting2" runat="server" Height="400px" Width="1600px"
                                ResolvedRenderMode="Classic" AllowFilteringByColumn="False" AllowSorting="True" DataSourceID="SqlDS_grdCosting2" 
                                AllowAutomaticUpdates="False" AllowMultiRowEdit="False" AllowPaging="true" PageSize="50" OnPageIndexChanged="grdCosting2_PageIndexChanged" >
        
                                <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="True" AllowKeyboardNavigation="true" >
                                    <Selecting AllowRowSelect="True" />
                                    <KeyboardNavigationSettings AllowSubmitOnEnter="True" AllowActiveRowCycle="true" SaveChangesKey="S" CancelChangesKey="C" EnableKeyboardShortcuts="true" />
                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                    <ClientEvents OnRowDblClick="grdCosting2RowDblClick" />
                                </ClientSettings>
        
                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdCosting2" DataKeyNames="ProjectPartIndex,ProdID" ClientDataKeyNames="ProjectPartIndex,ProdID" 
                                    Width="1800px" CommandItemDisplay="None">

                                    <Columns>

                                        <telerik:GridBoundColumn DataField="ProjectPartIndex" DataType="System.Int64" FilterControlAltText="Filter ProjectPartIndex column" 
                                            HeaderText="ProjectPartIndex" ReadOnly="True" SortExpression="ProjectPartIndex" UniqueName="ProjectPartIndex" Visible="False">
                                        </telerik:GridBoundColumn>               
                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="true" SortExpression="ProdID" UniqueName="ProdID">
                                            <HeaderStyle Width="110px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="110px" VerticalAlign="Top" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>               
                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="true"
                                            SortExpression="Description" UniqueName="Description">
                                            <HeaderStyle Width="300px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="300px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                        </telerik:GridBoundColumn>                
                    
                                        <telerik:GridBoundColumn DataField="Qty" DataType="System.Decimal" HeaderText="Qty" SortExpression="Qty" FilterControlWidth="40px" ReadOnly="true"
                                            UniqueName="Qty"  DataFormatString="{0:N0}">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="right" />
                                        </telerik:GridBoundColumn>
    
                                        <telerik:GridBoundColumn DataField="UnitCost" DataType="System.Decimal" HeaderText="Unit Cost"  ReadOnly="true"
                                                SortExpression="UnitCost" UniqueName="UnitCost" DataFormatString="{0:c2}">
                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                   
                                        <telerik:GridBoundColumn DataField="ExtendedCost" DataType="System.Decimal" HeaderText="Extended Cost" FilterControlWidth="40px"
                                            ReadOnly="True" SortExpression="ExtendedCost" UniqueName="ExtendedCost" DataFormatString="{0:c2}">
                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>  
                    
                                        <%--<telerik:GridBoundColumn DataField="ReplCost" DataType="System.Decimal" HeaderText="Repl"  ReadOnly="true"
                                                SortExpression="ReplCost" UniqueName="ReplCost" DataFormatString="{0:c2}">
                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>--%>
                                        <telerik:GridBoundColumn DataField="LastCost" DataType="System.Decimal" HeaderText="Last"  ReadOnly="true"
                                                SortExpression="LastCost" UniqueName="LastCost" DataFormatString="{0:c2}">
                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="AvgCost" DataType="System.Decimal" HeaderText="Avg"  ReadOnly="true"
                                                SortExpression="AvgCost" UniqueName="AvgCost" DataFormatString="{0:c2}">
                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="AddOnCost" DataType="System.Decimal" HeaderText="AddOn"  ReadOnly="true"
                                                SortExpression="AddOnCost" UniqueName="AddOnCost" DataFormatString="{0:c2}">
                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="CostDate" HeaderText="Cost Date" ReadOnly="True" SortExpression="CostDate" UniqueName="CostDate" >
                                            <HeaderStyle Width="80px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="80px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="CostUpdated" HeaderText="Cost Updated" ReadOnly="True" SortExpression="CostUpdated" UniqueName="CostUpdated" >
                                            <HeaderStyle Width="80px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="80px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                                        </telerik:GridBoundColumn>            
                                        <telerik:GridBoundColumn DataField="FlagCostOverride" AllowFiltering="false"  
                                            HeaderText="Cost OR" ReadOnly="True" SortExpression="FlagCostOverride" UniqueName="FlagCostOverride">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="ReviewCost" HeaderText="RC" AllowFiltering="false"
                                            ReadOnly="True" SortExpression="ReviewCost" UniqueName="ReviewCost">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                                        </telerik:GridBoundColumn> 
                                        <telerik:GridBoundColumn DataField="ListPrice" DataType="System.Decimal" HeaderText="List"  ReadOnly="true"
                                                SortExpression="ListPrice" UniqueName="ListPrice" DataFormatString="{0:c2}">
                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <%--<telerik:GridBoundColumn DataField="RecentUpdate" HeaderText="" AllowFiltering="false"
                                            ReadOnly="True" SortExpression="RecentUpdate" UniqueName="RecentUpdate">
                                            <HeaderStyle Width="15px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="15px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                                        </telerik:GridBoundColumn> --%>
                                    </Columns>
                                </MasterTableView>
       
                            </telerik:RadGrid>
                        </div>
       

                        <asp:SqlDataSource ID="SqlDS_grdCosting2" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspProjectCostsGet2" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnJobID" Name="JobID" DefaultValue="0" />
                                <asp:ControlParameter ControlID="hdnTakeOffID" Name="TakeOffID" DefaultValue ="0" />
                                <asp:Parameter Name="ProdID" DefaultValue="" />
                                <asp:Parameter Name="Desc" DefaultValue="" />
                                <asp:Parameter Name="ZeroCost" DefaultValue="0" />
                                <asp:Parameter Name="ZeroQty" DefaultValue="1" />
                                <asp:Parameter Name="ExtendedCostMin" DefaultValue="0" />
                                <asp:Parameter Name="CostOverRide" DefaultValue="%" />
                                <asp:Parameter Name="TimeSinceChange" DefaultValue="0" />          
                            </SelectParameters>
        
                        </asp:SqlDataSource>

                </div>
                
                <div style="width:1600px; height:270px; float:left; border:2px solid #4c68a2;">
                            <asp:Panel ID="pnlEditCosting" runat="server" Width="1600px" Height="350px" >
                                    <div style="width:1600px;">
                                        <div style="width:100%; float:left; height:25px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                                            <asp:Label ID="lblCostingProdID" runat="server" ></asp:Label>
                                        </div>
                                        <div style="width:1600px; float:left;margin-right:10px; ">
                
                                            <div style="width:100%; margin:10px; float:left;"> 
                                                <div style="width:200px; float:left;">   
                                                    <telerik:RadNumericTextBox ID="editCostingNewCost" runat="server" Label="New Cost ($):" Width="180px" LabelWidth="100px" LabelCssClass="myLabelCss">
                                                    <NumberFormat DecimalDigits="3" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                                <div style="width:270px; float:left;"> 
                                                    <telerik:RadButton ID="btnEditCostingUpdateCost" runat="server" Text="Update Cost and Comment" UseSubmitBehavior="true" Width="250px" Skin="BlackMetroTouch"></telerik:RadButton>
                                                </div>
                                                <div style="margin-bottom:10px;">
                                                    <telerik:RadTextBox ID="editCostingCommentAdd" runat="server" InputType="Text" Label="Add Comment:" LabelWidth="100px" Width="850px" TextMode="SingleLine" MaxLength="150"
                                                        EmptyMessage="Example: Vendor, Vendor Rep, Date Quoted, Quote #, Details" Wrap="true" Enabled="true" LabelCssClass="myLabelCss" DisabledStyle-ForeColor="#34c68a2">
                                                    </telerik:RadTextBox>                      
                                                </div>
                                            </div>
                                            <div style="width:1600px; margin:10px; float:left; font-size:small; font-weight:bold;">  
                                
                                                <div>
                                                    <telerik:RadTextBox ID="editCostingComment" runat="server" Label="Past Comments:" LabelWidth="110px" Width="1330px" Height="50px" TextMode="MultiLine" Wrap="true" ReadOnly="true" LabelCssClass="myLabelCss" DisabledStyle-ForeColor="#34c68a2" >
                                                    </telerik:RadTextBox>
                                                </div>
                                            </div>  
                                            <div style="width:1600px; margin:10px; float:left; font-size:small; font-weight:bold;">  
                                                <div style="margin-bottom:5px; float:left;">
                                                            <telerik:RadTextBox ID="editProdDesc" runat="server" Label="Description:"  LabelWidth="110px" Width="1000px" Height="75px" MaxLength="600" 
                                                                TextMode="MultiLine" Wrap="true" Enabled="true" LabelCssClass="myLabelCss">    
                                                            </telerik:RadTextBox>
                                                </div>

                                                <div style="width:220px; float:left; margin:0px 10px 0px 10px;">
                                                        <telerik:RadButton ID="btnProdDescUpdate" runat="server" Text="Update Description" UseSubmitBehavior="true" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                                </div>
                                            </div>
                              
                                        </div>
                


                                    </div>
            
                            </asp:Panel>          
                 
                </div>   
                        
            </div>
            
        
        </telerik:RadPageView>
        
        <telerik:RadPageView ID="CostNotes" runat="server" Width="1100px">
           <div style="margin:10px;">
            
            <div id="div6" style="width:100%; height:20px; vertical-align:middle;">
                     <label id="lblCostNotesPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                     <telerik:RadToolTip ID="RadToolTipCostNotes" runat="server" RelativeTo="Element" Width="700px" Title="General Cost Page Notes" 
                                 Height="50px" TargetControlID="lblCostNotesPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade">
                     </telerik:RadToolTip>
            </div>
                <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                       
                    <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                        Cost Notes
                    </div> 
                    <div style="width:100%; height:400px; margin:10px;">
                        <telerik:RadTextBox ID="txtBoxCostNotes" runat="server" Width="800px" Height="400px" MaxLength="2000" 
                            TextMode="MultiLine" Wrap="true" Enabled="true" LabelCssClass="myLabelCss" EmptyMessage="Example: Vendor, Vendor Rep, Date Quoted, Quote #, Details ">    
                        </telerik:RadTextBox>
                    

                    </div>
                    <div style="width:100%; height:50px; margin:10px;">
                        Tags currently in use: ADS, AFC, Diamond, Ford, GPK, JM, Pac States, Romac, Sensus, Star, Tyler
                    </div>
                    <div style="width:100%;float:left; margin: 10px 0px 10px 10px;">
                        <telerik:RadButton ID="btnCostNotesUpdate" runat="server" UseSubmitBehavior="false" Width="800px" Text="Update Cost Notes" Skin="BlackMetroTouch" ></telerik:RadButton>
                    </div>
                </div>
           
           </div>

        </telerik:RadPageView>

        <telerik:RadPageView ID="BlockCosts" runat="server" Width="1100px">
          <div style="width:100%; height:700px; margin:10px;"> 
            
            <div id="div7" style="width:100%; height:20px; vertical-align:middle;">
                     <label id="lblBlockCostPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                         <telerik:RadToolTip ID="RadToolTipBlockCosts" runat="server" RelativeTo="Element" Width="700px" Title="Block Cost Page Notes" 
                                 Height="50px" TargetControlID="lblBlockCostPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade">
                         </telerik:RadToolTip>
            </div>
                  
            <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2; ">                    
                <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                    Block Cost Selection
                </div>
                <div style="margin:5px; width:100%;">    
                    <div style="width:250px;float:left;">
                        <telerik:RadComboBox ID="comboBoxBookName" runat="server" Width="125px" Label="Book:" LabelCssClass="myLabelCss" DataSourceID="SqlDS_comboBoxBookName" 
                            DataTextField="BookName" DataValueField="BookName" >
                            
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_comboBoxBookName" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="SELECT * FROM [Purchasing_BlockBooks] ORDER BY [BookName]">
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:150px;float:left;">
                        <telerik:RadComboBox ID="comboBoxBlock" runat="server" Width="60px" Label="Block:" LabelCssClass="myLabelCss" DataSourceID="SqlDS_comboBoxBlock" 
                            DataTextField="Block" DataValueField="Block">
                            
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_comboBoxBlock" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="SELECT Purchasing_BlockBooks.BookName, Purchasing_BlockBooks_Costs.Block, COUNT(Purchasing_BlockBooks_Costs.ProdID) AS Expr1 FROM Purchasing_BlockBooks INNER JOIN Purchasing_BlockBooks_Costs ON Purchasing_BlockBooks.BookName = Purchasing_BlockBooks_Costs.BookName GROUP BY Purchasing_BlockBooks_Costs.Block, Purchasing_BlockBooks.BookName HAVING (Purchasing_BlockBooks.BookName = @BookName) ORDER BY Purchasing_BlockBooks_Costs.Block">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="comboBoxBookName" 
                                    DefaultValue="Diamond Plastics" Name="BookName" PropertyName="SelectedValue"  />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:200px;float:left; margin-bottom:5px;">
                        <telerik:RadButton ID="btnBlockCostsPreview" runat="server" UseSubmitBehavior="false" Width="100px" Text="Preview" Skin="Office2010Blue" ></telerik:RadButton>
                    </div>
                </div>
            </div>
                <div style="width:1000px; height:550px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">                    
                    <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                        Preview &amp; Apply
                    </div>
                    <div style="width:620px; height:100%; float:left;">
                        <div style="width:620px; float:left; margin-left:10px; margin-top:5px;">
                            <telerik:RadGrid ID="grdBlockPreview" runat="server" Width="600px" Height="450px" AllowSorting="True" CellSpacing="0" pagesize="50"
                                     GridLines="None" DataSourceID="SqlDS_grdBlockPreview" >
                                <ClientSettings>
                                    <Scrolling AllowScroll="true" UseStaticHeaders="true" />
                                </ClientSettings>
                            
                                <MasterTableView AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDS_grdBlockPreview" DataKeyNames="ProdID"  >
                                            
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                            <HeaderStyle Width="90px" VerticalAlign="Bottom" />
                                            <ItemStyle Width="90px" HorizontalAlign="Left" VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                            <HeaderStyle Width="300px" VerticalAlign="Bottom" />
                                            <ItemStyle Width="300px" HorizontalAlign="Left"  VerticalAlign="Top"  />
                                        </telerik:GridBoundColumn>
                                            
                                        <telerik:GridBoundColumn DataField="Block" DataFormatString="{0:n0}" DataType="System.Decimal" HeaderText="Block" SortExpression="Block" UniqueName="Block">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                            <ItemStyle Width="50px" HorizontalAlign="Right"  VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>
                           
                                        <telerik:GridBoundColumn DataField="Cost" DataFormatString="{0:c3}" DataType="System.Decimal" HeaderText="Cost" ReadOnly="True" SortExpression="Cost" 
                                            UniqueName="Cost">
                                            <HeaderStyle Width="60px" VerticalAlign="Bottom" />
                                            <ItemStyle Width="60px" HorizontalAlign="Right"  VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>
      
                                    </Columns>

                               
                                </MasterTableView>
                                <PagerStyle PageSizeControlType="RadDropDownList" Mode="NextPrevAndNumeric"></PagerStyle>
                            </telerik:RadGrid>
                    
                            <asp:SqlDataSource ID="SqlDS_grdBlockPreview" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="SELECT Purchasing_BlockBooks_Costs.ProdID, Purchasing_BlockBooks_Costs.Block, Purchasing_BlockBooks_Costs.Cost, P.Description
                                                    FROM Purchasing_BlockBooks_Costs INNER JOIN
                                                                          P ON Purchasing_BlockBooks_Costs.ProdID = P.ProdID
                                                    WHERE (Purchasing_BlockBooks_Costs.BookName = @BookName) AND (Purchasing_BlockBooks_Costs.Block = @Block)
                                                    ORDER BY ProdID">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="comboBoxBookName" DefaultValue="" Name="BookName" PropertyName="SelectedValue" />
                                        <asp:ControlParameter ControlID="comboBoxBlock" DefaultValue="0" Name="Block" PropertyName="SelectedValue" />
                                    </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        <div style="width:600px;float:left; margin-top:10px; margin-left:10px;">
                            <telerik:RadButton ID="btnBlockPricingApply" runat="server" UseSubmitBehavior="false" Width="600px" Text="Apply Block Pricing" Skin="BlackMetroTouch" ></telerik:RadButton>
                        </div>
                    </div>
                    <div style="width:300px; height:100%; float:left; margin-top:10px; margin-left:10px; color:#4c68a2;">
                        Please review the products and costs at left.  Clicking the 'Apply Block Pricing' button below will update costs for all project products that appear in the list.  If you add products later, please revisit
                        this block pricing update. 
                    </div>
                </div>
               
          </div>
        </telerik:RadPageView>

        <telerik:RadPageView ID="Taxes" runat="server" Width="1300px">
            <div style="width:100%; margin:10px;">    
   
                    <div id="div5" style="width:100%; height:25px; vertical-align:middle;">
                         <label id="lblTaxesPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                             <telerik:RadToolTip ID="RadToolTipTaxes" runat="server" RelativeTo="Element" Width="700px" Title="Taxing Page Notes" 
                                     Height="50px" TargetControlID="lblTaxesPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade">
                             </telerik:RadToolTip>
                    </div>
                        
                    <div id="divgrdTaxes" style="width:552px; height:652px; float:left; margin-right:40px; ">
                        <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                            Products &amp; Taxing Setup
                        </div>

                        <div style="width:100%; float:left; margin-left:20px; margin-top:10px;">
                            <div style="width:200px; float:left;">
                                    <telerik:RadButton ID="btnTaxProductsLoad" runat="server" Text="Load Product List" UseSubmitBehavior="false" Width="500px" Skin="BlackMetroTouch"></telerik:RadButton>
                            </div>
                        </div>

                        <telerik:RadGrid ID="grdTaxes" runat="server" Width="550px" Height="630px" AllowPaging="True" AllowSorting="True" CellSpacing="0" 
                            DataSourceID="SqlDS_grdTaxes" GridLines="None" PageSize="25" ShowFooter="false" OnSelectedIndexChanged="grdTaxes_SelectedIndexChanged" >
                 
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                </ClientSettings>
                                <PagerStyle AlwaysVisible="true" HorizontalAlign="Left" />
                                <MasterTableView AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDS_grdTaxes" DataKeyNames="ProdID" CommandItemDisplay="Top">
                                        <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID" >
                                            <HeaderStyle Width="90px" VerticalAlign="Bottom" />
                                            <ItemStyle Width="90px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                            <HeaderStyle Width="270px" VerticalAlign="Bottom" />
                                            <ItemStyle Width="270px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top"  />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="NonTaxType" HeaderText="Taxable?" SortExpression="NonTaxType" UniqueName="NonTaxType">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                            <ItemStyle Width="50px" VerticalAlign="Top" Font-Size="X-Small" HorizontalAlign="Center" />
                                        </telerik:GridBoundColumn>
                                           
                                        <%--<telerik:GridBoundColumn DataField="TaxRate" DataType="System.Decimal" DataFormatString="{0:P2}" HeaderText="Tax Rate" ReadOnly="True" SortExpression="TaxRate" UniqueName="TaxRate">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                            <ItemStyle Width="50px" HorizontalAlign="Right" Font-Size="Small" VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>--%>
                                           
                                    </Columns>

                                </MasterTableView>

                            <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>

                        </telerik:RadGrid>
                        <asp:SqlDataSource ID="SqlDS_grdTaxes" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspQuotePricingGet" SelectCommandType="StoredProcedure" >
                            <SelectParameters>
                                <asp:Parameter Name="QuoteID" Type="Int64" DefaultValue="0" />
                                <asp:Parameter Name="TakeOffID" Type="Int64" DefaultValue="0" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:600px; height:620px; float:left;">    
                        <div style="width:500px;height:75px;float:left;margin-bottom:20px;">
                            <div style="width:500px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                                Quote Default Tax Rate
                            </div>
                            <div style="width:100%; margin:10px 5px 10px 5px;">
                                <div style="width:250px;margin-right:10px;float: left;">
                                    <telerik:RadNumericTextBox ID="txtBoxTaxRateUpdate" runat="server" Label="Tax Rate:" AutoPostBack="false" Type="Percent" 
                                        IncrementSettings-InterceptMouseWheel="true" IncrementSettings-Step=".05" ShowSpinButtons="False" ButtonsPosition="Right"
                                         MinValue="0" MaxValue="50" LabelCssClass="myLabelCss" >
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:200px; float:left;">
                                    <telerik:RadButton ID="btnTaxRateUpdate" runat="server" Text="Update Tax Rate" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>
                            </div>    
                            
                        </div>

                        <div style="width:600px;height:100px;float:left; margin-top:30px;">
                            <div style="width:500px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                                Product Tax Status Override
                            </div>
                            <div style="width:100%; height:20px; vertical-align:middle; color:Red; font-size:medium; font-weight: normal;padding:5px 2px 0px 3px;">
                                <asp:Label ID="lblTaxStatusProdID" runat="server" ></asp:Label>
                            </div>
                            <div style="width:100%; height:25px; vertical-align:middle; margin-top:10px; ">
                                <div style="width:250px;margin-right:10px;float: left;">
                                    <telerik:RadComboBox ID="comboBoxNonTaxType" runat="server" Label="Taxable Type:" LabelCssClass="myLabelCss" Width="120px">
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Value="N" Text="N-NonTaxable"  />
                                            <telerik:RadComboBoxItem runat="server" Value="T" Text="T-Taxable" Selected="true" />
                                        
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                               <div style="width:200px; float:left;">
                                    <telerik:RadButton ID="btnTaxTypeUpdate" runat="server" Text="Update Product Tax Type" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>
                            </div>
                        </div>
                    </div>
               </div>


        </telerik:RadPageView>
        
        <telerik:RadPageView runat="server" ID="AvailTakeOffs">
          
            <div style="width:1300px; height:700px; margin:15px;">    
    
                <div id="div1" style="width:100%; height:20px; vertical-align:middle;">
                     <label id="lblAvailTakeOffsPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                         <telerik:RadToolTip ID="RadToolTipTakeOffs" runat="server" RelativeTo="Element" Width="700px" Title="TakeOff Page Notes" 
                                 TargetControlID="lblAvailTakeOffsPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade" >
                         </telerik:RadToolTip>
                </div>

                <div style="width:1000px; height:125px; float:left;margin-bottom:15px; border:2px solid #4c68a2;">
                    
                       
                        <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                             New TakeOff
                        </div> 
                        <div style="Width:85%;margin:10px; padding:5px; background-color:Orange; color:White; font-size:Medium; font-weight:bold;"> 
                                A new, fresh, TakeOff will be created that does <b style="font-style:italic;">not</b> include Sections, Subsections, or products.
                        </div>
                            
                        <div style="width:100%; margin: 10px 0px 10px 10px; ">
                            <div style="width:450px; float:left;">
                                <telerik:RadTextBox ID="insertTakeOffName" runat="server" MaxLength="20" Label="New Take-Off Name: " Width="300px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                </telerik:RadTextBox>
                            </div>
                            <div style="width:220px; float:left;">
                                <telerik:RadButton ID="btnStartNewTakeOff" runat="server" Text="Create TakeOff" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                            </div>
                        </div>
                    
                </div>
                
                <div style="width:1000px; height:280px; float:left;margin-bottom:15px; border:2px solid #4c68a2;">
                    
                    
                    <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                      TakeOff Name Change &amp; TakeOff Copy
                    </div>
                    
                    
                    <%--<div style="width:100%; margin-bottom:15px;"><h6>TakeOff Name Change and TakeOff Copy</h6></div> --%>
                    
                    <div style="width:1000px; height:210px; margin: 10px 0px 10px 10px; ">
                          <div style="width:1000px; height:30px; margin-bottom:10px;">
                                <div style="width:350px; float:left;">
                                    <telerik:RadTextBox ID="editTakeOffName" runat="server" MaxLength="20" Label="Rename TakeOff: " Width="300px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                    </telerik:RadTextBox>
                                     <telerik:RadToolTip ID="RadToolTipeditTakeOffName" runat="server" RelativeTo="Element"  
                                        TargetControlID="editTakeOffName" ShowEvent="OnMouseOver" Position="BottomRight" Animation="Fade" Width="150px" Height="50px" Skin="MetroTouch"
                                        Text="Select the TakeOff name below that you would like to edit.">
                                     </telerik:RadToolTip>

                                </div>
                                
                                <div style="width:250px; float:left;">
                                    <telerik:RadButton ID="btnUpdateTakeOffName" runat="server" Text="Update Name" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>
                                <div style="width:350px; float:left;">
                                    <telerik:RadButton ID="btnCopySelectedTakeOff" runat="server" Text="Select a TakeOff at left to Copy" UseSubmitBehavior="true" Width="325px" Skin="BlackMetroTouch"></telerik:RadButton>
             
                                </div>
                           
                           
                           </div>
                           <div style="Width:85%;margin:10px; padding:5px; background-color:Orange; color:White; font-size:Medium; font-weight:bold;">
                                Select a takoff below to update the name, or create a copy. 
                           </div> 
                           <div style="width:1000px; height:145px; float:left">
                                <telerik:RadGrid ID="grdTakeOffEdit" runat="server" Width="500px" Height="125px" CellSpacing="0" DataSourceID="SqlDS_TakeOffEdit" 
                                    GridLines="None" AutoGenerateColumns="False" OnSelectedIndexChanged="grdTakeOffEdit_SelectedIndexChanged" >
                            
                                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Selecting AllowRowSelect="true" />
                                        <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                    </ClientSettings>
                         
                                    <MasterTableView AllowAutomaticDeletes="True" DataKeyNames="TakeOffID" ClientDataKeyNames="TakeOffID" DataSourceID="SqlDS_TakeOffEdit">
                         
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="TakeOffName" HeaderText="TakeOff Name" UniqueName="TakeOffName">
                                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="150px" />
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="150px" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="CreatedBy" HeaderText="Created By" UniqueName="CreatedBy">
                                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="200px" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Created" HeaderText="Created" UniqueName="Created" DataType="System.DateTime" DataFormatString="{0:MM/dd/yy}">
                                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="100px" Font-Size="Small" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="TakeOffID" Display="false" DataType="System.Int64" HeaderText="TakeOffID" ReadOnly="True" UniqueName="TakeOffID">
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                                <asp:SqlDataSource ID="SqlDS_TakeOffEdit" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>"  
                                            SelectCommand="uspProjectTakeOffGetAll" SelectCommandType="StoredProcedure" >
                           
                                            <SelectParameters>
                                                    <asp:ControlParameter ControlID="hdnJobID" DefaultValue="0" Name="JobID" PropertyName="Value" Type="Int64" />
                                            </SelectParameters>
                                </asp:SqlDataSource>
                           </div>
                            
                            
                    </div>
                </div>        
                        
                <div style="width:1000px; height:250px; float:left;float:left;margin-bottom:15px; border:2px solid #4c68a2;">
                        <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                          Change TakeOff Assignment
                        </div>
                        <div style="Width:85%;margin:10px; padding:5px; background-color:Orange; color:White; font-size:Medium; font-weight:bold;"> 
                                The current takeoff is selected in the drop box below.  To change the assignment, select one of the options. 
                                <br /> <br />
                                Note:The entire page will refresh when the takeoff assignment is changed. 
                        </div> 

                        <%--<div style="width:100%;"><h6>Change TakeOff</h6></div> --%> 
                              
                            <div style="width:800px; height:50px; margin-left:20px;">
                                <telerik:RadComboBox ID="comboBoxTakeOffAssign" runat="server" Width="700px" Label="TakeOff Assignment:" LabelCssClass="myLabelCss"
                                     DataSourceID="SqlDS_TakeOffs" DataTextField="TODesc" DataValueField="TakeOffID">
                                </telerik:RadComboBox>

                                
                                <asp:SqlDataSource ID="SqlDS_TakeOffs" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>"  
                                            SelectCommand="uspProjectTakeOffGetAll" SelectCommandType="StoredProcedure" >
                                            
                                            <SelectParameters>
                                                    <asp:Parameter Name="JobID" Type="Int64" />
                                            </SelectParameters>

                                           
                                </asp:SqlDataSource>
                            </div>
                            <div style="width:800px; height:30px; margin-left:20px;">
                                <div style="width:250px; float:left;">
                                    <telerik:RadButton ID="btnTakeOffAssignUpdate" runat="server" Text="Change TakeOff Assignment" UseSubmitBehavior="true" Width="400px" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>
                        
                            </div>
                </div>
            </div>
        </telerik:RadPageView>
        <telerik:RadPageView ID="StockProductList" runat="server" Width="1800px" Height="850px">
            <%--<h2>Product List</h2>--%>
           <div style="width:1800px; height:800px; margin:10px;">
                <div style="width:1400px;margin:2px;">
                    <label id="lblProductListPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                        <telerik:RadToolTip ID="RadToolTipProductList" runat="server" RelativeTo="Element" Width="700px" Title="Product List Page Notes" 
                               TargetControlID="lblProductListPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade" >
                        </telerik:RadToolTip>
                </div>
                
                <div style="float: left; width:450px; height:700px; margin-right:5px; margin-top:5px;">     
                    <div style="width:450px; height:300px;">
                        <div style="width:90%; float:left; margin: 0px 0px 3px 0px; padding:5px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                            Stock Grab Lists
                        </div>
                       

                         <div style="float: left; width:450px; height:250px; margin-bottom:10px; "> 
                           
                         
                            <telerik:RadListBox ID="listBoxStockGrabList" runat="server"  DataSourceID="SqlDS_StockGrabList" 
                                DataKeyField="GrabListID" DataValueField="GrabListID" DataTextField="GrabListName"
                                AutoPostBack="true" AllowAutomaticUpdates="true" AllowDelete="false" SelectionMode="Single" 
                                Width="450px" Height="250px" >
        
                            </telerik:RadListBox>

                            <asp:SqlDataSource ID="SqlDS_StockGrabList" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspTakeOffGrabListStockGet" SelectCommandType="StoredProcedure">
        
                                <SelectParameters>
                                    <asp:Parameter Name="Status"  DefaultValue="Active" />
                                    <asp:ControlParameter ControlID="hdnWhseID" Name="WhseID" PropertyName="Value" Type="String" DefaultValue="0" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                    <div style="width:450px; height:400px;">    
                       <div style="width:90%; float:left; margin: 0px 0px 3px 0px; padding:5px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                            Stock Search
                       </div>

                        <div style="width:450px; height:70px; "> 
                                <div style="float:left; width:250px;">    
                                    <telerik:RadTextBox ID="txtStockGrabListProdIDSearch" runat="server" Label="Number Contains:" Width="240px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                    </telerik:RadTextBox>
                                </div>
                                <div style="float:left; width: 180px; margin-right:20px;"> 
                                   <div style="width:90px; float:left;">
                                        <telerik:RadButton ID="btnStockGrabListSearch" runat="server" Text="Search" Width="80px"  AutoPostBack="true" OnClick="btnStockSearch_Click"></telerik:RadButton>
                                   </div> 
                                   <div style="width:90px; float:left;">
                                        <telerik:RadButton ID="btnStockGrabListSearchClear" runat="server" Text="Clear" Width="80px" AutoPostBack="true"></telerik:RadButton>
                                   </div>
                                </div>
                                
                                <div style="float:left; width: 420px; margin-right:20px; margin-top:5px;"> 
                                    <telerik:RadTextBox ID="txtStockGrabListDescSearch" runat="server" Label="Description Contains:" Width="350px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                    </telerik:RadTextBox>
                                </div>
                
                         </div> 
                            <div style="width:450px; margin-top:5px;">
                                 <telerik:RadListBox ID="listBoxQuicklistStockSearch" runat="server"  DataSourceID="SqlDS_listBoxQuicklistStockSearch" 
                                        DataKeyField="ProdID" DataValueField="ProdID" DataTextField="Description2"
                                        AutoPostBack="true" AllowAutomaticUpdates="true" AllowDelete="false" SelectionMode="Single" 
                                        Width="450px" Height="300px">
        
                                 </telerik:RadListBox>
                               
                
                                <asp:SqlDataSource ID="SqlDS_listBoxQuicklistStockSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspProductSearchSimple" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter Name="ProdID" ControlID = "txtStockGrabListProdIDSearch"  PropertyName="Text" Type="String" />
                                        <asp:ControlParameter Name="Description" ControlID = "txtStockGrabListDescSearch" PropertyName="Text" Type="String" />
                                        <asp:ControlParameter Name="WhseID" ControlID = "hdnWhseID" DefaultValue="" PropertyName="Value" Type="String" />                                                    
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                    </div>
                </div>
                <div style="float: left; width:475px; height:700px; margin-right:5px; margin-top:5px; "> 
                        <div style="width:95%; float:left; margin-bottom:5px; padding:5px; height:20px; background-color: Green; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                            TakeOff Grab List
                        </div>
                       <div style="margin:3px; width:100%; height:630px;">
                            <telerik:RadListBox ID="listBoxTakeOffGrabList" runat="server"  DataSourceID="SqlDS_TakeOffGrabListBuild"  
                               DataKeyField="QuickGrabIndex" DataValueField="QuickGrabIndex" DataTextField="Description2"
                               AutoPostBack="true" AllowAutomaticUpdates="true" AutoPostBackOnTransfer="true" AllowDelete="true" SelectionMode="Single" AutoPostBackOnDelete="true"
                               Width="450px" Height="610px">
                                <ButtonSettings ShowDelete="true" />
                            </telerik:RadListBox>
    
        
                            <asp:SqlDataSource ID="SqlDS_TakeOffGrabListBuild" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspTakeOffGrabListGet" SelectCommandType="StoredProcedure"
                                DeleteCommand="DELETE TakeOff_GrabList WHERE QuickGrabIndex = @QuickGrabIndex" >
                                <SelectParameters>
                                    <asp:ControlParameter Name="TakeOffID" ControlID="hdnTakeOffID" PropertyName="Value" Type="Int64" />
                                </SelectParameters>
                                <DeleteParameters>
                                      <asp:ControlParameter Name="QuickGrabIndex" ControlID="listBoxTakeOffGrabList" Type="Int64" />   
                                </DeleteParameters>
                            </asp:SqlDataSource>
                       </div>
                       <div style="width:475px;; margin:0px 0px 0px 5px;">
                            <telerik:RadButton ID="btnGrabListClear" runat="server" Text="Clear GrabList" UseSubmitBehavior="false" Width="420px" Skin="BlackMetroTouch" OnClick="btnGrabListClear_Click"></telerik:RadButton>
                       </div>
                </div>

                <div style="float: left; width:450px; height:700px; margin-right:5px; margin-top:5px;"> 
                            <div style="width:90%; float:left; margin: 0px 0px 3px 0px; padding:5px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">    
                                Related Products
                            </div>
                            <telerik:RadListBox ID="listBoxStockGrabListRelated" runat="server"  DataSourceID="SqlDS_StockGrabListRelated" 
                                DataKeyField="ProdID" DataValueField="ProdID" DataTextField="Description" OnSelectedIndexChanged="listBoxStockGrabListRelated_SelectedIndexChanged"
                                AutoPostBack="true" AllowDelete="false" 
                                Width="450px" Height="650px">
                                <ButtonSettings ShowTransfer="true" ShowTransferAll="false" Position="Left"  />
                            </telerik:RadListBox>
                            <asp:SqlDataSource ID="SqlDS_StockGrabListRelated" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspTakeOffRelatedProductsGet" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter Name="QuickGrabIndex" ControlID="listBoxTakeOffGrabList" Type="int64" />
                                    <asp:ControlParameter Name="WhseID" ControlID = "hdnWhseID" DefaultValue="" PropertyName="Value" Type="String" />

                                </SelectParameters>
                            </asp:SqlDataSource>

                </div>
                

           </div>
        </telerik:RadPageView>
        

        <telerik:RadPageView ID="NonStockProductList" runat="server" >

             <div style="width:1000px;margin-top:10px; height:20px; vertical-align:middle;">
                    <label id="lblNonStockListPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                        <telerik:RadToolTip ID="RadToolTipNonStockList" runat="server" RelativeTo="Element" Width="500px" Title="NonStock Product List Page Notes" 
                              Height="50px" TargetControlID="lblNonStockListPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade" >
                        </telerik:RadToolTip>
             </div>
            
          <div style="width:1300px; margin:10px;">

            <div style="width:1300px; float:left; margin-bottom:15px; ">  
                <div style="width:1300px; margin-bottom:10px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                    Nonstock Products
                </div>
                <div style="width:1300px;">
                    <telerik:RadGrid ID="grdNonStockListing" runat="server" Width="1000px" Height="300px"
                                DataSourceID="SqlDS_TakeOffNonStock" AllowPaging="False" AllowSorting="True" CellSpacing="0" GridLines="None">
                   
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                            <Selecting AllowRowSelect="true" />
                                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                </ClientSettings>
                  
                   
                         <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProjectPartIndex" DataSourceID="SqlDS_listBoxTakeOffNonStock" CommandItemDisplay="Top">
                                <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                <Columns>
                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                        <HeaderStyle Width="130px" />
                                        <ItemStyle Width="130px" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                                        <HeaderStyle Width="570px" />
                                        <ItemStyle Width="570px" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="UnitCost" HeaderText="Unit Cost" ReadOnly="True" SortExpression="UnitCost" UniqueName="UnitCost" DataType="System.Decimal" DataFormatString="{0:C3}">
                                        <HeaderStyle Width="90px" />
                                        <ItemStyle Width="90px" VerticalAlign="Top" HorizontalAlign="Right" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="SellUnit" HeaderText="Sell Unit" ReadOnly="True" SortExpression="SellUnit" UniqueName="SellUnit">
                                        <HeaderStyle Width="70px" />
                                        <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Left" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ProjectPartIndex" Visible="False" DataType="System.Int64" HeaderText="ProjectPartIndex" ReadOnly="True" SortExpression="ProjectPartIndex" UniqueName="ProjectPartIndex">
                                    </telerik:GridBoundColumn>
                                </Columns>
                      
                                <PagerStyle PageSizeControlType="RadComboBox" />
                            </MasterTableView>
                                <PagerStyle PageSizeControlType="RadComboBox" />
                   
                    </telerik:RadGrid>
                </div>
                <asp:SqlDataSource ID="SqlDS_TakeOffNonStock" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                        SelectCommand="uspProjectNonStockGetList" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter Name="TakeOffID" ControlID = "hdnTakeOffID"  PropertyName="Value" Type="Int64" />                                                   
                     </SelectParameters>
                </asp:SqlDataSource>
    
            </div>
            <div style="width:1300px;float: left;">
                <telerik:RadTabStrip ID="RadTabStripNonStocks" runat="server" MultiPageID="RadMultiPage2" Width="1300px" Skin="MetroTouch" >
                    <Tabs>
                        <telerik:RadTab runat="server" Text="Add" PageViewID="AddNonStock" TabIndex="0" Selected="true" />
                        <telerik:RadTab runat="server" Text="Edit" PageViewID="EditNonStock" TabIndex="1" />
                    </Tabs>
                </telerik:RadTabStrip>
            </div>
            <div style="width:100%;float: left;">
                <telerik:RadMultiPage ID="RadMultiPage2" runat="server" Width="1300px" SelectedIndex="0">
                    <telerik:RadPageView ID="AddNonStock" runat="server">
                       <div style="width:1100px; height:500px;">
                          <asp:Panel ID="pnlInsertNonStock" runat="server">  

                                    <div style="width:650px; height:450px; float:left; ">
                                        <div style="width:100%; margin:10px;">
                                             <div style="width:270px; float:left;">   
                                                <telerik:RadTextBox ID="nsInsertProdID" runat="server" AutoPostBack="true" CausesValidation="true" MaxLength="50" Label="Product Number:" LabelWidth="120px" Width="250px" InputType="Text" LabelCssClass="myLabelCss">
                                                </telerik:RadTextBox>
                                                 
                                             </div>
                                             <div>
                                               
                                                 <asp:Label ID="lblnsInsertProdIDdupWarn" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Small" ></asp:Label>
                                             </div>
                                        </div>
                                        <div style="width:100%; margin:10px;">
                                            <telerik:RadTextBox ID="nsInsertDescription" runat="server" Label="Description:" InputType="Text"  LabelWidth="100px" Width="600px" Height="125px" MaxLength="600" 
                                                    TextMode="MultiLine" Wrap="true" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>

                                        </div>
                                        <div style="width:100%; margin:10px;">
            
                                            <telerik:RadComboBox ID="nsInsertSellUnit" runat="server" Label="Sell Unit" Width="100px" LabelCssClass="myLabelCss">
                                                <Items>
                                                    <telerik:RadComboBoxItem runat="server" Text="EA" Value="EA" />
                                                    <telerik:RadComboBoxItem runat="server" Text="FT" Value="FT" />
                                                    <telerik:RadComboBoxItem runat="server" Text="SQ YD" Value="SQ YD" />
                                                    <telerik:RadComboBoxItem runat="server" Text="ROLL" Value="ROLL" />
                                                    <telerik:RadComboBoxItem runat="server" Text="GAL" Value="GAL" />
                                                    <telerik:RadComboBoxItem runat="server" Text="PINT" Value="PINT" />
                                                    <telerik:RadComboBoxItem runat="server" Text="QT" Value="QT" />
                                                    <telerik:RadComboBoxItem runat="server" Text="PAIR" Value="PAIR" />
                                                    <telerik:RadComboBoxItem runat="server" Text="BAG" Value="BAG" />
                                                    <telerik:RadComboBoxItem runat="server" Text="BOX" Value="BOX" />
                                                    <telerik:RadComboBoxItem runat="server" Text="CASE" Value="CASE" />
                                                    <telerik:RadComboBoxItem runat="server" Text="HNDRD" Value="HNDRD" />
                                                    <telerik:RadComboBoxItem runat="server" Text="LOT" Value="LOT" />
                                                </Items>
                                            </telerik:RadComboBox>
                                        </div>
                                        <div style="width:100%; margin:10px;">
                                            <telerik:RadNumericTextBox ID="nsInsertUnitCost" runat="server" Label="Unit Cost ($)" Width="180px" LabelWidth="120px" MinValue="0" MaxValue="9999999" LabelCssClass="myLabelCss">
                                                <NumberFormat DecimalDigits="3" />
                                            </telerik:RadNumericTextBox>
                                        </div>
                                        <div style="width:220px; float:left; margin:15px;">
                                                <telerik:RadButton ID="btnInsertNonStock" runat="server" Text="Add NonStock" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                        </div>
            
                                    </div>
                                    <div style="width:385px; height:200px; float:right; margin-left:10px; margin-top:10px; float:left;">
                                        <div style="width:100%; padding:5px; background-color: Green; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                                            Comments - Not Visible to Customer
                                        </div> 
                                                <telerik:RadTextBox ID="nsInsertComment" runat="server" Width="385px" Height="150px" 
                                                    TextMode="MultiLine" InputType="Text" Wrap="true"  LabelCssClass="myLabelCss" DisabledStyle-ForeColor="#34c68a2" >
                                                </telerik:RadTextBox>
                                        
                                    </div>
        
                          </asp:Panel>
                       </div>
        
                        
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="EditNonStock" runat="server">
        
                    <div style="width:1100px; margin-top:10px;">
                        <asp:Panel ID="pnlEditNonStock" runat="server">
                        
                           <%-- <div style="width:50%;">
                                <h5>Edit NonStock Item</h5>
                            </div>--%>
                           
                                    <div style="width:650px; height:400px; float:left; ">
                                        <div style="width:100%; margin:10px;">
                                            <%--<asp:Label ID="nsEditProdID" runat="server" CssClass="myLabelCss"></asp:Label>--%>
                                            <telerik:RadTextBox ID="nsEditProdID" runat="server" AutoPostBack="false" CausesValidation="false" MaxLength="50" Label="Product Number:" LabelWidth="120px" Width="250px" InputType="Text" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="width:100%; margin:10px;">
                                            <telerik:RadTextBox ID="nsEditDescription" runat="server" Label="Description:" LabelWidth="100px" Width="600px" Height="125px" MaxLength="600" 
                                                            TextMode="MultiLine" Wrap="true" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="width:100%; margin:10px;">
                                            <telerik:RadComboBox ID="nsEditSellUnit" runat="server" Label="Sell Unit:" Width="100px" LabelCssClass="myLabelCss">
                                                <Items>
                                                    <telerik:RadComboBoxItem runat="server" Text="EA" Value="EA" />
                                                    <telerik:RadComboBoxItem runat="server" Text="FT" Value="FT" />
                                                    <telerik:RadComboBoxItem runat="server" Text="ROLL" Value="ROLL" />
                                                    <telerik:RadComboBoxItem runat="server" Text="SQ YD" Value="SQ YD" />
                                                    <telerik:RadComboBoxItem runat="server" Text="GAL" Value="GAL" />
                                                    <telerik:RadComboBoxItem runat="server" Text="PINT" Value="PINT" />
                                                    <telerik:RadComboBoxItem runat="server" Text="QT" Value="QT" />
                                                    <telerik:RadComboBoxItem runat="server" Text="PAIR" Value="PAIR" />
                                                    <telerik:RadComboBoxItem runat="server" Text="BAG" Value="BAG" />
                                                    <telerik:RadComboBoxItem runat="server" Text="BOX" Value="BOX" />
                                                    <telerik:RadComboBoxItem runat="server" Text="CASE" Value="CASE" />
                                                    <telerik:RadComboBoxItem runat="server" Text="HNDRD" Value="HNDRD" />
                                                    <telerik:RadComboBoxItem runat="server" Text="LOT" Value="LOT" />
                                                </Items>
                                            </telerik:RadComboBox>
                                        </div>
                                        <div style="width:100%; margin:10px; font-size:medium; color:Red;">
                                            <asp:Label ID="Label12" runat="server" Text="Update NonStock Costs on the 'Costs' page."></asp:Label>
                                        </div>
                                
                           
                                        <div style="width:220px; float:left; margin:15px;">
                                                <telerik:RadButton ID="btnUpdateNonStock" runat="server" Text="Update NonStock Item" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                        </div>
            
                                     </div>
                            <div style="width:385px; height:200px; float:right; margin-left:10px; float:left;">
                               <div style="width:100%; padding:5px; background-color: Green; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle; ">
                                        Comments - Not Visible to Customer
                               </div> 

                               <telerik:RadTextBox ID="nsEditComment" runat="server" Width="385px" Height="150px" 
                                                    TextMode="MultiLine" InputType="Text" Wrap="true"  LabelCssClass="myLabelCss" DisabledStyle-ForeColor="#34c68a2" >
                               </telerik:RadTextBox>
                                <%--<telerik:RadEditor ID="nsEditComment" runat="server" Height="175px" Width="375px" NewLineMode="Br" ContentFilters="PdfExportFilter">
                                    <tools>
                                        <telerik:EditorToolGroup>
                                             <telerik:EditorTool Name="Cut" />
                                            <telerik:EditorTool Name="Copy" />
                                            <telerik:EditorTool Name="Paste" />
                                           <telerik:EditorTool Name="Bold" />
                                            <telerik:EditorTool Name="Underline" />
                                            <telerik:EditorTool Name="StrikeThrough" />

                                            <telerik:EditorTool Name="Undo" />
                                            <telerik:EditorTool Name="Redo" />
                                            <telerik:EditorTool Name="AjaxSpellCheck" />
                                        </telerik:EditorToolGroup>
                                    </tools>                                                                                                                                                  
                                 </telerik:RadEditor>--%>
                            </div>
        
                          </asp:Panel>
                    </div>
        
                    </telerik:RadPageView>
                </telerik:RadMultiPage>
            </div>
          </div>
          
        </telerik:RadPageView>
        <telerik:RadPageView ID="ProductListCopy" runat="server" Width="1300px" Height="900px">
            <div style="width:1200px; margin:10px;">
                <div style="width:1100px; height:40px; Margin: 5px 0px 10px 0px;" >
                    This utility does <i>not</i> copy costs or takeoffs.  Search for, and select, the project/takeoff combination to copy, then click the 'Copy Product List' button.
                </div>
                <div style="width:1104px; height:382px; Margin: 5px 0px 10px 0px; border: 1px solid green;" >    
                    <div style="width:100%; height:25px; float:left; color:White; background-color: Green; font-weight:bold; vertical-align:middle; font-size:medium;">
                              <b>Step 1:</b>  Select Project/TakeOff Combination to Copy Products From
                    </div>
                    
                    <div style="width:1100px; height:40px; margin-top:5px; float:Left;">
                            <div style="width:265px; float:left;">   
                            <telerik:RadTextBox ID="sProjectName" LabelWidth="110px" Width="245px" Label="Project Name:" EmptyMessage="Project name contains..." 
                                    EmptyMessageStyle-Font-Italic="true" runat="server" LabelCssClass="myLabelCss">
                            </telerik:RadTextBox>
                            </div>
                            <div style="width:245px; float:left;">   
                            <telerik:RadTextBox ID="sProjectSubTitle" LabelWidth="75px" Width="225px" Label="Subtitle:" EmptyMessage="Subtitle name contains..." 
                                    EmptyMessageStyle-Font-Italic="true" runat="server" LabelCssClass="myLabelCss">
                            </telerik:RadTextBox>
                            </div>
                            <div style="width:170px; float:left;">   
                            <telerik:RadTextBox ID="sWorkCity" LabelWidth="50px" Width="150px" Label="City:" 
                                    EmptyMessageStyle-Font-Italic="true" runat="server" LabelCssClass="myLabelCss">
                            </telerik:RadTextBox>
                            </div>
                            <div style="width:170px; float:left;">   
                            <telerik:RadTextBox ID="sFlag" LabelWidth="50px" Width="150px" Label="Flag:" 
                                    EmptyMessageStyle-Font-Italic="true" runat="server" LabelCssClass="myLabelCss">
                            </telerik:RadTextBox>
                            </div>
                            
                            <div style="width:125px; float:left;">
                                <telerik:RadButton ID="btnSearchProjects" runat="server" Text="Search" Width="100px" Skin="BlackMetroTouch" ></telerik:RadButton>
                            </div> 
                          
                    </div>

                    <div style="height:300px; width:1100px; margin-top: 0px;margin-right:10px; float:left;">
                        <telerik:RadGrid ID="grdProductListCopy" runat="server" DataSourceID="SqlDS_grdProductListCopy"  
                                GridLines="None" AllowPaging="True" PageSize="50" AllowSorting="True" Width="1100px" Height="300px" AutoGenerateColumns="False" CellSpacing="0" 
                                    OnSelectedIndexChanged = "grdProductListCopy_SelectedIndexChanged"  >
                                
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                                        <Selecting AllowRowSelect="true" />
                                        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                </ClientSettings>

                                    <MasterTableView DataSourceID="SqlDS_grdProductListCopy" ClientDataKeyNames="JobID, TakeOffID, ProjectName, TakeOffName"  DataKeyNames="JobID, TakeOffID, ProjectName, TakeOffName" PageSize="10" Width="1100px"  >
        
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project" UniqueName="ProjectName">
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="225px" />
                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="225px" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="ProjectSubTitle" HeaderText="SubTitle" UniqueName="ProjectSubTitle">
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="175px" />
                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="175px" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="TakeOffName" HeaderText="TakeOff Name" UniqueName="TakeOffName">
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="100px" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="WorkCity" HeaderText="City" UniqueName="WorkCity">
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="125px" />
                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="125px" />
                                                </telerik:GridBoundColumn>
                                                <%--<telerik:GridBoundColumn DataField="WorkType" HeaderText="WorkType" UniqueName="WorkType">
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="100px" />
                                                </telerik:GridBoundColumn>--%>
                                                <telerik:GridBoundColumn DataField="Flag" HeaderText="Flag" UniqueName="Flag">
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="120px" />
                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="120px" />
                                                </telerik:GridBoundColumn>
                                                <%-- <telerik:GridBoundColumn DataField="BidDate" HeaderText="Bids" 
                                                    UniqueName="BidDate" DataType="System.DateTime" DataFormatString="{0:MM/dd/yy}">
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="100px" Font-Size="Small" />
                                                </telerik:GridBoundColumn>--%>
                   
                                                <telerik:GridBoundColumn DataField="BranchName" HeaderText="BranchName" UniqueName="BranchName" >
                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="150px" />
                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="150px" Font-Size="Small" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="JobID" Display="false" DataType="System.Int64" HeaderText="JobID" ReadOnly="True" UniqueName="JobID">
                                                </telerik:GridBoundColumn> 
                                                <telerik:GridBoundColumn DataField="TakeOffID" Display="false" DataType="System.Int64" HeaderText="TakeOffID" ReadOnly="True" UniqueName="TakeOffID">
                                                </telerik:GridBoundColumn> 
                                                    
                                            </Columns>
                                    </MasterTableView>

                        </telerik:RadGrid>
                       
                        <asp:SqlDataSource ID="SqlDS_grdProductListCopy" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspProjectListingGet2" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:Parameter Name="ProjectName" DefaultValue="zzz" />                           
                                <asp:Parameter Name="ProjectSubTitle" DefaultValue="%" />
                                <asp:Parameter Name="Flag" DefaultValue="%"/>
                                <asp:Parameter Name="WorkCity" DefaultValue="%"/>

                                <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="State1" Type="String" />
                                <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="State2" Type="String" />
                                <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="State3" Type="String" />
                                <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="State4" Type="String" />
                                <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="State5" Type="String" />
                                <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="State6" Type="String" />
                                <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="State7" Type="String" />
                                <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="State8" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                       
                    </div>
                 </div>

                <div style="width:1104px; height:110px; border: 1px solid green;" >    
                    <div style="width:100%; height:25px; float:left; color:White; background-color: Green; font-weight:bold; vertical-align:middle; font-size:medium;">
                                <b>Step 2:</b>  Confirm and Apply
                    </div>
                    <div style="width:100%; height:60px; float:left;">
                        <div style="margin:20px;">
                            <div style="width:700px; height:30px; float:left; font-size:medium; font-weight:bold;">
                                <asp:Label ID="lblProductListCopyConfirm" runat="server"></asp:Label>
                            </div>
                            <div style="width:220px; height:30px; float:left; ">
                                    <telerik:RadButton ID="btnCopyProductList" runat="server" UseSubmitBehavior="false" Width="200px" 
                                        Text="Copy Product List" OnClick="btnCopyProductList_Click" Skin="BlackMetroTouch" Font-Size="Small">
                                    </telerik:RadButton>
                            </div> 
                        </div>
                    </div>
                  
                  
                </div>
            </div>
        </telerik:RadPageView>
        <telerik:RadPageView ID="DefineSections" runat="server" >
           <%-- <h2>Define Sections</h2>--%>
            
             <div id="div3" style="width:1000px; height:15px; margin-top:10px; vertical-align:middle;">
                  <div style="vertical-align:middle; height:20px; ">  
                    <label id="lblDefineSectionsPageNotes" style=" font-weight:bold; font-size:small; color:Red;">Page Notes</label> 
                  </div>
                        <telerik:RadToolTip ID="RadToolTipDefineSections" runat="server" RelativeTo="Element" Width="500px" Title="Define Sections Notes" 
                              Height="50px" TargetControlID="lblDefineSectionsPageNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade" 
                              Text="Our quotes have two levels of structure, called Sections and Subsections <br /><br />1. The structure of the takeoff is displayed on the left half of the page.  Select a section to see it's underlying subsections.<br /><br />2.Add Sections and Subsections using the Action items at right.  A default order is applied. <br /><br />3. Edit titles and sequence by selecting the item to update, and then by using the necessary edit controls.  Changing the order requires changing the order number of all subsequent Sections or Subsections. ">
                        </telerik:RadToolTip>
             </div>
            
            <div style="width:1500px; margin:5px 0px 0px 0px;">
                <div style="width:275px; float:left; border:2px solid #4c68a2; margin-right:10px;">  
                    <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                        Sections
                    </div>
                    <div style="margin:0px;">
                        <telerik:RadGrid ID="grdSections" runat="server" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_grdSections" OnSelectedIndexChanged="grdSections_SelectedIndexChanged" 
                            GridLines="None" Width="271px" Height="650px"  >
                            
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                <Selecting AllowRowSelect="true" />
                                <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                            </ClientSettings>
                            
                            <MasterTableView AutoGenerateColumns="False" DataKeyNames="SectionID" DataSourceID="SqlDS_grdSections" >
                            
                                <Columns>
                                    <telerik:GridBoundColumn DataField="SectionSeq" DataType="System.Int32" HeaderText="Order" SortExpression="SectionSeq" UniqueName="SectionSeq">
                                        <HeaderStyle Width="40px" HorizontalAlign="Center" />
                                        <ItemStyle Width="40px" HorizontalAlign="Center" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="SectionName" HeaderText="Section Name" SortExpression="SectionName" UniqueName="SectionName">
                                        <HeaderStyle Width="231px" HorizontalAlign="Left" />
                                        <ItemStyle Width="231px" HorizontalAlign="Left" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="SectionID" DataType="System.Int64" HeaderText="SectionID" ReadOnly="True" SortExpression="SectionID" UniqueName="SectionID" Visible="False">
                                    </telerik:GridBoundColumn>
                                </Columns>
                             </MasterTableView>
                         </telerik:RadGrid>
                        <asp:SqlDataSource ID="SqlDS_grdSections" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectSectionsGetAll" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnTakeOffID" DefaultValue="0" Name="TakeOffID" PropertyName="Value" Type="Int64" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>

                </div>
                <div style="width:325px; float:left; border:2px solid #4c68a2; margin-right:10px;">  
                      <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">       
                          Subsections
                      </div>
                      <div style="margin:0px;">
                        <telerik:RadGrid ID="grdSubsections" runat="server" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_grdSubsections" OnSelectedIndexChanged="grdSubsections_SelectedIndexChanged" 
                                    GridLines="None" Width="321px" Height="650px" AutoGenerateColumns="false">
                                        
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Selecting AllowRowSelect="true" />
                                        <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                            </ClientSettings>
                                        
                            <MasterTableView AutoGenerateColumns="False" DataKeyNames="SubsectionID" DataSourceID="SqlDS_grdSubsections" EnableViewState="true" NoMasterRecordsText ="Select a section at left/No subsections present" >
                                        
                                <Columns>
                                    <telerik:GridBoundColumn DataField="SubsectionSeq" DataType="System.Int32" HeaderText="Order" SortExpression="SubsectionSeq" UniqueName="SubsectionSeq">
                                        <HeaderStyle Width="40px" HorizontalAlign="Center" />
                                        <ItemStyle Width="40px" HorizontalAlign="Center" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="SubsectionName" HeaderText="Subsection Name" SortExpression="SubsectionName" UniqueName="SubsectionName">
                                        <HeaderStyle Width="281px" HorizontalAlign="Left" />
                                        <ItemStyle Width="281px" HorizontalAlign="Left" />
                                    </telerik:GridBoundColumn>
                                    
                                    <telerik:GridBoundColumn DataField="JobID" DataType="System.Int64" HeaderText="JobID" SortExpression="JobID" UniqueName="JobID" Visible="False">
                                    </telerik:GridBoundColumn>
                                    
                                    <telerik:GridBoundColumn DataField="TakeOffID" DataType="System.Int32" HeaderText="TakeOffID" SortExpression="TakeOffID" UniqueName="TakeOffID" Visible="False">
                                    </telerik:GridBoundColumn>
                                    
                                    <telerik:GridBoundColumn DataField="SectionID" DataType="System.Int64" HeaderText="SectionID" SortExpression="SectionID" UniqueName="SectionID" Visible="False">
                                    </telerik:GridBoundColumn>
                                    
                                    <telerik:GridBoundColumn DataField="SubsectionID" DataType="System.Int64" HeaderText="SubsectionID" ReadOnly="True" SortExpression="SubsectionID" UniqueName="SubsectionID" Visible="False">
                                    </telerik:GridBoundColumn>
                                </Columns>
                            </MasterTableView>
                        </telerik:RadGrid>
                                    
                        <asp:SqlDataSource ID="SqlDS_grdSubsections" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectSubSectionsGetAll" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="grdSections" Name="SectionID" PropertyName="SelectedValue" Type="Int64"  />
                            </SelectParameters>
                        </asp:SqlDataSource>
                      </div>              
                </div>
           
                <div style="float:left;width:850px; height:640px; float:left; margin-left:10px; ">
                     <asp:Panel ID="RadAjaxPanelSectionsAction" runat="server" Width="100%" >
                        <asp:HiddenField ID="hdnSectionID" runat="server" />
                        <asp:HiddenField ID="hdnSubsectionID" runat="server" />
<%--                                <asp:HiddenField ID="hdnNextSectionSeq" runat="server" />
                                <asp:HiddenField ID="hdnNextSubsectionSeq" runat="server" />--%>
                          <div style="width:100%; float:left; margin: 0px 0px 3px 0px; height:25px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold; ">     
                                Actions
                          </div> 
                          <div style="width:800px; height:70px; float:left;margin-bottom:15px; padding:5px 10px 5px 10px;">
                                <div style="width:750px; float:left; margin: 2px 0px 5px 0px; height:15px; padding:5px; background-color: Green; color:White; font-size:small; font-weight:bold; ">
                                    Add Section
                                </div>
                                
                                <div style="margin-left:5px; ">
                                    <div style="float:left; width:370px;"> 
                                        <telerik:RadTextBox ID="txtBoxNewSection" runat="server" Label="Section Name: " Width="360px" LabelWidth="125px" MaxLength="50" LabelCssClass="myLabelCss">
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="float:Right;width:200px;margin-right:50px;">
                                        <telerik:RadButton ID="btnAddSection" runat="server" Text="Add Section" Width="200px" Skin="Metro"></telerik:RadButton>
                                    </div>
                                </div>
                                
                          </div>
                          
                          <div style="width:800px; height:70px; float:left;margin-bottom:15px; padding:5px 10px 5px 10px;">

                            <div style="width:750px; float:left; margin: 2px 0px 5px 0px; height:15px; padding:5px; background-color:Green; color:White; font-size:small; font-weight:bold; ">
                                Add Subsection to Current Section
                            </div>
                            <div style="margin-left:5px;">
                                <div style="float:left; width:370px;"> 
                                    <telerik:RadTextBox ID="txtBoxNewSubsection" runat="server" Label="Subsection Name: " Width="360px" LabelWidth="125px" MaxLength="50" LabelCssClass="myLabelCss">
                                    </telerik:RadTextBox>
                                </div>  
                                <div style="float:Right;width:200px;margin-right:50px;"> 
                                    <telerik:RadButton ID="btnAddSubsection" runat="server" Text="Add Subsection" Width="200px" Skin="Metro">
                                    </telerik:RadButton>
                                </div>
                            </div>
                          </div>
                          
                          <div style="width:800px; height:70px; float:left;margin-bottom:15px; padding:5px 10px 5px 10px;">

                                <div style="width:750px; float:left; margin: 2px 0px 5px 0px; height:15px; padding:5px; background-color: Orange; color:White; font-size:small; font-weight:bold; ">
                                    Edit Section
                                </div>
                                <div style="margin-left:5px;">
                                    <div style="float:left; width:370px;">    
                                        <telerik:RadTextBox ID="txtBoxSectionName" runat="server" Label="Section Name: " Width="360px" LabelWidth="125px" MaxLength="50" LabelCssClass="myLabelCss">
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="float:left; width:110px; margin-right:10px;">
                                        <telerik:RadNumericTextBox ID="txtBoxSectionSeq" runat="server" Label="Order:" Width="90px" LabelWidth="45px" Type="Number"  LabelCssClass="myLabelCss" 
                                            ShowSpinButtons="False" MinValue="1" MaxValue="100" CausesValidation="true" >
                                            <IncrementSettings Step="1" InterceptArrowKeys="true" InterceptMouseWheel="true" />
                                            <NumberFormat DecimalDigits="0" AllowRounding="true" />
                                        </telerik:RadNumericTextBox>
                                        <asp:HiddenField ID="hdnOldSectionSeq" runat="server" />
                                    </div>
                                    <div style="float:Right;width:200px;margin-right:50px;">    
                                        <telerik:RadButton ID="btnUpdateSection" runat="server" Text="Update Section" Width="200px" Skin="Metro">
                                        </telerik:RadButton>
                                    </div>
                                </div>
                          </div>
                          
                          <div style="width:800px; height:70px; float:left;margin-bottom:15px; padding:5px 10px 5px 10px;">

                                <div style="width:750px; float:left; margin: 2px 0px 5px 0px; height:15px; padding:5px; background-color: Orange; color:White; font-size:small; font-weight:bold; ">     
                                    Edit Subsection
                                </div>
                                <div style="margin-left:5px;">
                                    <div style="float:left; width:370px;"> 
                                        <telerik:RadTextBox ID="txtBoxSubsectionName" runat="server" Label="Subsection Name: " width="360px" LabelWidth="125px" MaxLength="50" LabelCssClass="myLabelCss">
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="float:left; width:110px;margin-right:10px;">
                                        <telerik:RadNumericTextBox ID="txtBoxSubsectionSeq" runat="server" Label="Order:" Width="90px" LabelWidth="45px" Type="Number" LabelCssClass="myLabelCss" 
                                            ShowSpinButtons="False" ButtonsPosition="Right" MinValue="1" MaxValue="1000" CausesValidation="true"  >
                                                <IncrementSettings Step="1" InterceptArrowKeys="true" InterceptMouseWheel="true" />
                                                <NumberFormat DecimalDigits="0" AllowRounding="true" />
                                        </telerik:RadNumericTextBox>
                                        <asp:HiddenField ID="hdnOldSubsectionSeq" runat="server" />
                                    </div>
                                    <div style="float:Right;width:200px;margin-right:50px;">
                                        <telerik:RadButton ID="btnUpdateSubsection" runat="server" Text="Update Subsection" Width="200px" Skin="Metro">
                                        </telerik:RadButton>
                                    </div>
                                </div>
                          </div>
                        
                          <div style="width:800px; height:70px; float:left;margin-bottom:15px; padding:5px 10px 5px 10px;">

                                    <div style="width:750px; float:left; margin: 2px 0px 5px 0px; height:15px; padding:5px; background-color: Orange; color:White; font-size:small; font-weight:bold; ">     
                                        Copy Section
                                    </div>
                              <div style="margin-left:5px;">
                                    <div style="float:left; width:400px;margin: 0px 10px 0px 0px;">
                                    
                                            <telerik:RadComboBox ID="comboBoxSectionCopySource" runat="server" Width="400px" Label="Source Section:" LabelCssClass="myLabelCss"
                                                 DataSourceID="SqlDS_comboBoxSectionCopySource" DataTextField="SectionName" DataValueField="SectionID">
                                            </telerik:RadComboBox>

                                
                                            <asp:SqlDataSource ID="SqlDS_comboBoxSectionCopySource" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectSectionsGetAll" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="hdnTakeOffID" DefaultValue="0" Name="TakeOffID" PropertyName="Value" Type="Int64" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                    </div>


                                    <div style="float:Right;width:200px;margin-right:50px;">
                                        <telerik:RadButton ID="btnSectionCopy" runat="server" Text="Copy Section" Width="200px" Skin="Metro">
                                        </telerik:RadButton>
                                    </div>
                                   
                              </div>
                              <div style="float:Right; width:100%; margin-top:5px; font-size:Small; font-weight:bold; font-style:italic; color:Orange;">
                                        (1) Select the destination section in the Sections grid at left.  This where the copied subsections will be placed.
                                        (2) Select the source section from the dropdown list above and click the 'Copy Section' button.<br /><br />
                                        Line detail such as products and quantities are not copied.
                              </div>
                          </div>



                          <div style="width:800px; height:85px; float:left;margin:40px 0px 15px 0px; padding:5px 10px 5px 10px;">
                                <div style="width:750px; float:left; margin: 2px 0px 5px 0px; height:15px; padding:5px; background-color: Red; color:White; font-size:small; font-weight:bold; ">    
                                        Delete Section
                                </div>
                                <div style="margin-left:5px; ">
                                    <div style="float:left; width:370px;"> 
                                        <asp:Label ID="lblSectionDelete" runat="server" Font-Size="Small" Font-Bold="true" ></asp:Label>

                                        <%--<telerik:RadTextBox ID="txtBoxSectionDelete" runat="server" Label="Section To Delete: " width="360px" LabelWidth="140px" ReadOnly="True" LabelCssClass="myLabelCss" DisabledStyle-ForeColor="Black">
                                        </telerik:RadTextBox>--%>
                                    </div>
                                    <div style="float:Right;width:200px;margin-right:50px;">
                                        <telerik:RadButton ID="btnDeleteSection" runat="server" OnClientClicking="ClickingDeleteSection" Text="Delete Section" Width="200px" Skin="Metro"></telerik:RadButton>
                                    </div>
                                    <div style="float:Right; width:100%; margin-top:5px; font-size:small; font-weight:bold; font-style:italic; color:Red;">
                                        (1) WARNING!  Deleting the Section <u>PERMANENTLY DELETES</u> all underlying Subsections and detail (line items, etc.) (2)The user cannot delete the last section.
                                    </div>
                                </div>
                          </div>
                          <div style="width:800px; height:85px; float:left;margin-bottom:15px; padding:5px 10px 5px 10px;">
      
                            <div style="width:750px; float:left; margin: 2px 0px 5px 0px; height:15px; padding:5px; background-color: Red; color:White; font-size:small; font-weight:bold; ">
                                Delete Subsection
                            </div>                                   
                            <div style="margin-left:5px; ">
                                    <div style="float:left; width:370px;">
                                        <asp:Label ID="lblSubsectionDelete" runat="server" Font-Size="Small" Font-Bold="true" ></asp:Label>
                                        <%--<telerik:RadTextBox ID="txtBoxSubsectionDelete" runat="server" Label="Subsection To Delete: " width="360px" LabelWidth="140px" ReadOnly="True" LabelCssClass="myLabelCss" DisabledStyle-ForeColor="Black">
                                        </telerik:RadTextBox>--%>
                                    </div>
                                    <div style="float:Right;width:200px;margin-right:50px;">
                                        <telerik:RadButton ID="btnDeleteSubsection" runat="server" OnClientClicking="ClickingDeleteSubsection" Text="Delete Subsection" Width="200px" Skin="Metro"></telerik:RadButton>
                                    </div>
                                    <div style="float:left;width:100%; margin-top:5px; font-size:small; font-weight:bold; font-style:italic; color:Red;">
                                        (1) WARNING! Deleting the Subsection <u>PERMANENTLY DELETES</u> detail (line items, etc.) (2)The last subsection in a section cannot be deleted.
                                    </div>
                            </div>
                                
                          </div>
                            
                     </asp:Panel>
                 </div>
            </div>
        </telerik:RadPageView>
        <telerik:RadPageView ID="LineItems" runat="server" >
           <%-- <h2>Line Items</h2>--%>
           <div style="width:2000; margin:10px;">    
   
                    <div id="divProductListPageNotes" style="width:100%; height:15px; vertical-align:middle;">
                          <div style="vertical-align:middle;">  
                            <label id="lblLineItems" style=" font-weight:bold; font-size:small; color:Red; padding:2px;">Page Notes</label> 
                          </div>  
                            <telerik:RadToolTip ID="RadToolTipLineItems" runat="server" RelativeTo="Element" Width="700px" Title="Line Item Notes" 
                                    TargetControlID="lblLineItems" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade" >
                            </telerik:RadToolTip>
                    </div>
                    
            
                <div style="width:2000px;">
                        
                   <div style="width:300px; margin:10px 10px 0px 0px; float:left;">
                                <asp:HiddenField ID="hdnSectionIndex" runat="server" />
                                <asp:HiddenField ID="hdnSubsectionIndex" runat="server" />
                                <asp:HiddenField ID="hdnSubsectionName" runat="server" />
                        <div style="width:120px; float:left;">
                            <telerik:RadGrid ID="grdSect" runat="server" Height="700px" Width="120px" 
                                AllowPaging="True" PageSize="50"
                                DataSourceID="SqlDS_grdSect" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
            
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                </ClientSettings>

                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="SectionID" DataSourceID="SqlDS_grdSect">
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="SectionID" DataType="System.Int64" ReadOnly="True" SortExpression="SectionID" UniqueName="SectionID" Visible="false">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="SectionName" HeaderText="Section" SortExpression="SectionName" UniqueName="SectionName">
                                            <HeaderStyle Width="100px" Font-Size="Small" Font-Bold="true" ForeColor="#4c68a2" />
                                            <ItemStyle Width="100px" Font-Size="X-Small" Wrap="false" />
                                        </telerik:GridBoundColumn>      
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>
                            <asp:SqlDataSource ID="SqlDS_grdSect" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspTakeOffNavSection" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="hdnTakeOffID" Name="TakeOffID" Type="Int64" DefaultValue="0"/>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        <div style="width:180px; float:left;">       
                            <telerik:RadGrid ID="grdSub" runat="server" DataSourceID="SqlDS_grdSub" GroupPanelPosition="Top" ResolvedRenderMode="Classic" 
                                Height="700px" Width="170px" AllowPaging="True" PageSize="50">
            
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" />
                                </ClientSettings>

                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="SubsectionID" DataSourceID="SqlDS_grdSub" Width="220px">
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="SubsectionID" DataType="System.Int64" ReadOnly="True" SortExpression="SubsectionID" UniqueName="SubsectionID" Visible="false">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="SubsectionName" HeaderText="Subsection" SortExpression="SubsectionName" UniqueName="SubectionName">
                                            <HeaderStyle Width="170px" Font-Size="Small" Font-Bold="True" ForeColor="#4c68a2" />
                                            <ItemStyle Width="170px" Font-Size="X-Small" Wrap="false" />
                                        </telerik:GridBoundColumn>      
                                    </Columns>
                                </MasterTableView>

                            </telerik:RadGrid>
        
                            <asp:SqlDataSource ID="SqlDS_grdSub" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspTakeOffNavSubsection" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="grdSect" Name="SectionID" Type="Int64" DefaultValue="0" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                   </div>
                
                   <div style="width:1300px; float:left;">
                        <asp:Panel ID="pnlEditSubsection" runat="server" Width="1300px" >                  
                                    <div style="width:1300px; margin: 2px 0px 3px 0px; float:left; ">
                                        <div style="width:500px; float:left; margin: 2px 0px 3px 0px; height:15px; padding:5px; background-color: #4c68a2; color:White; font-size:Small; font-weight:bold; ">
                                            <asp:Label ID="lblEditSubsectionTitle" runat="server" Width="500px" ></asp:Label>
                                        </div>
                                        <div style="border: 2px solid red; width:520px; padding:3px; margin-left:10px; float:left;">
                                            <div style="width:180px; float:left; margin-left:5px;padding:3px;">
                                                <telerik:RadTextBox ID="txtBoxSubsectionUnitsPerSection" runat="server" Label="Units/Section: " MaxLength="20" LabelWidth="100px" Width="160px" LabelCssClass="myLabelCss">
                                                </telerik:RadTextBox>
                                            </div>
                                            <div style="width:180px; float:left;padding:3px;">
                                                <telerik:RadNumericTextBox ID="txtBoxSubsectionTotalUnits" runat="server" Label="Total Units: " LabelWidth="80px"  Width="160px" LabelCssClass="myLabelCss"
                                                        ShowSpinButtons="False" MinValue="1" MaxValue="1000000" CausesValidation="true" >
                                                        <IncrementSettings Step="1" InterceptArrowKeys="true" InterceptMouseWheel="true" />
                                                        <NumberFormat DecimalDigits="0" AllowRounding="true" />
                                                </telerik:RadNumericTextBox>
                                            </div>
                                            <div style="width:110px; float:left;padding:3px;">   
                                                <telerik:RadButton ID="btnUpdateSectionUnits" runat="server" Text="Update" Width="100px"  AutoPostBack="true" OnClick="btnUpdateSectionUnits_Click" Skin="Metro"></telerik:RadButton>
                                            </div>
                                        </div>
                                    </div>

                                    <asp:HiddenField ID="hdnNextLine" runat="server" Value="1" /> 
                                    <asp:HiddenField ID="hdnProdID" runat="server" />
                                    <asp:HiddenField ID="hdnLine" runat="server" />
                               

                            <div style="width:1300px; margin: 10px 0px 0px 0px;">

                                        <div id="divTakeOffLineItems" style="float: left; width:700px; margin-right:10px; ">
                                            <h6>Line Items</h6>
                                                <div style="width:100%; margin:2px; font-size:x-small;">
                                                    Tab key navigates down, Up/Down arrows add/subtract Qty. Click 'Save Changes' if you have changed quantities before adding additional products from the right.
                                                </div>
                                                <div style="width:100%; margin:3px 3px 3px 3px; ">  
                                                      <telerik:RadGrid ID="grdSubsectionDetail" runat="server" 
                                                          DataSourceID="SqlDS_grdSubsectionDetail" AllowMultiRowEdit="True"
                                                            width="700px" Height="530px" AllowSorting="True" Font-Size="Small" 
                                                          ResolvedRenderMode="Classic"  >
                         
                                                        <ClientSettings EnableRowHoverStyle="true" AllowKeyboardNavigation="true" >
                                                            
                                                            <KeyboardNavigationSettings EnableKeyboardShortcuts="true" AllowSubmitOnEnter="true"  />
                                                            <ClientEvents OnKeyPress="onKeyPress"  />
                                                            <Selecting AllowRowSelect="true" />
                                                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" ScrollHeight="400px" />        
                                                        </ClientSettings>
                        
                                                            <MasterTableView AutoGenerateColumns="False" DataKeyNames="DetailIDIndex,ProdID" DataSourceID="SqlDS_grdSubsectionDetail" 
                                                                    AllowAutomaticUpdates="true" AllowAutomaticDeletes="false" CommandItemDisplay="Top" EditMode="Batch" >
                                                    
                                                                 <BatchEditingSettings EditType="Cell" OpenEditingEvent="Click" />
                       
                                                                    <Columns>
                                                                        <telerik:GridBoundColumn DataField="Line" DataType="System.Int32" SortExpression="Line" UniqueName="Line" ReadOnly="true">
                                                                            <HeaderStyle Width="20px" />
                                                                            <ItemStyle Width="20px" Font-Size="Small" HorizontalAlign="Right" VerticalAlign="Top" />
                           
                                                                        </telerik:GridBoundColumn>
                                                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID" ReadOnly="true">
                                                                            <HeaderStyle Width="140px" Font-Size="Small" />
                                                                            <ItemStyle Width="140px" Font-Size="Small" HorizontalAlign="Left" VerticalAlign="Top" />
                                                                        </telerik:GridBoundColumn>
                                                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description" ReadOnly="true">
                                                                            <HeaderStyle Width="300px" Font-Size="Small" />
                                                                            <ItemStyle Width="300px" Font-Size="Small" HorizontalAlign="Left" VerticalAlign="Top" />
                                                                        </telerik:GridBoundColumn>
                                                                        <telerik:GridTemplateColumn HeaderText="Qty" SortExpression="Qty" UniqueName="TemplateColumn" DataField="Qty">
                                                                            <HeaderStyle Width="70px" Font-Size="Small" />
                                                                            <ItemStyle Width="70px" Font-Size="Small" HorizontalAlign="Right" VerticalAlign="Top" />
                                                                            <ItemTemplate>
                                                                               <%--<div style="float:right;">--%> 
                                                                                 <asp:Label runat="server" ID="lblQty" Font-Size="Small" Text='<%# Eval("Qty", "{0:N1}") %>'></asp:Label>
                                                                               <%--</div>--%>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <span>
                                                                                    <telerik:RadNumericTextBox Width="50px" runat="server" ID="txtBoxQtyUpdate2" d  AutoCompleteType="Disabled" Font-Size="Small">
                                                                                    </telerik:RadNumericTextBox>                               
                                                                                </span>
                                                                            </EditItemTemplate>
                                                                        </telerik:GridTemplateColumn>

                                                                        <telerik:GridBoundColumn DataField="SellUnit" HeaderText="Unit" SortExpression="SellUnit" UniqueName="SellUnit" ReadOnly="true">
                                                                            <HeaderStyle Width="50px" Font-Size="Small" />
                                                                            <ItemStyle Width="50px" Font-Size="Small" HorizontalAlign="Left" VerticalAlign="Top" />
                                                                        </telerik:GridBoundColumn>
                                                       
                                                                        <telerik:GridBoundColumn DataField="DetailIDIndex" Visible="False" DataType="System.Int64" HeaderText="DetailIDIndex" ReadOnly="True" SortExpression="DetailIDIndex" UniqueName="DetailIDIndex">
                                                                        </telerik:GridBoundColumn>
                                                                    </Columns>
                                                                    <CommandItemSettings ShowAddNewRecordButton="false" ShowRefreshButton="false"  />
                       
                                                            </MasterTableView>

                                                      </telerik:RadGrid>
                                                        <asp:SqlDataSource ID="SqlDS_grdSubsectionDetail" runat="server"  ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                            SelectCommand="uspProjectSubsectionDetailGetAllRows" SelectCommandType="StoredProcedure" 
                                                            UpdateCommand="uspProjectSubsectionDetailUpdateQty2" UpdateCommandType="StoredProcedure"
                                                            DeleteCommand="uspProjectSubsectionDetailDELETERow" DeleteCommandType="StoredProcedure">  
                                                            <SelectParameters>
                                                                <asp:Parameter Name="SubsectionID" Type="Int64"/>
                                                            </SelectParameters>
                                                            <UpdateParameters>
                                                                <asp:Parameter Name="DetailIDIndex" Type="Int32" />
                                                                <asp:Parameter Name="ProdID" Type="String" />
                                                                <asp:Parameter Name="Qty" Type="Double" />
                                                                <asp:ControlParameter Name="TakeOffID" ControlID = "hdnTakeOffID" DefaultValue="" PropertyName="Value" Type="Int32" />
                                                                <asp:ControlParameter Name="QuoteID" ControlID = "hdnQuoteID" DefaultValue="" PropertyName="Value" Type="Int32" />
                                                            </UpdateParameters>
                                                           <%-- <DeleteParameters>
                                                                <asp:Parameter Name="DetailIDIndex" Type="Int32" />
                                                                <asp:Parameter Name="ProdID" Type="String" />
                                                                <asp:Parameter Name="SubsectionID" Type="Int32" />
                                                                <asp:Parameter Name="Line" DbType="Int32" DefaultValue="3" />
                                                                <asp:ControlParameter Name="TakeOffID" ControlID = "hdnTakeOffID" DefaultValue="" PropertyName="Value" Type="Int32" />
              
                                                            </DeleteParameters>--%>
                                                     
                                                        </asp:SqlDataSource>
                                                </div>

                                                <div style="width:510px; height:30px; float:left; " >
                                                    <div style="width:500px; float:left; margin-left:10px; "> 
                                                 
                                                        <div style="width:250px; float:left; margin-right:10px;">
                                                            <telerik:RadComboBox ID="lineUpdateDetailIDIndex" runat="server" Label="Line to Move:" 
                                                                DataSourceID="SqlDS_grdSubsectionDetail" DataTextField="Line2" DataValueField="DetailIDIndex"  
                                                                LabelCssClass="myLabelCss" Width="150px" AppendDataBoundItems="true">
                                                                <Items>
                                                                    <telerik:RadComboBoxItem Text="-" Value = "0" runat="server" /> 
                                                                </Items>
                                                            </telerik:RadComboBox>
                                                            <asp:HiddenField runat="server" ID="lineUpdateLineOld" />
                                                        </div>
                                                        <div style="width:120px; float:left; margin-right:10px;">
                                                            <telerik:RadComboBox ID="lineUpdateLineNew" runat="server" Label="New Line:" Width="40px" Height="300px" LabelCssClass="myLabelCss"  >
                                                                <Items>
                                                                        <telerik:RadComboBoxItem Text="1" Value="1" />
                                                                        <telerik:RadComboBoxItem Text="2" Value="2" />
                                                                        <telerik:RadComboBoxItem Text="3" Value="3" />
                                                                        <telerik:RadComboBoxItem Text="4" Value="4" />
                                                                        <telerik:RadComboBoxItem Text="5" Value="5" />
                                                                        <telerik:RadComboBoxItem Text="6" Value="6" />
                                                                        <telerik:RadComboBoxItem Text="7" Value="7" />
                                                                        <telerik:RadComboBoxItem Text="8" Value="8" />
                                                                        <telerik:RadComboBoxItem Text="9" Value="9" />
                                                                        <telerik:RadComboBoxItem Text="10" Value="10" />
                                                                        <telerik:RadComboBoxItem Text="11" Value="11" />
                                                                        <telerik:RadComboBoxItem Text="12" Value="12" />
                                                                        <telerik:RadComboBoxItem Text="13" Value="13" />
                                                                        <telerik:RadComboBoxItem Text="14" Value="14" />
                                                                        <telerik:RadComboBoxItem Text="15" Value="15" />
                                                                        <telerik:RadComboBoxItem Text="16" Value="16" />
                                                                        <telerik:RadComboBoxItem Text="17" Value="17" />
                                                                        <telerik:RadComboBoxItem Text="18" Value="18" />
                                                                        <telerik:RadComboBoxItem Text="19" Value="19" />
                                                                        <telerik:RadComboBoxItem Text="20" Value="20" />
                                                                        <telerik:RadComboBoxItem Text="21" Value="21" />
                                                                        <telerik:RadComboBoxItem Text="22" Value="22" />
                                                                        <telerik:RadComboBoxItem Text="23" Value="23" />
                                                                        <telerik:RadComboBoxItem Text="24" Value="24" />
                                                                        <telerik:RadComboBoxItem Text="25" Value="25" />
                                                                        <telerik:RadComboBoxItem Text="26" Value="26" />
                                                                        <telerik:RadComboBoxItem Text="27" Value="27" />
                                                                        <telerik:RadComboBoxItem Text="28" Value="28" />
                                                                        <telerik:RadComboBoxItem Text="29" Value="29" />
                                                                        <telerik:RadComboBoxItem Text="30" Value="30" />
                                                                        <telerik:RadComboBoxItem Text="31" Value="31" />
                                                                        <telerik:RadComboBoxItem Text="32" Value="32" />
                                                                        <telerik:RadComboBoxItem Text="33" Value="33" />
                                                                        <telerik:RadComboBoxItem Text="34" Value="34" />
                                                                        <telerik:RadComboBoxItem Text="35" Value="35" />
                                                                        <telerik:RadComboBoxItem Text="36" Value="36" />
                                                                        <telerik:RadComboBoxItem Text="37" Value="37" />
                                                                        <telerik:RadComboBoxItem Text="38" Value="38" />
                                                                        <telerik:RadComboBoxItem Text="39" Value="39" />
                                                                        <telerik:RadComboBoxItem Text="40" Value="40" />
                                                                        <telerik:RadComboBoxItem Text="41" Value="41" />
                                                                        <telerik:RadComboBoxItem Text="42" Value="42" />
                                                                        <telerik:RadComboBoxItem Text="43" Value="43" />
                                                                        <telerik:RadComboBoxItem Text="44" Value="44" />
                                                                        <telerik:RadComboBoxItem Text="45" Value="45" />
                                                                        <telerik:RadComboBoxItem Text="46" Value="46" />
                                                                        <telerik:RadComboBoxItem Text="47" Value="47" />
                                                                        <telerik:RadComboBoxItem Text="48" Value="48" />
                                                                        <telerik:RadComboBoxItem Text="49" Value="49" />
                                                                        <telerik:RadComboBoxItem Text="50" Value="50" />
                                                                        <telerik:RadComboBoxItem Text="51" Value="51" />
                                                                        <telerik:RadComboBoxItem Text="52" Value="52" />
                                                                        <telerik:RadComboBoxItem Text="53" Value="53" />
                                                                        <telerik:RadComboBoxItem Text="54" Value="54" />
                                                                        <telerik:RadComboBoxItem Text="55" Value="55" />
                                                                        <telerik:RadComboBoxItem Text="56" Value="56" />
                                                                        <telerik:RadComboBoxItem Text="57" Value="57" />
                                                                        <telerik:RadComboBoxItem Text="58" Value="58" />
                                                                        <telerik:RadComboBoxItem Text="59" Value="59" />
                                                                        <telerik:RadComboBoxItem Text="60" Value="60" />
                                                                        <telerik:RadComboBoxItem Text="61" Value="61" />
                                                                        <telerik:RadComboBoxItem Text="62" Value="62" />
                                                                        <telerik:RadComboBoxItem Text="63" Value="63" />
                                                                        <telerik:RadComboBoxItem Text="64" Value="64" />
                                                                        <telerik:RadComboBoxItem Text="65" Value="65" />
                                                                        <telerik:RadComboBoxItem Text="66" Value="66" />
                                                                        <telerik:RadComboBoxItem Text="67" Value="67" />
                                                                        <telerik:RadComboBoxItem Text="68" Value="68" />
                                                                        <telerik:RadComboBoxItem Text="69" Value="69" />
                                                                        <telerik:RadComboBoxItem Text="70" Value="70" />
                                                                        <telerik:RadComboBoxItem Text="71" Value="71" />
                                                                        <telerik:RadComboBoxItem Text="72" Value="72" />
                                                                        <telerik:RadComboBoxItem Text="73" Value="73" />
                                                                        <telerik:RadComboBoxItem Text="74" Value="74" />
                                                                        <telerik:RadComboBoxItem Text="75" Value="75" />
                                                                        <telerik:RadComboBoxItem Text="76" Value="76" />
                                                                        <telerik:RadComboBoxItem Text="77" Value="77" />
                                                                        <telerik:RadComboBoxItem Text="78" Value="78" />
                                                                        <telerik:RadComboBoxItem Text="79" Value="79" />
                                                                        <telerik:RadComboBoxItem Text="80" Value="80" />
                                                                        <telerik:RadComboBoxItem Text="81" Value="81" />
                                                                        <telerik:RadComboBoxItem Text="82" Value="82" />
                                                                        <telerik:RadComboBoxItem Text="83" Value="83" />
                                                                        <telerik:RadComboBoxItem Text="84" Value="84" />
                                                                        <telerik:RadComboBoxItem Text="85" Value="85" />
                                                                        <telerik:RadComboBoxItem Text="86" Value="86" />
                                                                        <telerik:RadComboBoxItem Text="87" Value="87" />
                                                                        <telerik:RadComboBoxItem Text="88" Value="88" />
                                                                        <telerik:RadComboBoxItem Text="89" Value="89" />
                                                                        <telerik:RadComboBoxItem Text="90" Value="90" />
                                                                        <telerik:RadComboBoxItem Text="91" Value="91" />
                                                                        <telerik:RadComboBoxItem Text="92" Value="92" />
                                                                        <telerik:RadComboBoxItem Text="93" Value="93" />
                                                                        <telerik:RadComboBoxItem Text="94" Value="94" />
                                                                        <telerik:RadComboBoxItem Text="95" Value="95" />
                                                                        <telerik:RadComboBoxItem Text="96" Value="96" />
                                                                        <telerik:RadComboBoxItem Text="97" Value="97" />
                                                                        <telerik:RadComboBoxItem Text="98" Value="98" />
                                                                        <telerik:RadComboBoxItem Text="99" Value="99" />
                                                                        <telerik:RadComboBoxItem Text="100" Value="100" />
                                                                        <telerik:RadComboBoxItem Text="101" Value="101" />
                                                                        <telerik:RadComboBoxItem Text="102" Value="102" />
                                                                        <telerik:RadComboBoxItem Text="103" Value="103" />
                                                                        <telerik:RadComboBoxItem Text="104" Value="104" />
                                                                        <telerik:RadComboBoxItem Text="105" Value="105" />
                                                                        <telerik:RadComboBoxItem Text="106" Value="106" />
                                                                        <telerik:RadComboBoxItem Text="107" Value="107" />
                                                                        <telerik:RadComboBoxItem Text="108" Value="108" />
                                                                        <telerik:RadComboBoxItem Text="109" Value="109" />
                                                                        <telerik:RadComboBoxItem Text="110" Value="110" />
                                                                        <telerik:RadComboBoxItem Text="111" Value="111" />
                                                                        <telerik:RadComboBoxItem Text="112" Value="112" />
                                                                        <telerik:RadComboBoxItem Text="113" Value="113" />
                                                                        <telerik:RadComboBoxItem Text="114" Value="114" />
                                                                        <telerik:RadComboBoxItem Text="115" Value="115" />
                                                                        <telerik:RadComboBoxItem Text="116" Value="116" />
                                                                        <telerik:RadComboBoxItem Text="117" Value="117" />
                                                                        <telerik:RadComboBoxItem Text="118" Value="118" />
                                                                        <telerik:RadComboBoxItem Text="119" Value="119" />
                                                                        <telerik:RadComboBoxItem Text="120" Value="120" />
                                                                        <telerik:RadComboBoxItem Text="121" Value="121" />
                                                                        <telerik:RadComboBoxItem Text="122" Value="122" />
                                                                        <telerik:RadComboBoxItem Text="123" Value="123" />
                                                                        <telerik:RadComboBoxItem Text="124" Value="124" />
                                                                        <telerik:RadComboBoxItem Text="125" Value="125" />
                                                                        <telerik:RadComboBoxItem Text="126" Value="126" />
                                                                        <telerik:RadComboBoxItem Text="127" Value="127" />
                                                                        <telerik:RadComboBoxItem Text="128" Value="128" />
                                                                        <telerik:RadComboBoxItem Text="129" Value="129" />
                                                                        <telerik:RadComboBoxItem Text="130" Value="130" />
                                                                        <telerik:RadComboBoxItem Text="131" Value="131" />
                                                                        <telerik:RadComboBoxItem Text="132" Value="132" />
                                                                        <telerik:RadComboBoxItem Text="133" Value="133" />
                                                                        <telerik:RadComboBoxItem Text="134" Value="134" />
                                                                        <telerik:RadComboBoxItem Text="135" Value="135" />
                                                                        <telerik:RadComboBoxItem Text="136" Value="136" />
                                                                        <telerik:RadComboBoxItem Text="137" Value="137" />
                                                                        <telerik:RadComboBoxItem Text="138" Value="138" />
                                                                        <telerik:RadComboBoxItem Text="139" Value="139" />

                                                                        <telerik:RadComboBoxItem Text="140" Value="140" />
                                                                        <telerik:RadComboBoxItem Text="141" Value="141" />
                                                                        <telerik:RadComboBoxItem Text="142" Value="142" />
                                                                        <telerik:RadComboBoxItem Text="143" Value="143" />
                                                                        <telerik:RadComboBoxItem Text="144" Value="144" />
                                                                        <telerik:RadComboBoxItem Text="145" Value="145" />
                                                                        <telerik:RadComboBoxItem Text="146" Value="146" />
                                                                        <telerik:RadComboBoxItem Text="147" Value="147" />
                                                                        <telerik:RadComboBoxItem Text="148" Value="148" />
                                                                        <telerik:RadComboBoxItem Text="149" Value="149" />

                                                                        <telerik:RadComboBoxItem Text="150" Value="150" />
                                                                        <telerik:RadComboBoxItem Text="151" Value="151" />
                                                                        <telerik:RadComboBoxItem Text="152" Value="152" />
                                                                        <telerik:RadComboBoxItem Text="153" Value="153" />
                                                                        <telerik:RadComboBoxItem Text="154" Value="154" />
                                                                        <telerik:RadComboBoxItem Text="155" Value="155" />
                                                                        <telerik:RadComboBoxItem Text="156" Value="156" />
                                                                        <telerik:RadComboBoxItem Text="157" Value="157" />
                                                                        <telerik:RadComboBoxItem Text="158" Value="158" />
                                                                        <telerik:RadComboBoxItem Text="159" Value="159" />

                                                                        <telerik:RadComboBoxItem Text="160" Value="160" />
                                                                        <telerik:RadComboBoxItem Text="161" Value="161" />
                                                                        <telerik:RadComboBoxItem Text="162" Value="162" />
                                                                        <telerik:RadComboBoxItem Text="163" Value="163" />
                                                                        <telerik:RadComboBoxItem Text="164" Value="164" />
                                                                        <telerik:RadComboBoxItem Text="165" Value="165" />
                                                                        <telerik:RadComboBoxItem Text="166" Value="166" />
                                                                        <telerik:RadComboBoxItem Text="167" Value="167" />
                                                                        <telerik:RadComboBoxItem Text="168" Value="168" />
                                                                        <telerik:RadComboBoxItem Text="169" Value="169" />

                                                                        <telerik:RadComboBoxItem Text="170" Value="170" />
                                                                        <telerik:RadComboBoxItem Text="171" Value="171" />
                                                                        <telerik:RadComboBoxItem Text="172" Value="172" />
                                                                        <telerik:RadComboBoxItem Text="173" Value="173" />
                                                                        <telerik:RadComboBoxItem Text="174" Value="174" />
                                                                        <telerik:RadComboBoxItem Text="175" Value="175" />
                                                                        <telerik:RadComboBoxItem Text="176" Value="176" />
                                                                        <telerik:RadComboBoxItem Text="177" Value="177" />
                                                                        <telerik:RadComboBoxItem Text="178" Value="178" />
                                                                        <telerik:RadComboBoxItem Text="179" Value="179" />

                                                                        <telerik:RadComboBoxItem Text="180" Value="180" />
                                                                        <telerik:RadComboBoxItem Text="181" Value="181" />
                                                                        <telerik:RadComboBoxItem Text="182" Value="182" />
                                                                        <telerik:RadComboBoxItem Text="183" Value="183" />
                                                                        <telerik:RadComboBoxItem Text="184" Value="184" />
                                                                        <telerik:RadComboBoxItem Text="185" Value="185" />
                                                                        <telerik:RadComboBoxItem Text="186" Value="186" />
                                                                        <telerik:RadComboBoxItem Text="187" Value="187" />
                                                                        <telerik:RadComboBoxItem Text="188" Value="188" />
                                                                        <telerik:RadComboBoxItem Text="189" Value="189" />

                                                                        <telerik:RadComboBoxItem Text="190" Value="190" />
                                                                        <telerik:RadComboBoxItem Text="191" Value="191" />
                                                                        <telerik:RadComboBoxItem Text="192" Value="192" />
                                                                        <telerik:RadComboBoxItem Text="193" Value="193" />
                                                                        <telerik:RadComboBoxItem Text="194" Value="194" />
                                                                        <telerik:RadComboBoxItem Text="195" Value="195" />
                                                                        <telerik:RadComboBoxItem Text="196" Value="196" />
                                                                        <telerik:RadComboBoxItem Text="197" Value="197" />
                                                                        <telerik:RadComboBoxItem Text="198" Value="198" />
                                                                        <telerik:RadComboBoxItem Text="199" Value="199" />

                                                                        <telerik:RadComboBoxItem Text="200" Value="200" />
                                                                        <telerik:RadComboBoxItem Text="201" Value="201" />
                                                                        <telerik:RadComboBoxItem Text="202" Value="202" />
                                                                        <telerik:RadComboBoxItem Text="203" Value="203" />
                                                                        <telerik:RadComboBoxItem Text="204" Value="204" />
                                                                        <telerik:RadComboBoxItem Text="205" Value="205" />
                                                                        <telerik:RadComboBoxItem Text="206" Value="206" />
                                                                        <telerik:RadComboBoxItem Text="207" Value="207" />
                                                                        <telerik:RadComboBoxItem Text="208" Value="208" />
                                                                        <telerik:RadComboBoxItem Text="209" Value="209" />
                                                                        
                                                                        
                                                        
                                                                </Items>
                                                            </telerik:RadComboBox>
                                                        </div>
                                                        <div style="width:80px; float:left; padding:2px 0px 2px 0px;"> 
                                                            <telerik:RadButton ID="btnLineUpdate" runat="server" Text="Update" Width="70px" AutoPostBack="true" Skin="Metro"></telerik:RadButton>
                                                        </div> 
       
                                                    </div>
                  
                                                </div>  
                                                <div style="width:510px; height:30px; float:left; margin-top:5px; " >
                                                    <div style="width:500px; float:left; margin-left:10px; "> 
                                                 
                                                        <div style="width:270px; float:left; margin-right:10px;">
                                                            <telerik:RadComboBox ID="lineDeleteDetailIDIndex" runat="server" Label="Line to Delete:" 
                                                                DataSourceID="SqlDS_grdSubsectionDetail" DataTextField="Line2" DataValueField="DetailIDIndex"  
                                                                LabelCssClass="myLabelCss" Width="150px" AppendDataBoundItems="true">
                                                                <Items>
                                                                    <telerik:RadComboBoxItem Text="-" Value = "0" runat="server" /> 
                                                                </Items>
                                                            </telerik:RadComboBox>
                                                            <asp:HiddenField runat="server" ID="lineDelete" />
                                                            <asp:HiddenField runat="server" ID="lineDeleteProdID" />
                                            
                                                        </div>
                                                         <div style="width:80px; float:left; padding:2px 0px 2px 0px;"> 
                                                            <telerik:RadButton ID="btnDeleteLine" runat="server" Text="Delete Line" Width="70px" AutoPostBack="true" Skin="Metro"></telerik:RadButton>
                                                        </div>
                                                    </div>
                                                </div>
                        
                                        </div>
           
                                        <div style="float: left; width:550px; ">
                                            <asp:Panel ID="pnlEditSubsection2" runat="server" >
                                            <telerik:RadTabStrip ID="RadTabStrip2" runat="server" Skin="Metro" 
                                                    MultiPageID="RadMultiPage3"  ResolvedRenderMode="Classic" >
                                                 <Tabs>
                                                   <telerik:RadTab runat="server" Text="Grab List" PageViewID="GrabList" Selected="true"></telerik:RadTab>
                                                   <telerik:RadTab runat="server" Text="Related" PageViewID="RelatedProducts" ></telerik:RadTab>
                                                   <telerik:RadTab runat="server" Text="Assemblies" PageViewID="Assemblies" ></telerik:RadTab>
                                                   <telerik:RadTab runat="server" Text="Stock Search" PageViewID="StockSearch" ></telerik:RadTab>
                                                   <telerik:RadTab runat="server" Text="NonStocks" PageViewID="NonStockList"></telerik:RadTab>
                                                   <telerik:RadTab runat="server" Text="Section Comments" PageViewID="SectionComments"></telerik:RadTab>
                                                   <telerik:RadTab runat="server" Text="Subsection Comments" PageViewID="SubsectionComments" ></telerik:RadTab>
                                                   <telerik:RadTab runat="server" Text="Subsection Copy" PageViewID="SubsectionCopy" ></telerik:RadTab>
                                                 </Tabs>                    
                                            </telerik:RadTabStrip>
                                            <telerik:RadMultiPage ID="RadMultiPage3" runat="server" SelectedIndex="6" >
                                    
                                    
                                                <telerik:RadPageView ID="RelatedProducts" runat="server" Width="550px" Height="450px">
                                                    <div style="width:100%; margin: 2px 10px 2px 10px;">
                                                        <telerik:RadButton ID="btnTakeOffRelatedSEarch" runat="server" Text="Search for Products Related to Selected at Left" ToolTip="Select a Line Item then Click" Width="500px" Skin="Metro">
                                                        </telerik:RadButton>
                                                    </div>
                                                        <telerik:RadGrid ID="listBoxTakeOffQuicklistRelated2" runat="server" Width="546px" Height="575px"
                                                            DataSourceID="SqlDS_StockGrabListRelated2" AllowPaging="false" AllowSorting="True" CellSpacing="0" GridLines="None" >
                   
                                                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                                                        <Selecting AllowRowSelect="true" />
                                                                        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                            </ClientSettings>
                   
                   
                                                            <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDS_StockGrabListRelated2">
                       
                                                                <Columns>
                                                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID" Visible="true">
                                                                        <HeaderStyle Width="140px" Font-Size="Small" />
                                                                        <ItemStyle Width="140px" Font-Size="Small" VerticalAlign="Top" />
                                                                    </telerik:GridBoundColumn>
                                                                    <telerik:GridBoundColumn DataField="Description2" HeaderText="Description" ReadOnly="True" SortExpression="Description2" UniqueName="Description2">
                                                                        <HeaderStyle Width="426px" Font-Size="Small" />
                                                                        <ItemStyle Width="426px" Font-Size="Small" VerticalAlign="Top" />
                                                                    </telerik:GridBoundColumn>
                                                                </Columns>
                      
                                        
                                                            </MasterTableView>
                                   
                   
                                                        </telerik:RadGrid>
                                                        <asp:SqlDataSource ID="SqlDS_StockGrabListRelated2" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                            SelectCommand="uspTakeOffRelatedProductsGet2" SelectCommandType="StoredProcedure">
                                                            <SelectParameters>
                                                                <asp:Parameter Name="ProdID" />
                                                                <asp:Parameter Name="WhseID" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                    
                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="Assemblies" runat="server"  Width="550px" Height="450px">
                                                    <div style="width:100%; margin: 5px 2px 2px 2px;"> 
                                         
                                                     <telerik:RadListBox ID="listBoxTakeOffAssemblies" runat="server"  DataSourceID="SqlDS_TakeOffAssemblies" Width="546px" Height="600px" 
                                                            DataKeyField="AssemblyID" DataValueField="AssemblyID" DataTextField="AssemblyName" 
                                                            OnSelectedIndexChanged="listBoxTakeOffAssemblies_SelectedIndexChanged" SelectionMode="Single"
                                                            AutoPostBack="true" AllowDelete="false" Skin="Metro" Font-Size="Medium" >
                        
                                                     </telerik:RadListBox>
                                                     <asp:SqlDataSource ID="SqlDS_TakeOffAssemblies" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                            SelectCommand="uspTakeOffAssemblyListGet" SelectCommandType="StoredProcedure">
                                                            <SelectParameters>
                                                                <asp:ControlParameter Name="WhseID" ControlID = "hdnWhseID" DefaultValue="" PropertyName="Value" Type="String" />
                                                            </SelectParameters>
                                                     </asp:SqlDataSource>
                                    
                                                    </div>
                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="GrabList" runat="server" Width="550px" Height="450px" Selected="true">
                                                    <%-- <div style="width:100%; margin: 2px 10px 2px 10px;">
                                                        <telerik:RadButton ID="btnlistBoxTakeOffGrabList2Refresh" runat="server" Text="Refresh Grab List" Width="500px" Skin="Silk">
                                                        </telerik:RadButton>
                                                    </div>--%>
                                                    <telerik:RadGrid ID="listBoxTakeOffGrabList2" runat="server" Width="546px" Height="600px"
                                                            DataSourceID="SqlDS_TakeOffGrabList" AllowPaging="false" AllowSorting="True" CellSpacing="0" GridLines="None"  >
                   
                                                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                                                        <Selecting AllowRowSelect="true" />
                                                                        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                            </ClientSettings>
                   
                   
                                                            <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDS_TakeOffGrabList" PageSize="50">
                                                                <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                                                <Columns>
                                                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID" Visible="true">
                                                                        <HeaderStyle Width="140px" Font-Size="Small" />
                                                                        <ItemStyle Width="140px" Font-Size="Small" VerticalAlign="Top" />
                                                                    </telerik:GridBoundColumn>
                                                                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                                                                        <HeaderStyle Width="546px" Font-Size="Small" />
                                                                        <ItemStyle Width="546px" Font-Size="Small" VerticalAlign="Top" />
                                                                    </telerik:GridBoundColumn>
                                                                </Columns>
                      
                                        
                                                            </MasterTableView>
                                   
                   
                                                    </telerik:RadGrid>
    
                                                    <asp:SqlDataSource ID="SqlDS_TakeOffGrabList" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                        SelectCommand="uspTakeOffGrabListGet" SelectCommandType="StoredProcedure"
                                                        DeleteCommand="DELETE TakeOff_GrabList WHERE QuickGrabIndex = @QuickGrabIndex" >
                                                        <SelectParameters>
                                                            <asp:ControlParameter Name="TakeOffID" ControlID="hdnTakeOffID" PropertyName="Value" Type="Int64" />
                                                        </SelectParameters>
                                                        <DeleteParameters>
                                                                <asp:ControlParameter Name="QuickGrabIndex" ControlID="listBoxTakeOffGrabList2" Type="Int64" />   
                                                        </DeleteParameters>
                                                    </asp:SqlDataSource>

                                                     <div style="width:546px;; margin:10px 0px 0px 0px;">
                                                            <telerik:RadButton ID="btnGrabListClear2" runat="server" Text="Clear GrabList" UseSubmitBehavior="false" Width="546px" Skin="BlackMetroTouch" OnClick="btnGrabListClear2_Click"></telerik:RadButton>
                                                     </div>

                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="StockSearch" runat="server" Width="550px" Height="450px" >
                                                    <div style="margin:5px;">
                                         
                                           
                                                    <div style="width:540px; height:60px; margin-bottom:5px;"> 
                                                        <div style="float:left; width:300px;">    
                                                            <telerik:RadTextBox ID="txtStockProdIDSearch" runat="server" Label="Number Contains:" Width="270px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                                            </telerik:RadTextBox>
                                                        </div>
                                                        <div style="float:left; width: 180px; margin-right:20px;"> 
                                                           <div style="width:90px; float:left;">
                                                                <telerik:RadButton ID="btnStockSearch" runat="server" Text="Search" Width="80px"  AutoPostBack="true" OnClick="btnStockSearch_Click" Skin="Metro"></telerik:RadButton>
                                                           </div> 
                                                           <div style="width:90px; float:left;">
                                                                <telerik:RadButton ID="btnStockSearchClear" runat="server" Text="Clear" Width="80px" AutoPostBack="true" Skin="Metro"></telerik:RadButton>
                                                           </div>
                                                        </div>
                                
                                                        <div style="float:left; width: 480px; margin-right:20px; margin-top:5px;"> 
                                                            <telerik:RadTextBox ID="txtStockDescSearch" runat="server" Label="Description Contains:" Width="350px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                                            </telerik:RadTextBox>
                                                        </div>
                
                                                    </div> 
                                                    <div style="width:100%; margin-top:5px;">
                
                                                        <telerik:RadGrid ID="listBoxTakeOffStockSearch" runat="server" Width="540px" Height="550px"
                                                            DataSourceID="SqlDS_listBoxTakeOffStockSearch" AllowPaging="True" AllowSorting="True" CellSpacing="0" GridLines="None" PageSize="50" >
                   
                                                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                                                        <Selecting AllowRowSelect="true" />
                                                                        <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                            </ClientSettings>
                   
                   
                                                            <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDS_listBoxTakeOffStockSearch">
                       
                                                                <Columns>
                                                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                                                        <HeaderStyle Width="140px" Font-Size="Small" />
                                                                        <ItemStyle Width="140px" Font-Size="Small" VerticalAlign="Top" />
                                                                    </telerik:GridBoundColumn>
                                                                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                                                                        <HeaderStyle Width="400px" Font-Size="Small" />
                                                                        <ItemStyle Width="400px" Font-Size="Small" VerticalAlign="Top" />
                                                                    </telerik:GridBoundColumn>
                                                                </Columns>
                      
                                        
                                                            </MasterTableView>
                                   
                   
                                                        </telerik:RadGrid>
                
                                                            <asp:SqlDataSource ID="SqlDS_listBoxTakeOffStockSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                                SelectCommand="uspProductSearchSimple" SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter Name="ProdID" ControlID = "txtStockProdIDSearch"  PropertyName="Text" DefaultValue="" Type="String" />
                                                                    <asp:ControlParameter Name="Description" ControlID = "txtStockDescSearch" PropertyName="Text" DefaultValue="" Type="String" />
                                                                    <asp:ControlParameter Name="WhseID" ControlID = "hdnWhseID" DefaultValue="" PropertyName="Value" Type="String" />                                                    
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                    </div>
                                    
                                                    </div>
                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="NonStockList" runat="server" >

                                                        <telerik:RadGrid ID="listBoxTakeOffNonStock" runat="server" Width="550px" Height="600px"
                                                                DataSourceID="SqlDS_listBoxTakeOffNonStock" AllowPaging="False" AllowSorting="True" CellSpacing="0" GridLines="None" >
                   
                                                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                                                            <Selecting AllowRowSelect="true" />
                                                                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                                </ClientSettings>
                  
                   
                                                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDS_listBoxTakeOffNonStock" CommandItemDisplay="Top">
                                                                    <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                                                    <Columns>
                                                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                                                            <HeaderStyle Width="200px" Font-Size="Small" />
                                                                            <ItemStyle Width="200px" Font-Size="Small" VerticalAlign="Top" />
                                                                        </telerik:GridBoundColumn>
                                                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                                                                            <HeaderStyle Width="350px" Font-Size="Small" />
                                                                            <ItemStyle Width="350px" Font-Size="Small" VerticalAlign="Top" />
                                                                        </telerik:GridBoundColumn>
                                                                    </Columns>
  
                                                                </MasterTableView>
                   
                                                        </telerik:RadGrid>
                
                                                            <asp:SqlDataSource ID="SqlDS_listBoxTakeOffNonStock" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                                SelectCommand="uspProjectNonStockGetList" SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter Name="TakeOffID" ControlID = "hdnTakeOffID"  PropertyName="Value" Type="Int64" />                                                   
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>

                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="SectionComments" runat="server" Width="550px" Height="600px" >
                                                    <div style="margin:10px;">
                                  
                                                            <div style="width:530px; height:275px;">
                                                                <telerik:RadTextBox ID="editSectionComment" runat="server" Width="530px" Height="275px" MaxLength="2000" 
                                                                    TextMode="MultiLine" Wrap="true" Enabled="true" LabelCssClass="myLabelCss">    
                                                                </telerik:RadTextBox>


                                                  
                                                            </div>
                                                            <div style="width:90%; float:left; margin:10px 10px 10px 10px;">
                                                                <telerik:RadButton ID="btnUpdateSectionComment" runat="server" Text="Update Comment" UseSubmitBehavior="true" Width="100%" Skin="BlackMetroTouch"></telerik:RadButton>
                                                            </div>
                                                    </div>
                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="SubsectionComments" runat="server" Width="550px" Height="600px">
                                                    <div style="margin:10px;">
                                            
                                                         <div style="width:546px; height:275px;">
                                                                <telerik:RadTextBox ID="editSubsectionComment" runat="server" Width="530px" Height="275px" MaxLength="2000" 
                                                                    TextMode="MultiLine" Wrap="true" Enabled="true" LabelCssClass="myLabelCss">    
                                                                </telerik:RadTextBox>
                                                    
                                                    
                                                         </div>
                                                            <div style="width:90%; float:left; margin:10px 10px 10px 10px;">
                                                                <telerik:RadButton ID="btnUpdateSubsectionComment" runat="server" Text="Update Comment" UseSubmitBehavior="false" Width="100%" Skin="BlackMetroTouch"></telerik:RadButton>
                                                            </div>
                                                     </div>
                                           
                                                 </telerik:RadPageView>
                                                <telerik:RadPageView ID="SubsectionCopy" runat="server" Width="550px" Height="450px" >
                                                    <div style="margin:5px;">
                                                        <telerik:RadGrid ID="grdSubsectionCopy" runat="server" Width="550px" Height="600px"
                                                                DataSourceID="SqlDS_grdSubsectionCopy" AllowPaging="False" AllowSorting="True" CellSpacing="0" GridLines="None" >
                   
                                                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                                                            <Selecting AllowRowSelect="true" />
                                                                            <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                                </ClientSettings>
                  
                   
                                                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="SubsectionID" DataSourceID="SqlDS_grdSubsectionCopy" CommandItemDisplay="Top">
                                                                    <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                                                    <Columns>
                                                                        <telerik:GridBoundColumn DataField="SubName" HeaderText="Source Subsection to Copy" ReadOnly="True" SortExpression="SubName" UniqueName="SubName">
                                                                            <HeaderStyle Width="450px" Font-Size="Small" />
                                                                            <ItemStyle Width="450px" Font-Size="Small" VerticalAlign="Top" />
                                                                        </telerik:GridBoundColumn>
                                                                        <telerik:GridBoundColumn DataField="Lines" HeaderText="Line Items" ReadOnly="True" SortExpression="Lines" UniqueName="Lines">
                                                                            <HeaderStyle Width="75px" Font-Size="Small" />
                                                                            <ItemStyle Width="75px" Font-Size="Small" VerticalAlign="Top" HorizontalAlign="Center" />
                                                                        </telerik:GridBoundColumn>
                                                                        <telerik:GridBoundColumn DataField="SubsectionID" DataType="System.Int16" HeaderText="SubsectionID" ReadOnly="True" SortExpression="SubsectionID" UniqueName="SubsectionID" Visible="false">
                                                                            <HeaderStyle Width="75px" Font-Size="Small" />
                                                                            <ItemStyle Width="75px" Font-Size="Small" VerticalAlign="Top" HorizontalAlign="Center" />
                                                                        </telerik:GridBoundColumn>
                                                                    </Columns>
  
                                                                </MasterTableView>
                   
                                                        </telerik:RadGrid>
                
                                                            <asp:SqlDataSource ID="SqlDS_grdSubsectionCopy" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                                SelectCommand="uspProjectSubsectionDetailCopySubsectionList" SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter Name="TakeOffID" ControlID = "hdnTakeOffID"  PropertyName="Value" Type="Int64" />                                                   
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                    </div>
                                                </telerik:RadPageView>



                                
                                            </telerik:RadMultiPage>

                                            </asp:Panel>
                                   

            
                                        </div>
                            </div>
          
                        </asp:Panel>          
                   </div>
                </div>    
           </div>
             
            
            
  
        </telerik:RadPageView>

        <%--<telerik:RadPageView ID="MuniSpecs" runat="server" >
            <div style="margin-left:10px; width:990px;">
                <h2 style="width:1000px;"><asp:Label ID="lblMuniSpecName" runat="server"></asp:Label></h2>
            </div>
            <div style="width:1100px; margin:10px;">
                <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                    <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                        Links
                    </div>
                    <div style="width:100%; margin:10px; ">
                        <div style="padding:5px 0px 0px 0px; width:400px; float:left; margin-right:20px;">
                            <telerik:RadButton ID="link1" runat="server" Skin="BlackMetroTouch" Width="350px" Target="_blank" ButtonType="LinkButton">
                            </telerik:RadButton>
                        </div>
                        <div style="padding:5px 0px 0px 0px; width:400px; margin-bottom:10px; float:left;">
                            <telerik:RadButton ID="link2" runat="server" Skin="BlackMetroTouch" Width="350px" Target="_blank" ButtonType="LinkButton">
                            </telerik:RadButton>
                        </div>
                
                    </div>

                </div>
            </div>
            <div style="width:100%; margin:10px;">
              <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                    Contacts
                </div>
                    <div style="width:100%; margin:10px;">    
                    
                        <div style="width:320px; float:left; margin-bottom:10px;">
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Name:</div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lblname1" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Title: </div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lbltitle1" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Phone:</div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lblphone1" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Mobile: </div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lblmobile1" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px; ">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">eMail: </div>
                                <div style="width:200px;float: left; font-size:small;">
                                    <asp:Label ID="lblemail1" runat="server"></asp:Label></div>
                            </div>
                         
                        </div>
                         <div style="width:320px; float:left; margin-bottom:10px;">
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Name:</div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lblname2" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Title: </div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lbltitle2" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Phone:</div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lblphone2" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Mobile: </div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lblmobile2" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px; ">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">eMail: </div>
                                <div style="width:200px;float: left; font-size:small;">
                                    <asp:Label ID="lblemail2" runat="server"></asp:Label></div>
                            </div>
                         
                        </div>

                        <div style="width:320px; float:left; margin-bottom:10px;">
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Name:</div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lblname3" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Title: </div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lbltitle3" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Phone:</div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lblphone3" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">Mobile: </div>
                                <div style="width:200px;float: left;font-size:small;">
                                    <asp:Label ID="lblmobile3" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:75px;float:left; font-weight:bold; font-size:small;">eMail: </div>
                                <div style="width:200px;float: left; font-size:small;">
                                    <asp:Label ID="lblemail3" runat="server"></asp:Label></div>
                            </div>
                         
                        </div>
                    </div>
              </div>
              

              <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                   Water
                </div>
                        <div style="width:1000px; float:left;margin-left:20px; margin-bottom:10px;">
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Ductile Pipe:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblDIP" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">PVC Pipe:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblPVCWater" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Polywrap:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="Label4" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Tap Sleeve:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblTapSleeve" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Tracer/Warn:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblTracerWarn" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">MJ Fittings:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblMJFIT" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">DI Restraint:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblDIPFitRest" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">PVC Restraint:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblPVCFitRest" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Gate Valve:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblValveGate" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Valve Box:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblValveBox" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Debris Cap:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblDebrisCap" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Hydrant:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblHydrant" runat="server"></asp:Label></div>
                            </div>
                         </div>
              </div>
              <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
               <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                    Services
                </div>
                        <div style="width:1000px; float:left;margin-left:20px; margin-bottom:10px;">
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Tap Saddle-DIP:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblTapSadDIP" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Tap Saddle-PVC:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblTapSadPVC" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Curb Stop Box:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblCurbStopBox" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Meter Box:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblMeterBox" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Meter Pit:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblMeterPit" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Meter Cover:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblMeterCover" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Corp Stop:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblCorpStop" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Angle Valve:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblAngleValve" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Copper Setter:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblCopperSetter" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Custom Setter:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblCustomSetter" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">Meter:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblMeter" runat="server"></asp:Label></div>
                            </div>
                        
                         </div>
              </div>
             <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
               <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                    Sewer
                </div>
                       <div style="width:1000px; float:left;margin-left:20px; margin-bottom:10px;">
                        <div style="width:100%; float:left; margin-top:10px;">
                            <div style="width:120px;float:left; font-weight:bold; font-size:small;">Ductile Pipe:</div>
                            <div style="width:800px;float: left;font-size:small;">
                                <asp:Label ID="lblDIPSewer" runat="server"></asp:Label></div>
                        </div>
                        <div style="width:100%; float:left; margin-top:10px;">
                            <div style="width:120px;float:left; font-weight:bold; font-size:small;">PVC Pipe:</div>
                            <div style="width:800px;float: left;font-size:small;">
                                <asp:Label ID="lblPVCSewer" runat="server"></asp:Label></div>
                        </div>
                        <div style="width:100%; float:left; margin-top:10px;">
                            <div style="width:120px;float:left; font-weight:bold; font-size:small;">Clay Pipe:</div>
                            <div style="width:800px;float: left;font-size:small;">
                                <asp:Label ID="lblClaySewer" runat="server"></asp:Label></div>
                        </div>
                        <div style="width:100%; float:left; margin-top:10px;">
                            <div style="width:120px;float:left; font-weight:bold; font-size:small;">Tracer/Warn:</div>
                            <div style="width:800px;float: left;font-size:small;">
                                <asp:Label ID="lblTracerWarnSewer" runat="server"></asp:Label></div>
                        </div>
                        <div style="width:100%; float:left; margin-top:10px;">
                            <div style="width:120px;float:left; font-weight:bold; font-size:small;">Underdrain:</div>
                            <div style="width:800px;float: left;font-size:small;">
                                <asp:Label ID="lblUnderdrain" runat="server"></asp:Label></div>
                        </div>
                        <div style="width:100%; float:left; margin-top:10px;">
                            <div style="width:120px;float:left; font-weight:bold; font-size:small;">DI Fittings:</div>
                            <div style="width:800px;float: left;font-size:small;">
                                <asp:Label ID="lblDIPFitSewer" runat="server"></asp:Label></div>
                        </div>
                        <div style="width:100%; float:left; margin-top:10px;">
                            <div style="width:120px;float:left; font-weight:bold; font-size:small;">PVC Fittings:</div>
                            <div style="width:800px;float: left;font-size:small;">
                                <asp:Label ID="lblPVCFitSewer" runat="server"></asp:Label></div>
                        </div>
                        <div style="width:100%; float:left; margin-top:10px;">
                            <div style="width:120px;float:left; font-weight:bold; font-size:small;">Clay Fittings:</div>
                            <div style="width:800px;float: left;font-size:small;">
                                <asp:Label ID="lblClayFitSewer" runat="server"></asp:Label></div>
                        </div>
                        
                     </div>
              </div>
              <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
               <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                    Storm Drain
                </div>
                        <div style="width:1000px; float:left;margin-left:20px; margin-bottom:10px;">
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">HDPE Pipe:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblHDPEDrainPipe" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:120px;float:left; font-weight:bold; font-size:small;">HDPE Fittings:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblHDPEDrainFit" runat="server"></asp:Label></div>
                            </div>
                        
                         </div>
              </div>
              <div style="width:1000px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
               <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                    Miscellaneous
                </div>
                        <div style="width:1000px; float:left;margin-left:20px; margin-bottom:10px;">
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:40px;float:left; font-weight:bold; font-size:small;">1:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblmisc1" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:40px;float:left; font-weight:bold; font-size:small;">2:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblmisc2" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:40px;float:left; font-weight:bold; font-size:small;">3:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblmisc3" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:40px;float:left; font-weight:bold; font-size:small;">4:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblmisc4" runat="server"></asp:Label></div>
                            </div>
                            <div style="width:100%; float:left; margin-top:10px;">
                                <div style="width:40px;float:left; font-weight:bold; font-size:small;">5:</div>
                                <div style="width:800px;float: left;font-size:small;">
                                    <asp:Label ID="lblmisc5" runat="server"></asp:Label></div>
                            </div>
                        
                         </div>
              </div>
            
            
            </div>
        </telerik:RadPageView>--%>

        <telerik:RadPageView ID="OP_AMRPDFs" runat="server" >
            <div style="width:100%; margin:10px; font-size:medium; color:#4c68a2;">
                All AMR PDF outputs begin with a cover page, and terms and conditions. 
            </div>
            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteFormalAMRPDF" ButtonType="LinkButton" UseSubmitBehavior="false" runat="server" width="600px" font-size="Small" Text="Standard" Skin="BlackMetroTouch"  Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table10" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow49" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell6" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell7" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell13" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell14" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell20" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow50" runat="server">
                        <asp:TableCell ID="TableCell21" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell32" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell33" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell41" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell42" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow51" runat="server" >
                        <asp:TableCell ID="TableCell48" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell49" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell55" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell56" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell67" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow52" runat="server">
                        <asp:TableCell ID="TableCell68" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell76" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell77" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell83" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell84" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow53" runat="server" >
                        <asp:TableCell ID="TableCell90" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell91" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell102" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell103" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell111" runat="server">No</asp:TableCell>
                       
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow54" runat="server">
                        <asp:TableCell ID="TableCell112" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell118" runat="server" ColumnSpan="6">NonStock items are not shaded gray, as they are in Contractor outputs.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>

            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteFormalNoMatListAMRPDF" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Standard - No Summary Table" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table11" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow55" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell119" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell125" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell126" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell137" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell138" runat="server">Material List</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow56" runat="server">
                        <asp:TableCell ID="TableCell146" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell147" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell153" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell154" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell160" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow57" runat="server" >
                        <asp:TableCell ID="TableCell161" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell172" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell173" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell181" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell182" runat="server">Grand Total</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow58" runat="server">
                        <asp:TableCell ID="TableCell188" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell189" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell195" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell196" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell207" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow59" runat="server" >
                        <asp:TableCell ID="TableCell208" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell216" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell217" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell223" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell224" runat="server">No</asp:TableCell>
                       
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow60" runat="server">
                        <asp:TableCell ID="TableCell230" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell231" runat="server" ColumnSpan="6">NonStock items are not shaded gray, as they are in Contractor outputs.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

        </telerik:RadPageView>        
        <telerik:RadPageView ID="OP_ContractorPDFs" runat="server" >
            <div style="width:100%; margin:10px; font-size:medium; color:#4c68a2;">
                All Contractor PDF outputs begin with a cover page, and terms and conditions. 
            </div>
            
            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteFormalPDF" ButtonType="LinkButton" UseSubmitBehavior="false" runat="server" width="600px" font-size="Small" Text="Standard" Skin="BlackMetroTouch"  Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table1" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow1" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell1" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell2" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell3" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell4" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell5" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell ID="TableCell8" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell9" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell10" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell11" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell12" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server" >
                        <asp:TableCell ID="TableCell15" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell16" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell17" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell18" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell19" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server">
                        <asp:TableCell ID="TableCell22" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell23" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell24" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell25" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell26" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow5" runat="server" >
                        <asp:TableCell ID="TableCell27" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell28" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell29" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell30" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell31" runat="server">No</asp:TableCell>
                       
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow6" runat="server">
                        <asp:TableCell ID="TableCell34" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell35" runat="server" ColumnSpan="6">The Material List at the end of this format can be <i>very</i> useful to the customer on a large job.  <b>It can also make it very easy to shop our quote against competitors.</b>  </asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>

            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteFormalPDFNoBreak" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Standard - No Page Breaks" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table2" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow  runat="server" Font-Bold="False">
                        <asp:TableCell  runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell  runat="server">✅</asp:TableCell>
                        <asp:TableCell  runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell  runat="server">✅</asp:TableCell>
                        <asp:TableCell  runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow  runat="server">
                        <asp:TableCell  runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell  runat="server">✅</asp:TableCell>
                        <asp:TableCell  runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell  runat="server">✅</asp:TableCell>
                        <asp:TableCell  runat="server">Extended Price</asp:TableCell>
                      
                    </asp:TableRow>
                    <asp:TableRow runat="server" >
                        <asp:TableCell  runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell  runat="server">✅</asp:TableCell>
                        <asp:TableCell  runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell  runat="server">✅</asp:TableCell>
                        <asp:TableCell  runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow  runat="server">
                        <asp:TableCell  runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell  runat="server">✅</asp:TableCell>
                        <asp:TableCell  runat="server">Yes</asp:TableCell>
                        <asp:TableCell  runat="server"></asp:TableCell>
                        <asp:TableCell  runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow  runat="server" >
                        <asp:TableCell  runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell  runat="server"></asp:TableCell>
                        <asp:TableCell  runat="server">Yes</asp:TableCell>
                        <asp:TableCell  runat="server">✅</asp:TableCell>
                        <asp:TableCell  runat="server">No</asp:TableCell>
                       
                    </asp:TableRow>
       
                    <asp:TableRow  runat="server">
                        <asp:TableCell  runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell  runat="server" ColumnSpan="6">The Material List at the end of this format can be <i>very</i> useful to the customer on a large job.  It can also make it very easy to shop our quote against competitors.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteFormalNoAveragePDF" ButtonType="LinkButton" UseSubmitBehavior="false" runat="server" width="600px" font-size="Small" Text="Standard - No Averaging" Skin="BlackMetroTouch"  Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table21" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow84" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell370" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell371" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell372" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell373" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell374" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow85" runat="server">
                        <asp:TableCell ID="TableCell375" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell376" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell377" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell378" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell379" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow86" runat="server" >
                        <asp:TableCell ID="TableCell380" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell381" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell382" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell383" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell384" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow87" runat="server">
                        <asp:TableCell ID="TableCell385" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell386" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell387" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell388" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell389" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow88" runat="server" >
                        <asp:TableCell ID="TableCell390" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell391" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell392" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell393" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell394" runat="server">No</asp:TableCell>
                       
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow90" runat="server">
                        <asp:TableCell ID="TableCell397" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell398" runat="server" ColumnSpan="6">The Material List at the end of this format can be <i>very</i> useful to the customer on a large job.  <b>It can also make it very easy to shop our quote against competitors.</b>  </asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>

            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteFormalNoMatListPDF" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Standard - No Material List" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table3" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow7" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell36" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell37" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell38" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell39" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell40" runat="server">Material List</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow8" runat="server">
                        <asp:TableCell ID="TableCell43" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell44" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell45" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell46" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell47" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow9" runat="server" >
                        <asp:TableCell ID="TableCell50" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell51" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell52" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell53" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell54" runat="server">Grand Total</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow10" runat="server">
                        <asp:TableCell ID="TableCell57" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell58" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell59" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell60" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell61" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow11" runat="server" >
                        <asp:TableCell ID="TableCell62" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell63" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell64" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell65" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell66" runat="server">No</asp:TableCell>
                       
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow12" runat="server">
                        <asp:TableCell ID="TableCell69" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell70" runat="server" ColumnSpan="6"></asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteFormalNoMatListPDF_NoBreak" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Standard - No Material List, No Page Break" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table4" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow13" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell71" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell72" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell73" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell74" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell75" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow14" runat="server">
                        <asp:TableCell ID="TableCell78" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell79" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell80" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell81" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell82" runat="server">Extended Price</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow15" runat="server" >
                        <asp:TableCell ID="TableCell85" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell86" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell87" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell88" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell89" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow16" runat="server">
                        <asp:TableCell ID="TableCell92" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell93" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell94" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell95" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell96" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow17" runat="server" >
                        <asp:TableCell ID="TableCell97" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell98" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell99" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell100" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell101" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow18" runat="server">
                        <asp:TableCell ID="TableCell104" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell105" runat="server" ColumnSpan="6"></asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteTrimPDF" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Trim" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table5" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow19" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell106" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell107" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell108" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell109" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell110" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow20" runat="server">
                        <asp:TableCell ID="TableCell113" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell114" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell115" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell116" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell117" runat="server">Extended Price</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow21" runat="server" >
                        <asp:TableCell ID="TableCell120" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell121" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell122" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell123" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell124" runat="server">Grand Total</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow22" runat="server">
                        <asp:TableCell ID="TableCell127" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell128" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell129" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell130" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell131" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow23" runat="server" >
                        <asp:TableCell ID="TableCell132" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell133" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell134" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell135" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell136" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow24" runat="server">
                        <asp:TableCell ID="TableCell139" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell140" runat="server" ColumnSpan="6">This format is designed to provide a 'street' quote.  No unit prices or quantities available for the customer to use in shopping us with other distributors.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteFormal3PDF" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Standard - No Total" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table6" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow25" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell141" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell142" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell143" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell144" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell145" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow26" runat="server">
                        <asp:TableCell ID="TableCell148" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell149" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell150" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell151" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell152" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow27" runat="server" >
                        <asp:TableCell ID="TableCell155" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell156" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell157" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell158" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell159" runat="server">Grand Total</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow28" runat="server">
                        <asp:TableCell ID="TableCell162" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell163" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell164" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell165" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell166" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow29" runat="server" >
                        <asp:TableCell ID="TableCell167" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell168" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell169" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell170" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell171" runat="server">No</asp:TableCell>
                       
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow30" runat="server">
                        <asp:TableCell ID="TableCell174" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell175" runat="server" ColumnSpan="6">Subsection totals only, no grand total.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteMaterialListPDF" ButtonType="LinkButton" runat="server" width="600px" font-size="Small" Text="Material List" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table7" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow31" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell176" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell177" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell178" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell179" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell180" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow32" runat="server">
                        <asp:TableCell ID="TableCell183" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell184" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell185" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell186" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell187" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow33" runat="server" >
                        <asp:TableCell ID="TableCell190" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell191" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell192" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell193" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell194" runat="server">Grand Total</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow34" runat="server">
                        <asp:TableCell ID="TableCell197" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell198" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell199" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell200" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell201" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow35" runat="server" >
                        <asp:TableCell ID="TableCell202" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell203" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell204" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell205" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell206" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow36" runat="server">
                        <asp:TableCell ID="TableCell209" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell210" runat="server" ColumnSpan="6">Products are sorted according to Kepner product number. If you need products in a specific order, create
                            a material list using the Standard - No Material List outputs.  The material list is in essence one section and one subsection.
                        </asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteScopeOfWork" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"  Text="Scope Of Work" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table8" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow37" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell211" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell212" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell213" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell214" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell215" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow38" runat="server">
                        <asp:TableCell ID="TableCell218" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell219" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell220" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell221" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell222" runat="server">Extended Price</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow39" runat="server" >
                        <asp:TableCell ID="TableCell225" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell226" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell227" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell228" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell229" runat="server">Grand Total</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow40" runat="server">
                        <asp:TableCell ID="TableCell232" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell233" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell234" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell235" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell236" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow41" runat="server" >
                        <asp:TableCell ID="TableCell237" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell238" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell239" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell240" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell241" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow42" runat="server">
                        <asp:TableCell ID="TableCell244" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell245" runat="server" ColumnSpan="6">Summary table does not include totals for the subsections, just the subsection titles.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteSubmittal" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Submittal" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table9" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow43" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell246" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell247" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell248" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell249" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell250" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow44" runat="server">
                        <asp:TableCell ID="TableCell253" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell254" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell255" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell256" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell257" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow45" runat="server" >
                        <asp:TableCell ID="TableCell260" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell261" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell262" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell263" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell264" runat="server">Grand Total</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow46" runat="server">
                        <asp:TableCell ID="TableCell267" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell268" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell269" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell270" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell271" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow47" runat="server" >
                        <asp:TableCell ID="TableCell272" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell273" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell274" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell275" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell276" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow48" runat="server">
                        <asp:TableCell ID="TableCell279" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell280" runat="server" ColumnSpan="4">No pricing presented, just material.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>
        </telerik:RadPageView>      
        <telerik:RadPageView ID="OP_ContractorExcel" runat="server" >
       
            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteStructuredExcel2" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Standard" Skin="BlackMetroTouch"  Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table12" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow61" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell242" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell243" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell251" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell252" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell258" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow62" runat="server">
                        <asp:TableCell ID="TableCell259" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell265" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell266" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell277" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell278" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow63" runat="server" >
                        <asp:TableCell ID="TableCell281" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell282" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell283" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell284" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell285" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow64" runat="server">
                        <asp:TableCell ID="TableCell286" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell287" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell288" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell289" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell290" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow65" runat="server" >
                        <asp:TableCell ID="TableCell291" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell292" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell293" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell294" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell295" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow66" runat="server">
                        <asp:TableCell ID="TableCell296" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell297" runat="server" ColumnSpan="4">The Excel formats are designed to help our customers with data work such as importation into their own estimating tools and accounting/invoicing.<br /><br />
                        This output lists the section and subsection just once, merging the titles across all rows in the section &/or subsection.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteStructuredExcel" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Standard" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table13" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow67" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell298" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell299" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell300" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell301" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell302" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow68" runat="server">
                        <asp:TableCell ID="TableCell303" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell304" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell305" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell306" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell307" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow69" runat="server" >
                        <asp:TableCell ID="TableCell308" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell309" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell310" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell311" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell312" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow70" runat="server">
                        <asp:TableCell ID="TableCell313" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell314" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell315" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell316" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell317" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow71" runat="server" >
                        <asp:TableCell ID="TableCell318" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell319" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell320" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell321" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell322" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow72" runat="server">
                        <asp:TableCell ID="TableCell323" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell324" runat="server" ColumnSpan="4">The Excel formats are designed to help our customers with data work such as importation into their own estimating tools and accounting/invoicing.<br /><br />
                        This output lists repeats the section and subsection titles on each row of the section &/or subsection.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteMaterialListExcel" ButtonType="LinkButton" runat="server" width="600px" font-size="Small" Text="Material List" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table14" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow73" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell325" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell326" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell327" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell328" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell329" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow74" runat="server">
                        <asp:TableCell ID="TableCell330" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell331" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell332" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell333" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell334" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow75" runat="server" >
                        <asp:TableCell ID="TableCell335" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell336" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell337" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell338" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell339" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow76" runat="server">
                        <asp:TableCell ID="TableCell340" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell341" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell342" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell343" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell344" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow77" runat="server" >
                        <asp:TableCell ID="TableCell345" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell346" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell347" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell348" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell349" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow78" runat="server">
                        <asp:TableCell ID="TableCell350" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell351" runat="server" ColumnSpan="4"></asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>



        </telerik:RadPageView>
        <telerik:RadPageView ID="OP_Internal" runat="server" >
            
            
            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuotePricingReview2" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Pricing Review" Skin="BlackMetroTouch"    Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table17" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow91" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell406" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell407" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell408" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell409" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell410" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow92" runat="server">
                        <asp:TableCell ID="TableCell411" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell412" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell413" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell414" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell415" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow93" runat="server" >
                        <asp:TableCell ID="TableCell416" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell417" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell418" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell419" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell420" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow94" runat="server">
                        <asp:TableCell ID="TableCell421" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell422" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell423" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell424" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell425" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow95" runat="server" >
                        <asp:TableCell ID="TableCell426" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell427" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell428" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell429" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell430" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow96" runat="server">
                        <asp:TableCell ID="TableCell431" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell432" runat="server" ColumnSpan="4">The purpose of this report is to provide assistance to Dave Wickett and Branch Management in the bidding process. <br /><br />
                        The report includes extended prices and costs,  and cost notes (quotes, block pricing used, etc.).
                        </asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>
            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteManEntry" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Structured Entry Aid" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table18" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow97" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell433" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell434" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell435" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell436" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell437" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow98" runat="server">
                        <asp:TableCell ID="TableCell438" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell439" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell440" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell441" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell442" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow99" runat="server" >
                        <asp:TableCell ID="TableCell443" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell444" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell445" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell352"  runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell353"  runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow79" runat="server">
                        <asp:TableCell ID="TableCell354"  runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell355"  runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell356"  runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell357"  runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell358"  runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow80"  runat="server" >
                        <asp:TableCell ID="TableCell359"  runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell360"  runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell361"  runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell362"  runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell363"  runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow81"  runat="server">
                        <asp:TableCell ID="TableCell364"  runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell365"  runat="server" ColumnSpan="4">The purpose of this report is to aid the entry of a quote into SXe. <br /><br />
                        The output is structured in sections/subsections, and includes product number, price, cost, and cost notes.<br /><br />
                        The user can use copy/paste functions to transfer PDF information (ie. nonstock numbers and descriptions) into SXe.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>
            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteManEntryMatList" ButtonType="LinkButton" runat="server" width="600px" font-size="Small" Text="Material List Entry Aid" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table19" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow100" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell446" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell447" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell448" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell449" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell450" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow101" runat="server">
                        <asp:TableCell ID="TableCell451" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell452" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell453" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell454" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell455" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow102" runat="server" >
                        <asp:TableCell ID="TableCell456" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell457" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell458" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell459" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell460" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow103" runat="server">
                        <asp:TableCell ID="TableCell461" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell462" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell463" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell464" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell465" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow104" runat="server" >
                        <asp:TableCell ID="TableCell466" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell467" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell468" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell469" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell470" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow105" runat="server">
                        <asp:TableCell ID="TableCell471" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell472" runat="server" ColumnSpan="4">The purpose of this report is to aid the entry of a quote into SXe. <br /><br />
                        The output is structured in material list format (sorted by product number), and includes product number, price, cost, and cost notes.<br /><br />
                        The user can use copy/paste functions to transfer PDF information (ie. nonstock numbers and descriptions) into SXe. </asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteManEntrySectionalMatList" ButtonType="LinkButton" runat="server" width="600px" font-size="Small" Text="Sectional Material List Entry Aid" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table22" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow107" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell399" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell400" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell401" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell402" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell403" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow108" runat="server">
                        <asp:TableCell ID="TableCell404" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell405" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell478" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell479" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell480" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow109" runat="server" >
                        <asp:TableCell ID="TableCell481" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell482" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell483" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell484" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell485" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow110" runat="server">
                        <asp:TableCell ID="TableCell486" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell487" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell488" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell489" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell490" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow111" runat="server" >
                        <asp:TableCell ID="TableCell491" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell492" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell493" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell494" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell495" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow112" runat="server">
                        <asp:TableCell ID="TableCell496" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell497" runat="server" ColumnSpan="4">The purpose of this report is to aid the entry of a quote into SXe. <br /><br />
                        The output generates a material list for each section within the quote.<br /><br />
                        The user can use copy/paste functions to transfer PDF information (ie. nonstock numbers and descriptions) into SXe. </asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>


            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkQuoteManEntryMatListWithLocation" ButtonType="LinkButton" runat="server" width="600px" font-size="Small" Text="Material List Entry Aid with Location" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table23" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow113" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell498" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell499" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell500" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell501" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell502" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow114" runat="server">
                        <asp:TableCell ID="TableCell503" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell504" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell505" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell506" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell507" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow115" runat="server" >
                        <asp:TableCell ID="TableCell508" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell509" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell510" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell511" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell512" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow116" runat="server">
                        <asp:TableCell ID="TableCell513" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell514" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell515" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell516" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell517" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow117" runat="server" >
                        <asp:TableCell ID="TableCell518" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell519" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell520" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell521" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell522" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow118" runat="server">
                        <asp:TableCell ID="TableCell523" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell524" runat="server" ColumnSpan="4">The purpose of this report is to aid the entry of a quote into SXe. <br /><br />
                        The basic output format is a material list, but with the added feature of a breakdown of all locations within the quote for where each product is quoted.  A grand total for each product is provided as well. <br /><br />
                        The user can use copy/paste functions to transfer PDF information (ie. nonstock numbers and descriptions) into SXe. </asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkGrablistComp" ButtonType="LinkButton" runat="server" width="600px" font-size="Small" Text="Grablist/TakeOff Comparison" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table24" runat="server" Width="600px" Height="150px">

                    <asp:TableRow ID="TableRow119" runat="server">
                        <asp:TableCell ID="TableCell525" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell526" runat="server" ColumnSpan="4">This report provides a material list comparison of all items on the Grablist, and their count on the takeoff.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkComparisonTakeOff" ButtonType="LinkButton" runat="server" width="600px" font-size="Small" Text="TakeOff Comparison" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table15" runat="server" Width="600px" Height="150px">

                    <asp:TableRow ID="TableRow89" runat="server">
                        <asp:TableCell ID="TableCell395" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell396" runat="server" ColumnSpan="4">This report provides a material list comparison of all takeoffs on the project.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>

            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkVendorQuoteRequest2" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Vendor Quote Request" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table20" runat="server" Width="600px" Height="75px">
        
                    <asp:TableRow ID="TableRow106" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell473" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell474" runat="server"></asp:TableCell>
                        <asp:TableCell ID="TableCell475" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell476" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell477" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    
                   
       
                    <asp:TableRow ID="TableRow82"  runat="server">
                        <asp:TableCell ID="TableCell366"  runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell367"  runat="server" ColumnSpan="4">This report creates an Excel material list that Purchasing can use to copy/paste into vendor emails requesting pricing.</asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>
            
            <div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkInforContractPricing" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Contract Pricing" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table16" runat="server" Width="600px" Height="75px">
        
                    
       
                    <asp:TableRow ID="TableRow83"  runat="server" VerticalAlign="Top">
                        <asp:TableCell ID="TableCell368"  runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell369"  runat="server" ColumnSpan="4" VerticalAlign="Top">Creates and Excel file for the SXe contract pricing import. </asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>
            <%--<div style="width:100%; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadButton ID="lnkInforQuoteOrder" ButtonType="LinkButton" runat="server" width="600px" font-size="Small"   Text="Quote Order" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                </div>
                <asp:Table ID="Table21" runat="server" Width="600px" Height="150px">
        
                    <asp:TableRow ID="TableRow109" runat="server" Font-Bold="False">
                        <asp:TableCell ID="TableCell486" runat="server" Font-Bold="True" Width="175px">Material Layout</asp:TableCell>
                        <asp:TableCell ID="TableCell487" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell488" runat="server">Section/Subsection</asp:TableCell>
                        <asp:TableCell ID="TableCell489" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell490" runat="server">Material List</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow110" runat="server">
                        <asp:TableCell ID="TableCell491" runat="server" Font-Bold="True">Line Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell492" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell493" runat="server">Unit Pricing</asp:TableCell>
                        <asp:TableCell ID="TableCell494" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell495" runat="server">Extended Price</asp:TableCell>
                        
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow111" runat="server" >
                        <asp:TableCell ID="TableCell496" runat="server" Font-Bold="True">Pricing Totals</asp:TableCell>
                        <asp:TableCell ID="TableCell497" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell498" runat="server">Summary Table</asp:TableCell>
                        <asp:TableCell ID="TableCell499" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell500" runat="server">Grand Total</asp:TableCell>
                       
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow112" runat="server">
                        <asp:TableCell ID="TableCell501" runat="server" Font-Bold="True">Subsection Averaging</asp:TableCell>
                        <asp:TableCell ID="TableCell502" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell503" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell504" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell505" runat="server">No</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow113" runat="server" >
                        <asp:TableCell ID="TableCell506" runat="server" Font-Bold="True">Page Breaks</asp:TableCell>
                        <asp:TableCell ID="TableCell507" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell508" runat="server">Yes</asp:TableCell>
                        <asp:TableCell ID="TableCell509" runat="server">✅</asp:TableCell>
                        <asp:TableCell ID="TableCell510" runat="server">No</asp:TableCell>
                        
                    </asp:TableRow>
       
                    <asp:TableRow ID="TableRow114" runat="server">
                        <asp:TableCell ID="TableCell511" runat="server" Font-Bold="True" VerticalAlign="Top">Report Notes:</asp:TableCell>
                        <asp:TableCell ID="TableCell512" runat="server" ColumnSpan="4"></asp:TableCell>
                    </asp:TableRow>
        
                </asp:Table>
            </div>--%>


        </telerik:RadPageView>
        <telerik:RadPageView ID="Services" runat="server" >
            <div style="width:1500px;">
             <div style="width:1300px; float:left;">  
                    <%--<div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                        Request Service                        
                    </div>    
                    <div style="width:100%; margin:10px;">
                        <p style="margin:10px; font-weight:bold; font-size:small; color:#4c68a2;">Please provide a Ship To and/or contract start and end dates before requesting that contract pricing or a quote import be performed.</p>
                    </div>--%>
                    
                    <div style="margin:30px 0px 10px 20px; font-size:medium; width:1200px;">
                        <p style="font-size:medium;">
                            Contract Pricing is one of the best tools available to improve Order accuracy, reduce manual price reviews associated with auto-rejects, and shorten the time needed to invoice.
                        </p>
                        <p style="font-size:medium;">
                            Please review the information below, and submit a request for Operations to import your quote pricing into GUI/SXe.
                        </p>
                    </div>
                        
                         
                    <div style="width:1200px; float:left;margin:0px 0px 30px 20px;">
                        <div style="width:100%;">
                            <div style="width:100%; margin:0px 0px 10px 0px; float:left;">
                                <div style="width:300px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;padding: 10px;">
                                    Customer Information
                                </div> 
                            </div>
                            <div style="width:1200px; margin:10px 0px 20px 0px;float:left;">
                                <div style="font-size:medium; float:left; width:1200px; ">
                                    This quote is currently assigned to:
                                </div>
                                <div style="font-size:medium; float:left; width:1200px; margin-left:100px; ">
                                    <asp:Label ID="lblCustomer" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                                </div>   
                                
                               <div style="font-size:medium; float:left; width:1200px;float:left; ">
                                    If this is not the customer, or customer number, you intend to assign contract pricing to, please correct the customer on the <b>Header</b> page.  Contracts will not be imported if the customer is a placeholder name like 'Cash' or 'Contractor Bidding On.'
                               </div>
                            </div>
                        </div>
                        <div style="width:100%; float:left;">
                            <div style="width:100%; margin:0px 0px 10px 0px;float:left;">
                                <div style="width:300px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;padding: 10px; float:left;">
                                    SXe Job Information
                                </div>
                            </div>
                            <div style="width:100%; margin:20px 0px 20px 0px;">
                                <p style="font-size:medium;">
                                    In order to assign the contract prices to the right job, we need to know the ShipTo code that has been created for this job in SXe.  We also need to know the date range that the prices are valid for.
                                </p>
                            </div> 
                            <div style="width:100%; margin:20px 0px 10px 0px;">
                                <div style="width:100%; float:left;">
                                        <div style="width:180px; float:left; margin-left:10px;">
                                            <telerik:RadTextBox ID="txtBoxNewShipTo" runat="server" Label="ShipTo:" MaxLength="20" Width="150px" LabelWidth="60px" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox> 
                                        </div>
                                        <div style="width:200px; float:left;">
                                             <div style="width:50px;float:left;">
                                                <asp:Label ID="lblContractStartDate" runat="server" Text="Start: " Width="45px" CssClass="myLabelCss" ></ASP:Label>
                                             </div>
                                             <div style="width:110px; float:left;">
                                                 <telerik:RadDatePicker ID="ContractStartDate" Width="110px" runat="server"  
                                                          Culture="en-US"  MinDate="1900-01-01" MaxDate="2030-01-01" DatePopupButton-ToolTip="The date contract pricing should start." >
                                                          <Calendar ID="Calendar1"  UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                                             <DateInput ID="DateInput1" DisplayDateFormat="MM/dd/yyyy" DateFormat="MM/dd/yyyy" runat="server"></DateInput>
                                                 </telerik:RadDatePicker>
                                             </div>
                                             
                                        </div>
                                        <div style="width:220px; float:left;">
                                             <div style="width:50px;float:left; vertical-align:middle;">
                                                <asp:Label ID="lblContractEndDate" runat="server" Text="End: " CssClass="myLabelCss"></ASP:Label>
                                             </div>
                                             <div style="width:110px; float:left;">
                                                 <telerik:RadDatePicker ID="ContractEndDate" Width="110px" runat="server"  
                                                          Culture="en-US"  MinDate="1900-01-01" MaxDate="2030-01-01" DatePopupButton-ToolTip="The date contract pricing should end." >
                                                          <Calendar ID="Calendar2"  UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                                             <DateInput ID="DateInput2" DisplayDateFormat="MM/dd/yyyy" DateFormat="MM/dd/yyyy" runat="server"></DateInput>
                                                 </telerik:RadDatePicker>
                                             </div>
                                        </div>
                                        <div style="width:210px; float:left;">
                                            <telerik:RadButton ID="btnUpdateStartEndShipTo" runat="server" Text="Update Dates and ShipTo" UseSubmitBehavior="false" Width="210px" Skin="BlackMetroTouch"></telerik:RadButton>
                                        </div>
                                </div>

                            </div>
                        
                        </div>
                                      
                                           
                    </div>
                    <div style="width:100%; float:left;margin:0px 0px 30px 20px;">
                        <div style="width:100%;">
                            <div style="width:100%; margin:0px 0px 20px 0px;">
                                <div style="width:300px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;padding: 10px;">
                                   Request Import
                                </div> 
                            </div>
                            <div style="width:100%; margin:20px 0px 20px 0px;">
                                <p style="font-size:medium;">
                                    Once you have confirmed your customer and entered your Job information, please submit your request for import.  Operations will be alerted to your request.  The status of your request will be displayed below.
                                </p>
                            </div>
                            <div style="width:100%; margin:20px 0px 20px 250px;">
                                <telerik:RadButton ID="btnRequestQuoteService" runat="server" Text="Request Service" UseSubmitBehavior="false" Width="210px" Skin="BlackMetroTouch"></telerik:RadButton>
                            </div>
                            <div style="width:100%; margin:20px 0px 20px 0px;">
                                    <telerik:RadGrid ID="grdServiceRequest" runat="server" Width="848px" Height="100px" AllowSorting="True" CellSpacing="0" 
                                                        DataSourceID="SqlDS_grdServiceRequests" GridLines="None">
                    
                                                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdServiceRequests">
                                                            <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                                            <Columns>
                                                                <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status">
                                                                    <HeaderStyle HorizontalAlign="Left" Width="40px" />
                                                                    <ItemStyle HorizontalAlign="Left" Width="40px" Wrap="false" />
                                                                </telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="Service" HeaderText="Service" SortExpression="Service" UniqueName="Service">
                                                                    <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                                                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                                                                </telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="Requested"  DataType="System.DateTime" HeaderText="Requested" SortExpression="Requested" UniqueName="Requested">
                                                                    <HeaderStyle HorizontalAlign="Left" Width="120px" />
                                                                    <ItemStyle HorizontalAlign="Left" Width="120px"  Wrap="false" />
                                                                </telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="RequestedBy" HeaderText="Requested By" SortExpression="RequestedBy" UniqueName="RequestedBy">
                                                                    <HeaderStyle HorizontalAlign="Left" Width="150px" />
                                                                    <ItemStyle HorizontalAlign="Left" Width="150px"  />
                                                                </telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="Completed"  DataType="System.DateTime" HeaderText="Completed" SortExpression="Completed" UniqueName="Completed">
                                                                    <HeaderStyle HorizontalAlign="Left" Width="120px" />
                                                                    <ItemStyle HorizontalAlign="Left" Width="120px"  Wrap="false" />
                                                                </telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="CompletedBy" HeaderText="Completed By" SortExpression="CompletedBy" UniqueName="CompletedBy">
                                                                    <HeaderStyle HorizontalAlign="Left" Width="150px" />
                                                                    <ItemStyle HorizontalAlign="Left" Width="150px" />
                                                                </telerik:GridBoundColumn>
                                                            </Columns>
                       
                       
                                                        </MasterTableView>

                    
                                                    </telerik:RadGrid>
                                    
                                    <asp:SqlDataSource ID="SqlDS_grdServiceRequests" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                        SelectCommand="uspQuoteServiceListingSpecificQuote" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="hdnQuoteID" Name="QuoteID" PropertyName="Value" Type="Int64" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                            </div>


                        </div>

                    
                    </div>                   
            </div>
           
            </div>


        </telerik:RadPageView>
        <%--<telerik:RadPageView ID="Orders" runat="server" >
            

             <div style="width:1000px; margin:10px 0px 0px 0px;">
                <div style="width:1000px; height:329px;float:left; border:2px solid #4c68a2;">  
                    <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                        Order Headers
                    </div>

                     <telerik:RadGrid ID="grdOrderHeaders" Width="996px" runat="server" Height="300px"  AllowPaging="False" PageSize="15" AllowSorting="True" CellSpacing="0" 
                                DataSourceID="SqlDS_grdOrderHeaders" DataKeyNames="OrderNumber" GridLines="None"  >
                    
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                <Selecting AllowRowSelect="true" />
                                <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                            </ClientSettings>


                         <MasterTableView AutoGenerateColumns="False" DataKeyNames="OrderNumber" DataSourceID="SqlDS_grdOrderHeaders">
                           
                            <Columns>
                             <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" ReadOnly="True" SortExpression="OrderNumber" UniqueName="OrderNumber">
                                <HeaderStyle HorizontalAlign="Left" Width="75px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status">
                                <HeaderStyle HorizontalAlign="Left" Width="75px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="Stage" HeaderText="Stage" SortExpression="Stage" UniqueName="Stage">
                                <HeaderStyle HorizontalAlign="Left" Width="75px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                                <HeaderStyle HorizontalAlign="Left" Width="50px" Wrap="false"  />
                                <ItemStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="CustPO" HeaderText="CustPO" SortExpression="CustPO" UniqueName="CustPO">
                                <HeaderStyle HorizontalAlign="Left" Width="75px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="PlacedBy" HeaderText="Placed" SortExpression="PlacedBy" UniqueName="PlacedBy">
                                <HeaderStyle HorizontalAlign="Left" Width="50px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="PickInitials" HeaderText="Pick" SortExpression="PickInitials" UniqueName="PickInitials">
                                <HeaderStyle HorizontalAlign="Left" Width="50px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate">
                                <HeaderStyle HorizontalAlign="Left" Width="75px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="ShipDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Shipped" SortExpression="ShipDate" UniqueName="ShipDate">
                                <HeaderStyle HorizontalAlign="Left" Width="75px"  Wrap="false" />
                                <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="InvoiceDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Invoiced" SortExpression="InvoiceDate" UniqueName="InvoiceDate">
                                <HeaderStyle HorizontalAlign="Left" Width="75px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="TotalOrderAmount" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Order Amnt" SortExpression="TotalOrderAmount" 
                                 UniqueName="TotalOrderAmount">
                                <HeaderStyle HorizontalAlign="Left" Width="75px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="ActualFreight" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Freight" SortExpression="ActualFreight" UniqueName="ActualFreight">
                                <HeaderStyle HorizontalAlign="Left" Width="55px"  Wrap="false"/>
                                <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="ShipViaType" HeaderText="Via" SortExpression="ShipViaType" UniqueName="ShipViaType">
                                <HeaderStyle HorizontalAlign="Left" Width="35px" Wrap="false" />
                                <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" />
                             </telerik:GridBoundColumn>
                         </Columns>
                         
                             <PagerStyle PageSizeControlType="RadComboBox" />
                         </MasterTableView>
                     
                     </telerik:RadGrid> 
                 
                     <asp:SqlDataSource ID="SqlDS_grdOrderHeaders" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspOrdersHeaderGetByShipTo" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="hdnCustID" Name="CustID" PropertyName="Value" Type="String" DefaultValue="0"  />
                             <asp:ControlParameter ControlID="txtBoxNewShipTo" Name="ShipToID" PropertyName="Text" Type="String" DefaultValue="0" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                 </div> 
                 <div style="width:1000px; height:379px;float:left; border:2px solid #4c68a2; margin-top:10px;">  
                    <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                        Order Lines
                    </div>
                     <telerik:RadGrid ID="grdOrderLines" runat="server" Width="996px" Height="350px" AllowSorting="True" CellSpacing="0" 
                         DataSourceID="SqlDS_grdOrderLines" GridLines="None" AllowPaging="False">

                         <ClientSettings>
                             <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                         </ClientSettings>
                         <MasterTableView AllowSorting="False" AutoGenerateColumns="False" DataSourceID="SqlDS_grdOrderLines" NoMasterRecordsText="Select an order above">
                                                         
                             <Columns>
                             
                                
                                 <telerik:GridBoundColumn DataField="Line" DataType="System.Int32" 
                                     HeaderText="Line" SortExpression="Line" UniqueName="Line">
                                    <HeaderStyle HorizontalAlign="Left" Width="30px" />
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="30px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" 
                                     SortExpression="ProdID" UniqueName="ProdID">
                                     <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="100px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="Description" HeaderText="Description" 
                                     SortExpression="Description" UniqueName="Description">
                                     <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="200px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="Price" DataFormatString="{0:c2}" 
                                     DataType="System.Decimal" HeaderText="Price" SortExpression="Price" 
                                     UniqueName="Price">
                                     <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="60px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="Cost" DataFormatString="{0:c2}" 
                                     DataType="System.Decimal" HeaderText="Cost" SortExpression="Cost" 
                                     UniqueName="Cost">
                                     <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="60px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="NetAmount" DataFormatString="{0:c2}" 
                                     DataType="System.Decimal" HeaderText="Net" SortExpression="NetAmount" 
                                     UniqueName="NetAmount">
                                     <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="60px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="QtyOrd" DataFormatString="{0:n1}" 
                                     DataType="System.Decimal" HeaderText="Qty Ord" SortExpression="QtyOrd" 
                                     UniqueName="QtyOrd">
                                     <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="60px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="QtyShip" DataFormatString="{0:n1}" 
                                     DataType="System.Decimal" HeaderText="Qty Ship" SortExpression="QtyShip" 
                                     UniqueName="QtyShip">
                                     <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="60px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="QtyReturn" DataFormatString="{0:n1}" 
                                     DataType="System.Decimal" HeaderText="Qty Return" SortExpression="QtyReturn" 
                                     UniqueName="QtyReturn">
                                     <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="60px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" 
                                     SortExpression="TransType" UniqueName="TransType">
                                     <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="50px" />
                                 </telerik:GridBoundColumn>
                                 <telerik:GridBoundColumn DataField="Status" HeaderText="Status" 
                                     SortExpression="Status" UniqueName="Status">
                                     <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="75px" />
                                 </telerik:GridBoundColumn>
                                 
                             </Columns>
                             <EditFormSettings>
                                 <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                                 </EditColumn>
                             </EditFormSettings>
                             <BatchEditingSettings EditType="Cell" />
                             <PagerStyle PageSizeControlType="RadComboBox" />
                         </MasterTableView>
                         <PagerStyle PageSizeControlType="RadComboBox" />
                         <FilterMenu EnableImageSprites="False">
                         </FilterMenu>
                     
                     </telerik:RadGrid>
                     <asp:SqlDataSource ID="SqlDS_grdOrderLines" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspOrdersLinesGetByOrder" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="grdOrderHeaders" Name="OrderNumber" PropertyName="SelectedValue" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                </div>
                    


             </div>
        </telerik:RadPageView>--%>

    </telerik:RadMultiPage>


</div>


<telerik:RadWindowManager ID="RadWindowManager1" runat="server">
        <Windows>
            <telerik:RadWindow ID="grdPricing2CostDetals" runat="server" Title="Product Details" Height="500px"
                Width="900px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="false" Behaviors="Resize,Close, Move, Minimize" >
            </telerik:RadWindow>
            

        </Windows>
 </telerik:RadWindowManager>

    <%-- <telerik:RadWindowManager ID="Singleton" VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        <Windows>
               
                <telerik:RadWindow ID="wndwQuoteActivity" runat="server" Height="720px" Width="750px" Left="100px"
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" VisibleOnPageLoad="true" />
                


        </Windows> 

    </telerik:RadWindowManager>--%>


</asp:Content>