<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Warehouse.master" AutoEventWireup="false" CodeFile="PropertyOf.aspx.vb" Inherits="Warehouse_PropertyOf" %>
<%@ Register Src="~/Controls/form_PropertyOfSearch.ascx" TagName="formPropOfGrid" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Warehouse | 'Property Of' Inventory</h1>

<uc1:formPropOfGrid runat="server" />



</asp:Content>

