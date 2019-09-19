<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Project_ReportViewer.aspx.vb" Inherits="AcctTracking_Project_ReportViewer" %>



<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:5px 5px 5px 5px;">
<h6>AMR Account Tracking | Printable Project</h6>
<p><b>1.</b> Select PDF from the Export Format dropdown <b>2.</b> Click Export <b>3.</b> Save file</p>

    

</div>

<div style="padding:5px 5px 5px 5px;">

    <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.AcctTrack_ProjectProfile, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
    
    
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="800px" 
        Height="700px"   ParametersAreaVisible="true"   
        Report="KepnerReporting.AcctTrack_ProjectProfile, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

   
   

</div>
</asp:Content>

