<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Sales_Job_Detail_Invoiced.aspx.vb" Inherits="Reports_Sales_Sales_Job_Detail_Invoiced" %>


<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.2.14.1204, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | Job Report | Invoiced Line Item Detail</h6>
<p>The following is a listing of all <i>invoiced</i> line items for the selected Job.  This report has been designed for Export to Microsoft Excel.</p>

</div>

<div style="padding:5px 5px 5px 5px;">

    
     <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.Sales_Job_Detail_Invoiced, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" 
        Height="700px"  
        Report="KepnerReporting.Sales_Job_Detail_Invoiced, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>


</asp:Content>

