<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Information_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Information Home</h1>
 <p>The following is a collection of common general information.  If you cannot find what</p>
 
 <div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:995px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server"  
        MultiPageID="RadMultiPage1" SelectedIndex="2"  Width="800px">
        <Tabs>
            
            <telerik:RadTab runat="server" Text="Staff" PageViewID="Staff" Selected="true" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Credit Apps/Forms" PageViewID="CreditApps" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Other" PageViewID="Other" ></telerik:RadTab>
 
        </Tabs>
    </telerik:RadTabStrip>
  </div>


<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="250px" Width="1000px">
    
  
  <telerik:RadPageView ID="Staff" runat="server" Selected="true">
        <div id="div2" style="padding:15px 5px 5px 15px;float:left;width:975px;">
            <p style="font-size:small; font-weight:bold;">Charlene Butler - Credit Manager | Texas</p>
            <p style="font-size:small; font-weight:bold;">Ron Jeske - Credit Manager |  Arizona&nbsp;&nbsp; 303.446.3956&nbsp;F: 303.446.3900</p>
            <p style="font-size:small; font-weight:bold;">Christine Miller - Credit Manager | 
                Colorado, Wyoming, Montana, Nevada &nbsp;303.446.3983&nbsp;&nbsp;F: 303.446.3901</p>
            <p style="font-size:small; font-weight:bold;">Tessa Brocas - Credit Assistant | 303.446.3985</p> 
        </div>  
        
  
  </telerik:RadPageView>
  <telerik:RadPageView ID="CreditApps" runat="server">  
        <div id="div3" style="padding:15px 5px 5px 15px;float:left;width:800px;">
            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl="~/Information/Form_CreditAppDK_AZ.pdf">Arizona Credit App</asp:HyperLink> | 
            <asp:HyperLink ID="HyperLink12" runat="server" Target="_blank" NavigateUrl="~/Information/Form_CreditAppDK.pdf">Dana Kepner Credit App</asp:HyperLink> | 
            <asp:HyperLink ID="HyperLink4" runat="server" Target="_blank" NavigateUrl="~/Information/Form_CreditAppWI.pdf">Western Industrial Credit App</asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" NavigateUrl="~/Information/Form_AzTaxExempt5000.pdf">Arizona Tax Exempt 5000</asp:HyperLink>
        
        </div>        	  
  </telerik:RadPageView>
  <telerik:RadPageView ID="Other" runat="server">  
        <div id="div1" style="padding:15px 5px 5px 15px;float:left;width:800px;">
            <asp:HyperLink ID="HyperLink3" runat="server" Target="_blank" NavigateUrl="~/Credit/2011_SalesMeetingPresentation.pdf">2011 Sales Meeting Presentation</asp:HyperLink>
            <p></p>
        </div>        	  
  </telerik:RadPageView>
  
  
  
  
</telerik:RadMultiPage>  
 

</asp:Content>

