<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/InsideSales.master" AutoEventWireup="false" CodeFile="Forms.aspx.vb" Inherits="InsideSales_Forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

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
        



</asp:Content>

