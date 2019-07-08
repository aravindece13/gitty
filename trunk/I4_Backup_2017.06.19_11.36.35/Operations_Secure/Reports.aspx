<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Operations_Secure.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="Operations_Secure_Reports" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
             <%--Order Management--%>
            <telerik:AjaxSetting AjaxControlID="lnkOrdersStage1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkOrdersStage1" />
                </UpdatedControls>
            </telerik:AjaxSetting>  
            <telerik:AjaxSetting AjaxControlID="lnkOrdersPickedAllRollupPDF">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkOrdersPickedAllRollupPDF" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkOrdersPicked">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkOrdersPicked" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkOrdersPickedAll">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkOrdersPickedAll" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkOrdersShipVia">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkOrdersShipVia" />
                    </UpdatedControls>
            </telerik:AjaxSetting>

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

            <%--AR Reports--%>
            <telerik:AjaxSetting AjaxControlID="lnkNewJobSetup">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewJobSetup" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkJobReview3yr">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkJobReview3yr" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkTaxExmptJobReview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkTaxExmptJobReview" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkNewCustAddrTax">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewCustAddrTax" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkHistCustReview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkHistCustReview" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <%--Job Management--%>         
            <telerik:AjaxSetting AjaxControlID="lnkJobPrelienReview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkJobPrelienReview" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkJobLienJeopardy">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkJobLienJeopardy" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkJobReviewTaxExempt">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkJobReviewTaxExempt" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


<div style="margin:0px 2px 2px 5px;float:left; width:1300px;"> 
<h1>Operations | Reports</h1>

  <div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:1300px;">    
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Width="1300px" Skin="MetroTouch">
        <Tabs>
            <telerik:RadTab runat="server" Text="AP" PageViewID="AP" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="AR/Credit" PageViewID="AR" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Inventory" PageViewID="Inventory" Selected="true" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Job Management" PageViewID="JobManagement" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Orders" PageViewID="Orders" ></telerik:RadTab>
            <%--<telerik:RadTab runat="server" Text="Pricing" PageViewID="Pricing" ></telerik:RadTab>--%>
            
        </Tabs>
    </telerik:RadTabStrip>
  </div>

