<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchAdmin.master" AutoEventWireup="false" CodeFile="BidToolRequests.aspx.vb" Inherits="BranchAdmin_BidToolRequests" %>
<%@ Register Src="~/BidTool/BidToolRequests.ascx" TagName="formRequests" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Branch Admin | BidTool Requests</h1>

   <uc1:formRequests runat="server" />

</asp:Content>

