﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchMngr.master" AutoEventWireup="false" CodeFile="CustomerJobSearchAndReports.aspx.vb" Inherits="BranchMngr_CustomerJobSearchAndReports" %>
<%@ Register Src="~/Controls/form_CustomerJobSearchAndReports.ascx" TagName="formCustomerJobSearchAndReports" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Branch Manager | Customer Job Reporting</h1>

  <uc1:formCustomerJobSearchAndReports ID="formJobSearch" runat="server" />

</asp:Content>
