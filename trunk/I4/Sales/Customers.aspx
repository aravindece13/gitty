<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Sales.master" AutoEventWireup="false" CodeFile="Customers.aspx.vb" Inherits="Sales_Customers" %>
<%@ Register Src="~/Controls/form_AR.ascx" TagName="formCustomers" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    
    <h1>Sales | Customers</h1>

    <uc1:formCustomers ID="FormCustomers1" runat="server" />
    <asp:HiddenField ID="hdnJob" Value="Sales" runat="server" />

</asp:Content>

