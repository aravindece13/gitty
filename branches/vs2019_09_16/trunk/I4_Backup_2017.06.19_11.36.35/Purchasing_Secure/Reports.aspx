<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Purchasing_Secure.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="Purchasing_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
             <%--Inventory Reports--%>
                <telerik:AjaxSetting AjaxControlID="lnkccMaster">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkccMaster" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkccActivity">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkccActivity" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkccSupplemental">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkccSupplemental" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkInventoryListing">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkInventoryListing" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkInventoryListingAll">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkInventoryListingAll" />
                    </UpdatedControls>
                </telerik:AjaxSetting>

            <%--AP Reports--%>
                <telerik:AjaxSetting AjaxControlID="lnkDailyCosting">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkDailyCosting" />
                    </UpdatedControls>
                </telerik:AjaxSetting>         
                <telerik:AjaxSetting AjaxControlID="lnktoBeCosted">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnktoBeCosted" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkHistCosting">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkHistCosting" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
            <%--Cheat Sheets--%>
                <telerik:AjaxSetting AjaxControlID="lnkProductCategories">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkProductCategories" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkProductLines">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkProductLines" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkProductCatLines">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkProductCatLines" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkNewProductInv">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkNewProductInv" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkStockReturnInv">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkStockReturnInv" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkStockAdjustInv">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkStockAdjustInv" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkDamagedMatInv">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkDamagedMatInv" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkCapitalizedFreight">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkCapitalizedFreight" />
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="lnkUnavailInv">
                     <UpdatedControls>
                          <telerik:AjaxUpdatedControl ControlID="lnkUnavailInv" />
                     </UpdatedControls>
                </telerik:AjaxSetting>
                

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<h1>Purchasing | Reports and Forms</h1>

<div style="width:1300px; margin:10px;">


<div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:1100px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1"  Width="1100px" Skin="MetroTouch">
        <Tabs>
            <telerik:RadTab runat="server" Text="AP" PageViewID="AP" Selected="true" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Inventory" PageViewID="Inventory"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Cheat Sheets and Forms" PageViewID="CheatSheets"></telerik:RadTab>
                        
        </Tabs>
    </telerik:RadTabStrip>
  </div>

