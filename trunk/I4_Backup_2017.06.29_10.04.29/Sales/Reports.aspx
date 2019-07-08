<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Sales.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="Sales_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<div style="margin:0px 2px 2px 5px;float:left; width:1300px;"> 
    <h1>Sales | Reports</h1>


 <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
 
              <%--Sales Links--%>
             <telerik:AjaxSetting AjaxControlID="lnkCredAppDK">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCredAppDK" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkCredAppWI">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCredAppWI" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkCredAppAZ">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCredAppAZ" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkNewProduct">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewProduct" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkStockRet">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkStockRet" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkStockAdjust">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkStockAdjust" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkDamagedMat">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkDamagedMat" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkAccountChange">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkAccountChange" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkAZ5000">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkAZ5000" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkExpenseReportInstructions">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkExpenseReportInstructions" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkNewJob">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewJob" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkNewJobWyo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewJobWyo" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkUnavailInv">
                 <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="lnkUnavailInv" />
                 </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<div id="divTabStrip1" style="Margin:5px 5px 0px 5px;float:left;width:1300px;">   
    <div id="div2" style="padding:5px 5px 0px 5px;float:left;width:1000px;">   
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1"   Width="1000px" Skin="MetroTouch">
            <Tabs>
                <%--<telerik:RadTab runat="server" Text="Customers" PageViewID="Customers"  ></telerik:RadTab>--%>
                <telerik:RadTab runat="server" Text="Forms" PageViewID="Forms"  ></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Performance" PageViewID="Performance" Selected="true"></telerik:RadTab>
            
            
            </Tabs>
        </telerik:RadTabStrip>
    </div>

<div style="margin:10px 0px 0px 10px;float:left; width:1300px; ">
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="570px" Width="1000px">
   
            <telerik:RadPageView ID="Performance" runat="server" Selected="true" > 
        
    
        
                 <div id="div1" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Dashboard - My Sales
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:240px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkDashSalesReps" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Text="Sales Rep Dashboard" NavigateUrl="../Reports2/Dashboard_SalesPerson.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
                            <b>Report Description: </b>Breakdown of sales with year-over-year and month-over-month comparisons.  Subtotals by sales rep.<br /><br />
                            <b>Report Use: </b>The report exports directly to a PDF.  Be sure to open the ribbon bar for quick branch-to-branch navigation.
                        </div>

    	            </div>
                 </div> 
          

  
            </telerik:RadPageView>
        <telerik:RadPageView ID="Forms" runat="server" >
            <div id="div3" style="margin:15px 5px 5px 15px;float:left;width:1100px;">
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkCredAppDK" ButtonType="LinkButton" runat="server" Width="280px" Text="Credit App - Kepner" NavigateUrl="~/Information/Form_CreditAppDK.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div> 
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkCredAppWI" ButtonType="LinkButton" runat="server" Width="280px" Text="Credit App - Western" NavigateUrl="~/Information/Form_CreditAppWI.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkCredAppAZ" ButtonType="LinkButton" runat="server" Width="280px" Text="Credit App - Arizona" NavigateUrl="~/Information/Form_CreditAppDK_AZ.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkNewProduct" ButtonType="LinkButton" runat="server" Width="280px" Text="New Product" NavigateUrl="~/Information/Form_NewProduct.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkStockRet" ButtonType="LinkButton" runat="server" Width="280px" Text="Stock Return" NavigateUrl="~/Information/Form_StockReturn.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkStockAdjust" ButtonType="LinkButton" runat="server" Width="280px" Text="Stock Adjust" NavigateUrl="~/Information/Form_StockAdjustments.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div> 
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                         <telerik:RadButton ID="lnkUnavailInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Unavailable Inventory" NavigateUrl="~/Information/Form_UnavailableInventory.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="padding:4px 4px 4px 4px;width:320px; float:left;" >
                        <telerik:RadButton ID="lnkDamagedMat" ButtonType="LinkButton" runat="server" Width="280px" Text="Damaged Material" NavigateUrl="~/Information/Form_DamagedMaterial.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkAccountChange" ButtonType="LinkButton" runat="server" Width="280px" Text="Account Change" NavigateUrl="~/Information/Form_AccountChange.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div> 
                    <div style="padding:4px 4px 4px 4px;width:320px; float:left;" >
                        <telerik:RadButton ID="lnkAZ5000" ButtonType="LinkButton" runat="server" Width="280px" Text="Arizona (5000)" NavigateUrl="~/Information/Form_AzTaxExempt5000.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="padding:4px 4px 4px 4px;width:320px; float:left;" >
                        <telerik:RadButton ID="lnkExpenseReportInstructions" ButtonType="LinkButton" runat="server" Width="280px" Text="Expense Instructions" NavigateUrl="~/Information/Form_ExpenseReportInstructions.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkNewJob" ButtonType="LinkButton" runat="server" Width="280px" Text="New Job" NavigateUrl="~/Information/Form_JobInfo.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkNewJobWyo" ButtonType="LinkButton" runat="server" Width="280px" Text="New Job - Wyo" NavigateUrl="~/Information/Form_JobInfo_Wyoming.pdf" Skin="BlackMetroTouch"   Target="_blank"></telerik:RadButton>
                    </div>
            </div>
        
        </telerik:RadPageView>

        <%--<telerik:RadPageView ID="Customers" runat="server" >
      
        
        </telerik:RadPageView>--%>
        </telerik:RadMultiPage>
</div>

</div>
</div>

</asp:Content>

