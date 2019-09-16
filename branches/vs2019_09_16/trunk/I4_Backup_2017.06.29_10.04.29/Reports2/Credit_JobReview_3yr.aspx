<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Credit_JobReview_3yr.aspx.vb" Inherits="Reports2_Credit_JobReview_3yr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="width:1150; height:800px; margin:15px;">    
   <h4>Credit |Job Review - Active Jobs Created in Last 3 Years (1095 Days)</h4>
   <div style="width:1000px; font-size:small;float:left;">
        <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
        <b>Report Description: </b>The Job Review report is a listing of all active Jobs created in the last 3 years and their setup parameters.
       
   </div>
    <RSWEB:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote"
        Font-Names="Trebuchet-MS" Font-Size="10pt" 
        WaitMessageFont-Names="Trebuchet-MS" WaitMessageFont-Size="14pt" 
        Width="1100px" Height="700px" ZoomPercent="100" 
        ShowParameterPrompts="True" ShowRefreshButton="true"  ExportContentDisposition="AlwaysAttachment" >

    </RSWEB:ReportViewer>
            
        
</div>

</asp:Content>

