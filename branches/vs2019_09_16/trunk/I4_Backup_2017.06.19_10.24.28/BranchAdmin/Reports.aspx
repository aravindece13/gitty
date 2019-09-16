<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/BranchAdmin.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="BranchAdmin_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="lnkOrdersStage1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkOrdersStage1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        
            <telerik:AjaxSetting AjaxControlID="lnkOrdersPicked">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkOrdersPicked" />
                    </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="lnkOrdersPicked">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkOrdersPicked" />
                    </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="lnkOrdersShipVia">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkOrdersShipVia" />
                    </UpdatedControls>
            </telerik:AjaxSetting>

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
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>




<h1>Branch Admin | Reports</h1>
<div style="margin:0px 2px 2px 5px;float:left; width:1300px;"> 



<div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:1000px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1"   Width="1000px" Skin="MetroTouch">
        <Tabs>
                       
            <telerik:RadTab runat="server" Text="Inventory" PageViewID="Inventory"  ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Order Management" PageViewID="Orders" Selected="true"></telerik:RadTab>
            
        </Tabs>
    </telerik:RadTabStrip>
</div>

<div style="margin:10px 0px 0px 10px;float:left; width:1300px; ">
<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="570px" Width="1300px">
   
 
  <telerik:RadPageView ID="Inventory" runat="server" > 
          <div id="div4" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
             <div style="width:1300px;">    
                  <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                        Cycle Count Supplemental
                  </div>
             </div>
             <div style="width:1300px;">
	             <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkccSupplemental" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Cycle Count Supplemental" NavigateUrl="../Reports2/Operations_CycleCounts_CycleCount_Supplemental_live.aspx" Target="_blank"></telerik:RadButton>
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
                    <telerik:RadButton ID="lnkccMaster" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Cycle Count Master" NavigateUrl="../Reports2/Operations_CycleCounts_CycleCountMaster.aspx" Target="_blank"></telerik:RadButton>
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
                        <telerik:RadButton ID="lnkccActivity" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Cycle Count Activity" NavigateUrl="../Reports2/Operations_CycleCounts_CycleCountWhse.aspx" Target="_blank"></telerik:RadButton>
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
                    Inventory Listing - Warehouse Selectable
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkInventoryListing" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Inventory Listing" NavigateUrl="../Reports2/Operations_Inventory_InventoryListingByWhse.aspx" Target="_blank"></telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                    <b>Report Description: </b>The Inventory Listing report provides a massive data dump of all products related to a warehouse.  <br /><br />
                    <b>Report Use: </b>Select branch from drop down list, confirm the Invoice Date Range and then click 'Run Report' to run. Export to Excel for further analysis.
                </div>

    	    </div>
         </div>
            

        
  
  </telerik:RadPageView> 

  <telerik:RadPageView ID="Orders" runat="server" Selected="true" > 
        
        <div id="div1" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
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
        <div id="div2" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Orders | Picked &amp; Not Invoiced
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:300px;float:left; margin:10px;">
                    <telerik:RadButton ID="lnkOrdersPicked" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Picked - Not Invoiced" 
                        NavigateUrl="../Reports2/Orders_Picked_NotInvoiced.aspx" Target="_blank">
                    </telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br />
                    <b>Report Description: </b>The Picked and Not Invoiced report is a listing of all picked open orders that have yet to be invoiced. <br /><br />
                    <b>Report Use: </b>Select branch from drop down list and then 'View Report' to run. Export to Excel if you would like to manipulate the report (filter by customer, sales rep, etc, or sort). PDF is preferred for copy/paste in SXe. 
                </div>

    	    </div>
         </div> 
        <div id="div3" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
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
    
  
  
</telerik:RadMultiPage>
</div>
</div>

        
            

</asp:Content>

