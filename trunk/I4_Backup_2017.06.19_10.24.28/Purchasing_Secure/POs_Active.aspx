<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Purchasing_Secure.master" AutoEventWireup="false" CodeFile="POs_Active.aspx.vb" Inherits="Purchasing_Secure_POs_Active" %>
<%@ Register Src="~/Controls/form_PurchasingActivePOsBranchMngr.ascx" TagName="formPOsActive" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Purchasing | Active PO's</h1>

<uc1:formPOsActive ID="FormPricingModel" runat="server" />

</asp:Content>

