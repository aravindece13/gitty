﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="IT_IntranetProfiles.aspx.vb" Inherits="Reports2_IT_IntranetProfiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="width:1150; height:800px; margin:15px;">    
   <h4>IT Intranet Profiles| Target Output Excel</h4>
    <RSWEB:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Trebuchet-MS" 
        Font-Size="10pt" InteractiveDeviceInfos="(Collection)" 
        ProcessingMode="Remote" WaitMessageFont-Names="Trebuchet-MS" WaitMessageFont-Size="14pt" 
        Width="1100px" Height="700px" ZoomPercent="85" 
        ShowParameterPrompts="False" ExportContentDisposition="AlwaysAttachment">

    </RSWEB:ReportViewer>
            
        
</div>



</asp:Content>

