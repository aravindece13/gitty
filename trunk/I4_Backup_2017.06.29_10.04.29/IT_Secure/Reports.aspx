<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/IT_Secure.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="IT_Secure_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">






<div style="width:1800px; height:700px;">
<h1>IT | Reporting</h1>

<div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:995px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1"  Width="1800px" Skin="MetroTouch">
        <Tabs>
            <telerik:RadTab runat="server" Text="Intranet" PageViewID="Intranet" Selected="true" ></telerik:RadTab>
            
            <telerik:RadTab runat="server" Text="Fleet" PageViewID="Fleet" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Phone &amp; Fax" PageViewID="PhoneFax" ></telerik:RadTab>
            
        </Tabs>
    </telerik:RadTabStrip>
  </div>


<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="570px" Width="1800px">
   
   <telerik:RadPageView ID="Intranet" runat="server" Selected="true">
        
        <div id="div8" style="margin:0px 0px 0px 20px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Security Profiles
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:240px;float:left; margin:10px;">
                    <telerik:RadButton ID="RadButton4" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Font-Size="Small" Text="Security Profiles" NavigateUrl="~/Reports2/IT_IntranetProfiles.aspx" Target="_blank"></telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b><i>DW - Intranet App Services Tables</i><br /><br /> 
                            
                </div>

    	    </div>
        </div> 

        
        
        

  
  </telerik:RadPageView> 
    
  <telerik:RadPageView ID="Fleet" runat="server" >


     <div id="div5" style="margin:0px 0px 20px 0px;float:left;width:1300px;float:left;">
                <div style="width:1300px; margin-bottom:15px;">     
                    <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                        Fleet Listing
                    </div>
                </div>
                <div style="width:1300px; margin-bottom:15px;"> 
	                <div style="width:240px;float:left; margin:10px;">
                        <telerik:RadButton ID="RadButton8" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Font-Size="Small" Text="Fleet Listing" NavigateUrl="../Reports2/Accounting_Fleet_Listing.aspx" Target="_blank"></telerik:RadButton>
        	        </div>
         	        <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                                                
                        <b>Report Description: </b>Listing of all fleet assets, past and present.<br /> <br />
                        <b>Report Use:</b>This report exports directly to Excel.
                    </div>

    	        </div>
     </div>


  </telerik:RadPageView>
  
  <telerik:RadPageView ID="PhoneFax" runat="server" >
    
    
    
     <div id="div3" style="margin:0px 0px 0px 20px;float:left;width:1300px;float:left;">
            <div style="width:1300px;">    
                <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                    Phone, Extension and eMail Listing By Branch
                </div>
            </div>
            <div style="width:1300px;">
	            <div style="width:240px;float:left; margin:10px;">
                    <telerik:RadButton ID="RadButton2" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Font-Size="Small" Text="Contact Listing" NavigateUrl="../Reports2/Employees_Contacts_ByBranch.aspx" Target="_blank"></telerik:RadButton>
        	    </div>
         	    <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                    <b>Data Source: </b><i>Datawarehouse</i><br /><br /> 
                            
                </div>

    	    </div>
     </div> 
    
    
    
   
   </telerik:RadPageView>
</telerik:RadMultiPage>  

</div>




</asp:Content>

