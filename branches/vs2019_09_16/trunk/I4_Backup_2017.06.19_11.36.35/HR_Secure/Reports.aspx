<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/HR_Secure.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="HR_Secure_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Human Resources | Reporting</h1>

<div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:995px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server"  
        MultiPageID="RadMultiPage1"   Width="995px">
        <Tabs>
            <telerik:RadTab runat="server" Text="Phone & Fax" PageViewID="PhoneFax" Selected="true" ></telerik:RadTab>
           <%-- <telerik:RadTab runat="server" Text="Roster" PageViewID="BirthDayAnniv" ></telerik:RadTab>--%>
            
        </Tabs>
    </telerik:RadTabStrip>
  </div>

<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="570px" Width="1000px">
   
   <telerik:RadPageView ID="PhoneFax" runat="server" Selected="true">
    <div id="div9" style="padding:15px 5px 5px 15px;float:left;width:800px;">
        <asp:HyperLink ID="HyperLink2" Target="_blank" NavigateUrl="../Reports/IT/IT_PhoneFaxListing.aspx" runat="server">
            <h6>Phone, Fax and Extension Listing</h6></asp:HyperLink>
            <p>This report provides a listing of all active employees, along with their mobile, fax, and extension numbers.  This report is
            also available to other company employees via a link on the 'Forms & General Info/IT' pull out tab on the left edge of every Intranet page.</p>
            
    
    </div>
    
   
   </telerik:RadPageView>

   <%--<telerik:RadPageView ID="BirthDayAnniv" runat="server" >
    <div id="div1" style="padding:15px 5px 5px 15px;float:left;width:800px;">
    <p>Links for birthday and anniversary mailings will go here.</p>
    
    </div>
   
   </telerik:RadPageView> --%>
</telerik:RadMultiPage>



</asp:Content>

