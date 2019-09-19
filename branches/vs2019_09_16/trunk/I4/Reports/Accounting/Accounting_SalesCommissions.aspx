﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Accounting_SalesCommissions.aspx.vb" Inherits="Reports_Accounting_SalesCommissions" %>




<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | Accounting | Current Year Sales Commission Data</h6>
<p>This report is intended to be exported to Excel for further manipulation.</p>

</div>

<div style="padding:5px 5px 5px 5px;">


    <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.SalesCommissions, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    

    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1100px" 
        Height="700px"  
        Report="KepnerReporting.SalesCommissions, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>



</asp:Content>
