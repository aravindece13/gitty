<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Accounting_Inventory_SlowMoving.aspx.vb" Inherits="Reports_Accounting_Inventory_SlowMoving" %>




<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.2.14.1204, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | Accounting | Slow Moving Inventory</h6>
<p>This report lists all inventory within Dana Kepner that has not sold in the last year and has an inventory value.  The intention is that this report will be exported
to Microsoft Excel, where the data will be limited further using filters on the Last Receipt and Last Invoiced data columns.</p>

</div>

<div style="padding:5px 5px 5px 5px;">


    <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.Acct_SlowMovingInventory, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>


    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1100px" 
        Height="700px"  
        Report="KepnerReporting.Acct_SlowMovingInventory, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>


</asp:Content>

