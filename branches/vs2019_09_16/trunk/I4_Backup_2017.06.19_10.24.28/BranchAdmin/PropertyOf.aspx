<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchAdmin.master" AutoEventWireup="false" CodeFile="PropertyOf.aspx.vb" Inherits="BranchAdmin_PropertyOf" %>
<%@ Register Src="~/Controls/form_PropertyOfSearch.ascx" TagName="formPropOfGrid" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Branch Admin | 'Property Of' Inventory</h1>

<uc1:formPropOfGrid ID="FormPropOfGrid1" runat="server" />

</asp:Content>

