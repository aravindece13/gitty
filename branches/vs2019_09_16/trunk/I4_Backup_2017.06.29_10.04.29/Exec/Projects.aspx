<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="Projects.aspx.vb" Inherits="Exec_Projects" %>
<%@ Register Src="~/Controls/form_Projects.ascx" TagName="formProjects" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Executive | Projects &amp; Quotes</h1>

   <uc1:formProjects runat="server" />


</asp:Content>

