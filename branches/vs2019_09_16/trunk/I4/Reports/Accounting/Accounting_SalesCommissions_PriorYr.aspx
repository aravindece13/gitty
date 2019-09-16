<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Accounting_SalesCommissions_PriorYr.aspx.vb" Inherits="Reports_Accounting_SalesCommissions_PriorYr" %>



<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.2.14.1204, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | Accounting | Prior Year Sales Commission Data</h6>
<p>Due to date variable limitions with the SXe/Progress, this report is necessary to pull December commission data in the month of January.
 This report is intended to be exported to Excel for further manipulation.</p>

</div>

<div style="padding:5px 5px 5px 5px;">

    <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.SalesCommissions_PriorYr, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>


    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1100px" 
        Height="700px"  
        Report="KepnerReporting.SalesCommissions_PriorYr, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>



</asp:Content>

