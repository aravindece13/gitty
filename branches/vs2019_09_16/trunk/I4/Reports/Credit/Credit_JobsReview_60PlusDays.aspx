<%@ Page Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Credit_JobsReview_60PlusDays.aspx.vb" Inherits="Reports_Credit_Credit_JobsReview_60PlusDays" title="Untitled Page" %>





<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=13.1.19.618, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Credit | Jobs Review | 60 Days from Last Ship</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:5px 5px 5px 5px;">
<h6>Jobs Review | 60 Days from Last Ship</h6>
            <p>The following is a jobs listing for all active jobs with a Total Balance greater than $500, and their last ship date was more than 60 days ago. Please note that the user must select a 
            Credit Manager before running the report.  The original sort order is by state, customer, and then descending by Total Balance.</p> 
            
            <p>It is assumed that the report will be exported to Excel for further manipulation and printing.</p>
            
</div>

<div style="padding:5px 5px 5px 15px;">

     <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
        <typereportsource typename="KepnerReporting.Credit_JobsReview5090, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        </typereportsource>
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>
    
    
    <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" Height="700px"  
        Report="KepnerReporting.Credit_JobsReview5090, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
        <Resources ExportSelectFormatText="Export Format" />
    </telerik:ReportViewer>--%>

</div>


</asp:Content>

