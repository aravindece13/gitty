<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Purchasing.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Purchasing_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
                        
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

<div id="CommonLinks" style="margin:0px 2px 2px 5px;float:left;width:130px;">    
<h1>Purchasing</h1>
   
   <div id="divTabStrip1" style="margin:5px 5px 0px 5px;float:left;width:995px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="2"  Width="1000px" Skin="MetroTouch">
        <Tabs> 
            <telerik:RadTab runat="server" Text="Cheat Sheets and Forms" PageViewID="CheatSheets" Selected="true"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="TDG" PageViewID="TDG" ></telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
  </div>


<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="600px" Width="1000px">
    
  
  <telerik:RadPageView ID="CheatSheets" runat="server" Selected="true">
        <div id="div4" style="margin:15px 0px 5px 20px;float:left;width:1000px;">
            <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
               <telerik:RadButton ID="lnkProductCategories" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Product Categories" NavigateUrl="~/Information/Product_Categories.pdf" Target="_blank"></telerik:RadButton>
            </div> 
            <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
               <telerik:RadButton ID="lnkProductLines" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px"  Text="Product Lines" NavigateUrl="~/Information/Product_Lines.pdf" Target="_blank"></telerik:RadButton>
            </div>
            <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
               <telerik:RadButton ID="lnkProductCatLines" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Product Cats and Lines" NavigateUrl="~/Information/ProductCatsLines.pdf" Target="_blank"></telerik:RadButton>
            </div> 
        </div>
        <div id="div2" style="margin:15px 0px 5px 20px;float:left;width:1000px;">
            <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
                  <telerik:RadButton ID="lnkNewProductInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="New Product" NavigateUrl="~/Information/Form_NewProduct.pdf" Target="_blank"></telerik:RadButton>
            </div>
            <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                  <telerik:RadButton ID="lnkStockReturnInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Stock Return" NavigateUrl="~/Information/Form_StockReturn.pdf" Target="_blank"></telerik:RadButton>
            </div>
            <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                  <telerik:RadButton ID="lnkStockAdjustInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Stock Adjust" NavigateUrl="~/Information/Form_StockAdjustments.pdf" Target="_blank"></telerik:RadButton>
            </div>
            <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                  <telerik:RadButton ID="lnkUnavailInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Unavail. Inventory" NavigateUrl="~/Information/Form_UnavailableInventory.pdf" Target="_blank"></telerik:RadButton>
            </div>  
           
        
        </div>  
        <div id="div3" style="margin:15px 0px 5px 20px;float:left;width:1000px;">
                <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                      <telerik:RadButton ID="lnkCapitalizedFreight" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch"  Width="200px" Text="Capitalized Freight" NavigateUrl="~/Information/Form_CapitalizedFreight.PDF" Target="_blank"></telerik:RadButton>
                </div>
        </div> 

        
  
  </telerik:RadPageView>
  <telerik:RadPageView ID="TDG" runat="server" >  
        <div id="div1" style="margin:15px 0px 5px 20px;float:left;width:1000px;">
        
            <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
               <telerik:RadButton ID="lnkTDGVendors" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Vendors" NavigateUrl="~/Information/TDG_Vendors.pdf" Target="_blank"></telerik:RadButton>
            </div>
            <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
               <telerik:RadButton ID="lnkTDGProfiles" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Vendor Profiles" NavigateUrl="~/Information/TDG_Vendor_Profiles.pdf" Target="_blank"></telerik:RadButton>
            </div> 
                

        </div>        	  
  </telerik:RadPageView>
  
  
  
  
  
</telerik:RadMultiPage>  
   </div>
    







</asp:Content>

