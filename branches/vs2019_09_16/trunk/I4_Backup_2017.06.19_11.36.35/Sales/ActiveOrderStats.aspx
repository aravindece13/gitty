<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Sales.master" AutoEventWireup="false" CodeFile="ActiveOrderStats.aspx.vb" Inherits="Sales_ActiveOrderStats" %>


<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.2.14.1204, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


        <div style="padding:10px 5px 5px 10px;">

            
             <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="700px" Width="1000px" ParametersAreaVisible="true">
                <typereportsource typename="KepnerReporting.Sales_OpenOrderStats, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
                </typereportsource>
                <Resources ExportSelectFormatText="Export Format" />
            </telerik:ReportViewer>
            
            <%--<telerik:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" Height="700px"   
                Report="KepnerReporting.Sales_OpenOrderStats, KepnerReporting, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
                <Resources ExportSelectFormatText="Export Format" />
            </telerik:ReportViewer>--%>

        </div>



</asp:Content>

