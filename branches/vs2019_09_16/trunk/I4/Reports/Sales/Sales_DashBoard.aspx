<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Sales_DashBoard.aspx.vb" Inherits="Reports_Sales_Sales_DashBoard" %>



<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.2.14.1204, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | Sales | DashBoard</h6>
<p><b style="font-style:italic;">Unofficial</b> metrics for gauging your progress.  All numbers are as of 9pm the prior night.</p>

</div>

<div style="padding:5px 5px 5px 5px;">

     <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.Sales_DashBoard, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
    
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" 
        Height="700px"  
        Report="KepnerReporting.Sales_DashBoard, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>


</asp:Content>

