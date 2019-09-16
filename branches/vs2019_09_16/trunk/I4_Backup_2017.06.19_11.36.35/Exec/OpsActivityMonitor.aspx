<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="OpsActivityMonitor.aspx.vb" Inherits="Exec_OpsActivityMonitor" %>

<%@ Register Src="~/Controls/form_OpsStats.ascx" TagName="formOpsStats" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Executive | Operations Activity Monitor</h1>

  <uc1:formOpsStats runat="server" />

</asp:Content>

