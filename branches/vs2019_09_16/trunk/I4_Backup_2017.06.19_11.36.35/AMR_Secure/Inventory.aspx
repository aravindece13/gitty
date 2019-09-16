<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/AMR_Secure.master" AutoEventWireup="false" CodeFile="Inventory.aspx.vb" Inherits="AMR_Secure_Inventory" %>
<%@ Register Src="~/AMR_Secure/InventoryListingAMR.ascx" TagName="formInvListing" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    

    <h1>AMR Specialist | Inventory Listing</h1>

   <uc1:formInvListing runat="server" />

</asp:Content>

