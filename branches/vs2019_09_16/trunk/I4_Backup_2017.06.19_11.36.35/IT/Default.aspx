<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/IT.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="IT_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
             <telerik:AjaxSetting AjaxControlID="lnkContactExts">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkContactExts" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkContactListing">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkContactListing" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkSecurityReq">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkSecurityReq" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkSpam">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkSpam" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkSecurityAcc">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkSecurityAcc" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="lnkPinningApps">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkPinningApps" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


<h1>Information Technology</h1>
<div id="CommonLinks" style="padding:0px 2px 2px 5px;float:left;width:1300px;">    

   
   <div id="divTabStrip1" style="Margin:5px 5px 0px 5px;float:left;width:1300px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="MetroTouch" SelectedIndex="2"  Width="1000px">
        <Tabs>
            
            <telerik:RadTab runat="server" Text="Staff" PageViewID="Staff" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Help Desk" PageViewID="HelpDesk" Selected="true"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Cheat Sheets" PageViewID="CheatSheets" ></telerik:RadTab>
            <%--<telerik:RadTab runat="server" Text="Juniper Meetings" PageViewID="Juniper" ></telerik:RadTab>--%>
            <telerik:RadTab runat="server" Text="Remote Access" PageViewID="RemoteAccess" ></telerik:RadTab>
 
        </Tabs>
    </telerik:RadTabStrip>
  </div>


<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="700px" Width="1000px">
    
  
  <telerik:RadPageView ID="Staff" runat="server" >
        <div id="div2" style="Margin:15px 5px 5px 15px;float:left;width:1000px;">
                <p><b style="font-size:medium; color:#4c68a2;">Steve Anderson</b></p> <p style="font-size:medium;">IT Manager &amp; Fleet Vehicle Management</p>
                <p><b style="font-size:medium; color:#4c68a2;">Jason Lloyd</b></p> <p style="font-size:medium;">Help Desk</p>
           
        </div>  
        
  
  </telerik:RadPageView>
  <telerik:RadPageView ID="HelpDesk" runat="server" Selected="true">
        <div id="div5" style="Margin:15px 5px 5px 15px;float:left;width:900px;">
                <p style="font-size:medium;">
                Our goal is to provide quality solutions quickly. Please take a few seconds to enter a detailed trouble ticket. Doing so will get the issue routed to the right person, help us efficiently handle the backlog, and allow us to identify difficult long-term issues. Thanks, Dana Kepner IT
                </p>
                <p style="font-size:medium;">
                Please start a help ticket by emailing 'helpdesk'.  In the eMail subject line, please provide a high level description (such as 'Cell Battery Dead' or 'Internet Connection Failure').  In the body of the eMail, please be as descriptive as possible and include any screenshots. 
                </p>
        </div>  
        
  
  </telerik:RadPageView>
  <telerik:RadPageView ID="CheatSheets" runat="server">  
        <div id="div3" style="Margin:15px 5px 5px 15px;float:left;width:1000px;">
            <h3 style="width:500px;">Contact Information</h3>
            <div style="padding:4px 4px 4px 4px;width:330px; float:left;" >
                <telerik:RadButton ID="lnkContactExts" ButtonType="LinkButton" runat="server" Width="290px" Text="Phone Extensions" NavigateUrl="~/Reports2/Employees_Exts_ByBranch.aspx" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>
            </div>
            
            <div style="padding:4px 4px 4px 4px;width:330px; float:left;" >
                <telerik:RadButton ID="lnkPhoneFax" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="290px" Text="Mobile #'s, Extensions, eMail" NavigateUrl="~/Reports2/Employees_Contacts_ByBranch.aspx" Target="_blank"></telerik:RadButton>
            </div>
            
           

                
       
        </div> 
        <div id="div4" style="Margin:15px 5px 5px 15px;float:left;width:1000px;">
            
                <h3 style="width:500px;">MS Windows / Citrix</h3>
            
                <div style="padding:4px 4px 4px 4px;width:330px; float:left;" >
                    <telerik:RadButton ID="lnkPinningApps" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="290px" Text="Pinning Apps to Task Bar" NavigateUrl="~/IT/WindowsPinningItemsToStartMenu.pdf" Target="_blank"></telerik:RadButton>
                </div>
            
        </div> 
        
              	  
  </telerik:RadPageView>
  
  <%--<telerik:RadPageView ID="Juniper" runat="server">
        <div id="div4" style="padding:15px 5px 5px 15px;float:left;width:900px;">
            <p style="font-size:medium;">Click on the following button to launch a new browser window that will start the Juniper Meeting management system.  You will initially get an Internet Explorer error of 'There is a problem with this website's security certificate.'
                Disregard this by selecting 'Continue to this website (not recommended).' 
            </p>
        
            <div style="padding:4px 4px 4px 4px;width:310px; float:left;" >
                <telerik:RadButton ID="lnkJuniperMeeting" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="290px" Text="Juniper Meeting" NavigateUrl="http://meeting/" Target="_blank"></telerik:RadButton>
            </div>
        
        </div>
  
  </telerik:RadPageView>--%>
  
  
  <telerik:RadPageView ID="RemoteAccess" runat="server">  
        <div id="div1" style="padding:15px 5px 5px 15px;float:left;width:900px;">
            
            <p style="width:1000px; font-size:medium;">
                All of the links necessary for remote work activities have been consolidated onto one Internet accessable page.  
                You can access the page at  
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.danakepner.com/remote" Target="_blank" Font-Bold="true" Font-Size="Medium" >www.danakepner.com/remote</asp:HyperLink>. 
            </p>
            <p style="margin:10px 0px 0px 0px; font-size:medium;">
            The links are:
            </p>
            <div style="width:700px; float:left; margin:10px 0px 0px 20px;">
        
                <p><b style="color:#4c68a2; font-size:medium; ">Citrix Remote Desktop</b> </p> <p style="font-size:medium;">To access Citrix from outside the company</p>
                <p><b style="color:#4c68a2; font-size:medium;">Remote Desktop access</b> </p> <p style="font-size:medium;">For users who have access to their PC from outside the company (very few have this access)</p>
                <p><b style="color:#4c68a2; font-size:medium;">Online Meeting</b> </p> <p style="font-size:medium;">To use the online meeting application</p>
                <p><b style="color:#4c68a2; font-size:medium;">Webmail</b> </p> <p style="font-size:medium;">To access email through the Outlook web app</p>
                <p><b style="color:#4c68a2; font-size:medium;">Exavault FTP</b> </p> <p style="font-size:medium;">For users who have an FTP account to transfer large files</p>
                <p><b style="color:#4c68a2; font-size:medium;"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.paycomonline.com" Target="_blank">Payroll</asp:HyperLink></b> </p> 
                <p style="font-size:medium;">A link to the 
                    PaycomPaycom website to access pay stubs
                </p>
                
            </div>
  
        </div>        	  
  </telerik:RadPageView>

  
</telerik:RadMultiPage>  
   
 
   
</div>
    

</asp:Content>

