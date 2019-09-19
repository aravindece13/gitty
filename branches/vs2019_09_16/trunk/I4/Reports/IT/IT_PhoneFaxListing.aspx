<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="IT_PhoneFaxListing.aspx.vb" Inherits="Reports_IT_IT_PhoneFaxListing" %>



<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | IT | Employee Phone and Fax Listing</h6>
<p>This report is intended to be exported to PDF.  </p>

</div>

<div style="padding:5px 5px 5px 5px;">

     <telerik:ReportViewer ID="ReportViewer2" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.IT_PhoneFaxListing, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
    
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="800px" 
        Height="700px"  
        Report="KepnerReporting.IT_PhoneFaxListing, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>



</asp:Content>

