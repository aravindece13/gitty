<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="AP_ReceivedPOs_ToBeCosted.aspx.vb" Inherits="Reports_AP_ReceivedPOs_ToBeCosted" %>


<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.2.14.1204, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:5px 5px 5px 5px;">
<h6>Reporting | AP - Received PO's To Be Costed</h6>
<p>The following is a listing of all Stage 5 (Received) and 6 (Costed) Purchase 
    Orders sorted by Warehouse and Receipt Date. The primary purpose of this report 
    is to identify PO&#39;s that are in jeopardy of missing their discount terms. The 
    secondary purpose of this report is to identify variation from the vendor&#39;s 
    standard terms.&nbsp; The &#39;Age&#39; column is provided as a blank space for manual 
    Excel calculation (sorry the calculation is not easily accomplished with the 
    reporting software at this point).</p>
</div>

<div style="padding:5px 5px 5px 5px;">

    
     <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.AP_Received_ToBeCosted, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
        
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1100px" 
        Height="700px"  
        Report="KepnerReporting.AP_Received_ToBeCosted, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>
</asp:Content>

