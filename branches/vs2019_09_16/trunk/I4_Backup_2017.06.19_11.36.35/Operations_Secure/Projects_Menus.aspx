<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Operations_Secure.master" AutoEventWireup="false" CodeFile="Projects_Menus.aspx.vb" Inherits="Operations_Secure_Projects_Menus" %>

<%@ Register Src="~/Controls/form_Projects_Menu.ascx" TagName="formProjectsMenu" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Operations | Project Menu Maintenance</h1>

  <uc1:formProjectsMenu ID="FormProjectsMenu" runat="server" />

</asp:Content>

