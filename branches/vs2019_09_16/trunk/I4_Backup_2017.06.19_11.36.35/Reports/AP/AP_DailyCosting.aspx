<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="AP_DailyCosting.aspx.vb" Inherits="Reports_AP_DailyCosting" %>


<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.2.14.1204, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | AP - Daily Costing</h6>
<p>The following is a listing of all costing transactions from the last 5 days.</p>
<p>Please email Derek Johnson with more of a description of how this report is to be used.</p>
</div>

<div style="padding:5px 5px 5px 5px;">

     <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.AP_DailyCosting, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
    
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1100px" 
        Height="700px"  
        Report="KepnerReporting.AP_DailyCosting, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>
</asp:Content>

