<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/AdminCorp_Secure.master" AutoEventWireup="false" CodeFile="Employees.aspx.vb" Inherits="AdminCorp_Employees" %>
<%@ Register Src="~/Controls/form_EmployeeData.ascx" TagName="formEmployees" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Corporate Administration | Employees</h1>
<uc1:formEmployees ID="formEmployees" runat="server" />

</asp:Content>

