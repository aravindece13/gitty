<%@ Page Title="" Language="VB" Debug="true" MasterPageFile="~/MasterPages/Operations_Secure.master" AutoEventWireup="false" CodeFile="ActivityMonitor.aspx.vb" Inherits="Operations_Secure_ActivityMonitor" %>
<%@ Register Src="~/Controls/form_OpsStats.ascx" TagName="formOpsStats" TagPrefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Operations | Activity Monitor</h1>

  <uc1:formOpsStats runat="server" />

</asp:Content>

