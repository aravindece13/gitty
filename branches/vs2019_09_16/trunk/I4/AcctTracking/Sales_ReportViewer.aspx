<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Sales_ReportViewer.aspx.vb" Inherits="AcctTracking_Sales_ReportViewer" %>



<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:5px 5px 5px 5px;">
    <h6>Customer Profile | Meter Sales</h6>
</div>

<div style="padding:5px 5px 5px 5px;">

      <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.AcctTrack_CustomerProfile, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>

   <%-- <telerik:ReportViewer ID="ReportViewer1" runat="server" Width="900px" 
        Height="700px"   ParametersAreaVisible="false"   
        Report="KepnerReporting.AcctTrack_CustomerProfile, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>
</asp:Content>