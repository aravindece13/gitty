<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="AcctTrack_RV_TaskMngment_Executive.aspx.vb" Inherits="Reports_AcctTrack_RV_TaskMngment_Executive" %>



<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | AMR/AMI Executive Overview</h6>
<p>The following is an extremely long report, and is not intended to be printed.  For search capabilities, the report is best
   used in the PDF format.</p>

</div>

<div style="padding:5px 5px 5px 5px;">


    
    <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
            <typereportsource typename="KepnerReporting.AcctTrack_TaskManagement_Executive, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
            </typereportsource>
            <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>

    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1100px" 
        Height="700px"  
        Report="KepnerReporting.AcctTrack_TaskManagement_Executive, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>

</asp:Content>

