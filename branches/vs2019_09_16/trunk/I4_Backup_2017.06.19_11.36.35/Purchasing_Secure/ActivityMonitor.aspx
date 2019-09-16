<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Purchasing_Secure.master" AutoEventWireup="false" CodeFile="ActivityMonitor.aspx.vb" Inherits="Purchasing_Secure_ActivityMonitor" %>
<%@ Register Src="~/Controls/form_OpsStats.ascx" TagName="formOpsStats" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Purchasing | Ops Activity Monitor</h1>

  <uc1:formOpsStats ID="FormOpsStats1" runat="server" />


</asp:Content>

