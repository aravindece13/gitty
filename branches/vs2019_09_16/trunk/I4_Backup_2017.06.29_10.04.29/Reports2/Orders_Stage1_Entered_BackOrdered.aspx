<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Orders_Stage1_Entered_BackOrdered.aspx.vb" Inherits="Reports2_Orders_Stage1_Entered_BackOrdered" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="width:1150; height:800px; margin:15px;">    
   <h4>Orders | Stage 1 (Entered) and Back Ordered</h4>
   <div style="width:1000px; font-size:small;float:left;">
        <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
        <b>Report Description: </b>The Stage 1 (Entered) Ordered report is a listing of all open orders that have been backordered.<br /><br />
        <b>Report Use: </b>Select branch from drop down list and then 'View Report' to run. Export to Excel if you would like to manipulate the report (filter by customer, sales rep, etc, or sort).  PDF is preferred for copy/paste in SXe.
   </div>
    <RSWEB:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote"
        Font-Names="Trebuchet-MS" Font-Size="10pt" 
        WaitMessageFont-Names="Trebuchet-MS" WaitMessageFont-Size="14pt" 
        Width="1100px" Height="700px" ZoomPercent="100" 
        ShowParameterPrompts="True" ShowRefreshButton="true"  ExportContentDisposition="AlwaysAttachment" >

    </RSWEB:ReportViewer>
            
        
</div>

</asp:Content>

