<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Operations_Secure.master" AutoEventWireup="false" CodeFile="BidToolRequests.aspx.vb" Inherits="Operations_Secure_BidToolRequests" %>
<%@ Register Src="~/BidTool/BidToolRequests.ascx" TagName="formRequests" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Operations | BidTool Requests</h1>

   <uc1:formRequests ID="FormRequests1" runat="server" />


</asp:Content>

