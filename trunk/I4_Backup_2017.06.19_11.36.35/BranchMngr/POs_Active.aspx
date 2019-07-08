<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchMngr.master" AutoEventWireup="false" CodeFile="POs_Active.aspx.vb" Inherits="BranchMngr_POs_Active" %>
<%@ Register Src="~/Controls/form_PurchasingActivePOsBranchMngr.ascx" TagName="formPOsActive" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Branch Manager | Active PO's</h1>

<uc1:formPOsActive ID="FormPricingModel" runat="server" />

</asp:Content>

