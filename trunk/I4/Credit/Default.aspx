<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Credit.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Credit_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<div id="CommonLinks" style="margin:10px;float:left;width:1000px;">    
<h1>Credit</h1>
 
 
 <div id="divTabStrip1" style="margin:5px 5px 0px 5px;float:left;width:995px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="1"  Width="1000px" Skin="MetroTouch">
        <Tabs>
            
            <telerik:RadTab runat="server" Text="Staff" PageViewID="Staff" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Credit Apps/Forms" PageViewID="CreditApps" Selected="True" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Other" PageViewID="Other" ></telerik:RadTab>
 
        </Tabs>
    </telerik:RadTabStrip>
  </div>


<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1000px" SelectedIndex="1">
    
  
  <telerik:RadPageView ID="Staff" runat="server" >
        <div id="div2" style="margin:15px 5px 5px 15px;float:left;width:975px;">
            <p><b style="font-size:medium; color:#4c68a2;">Charlene Butler - Credit Manager | Texas</b></p><br />
            
            <p><b style="font-size:medium; color:#4c68a2;">Christine Miller - Credit Manager | Arizona, Nevada</b></p><p>303.446.3983&nbsp;&nbsp;F: 303.446.3901</p><br />
            <p><b style="font-size:medium; color:#4c68a2;">Kelsey Wickett - Credit Specialist  | Colorado, Montana, Nevada, Wyoming </b></p><p>303.446.3956&nbsp;F: 303.446.3922</p><br />
        </div>  
        
  
  </telerik:RadPageView>
  <telerik:RadPageView ID="CreditApps" runat="server" Selected="true">  
        <div id="div3" style="margin:15px 0px 5px 20px;float:left;width:1000px;">
            
            <div style="width:100%; float:left; margin-bottom:30px;">          
                <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                     <telerik:RadButton ID="lnkCredAppDK" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Text="Credit App - Kepner" NavigateUrl="~/Information/Form_CreditAppDK.pdf" Target="_blank"></telerik:RadButton>
                </div> 
                <div style="margin:4px 4px 4px 4px;width:240px; float:left;  " >
                     <telerik:RadButton ID="lnkCredAppWI" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Text="Credit App - Western" NavigateUrl="~/Information/Form_CreditAppWI.pdf" Target="_blank"></telerik:RadButton>
                </div>
                <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                     <telerik:RadButton ID="lnkCredAppAZ" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Text="Credit App - Arizona" NavigateUrl="~/Information/Form_CreditAppDK_AZ.pdf" Target="_blank"></telerik:RadButton>
                </div>
            </div>
            <div style="width:100%; float:left; margin-bottom:30px;">
                <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                    <telerik:RadButton ID="lnkAZ5000" ButtonType="LinkButton" runat="server" Width="200px" Text="Arizona (5000)" NavigateUrl="~/Information/Form_AzTaxExempt5000.pdf" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>
                </div>
            </div>
        </div>        	  
  </telerik:RadPageView>
  <telerik:RadPageView ID="Other" runat="server">  
        <div id="div1" style="margin:15px 5px 5px 15px;float:left;width:800px;">
            
           <div style="margin:4px 4px 4px 4px; width:300px; float:left;" >
                 <telerik:RadButton ID="lnk2011SalesMeeting" ButtonType="LinkButton" runat="server" Width="280px" Skin="BlackMetroTouch" Text="2011 Sales Meeting Presentation" NavigateUrl="~/Credit/2011_SalesMeetingPresentation.pdf" Target="_blank"></telerik:RadButton>
            </div> 
        </div>        	  
  </telerik:RadPageView>
  
  
  
  
</telerik:RadMultiPage>  
 
 

</div>
    





</asp:Content>