<div style="margin:10px 0px 0px 10px;float:left; width:1300px; ">
<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1300px">
   
   
   <telerik:RadPageView ID="AP" runat="server" Selected="true">
        
        <div id="div8" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Daily Costing Activity
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkDailyCosting" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Daily Costing" NavigateUrl="../Reports2/AP_DailyCosting.aspx" Target="_blank"></telerik:RadButton>
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
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnktoBeCosted" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="PO Received - To Be Costed" NavigateUrl="../Reports2/AP_ReceivedNotCosted.aspx" Target="_blank"></telerik:RadButton>
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
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkHistCosting" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Historical Costing" NavigateUrl="../Reports2/AP_Costing_Historical.aspx" Target="_blank"></telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b><i>SXe (GUI) Live</i><br /><br /> 
                    <b>Report Description: </b>Costing activity for the last 50 days.  <br /><br />
                    <b>Report Use: </b>The report exports directly to an Excel file.
                </div>

    	    </div>
         </div> 

  
  </telerik:RadPageView>
   <telerik:RadPageView ID="AR" runat="server">
         <div id="div7" style="margin:0px 0px 20px 0px;float:left;width:1300px;float:left;">
                <div style="width:1300px; margin-bottom:15px;">     
                    <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                        New Customer - Addr. &amp; Tax Review
                    </div>
                </div>
                <div style="width:1300px; margin-bottom:15px;"> 
	                <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkNewCustAddrTax" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="New Customer - Address &amp; Tax" 
                            NavigateUrl="../Reports2/Accounting_CustomerReview_Address_Tax_New.aspx" Target="_blank">
                        </telerik:RadButton>
        	        </div>
         	        <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                        <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                        <b>Report Description: </b>Address and Tax Review for customers created in the last 60 days.
                        <b>Report Use:</b>This report exports directly to Excel.
                    </div>

    	        </div>
         </div> 
         
         <div id="div26" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            New Job Setup Review
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkNewJobSetup" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="New Job Setup Review" NavigateUrl="../Reports2/Credit_JobReview.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                            <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                            <b>Report Description: </b>The Job Review report is a listing of all new Jobs and their setup parameters.<br /><br />
                            <b>Report Use:</b>This report exports directly to Excel.
                        </div>

    	            </div>
         </div> 
                
         <div id="div3" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Job Review - 3 Year
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkJobReview3yr" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Job Setup Review (3 Year)" NavigateUrl="../Reports2/Credit_JobReview_3yr.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br />
                            <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                            <b>Report Description: </b>The Job Review report is a listing of all active Jobs created in the last 3 years and their setup parameters. <br /><br />

                            <b>Report Use:</b>This report exports directly to Excel.
                        </div>

    	            </div>
         </div> 
                
         <div id="div6" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Tax Exempt Job Review 
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkTaxExmptJobReview" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Tax Exempt Job Review" NavigateUrl="../Reports2/Credit_TaxExemptJobReview.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Datawarehouse - Updated nightly</i><br /><br /> 
                            
                            <b>Report Use:</b>This report exports directly to Excel in another window.
                        </div>

    	            </div>
         </div>
         
                
            <div id="div9" style="margin:0px 0px 20px 0px;float:left;width:1300px;float:left;">
                <div style="width:1300px; margin-bottom:15px;">     
                    <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                        Historical Customer - Address &amp; Tax Review
                    </div>
                </div>
                <div style="width:1300px; margin-bottom:15px;"> 
	                <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkHistCustReview" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="All Customers - Address &amp; Tax" 
                            NavigateUrl="../Reports2/Accounting_CustomerReview_All.aspx" Target="_blank">
                        </telerik:RadButton>
        	        </div>
         	        <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                        <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                        <b>Report Description: </b>Address and Tax Review for all customers.
                        <b>Report Use:</b>This report exports directly to Excel.
                    </div>

    	        </div>
            </div>
   </telerik:RadPageView>  
   <telerik:RadPageView ID="Inventory" runat="server" Selected="true">

         <div id="div4" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Cycle Count Supplemental
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkccSupplemental" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Cycle Count Supplemental" NavigateUrl="../Reports2/Operations_CycleCounts_CycleCount_Supplemental_live.aspx" Target="_blank"></telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b> <i>SXe (Live)</i><br /><br /> 
                    <b>Report Description: </b>The Cycle Count Supplemental report provides additional information (Stock Returns, PO Returns, Must Counts, Quantity Unavailable Products) that needs to be considered in daily cycle counting.   <br /><br />
                    <b>Report Use: </b>Select branch from drop down list and then 'View Report' to run. Export to PDF for best print formatting.
         	    </div>

    	    </div>
         </div>
         <div id="div13" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Cycle Count Master Report (14 Day)
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkccMaster" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Cycle Count Master" NavigateUrl="../Reports2/Operations_CycleCounts_CycleCountMaster.aspx" Target="_blank"></telerik:RadButton>
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
	                <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkccActivity" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Cycle Count Activity" NavigateUrl="../Reports2/Operations_CycleCounts_CycleCountWhse.aspx" Target="_blank"></telerik:RadButton>
        	        </div>
         	        <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                        <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                        <b>Report Description: </b>The Cycle Count Activity report provides information on recent stock adjustments and product counting activity.   <br /><br />
                        <b>Report Use: </b>The report uses the user's profile to determine which warehouse(s) to run the report for. Data updated nightly. The report is formatted as a PDF.  Click on the ribbon at left in the Adobe Reader to see the document bookmarks for easy navigation.
         	        </div>

    	        </div>
         </div>
         <div id="div25" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;"> 
            
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Inventory Listing 
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkInventoryListing" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Inventory Listing" NavigateUrl="../Reports2/Operations_Inventory_InventoryListingByWhse.aspx" Target="_blank"></telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                    <b>Report Description: </b>The Inventory Listing report provides a massive data dump of all products related to a warehouse.  <br /><br />
                    <b>Report Use: </b>Select branch from drop down list, confirm the Invoice Date Range and then click 'Run Report' to run. Export to Excel for further analysis.
                </div>

    	    </div>
         </div>
         <div id="div24" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Inv. Listing - All Warehouses
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkInventoryListingAll" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Inventory Listing" NavigateUrl="../Reports2/Operations_InventoryListingMaster.aspx" Target="_blank"></telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                    <b>Report Description: </b>The Inventory Listing report provides a massive data dump of all products for all warehouses.  This file/report can be used to analyze products not sold over certain time frames, and to review 'property of' products.  <br /><br />
                    <b>Report Use: </b>The report exports directly to Excel.
                </div>

    	    </div>
           </div> 
           
  
   </telerik:RadPageView> 
   
   <telerik:RadPageView ID="Orders" runat="server">
         <div  style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Orders | Stage 1 (Entered) and Back Ordered
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkOrdersStage1" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Stage 1 - Back Ordered" 
                        NavigateUrl="../Reports2/Orders_Stage1_Entered_BackOrdered.aspx" Target="_blank">
                    </telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                    <b>Report Description: </b>The Stage 1 (Entered) Ordered report is a listing of all open orders that have been backordered. <br /><br />
                    <b>Report Use: </b>Select branch from drop down list and then 'View Report' to run. Export to Excel if you would like to manipulate the report (filter by customer, sales rep, etc, or sort). PDF is preferred for copy/paste in SXe. 
                </div>

    	    </div>
         </div> 
        <div id="div19" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Orders | Picked &amp; Not Invoiced
                </div>
            </div>
            <div style="width:1300px;">
                <div style="width:320px; float:left;">
                    <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkOrdersPickedAllRollupPDF" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch" Text="All Warehouses w/ Rollup" 
                            NavigateUrl="../Reports2/Orders_Picked_NotInvoiced_All_Rollups_PDF.aspx" Target="_blank">
                        </telerik:RadButton>
        	        </div>
	                <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkOrdersPickedAll" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch" Text="All Warehouses - Excel" 
                            NavigateUrl="../Reports2/Orders_Picked_NotInvoiced_All.aspx" Target="_blank">
                        </telerik:RadButton>
        	        </div>
                    <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkOrdersPicked" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Selectable Warehouse - Excel" 
                            NavigateUrl="../Reports2/Orders_Picked_NotInvoiced.aspx" Target="_blank">
                        </telerik:RadButton>
        	        </div>
         	    </div>
                <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br />
                    <b>Report Description: </b>The Picked and Not Invoiced report is a listing of all picked open orders that have yet to be invoiced. <br /><br />
                    <b>Report Use: </b>Select branch from drop down list and then 'View Report' to run. Export to Excel if you would like to manipulate the report (filter by customer, sales rep, etc, or sort). PDF is preferred for copy/paste in SXe. 
                </div>

    	    </div>
         </div> 
        <div id="div1" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Orders | Ship Via
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkOrdersShipVia" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Ship Via" 
                        NavigateUrl="../Reports2/Orders_ShipVia.aspx" Target="_blank">
                    </telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                    <b>Report Description: </b>The Ship Via report is a listing of all open orders with quanities available to ship.  The requested
                        mode of transportation (Ship Via) is available on each line item. <br /><br />
                    <b>Report Use: </b>Select branch from drop down list and then 'View Report' to run. Export to Excel if you would like to manipulate the report (filter by customer, sales rep, etc, or sort). PDF is preferred for copy/paste in SXe. 
                </div>

    	    </div>
         </div> 


   </telerik:RadPageView>
   
    
  <telerik:RadPageView ID="JobManagement" runat="server" >
                <div style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Job PreLien Review
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkJobPrelienReview" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="PreLien Review" NavigateUrl="../Reports2/Credit_Jobs_PreLienReview.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Datawarehouse (Updated Nightly)</i><br /><br /> 
                            <b>Report Description: </b><br />
                            <b>Report Use:</b>This report exports directly to Excel.
                        </div>

    	            </div>
                </div> 
                <div style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Job Review - Lien Jeopardy
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkJobLienJeopardy" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Job Review - Lien Jeopardy" NavigateUrl="../Reports2/Credit_JobReviewLienJeopardy.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                            <b>Report Description: </b>The following is a listing of all Jobs started in the past 28 calendar days. The intended purpose of this report is an overall review of the quality of information provided in the Job Setup, as well as a notice that a job has been started (for '20 Day Letter' purposes).<br /><br />
                            <b>Report Use:</b>This report exports directly to Excel.
                        </div>

    	            </div>
                </div> 
                <div style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Tax Exempt Job Review 
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkJobReviewTaxExempt" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Tax Exempt Job Review" NavigateUrl="../Reports2/Credit_TaxExemptJobReview.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Datawarehouse - Updated nightly</i><br /><br /> 
                            
                            <b>Report Use:</b>This report exports directly to Excel in another window.
                        </div>

    	            </div>
                </div> 
                
  </telerik:RadPageView>
  
</telerik:RadMultiPage>
</div>

</div>

</asp:Content>

