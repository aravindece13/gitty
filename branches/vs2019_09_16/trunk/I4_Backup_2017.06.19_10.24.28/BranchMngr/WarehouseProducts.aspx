<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchMngr.master" AutoEventWireup="false" CodeFile="WarehouseProducts.aspx.vb" Inherits="BranchMngr_WarehouseProducts" %>
<%@ Register Src="~/Controls/form_ICSW.ascx" TagName="formICSW" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Branch Manager | Warehouse Products</h1>


<uc1:formICSW ID="FormICSW" runat="server" />

</asp:Content>

