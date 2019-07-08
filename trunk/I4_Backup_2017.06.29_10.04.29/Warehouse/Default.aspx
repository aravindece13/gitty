<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Warehouse.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Warehouse_Default" %>

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


            <%--Driver Links--%>
            <telerik:AjaxSetting AjaxControlID="lnkDriversLog">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkDriversLog" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkCDLAz">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCDLAz" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkCDLCO">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCDLCO" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkCDLMT">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCDLMT" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkCDLNV">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCDLNV" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkCDLTX">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCDLTX" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkCDLWY">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCDLWY" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>

    <div id="CommonLinks" style="margin:0px 2px 2px 5px;float:left; width:1300px;">
        <h1>Warehouse</h1>

        <div id="divTabStrip1" style="margin:5px 5px 0px 5px;float:left;width:1000px;">
            <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="2"  Width="1000px" Skin="MetroTouch">
                <Tabs>
                    <telerik:RadTab runat="server" Text="Cheat Sheets" PageViewID="CheatSheets" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Common Forms" PageViewID="CommonForms" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Customer Forms" PageViewID="CustomerForms" Selected="true" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Drivers" PageViewID="Drivers" ></telerik:RadTab>
                </Tabs>
            </telerik:RadTabStrip>
        </div>

        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1000px">

            <telerik:RadPageView ID="CheatSheets" runat="server">
                <div id="div3" style="margin:15px 5px 5px 15px;float:left;width:1000px;">
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkProductCategories" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Product Categories" NavigateUrl="~/Information/Product_Categories.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkProductLines" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Product Lines" NavigateUrl="~/Information/Product_Lines.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkProductCatLines" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Product Cats and Lines" NavigateUrl="~/Information/ProductCatsLines.pdf" Target="_blank"></telerik:RadButton>
                    </div>

                </div>
            </telerik:RadPageView>
            <telerik:RadPageView ID="CommonForms" runat="server" >
                <div id="div2" style="margin:15px 5px 5px 15px;float:left;width:1000px;">
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkNewProductInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch"  Width="280px" Text="New Product" NavigateUrl="~/Information/Form_NewProduct.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkStockReturnInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch"  Width="280px" Text="Stock Return" NavigateUrl="~/Information/Form_StockReturn.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkStockAdjustInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch"  Width="280px" Text="Stock Adjust" NavigateUrl="~/Information/Form_StockAdjustments.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkUnavailInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Unavailable Inventory" NavigateUrl="~/Information/Form_UnavailableInventory.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left;" >
                        <telerik:RadButton ID="lnkDamagedMatInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch"  Width="280px" Text="Damaged Material" NavigateUrl="~/Information/Form_DamagedMaterial.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left;" >
                        <telerik:RadButton ID="lnkCapitalizedFreight" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch"  Width="280px" Text="Capitalized Freight" NavigateUrl="~/Information/Form_CapitalizedFreight.PDF" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left;" >
                        <telerik:RadButton ID="lnkIncomingMaterialNoPackSlip" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch"  Width="280px" Text="Receiving - No Pack Slip" NavigateUrl="~/Information/Form_IncomingMaterialNoPackSlip.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                </div>

            </telerik:RadPageView>
            <telerik:RadPageView ID="CustomerForms" Selected="true" runat="server">
                <div id="div1" style="margin:15px 5px 5px 15px;float:left;width:1000px;">

                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkCredAppDK" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Credit App - Kepner" NavigateUrl="~/Information/Form_CreditAppDK.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left;  " >
                        <telerik:RadButton ID="lnkCredAppWI" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Credit App - Western" NavigateUrl="~/Information/Form_CreditAppWI.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkCredAppAZ" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Credit App - Arizona" NavigateUrl="~/Information/Form_CreditAppDK_AZ.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                </div>
                <div id="div4" style="margin:15px 5px 5px 15px;float:left;width:1000px;">
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkAZ5000" ButtonType="LinkButton" runat="server" Width="280px" Text="Arizona (5000)" NavigateUrl="~/Information/Form_AzTaxExempt5000.pdf" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>
                    </div>
                </div>

            </telerik:RadPageView>
            <telerik:RadPageView ID="Drivers"  runat="server">
                <div id="div5" style="margin:15px 5px 5px 15px;float:left;width:1000px;">
                    <h2>Driver's Log</h2>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkDriversLog" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Delivery Log" NavigateUrl="~/Information/DeliveryLog.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                </div>
                <div id="div6" style="margin:15px 5px 5px 15px;float:left;width:1000px;">
                    <h2>CDL Manuals</h2>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkCDLAz" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Arizona" NavigateUrl="~/Information/CDL_Handbook_AZ.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkCDLCO" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Colorado" NavigateUrl="~/Information/CDL_Handbook_CO.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkCDLMT" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Montana" NavigateUrl="http://driving-tests.org/montana/mt-cdl-handbook/" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkCDLNV" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Nevada" NavigateUrl="~/Information/CDL_Handbook_NV.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkCDLTX" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Texas" NavigateUrl="~/Information/CDL_Handbook_TX.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:320px; float:left;" >
                        <telerik:RadButton ID="lnkCDLWY" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Wyoming" NavigateUrl="~/Information/CDL_Handbook_WY.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                </div>

            </telerik:RadPageView>

        </telerik:RadMultiPage>

    </div>

</asp:Content>

