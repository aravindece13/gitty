﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="BranchMngr_Dashboard.aspx.vb" Inherits="Reports_Financials_BranchMngr_Dashboard" %>




<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Reporting | Branch Manager | Dashboard</title>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | Branch Manager | Dashboard</h6>
<p>The following report provides some high level metrics for gauging the performance of your branch(es).  Select the branch to run
the report for, and then click on the Preview button.  PDF is the recommended output format.</p>
<p><b>Data:</b>  Net Profit, Total Income, and Operating Expense numbers are pulled from SXe financials nightly.  Backlog data is pulled nightly as well.</p>

</div>

<div style="padding:5px 5px 5px 15px;">

     <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.BranchMngr_DashBoard, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
    
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" Height="700px"  
        Report="KepnerReporting.BranchMngr_DashBoard, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>


</asp:Content>