<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="570px" Width="1000px">

        <telerik:RadPageView ID="AP" runat="server" Selected="true">
        
                <div id="div8" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Daily Costing Activity
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:240px;float:left; margin:10px;">
                            <telerik:RadButton ID="RadButton4" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch"   Text="Daily Costing" NavigateUrl="../Reports2/AP_DailyCosting.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b><i>SXe (GUI) Live</i><br /><br /> 
                            <b>Report Description: </b>Daily costing activity for the last five days.  <br /><br />
                            <b>Report Use: </b>The report exports directly to an Excel file.
                        </div>

    	            </div>
                </div> 

                 <div id="div12" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                           PO's Received - To Be Costed
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:240px;float:left; margin:10px;">
                            <telerik:RadButton ID="RadButton6" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch"   Text="PO Received - To Be Costed" NavigateUrl="../Reports2/AP_ReceivedNotCosted.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b><i>SXe (GUI) Live</i><br /><br /> 
                            <b>Report Description: </b>The following is a listing of all Stage 5 (Received) and 6 (Costed) Purchase 
                                    Orders sorted by Warehouse and Receipt Date. The primary purpose of this report 
                                    is to identify PO&#39;s that are in jeopardy of missing their discount terms. The 
                                    secondary purpose of this report is to identify variation from the vendor&#39;s 
                                    standard terms.&nbsp; <br /><br />
                            <b>Report Use: </b>The report exports directly to an Excel file.
                        </div>

    	            </div>
                 </div> 

                 <div id="div11" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Historical Costing Activity (Last 50 Days)
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:240px;float:left; margin:10px;">
                            <telerik:RadButton ID="RadButton5" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch"   Text="Historical Costing" NavigateUrl="../Reports2/AP_Costing_Historical.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b><i>SXe (GUI) Live</i><br /><br /> 
                            <b>Report Description: </b>Costing activity for the last 50 days.  <br /><br />
                            <b>Report Use: </b>The report exports directly to an Excel file.
                        </div>

    	            </div>
                 </div> 

  
          </telerik:RadPageView>
     
     
     

     <telerik:RadPageView ID="Inventory" runat="server" >
        
        
        
                 <div id="div13" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Cycle Count Master Report (14 Day)
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:240px;float:left; margin:10px;">
                            <telerik:RadButton ID="RadButton2" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch"   Text="Cycle Count Master" NavigateUrl="../Reports2/Operations_CycleCounts_CycleCountMaster.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                            <b>Report Description: </b>The Cycle Count Master Report shows adjustments and count activity for all warehouses over the last 14 days.  <br /><br />
                            <b>Report Use: </b>The report exports directly to a PDF.  Be sure to open the ribbon bar for quick branch-to-branch navigation.
                        </div>

    	            </div>
                 </div> 
          
                  <div id="div5" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                     <div style="width:1300px;">    
                          <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                                Cycle Count Activity
                          </div>
                     </div>
                     <div style="width:1300px;">
	                     <div style="width:240px;float:left; margin:10px;">
                                <telerik:RadButton ID="RadButton3" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch"   Text="Cycle Count Activity" NavigateUrl="../Reports2/Operations_CycleCounts_CycleCountWhse.aspx" Target="_blank"></telerik:RadButton>
        	             </div>
         	             <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                                <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                                <b>Report Description: </b>The Cycle Count Activity report provides information on recent stock adjustments and product counting activity.   <br /><br />
                                <b>Report Use: </b>The report uses the user's profile to determine which warehouse(s) to run the report for. Data updated nightly. The report is formatted as a PDF.  Click on the ribbon at left in the Adobe Reader to see the document bookmarks for easy navigation.
         	             </div>

    	             </div>
                   </div>

                  <div id="div4" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                     <div style="width:1300px;">    
                          <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                                Cycle Count Supplemental
                          </div>
                     </div>
                     <div style="width:1300px;">
	                     <div style="width:240px;float:left; margin:10px;">
                                <telerik:RadButton ID="lnkCCSuppl" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch"   Text="Cycle Count Supplemental" NavigateUrl="../Reports2/Operations_CycleCounts_CycleCount_Supplemental_live.aspx" Target="_blank"></telerik:RadButton>
        	             </div>
         	             <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                                <b>Data Source: </b> <i>SXe (Live)</i><br /><br /> 
                                <b>Report Description: </b>The Cycle Count Supplemental report provides additional information (Stock Returns, PO Returns, Must Counts, Quantity Unavailable Products) that needs to be considered in daily cycle counting.   <br /><br />
                                <b>Report Use: </b>Select branch from drop down list and then 'View Report' to run. Export to PDF for best print formatting.
         	             </div>

    	             </div>
                  </div>
          
            
                  <div id="div24" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Inventory Listing - All Warehouses
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:240px;float:left; margin:10px;">
                            <telerik:RadButton ID="RadButton1" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch"   Text="Inventory Listing" NavigateUrl="../Reports2/Operations_InventoryListingMaster.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                            <b>Report Description: </b>The Inventory Listing report provides a massive data dump of all products for all warehouses.  This file/report can be used to analyze products not sold over certain time frames, and to review 'property of' products.  <br /><br />
                            <b>Report Use: </b>The report exports directly to Excel.
                        </div>

    	            </div>
                   </div> 
                   <div id="div25" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;"> 
            
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Inventory Listing - Warehouse Selectable
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:240px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkInventoryListing" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch"   Text="Inventory Listing" NavigateUrl="../Reports2/Operations_Inventory_InventoryListingByWhse.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                            <b>Report Description: </b>The Inventory Listing report provides a massive data dump of all products related to a warehouse.  <br /><br />
                            <b>Report Use: </b>Select branch from drop down list, confirm the Invoice Date Range and then click 'Run Report' to run. Export to Excel for further analysis.
                        </div>

    	            </div>
                 </div>
            
            
  
          </telerik:RadPageView>
        
       <telerik:RadPageView ID="CheatSheets" runat="server">
            <div id="div1" style="margin:15px 0px 5px 20px;float:left;width:1400px;">
                <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                   <telerik:RadButton ID="lnkProductCategories" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Product Categories" NavigateUrl="~/Information/Product_Categories.pdf" Target="_blank"></telerik:RadButton>
                </div> 
                <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                   <telerik:RadButton ID="lnkProductLines" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px"  Text="Product Lines" NavigateUrl="~/Information/Product_Lines.pdf" Target="_blank"></telerik:RadButton>
                </div>
                <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                   <telerik:RadButton ID="lnkProductCatLines" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Product Cats and Lines" NavigateUrl="~/Information/ProductCatsLines.pdf" Target="_blank"></telerik:RadButton>
                </div> 
            </div>
            <div id="div2" style="margin:15px 0px 5px 20px;float:left;width:1400px;">
                <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                      <telerik:RadButton ID="lnkNewProductInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="New Product" NavigateUrl="~/Information/Form_NewProduct.pdf" Target="_blank"></telerik:RadButton>
                </div>
                <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                      <telerik:RadButton ID="lnkStockReturnInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Stock Return" NavigateUrl="~/Information/Form_StockReturn.pdf" Target="_blank"></telerik:RadButton>
                </div>
                <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                      <telerik:RadButton ID="lnkStockAdjustInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Stock Adjust" NavigateUrl="~/Information/Form_StockAdjustments.pdf" Target="_blank"></telerik:RadButton>
                </div> 
                
                
        
            </div> 
            <div id="div3" style="margin:15px 0px 5px 20px;float:left;width:1400px;">
                <div style="margin:4px 4px 4px 4px;width:320px; float:left;" >
                         <telerik:RadButton ID="lnkDamagedMatInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Damaged Material" NavigateUrl="~/Information/Form_DamagedMaterial.pdf" Target="_blank"></telerik:RadButton>
                </div>
                 <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                         <telerik:RadButton ID="lnkUnavailInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Unavailable Inventory" NavigateUrl="~/Information/Form_UnavailableInventory.pdf" Target="_blank"></telerik:RadButton>
                 </div> 
                
                <div style="margin:4px 4px 4px 4px;width:320px; float:left;" >
                      <telerik:RadButton ID="lnkCapitalizedFreight" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch"  Width="280px" Text="Capitalized Freight" NavigateUrl="~/Information/Form_CapitalizedFreight.PDF" Target="_blank"></telerik:RadButton>
                </div>
            </div> 
        
  
       </telerik:RadPageView>

 </telerik:RadMultiPage>
 </div>
</asp:Content>

