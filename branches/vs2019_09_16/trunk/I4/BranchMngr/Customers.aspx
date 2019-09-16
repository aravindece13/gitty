<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchMngr.master" AutoEventWireup="false" CodeFile="Customers.aspx.vb" Inherits="BranchMngr_Customers" %>
<%@ Register Src="~/Controls/form_AR.ascx" TagName="formCustomers" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

    <h1>Branch Manager | Customers</h1>
    
    <uc1:formCustomers ID="FormCustomers1" runat="server" />
    <asp:HiddenField ID="hdnJob" Value="BranchMngr" runat="server" />



</asp:Content>

