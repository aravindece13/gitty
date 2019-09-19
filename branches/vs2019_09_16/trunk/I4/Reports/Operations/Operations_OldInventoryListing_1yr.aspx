<%@ Page Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Operations_OldInventoryListing_1yr.aspx.vb" Inherits="Reports_Operations_Operations_OldInventoryListing_1yr" title="Untitled Page" %>




<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<title>Reporting | Operations | Branch Old Inventory Listing</title>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="padding:5px 5px 5px 5px;">



<h6>Reporting | Operations | Inventory Listing - Not Sold in Past Year</h6>
<p>The following report provides a listing of all warehouse products with an inventory value that have not invoiced in the last year.  Select the branch to run
the report for, and then click on the Preview button.  </p>


</div>

<div style="padding:5px 5px 5px 15px;">

     <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.Operations_OldInventoryListing1Yr, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
    
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" Height="700px"  
        Report="KepnerReporting.Operations_OldInventoryListing1Yr, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>

</asp:Content>

