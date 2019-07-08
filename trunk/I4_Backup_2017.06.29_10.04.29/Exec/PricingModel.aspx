<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="PricingModel.aspx.vb" Inherits="Exec_PricingModel" %>
<%@ Register Src="~/Controls/form_PricingModel2.ascx" TagName="formPricingModel" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Executive | Pricing Model</h1>

<uc1:formPricingModel ID="FormPricingModel" runat="server" />
<asp:HiddenField ID="hdnJob" Value="Exec" runat="server" />

</asp:Content>


