<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Operations_PropertyOf.aspx.vb" Inherits="Reports_Operations_Operations_PropertyOf" %>





<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | Operations | Property Of Inventory</h6>
<p>The following is a listing of <i>all current</i> Property Of products in the company inventory.  The expectation is that this report
will be exported to Microsoft Excel for further manipulation.</p>

</div>

<div style="padding:5px 5px 5px 15px;">
    <telerik:ReportViewer ID="ReportViewer1" runat="server"></telerik:ReportViewer>
    
     <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.Operations_PropertyOf, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>
    
    
   <%-- <telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" 
        Height="700px"  
        Report="KepnerReporting.Operations_PropertyOf, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>

</asp:Content>

