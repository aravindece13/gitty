<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/AMR_Secure.master" AutoEventWireup="false" CodeFile="Projects.aspx.vb" Inherits="AMR_Secure_Projects" %>
<%@ Register Src="~/Controls/form_Projects.ascx" TagName="formProjects" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>AMR Specialist | Projects &amp; Quotes</h1>

   <uc1:formProjects runat="server" />

</asp:Content>

