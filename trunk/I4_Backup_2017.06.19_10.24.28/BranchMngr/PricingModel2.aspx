<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchMngr.master" AutoEventWireup="false" CodeFile="PricingModel2.aspx.vb" Inherits="BranchMngr_PricingModel2" %>
<%@ Register Src="~/Controls/form_PricingModel2.ascx" TagName="formPricingModel" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Branch Manager | Pricing Model</h1>

<uc1:formPricingModel ID="FormPricingModel" runat="server" />
<asp:HiddenField ID="hdnJob" Value="BranchMngr" runat="server" />

</asp:Content>

