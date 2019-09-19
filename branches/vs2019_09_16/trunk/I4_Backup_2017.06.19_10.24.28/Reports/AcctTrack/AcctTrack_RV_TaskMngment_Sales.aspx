﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="AcctTrack_RV_TaskMngment_Sales.aspx.vb" Inherits="Reports_AcctTrack_RV_TaskMngment_Sales" %>


<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.2.14.1204, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | AMR/AMI Sales | Task Management</h6>
<p>The following is a listing of all <b>Active</b> tasks.</p>

</div>

<div style="padding:5px 5px 5px 5px;">


    
    <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.AcctTrack_TaskManagement_Sales, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>

    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" 
        Height="700px"  
        Report="KepnerReporting.AcctTrack_TaskManagement_Sales, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>

</asp:Content>
