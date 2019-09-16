<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchMngr.master" AutoEventWireup="false" CodeFile="Fleet.aspx.vb" Inherits="BranchMngr_Fleet" %>
<%@ Register Src="~/Controls/form_Fleet.ascx" TagName="formFleet" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

    <h1>Branch Manager | Fleet Vehicles</h1>
 
 <uc1:formFleet runat="server" />

</asp:Content>

