<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="Fleet.aspx.vb" Inherits="Exec_Fleet" %>

<%@ Register Src="~/Controls/form_FleetManager.ascx" TagName="formFleetManager" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Executive | Fleet</h1>

<uc1:formfleetManager ID="FormFleet1" runat="server" />


</asp:Content>

