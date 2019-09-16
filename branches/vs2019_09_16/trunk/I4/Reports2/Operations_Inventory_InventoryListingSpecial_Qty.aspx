<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Operations_Inventory_InventoryListingSpecial_Qty.aspx.vb" Inherits="Reports2_Operations_Inventory_InventoryListingSpecial_Qty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="width:1300px;float:left;margin:10px;">
    <div style="width:1300px;float:left;margin-bottom:10px;">
     <h4>Operations | Inventory | Inventory Listing (Qty)</h4>
        
        <div style="width:1300px; font-size:medium;float:left; margin-bottom:10px;">
            <b>Data Source: </b> <i>Data Warehouse (Updated Nightly)</i><br /><br /> 
            <b>Report Description: </b>This Inventory Listing report provides a product listing consisting of quantities, activity dates, and bin locations specific to a selected warehouse.  <br /><br />
            <b>Report Use: </b>Select branch from drop down list  'View Report' to run. Export to Excel for further analysis.
       </div>

       
    </div>

    <div style="width:1300px;float:left;margin:10px;">
        
         <RSWEB:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote"
            Font-Names="Trebuchet-MS" Font-Size="10pt" 
            WaitMessageFont-Names="Trebuchet-MS" WaitMessageFont-Size="14pt" 
            Width="1100px" Height="700px" ZoomPercent="100" 
            ShowParameterPrompts="True" ShowRefreshButton="true"  ExportContentDisposition="AlwaysAttachment"  >

        </RSWEB:ReportViewer>
    </div>
</div>


</asp:Content>

