<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Operations_CycleCounts_CycleCount_Supplemental_live.aspx.vb" Inherits="Reports2_Operations_CycleCounts_CycleCount_Supplemental_live" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="width:1150; height:800px; margin:15px;">    
   <h4>Cycle Counts | Cycle Count Supplemental</h4>
   <div style="width:1000px; font-size:medium;float:left; margin-bottom:10px;">
        <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
        <b>Report Description: </b>The Cycle Count Supplemental report provides additional information (Stock Returns, PO Returns, Must Counts, Quantity Unavailable Products) that needs to be considered in daily cycle counting.  <br /><br />
        <b>Report Use: </b>Select branch from drop down list and then 'View Report' to run. Export to PDF for best print formatting.
        <br /><br />
        <b style="background-color:Red; color:White; font-weight:bold; font-size:small; font-style:italic;">This is a resource intensive report and may fail if GUI has multiple reports running.&nbsp; Try again in a few minutes in the case of a failure.</b>
   </div>
    <RSWEB:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote"
        Font-Names="Trebuchet-MS" Font-Size="10pt" 
        WaitMessageFont-Names="Trebuchet-MS" WaitMessageFont-Size="14pt" 
        Width="1100px" Height="700px" ZoomPercent="100" 
        ShowParameterPrompts="True" ShowRefreshButton="true"  ExportContentDisposition="AlwaysAttachment" >

    </RSWEB:ReportViewer>
            
        
</div>


</asp:Content>

