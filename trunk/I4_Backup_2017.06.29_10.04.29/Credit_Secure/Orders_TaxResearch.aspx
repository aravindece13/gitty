<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Credit_Secure.master" AutoEventWireup="false" CodeFile="Orders_TaxResearch.aspx.vb" Inherits="Credit_Secure_Orders_TaxResearch" %>
<%@ Register Src="~/Controls/form_OrdersTaxResearch.ascx" TagName="formOrdersTaxResearch" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Credit | Order Tax Research</h1>

  <uc1:formOrdersTaxResearch ID="FormTaxResearch" runat="server" />

</asp:Content>

