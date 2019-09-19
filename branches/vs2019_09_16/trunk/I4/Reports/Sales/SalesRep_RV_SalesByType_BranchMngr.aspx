<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="SalesRep_RV_SalesByType_BranchMngr.aspx.vb" Inherits="Reports_SalesRep_RV_SalesByType_BranchMngr" %>



<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | Branch Manager | Sales Rep Sales by Order Type</h6>
<p>The following report details sales by order type according to <i>invoicing</i> warehouse.  For instance if a Sales Rep from another 
warehouse sells through your warehouse(s), they will appear in this report.  Additionally, CR's have been removed.</p>

</div>

<div style="padding:5px 5px 5px 5px;">

     <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.SalesRep_SalesByType_BranchMngr, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1100px" 
        Height="700px"  
        Report="KepnerReporting.SalesRep_SalesByType_BranchMngr, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>

</asp:Content>

