<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/IT_Secure.master" AutoEventWireup="false" CodeFile="Fleet.aspx.vb" Inherits="IT_Secure_Fleet" %>

<%@ Register Src="~/Controls/form_FleetManager.ascx" TagName="formFleetManager" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>IT | Fleet Administration</h1>

<uc1:formFleetManager runat="server" />

</asp:Content>

