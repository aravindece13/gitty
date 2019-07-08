<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Credit_Secure.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="Credit_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
           
            <%--AR Reports--%>
            <telerik:AjaxSetting AjaxControlID="lnkNewJobSetup">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewJobSetup" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkJobReview3yr">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkJobReview3yr" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkTaxExmptJobReview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkTaxExmptJobReview" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkNewCustAddrTax">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewCustAddrTax" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkHistCustReview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkHistCustReview" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <%--AR Aging Reports--%>
            <telerik:AjaxSetting AjaxControlID="lnkARAgingAll">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkARAgingAll" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkARAgingAZ">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkARAgingAZ" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkARAgingCO">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkARAgingCO" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkARAgingTX">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkARAgingTX" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkARAgingBranchRollup">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkARAgingBranchRollup" />
                </UpdatedControls>
            </telerik:AjaxSetting>


            <%--Job Management Reports--%>
            <telerik:AjaxSetting AjaxControlID="lnkJobPreLien">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkJobPreLien" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkLienJeopardy">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkLienJeopardy" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkTaxExemptJobReview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkTaxExemptJobReview" />
                </UpdatedControls>
            </telerik:AjaxSetting>

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>



<div style="margin:0px 2px 2px 5px;float:left; width:1300px;"> 
<h1>Credit | Reports</h1>

    <div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:1300px;">     
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="MetroTouch">
            <Tabs>
                <telerik:RadTab runat="server" Text="A/R Aging" PageViewID="ARAging" ></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Customer &amp; Job Setups" PageViewID="CustomerSetups" Selected="True" ></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Job Management" PageViewID="JobManagement" ></telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
    </div>
    
    <div style="margin:10px 0px 0px 10px;float:left; width:1300px; ">
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1300px" >
   
            <telerik:RadPageView ID="ARAging" runat="server" selected="true" >
            
                <div id="div5" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            AR Aging - All Customers
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkARAgingAll" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="AR Aging - All" NavigateUrl="../Reports2/Credit_Aging_Customer_All.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>SXe ("GUI") - Live</i><br /><br /> 
                            <b>Report Description: </b><br />
                            <b>Report Use:</b>This report exports directly to Excel in another window.
                        </div>

    	            </div>
                </div> 
                <div id="div6" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            AR Aging - Arizona
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkARAgingAZ" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="AR Aging - Arizona" NavigateUrl="../Reports2/Credit_Aging_Customer_AZ.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>SXe ("GUI") - Live</i><br /><br /> 
                            <b>Report Description: </b><br />
                            <b>Report Use:</b>This report exports directly to Excel in another window.
                        </div>

    	            </div>
                </div> 
                <div id="div11" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            AR Aging - Colorado
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkARAgingCO" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="AR Aging - Colorado" NavigateUrl="../Reports2/Credit_Aging_Customer_CO.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>SXe ("GUI") - Live</i><br /><br /> 
                            <b>Report Description: </b><br />
                            <b>Report Use:</b>This report exports directly to Excel in another window.
                        </div>

    	            </div>
                </div> 
                <div id="div7" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            AR Aging - Texas
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkARAgingTX" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="AR Aging - Texas" NavigateUrl="../Reports2/Credit_Aging_Customer_TX.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>SXe ("GUI") - Live</i><br /><br /> 
                            <b>Report Description: </b><br />
                            <b>Report Use:</b>This report exports directly to Excel in another window.
                        </div>

    	            </div>
                </div> 
            
                <div id="div8" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            AR Aging - Branch Rollup
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkARAgingBranchRollup" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="AR Aging - Branch Rollup" NavigateUrl="../Reports2/Credit_Aging_Rollup.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>SXe ("GUI") - Live</i><br /><br /> 
                            <b>Report Description: </b><br />
                            <b>Report Use:</b>This report exports directly as a PDF in another window.
                        </div>

    	            </div>
                </div> 
               
            
            
           
                    
  
            </telerik:RadPageView> 
    
            <telerik:RadPageView ID="CustomerSetups" runat="server">
                
                <div id="div26" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            New Job Setup Review
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkNewJobSetup" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="New Job Setup Review" NavigateUrl="../Reports2/Credit_JobReview.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">

                            <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                            <b>Report Description: </b>The Job Review report is a listing of all new Jobs and their setup parameters.
                            <b>Report Use:</b>This report exports directly to Excel.
                        </div>

    	            </div>
                </div> 
                
                <div id="div3" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Job Review - 3 Year
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkJobReview3yr" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Job Setup Review (3 Year)" NavigateUrl="../Reports2/Credit_JobReview_3yr.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                            <b>Report Description: </b>The Job Review report is a listing of all Jobs created over the last 3 years and their setup parameters.  This report 
                            <b>Report Use:</b>This report exports directly to Excel.
                        </div>

    	            </div>
                </div> 
                
            <div id="div9" style="margin:0px 0px 20px 0px;float:left;width:1300px;float:left;">
                <div style="width:1300px; margin-bottom:15px;">     
                    <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                        New Customer - Addr. &amp; Tax Review
                    </div>
                </div>
                <div style="width:1300px; margin-bottom:15px;"> 
	                <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkNewCustAddrTax" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="New Customer - Addr. &amp; Tax" 
                            NavigateUrl="../Reports2/Accounting_CustomerReview_Address_Tax_New.aspx" Target="_blank">
                        </telerik:RadButton>
        	        </div>
         	        <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                        <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                        <b>Report Description: </b>Address and Tax Review for customers created in the last 60 days.<br /><br />
                        <b>Report Use:</b>This report exports directly to Excel.
                    </div>

    	        </div>
            </div> 
                
            <div id="div10" style="margin:0px 0px 20px 0px;float:left;width:1300px;float:left;">
                <div style="width:1300px; margin-bottom:15px;">     
                    <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                        Historical Customer - Address &amp; Tax Review
                    </div>
                </div>
                <div style="width:1300px; margin-bottom:15px;"> 
	                <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkHistCustReview" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="All Customers - Address &amp; Tax" 
                            NavigateUrl="../Reports2/Accounting_CustomerReview_All.aspx" Target="_blank">
                        </telerik:RadButton>
        	        </div>
         	        <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                        <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                        <b>Report Description: </b>Address and Tax Review for all customers.<br /><br />
                        <b>Report Use:</b>This report exports directly to Excel.
                    </div>

    	        </div>
            </div>     

  
            </telerik:RadPageView> 
 
            <telerik:RadPageView ID="JobManagement" runat="server" >
                <div id="div1" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Job PreLien Review
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkJobPreLien" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="PreLien Review" NavigateUrl="../Reports2/Credit_Jobs_PreLienReview.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Datawarehouse (Updated Nightly)</i><br /><br /> 
                            <b>Report Description: </b><br />
                            <b>Report Use:</b>This report exports directly to Excel.
                        </div>

    	            </div>
                </div> 


                <div id="div4" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Job Review - Lien Jeopardy
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkLienJeopardy" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="Job Review - Lien Jeopardy" NavigateUrl="../Reports2/Credit_JobReviewLienJeopardy.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>SXe (GUI) Live</i><br /><br /> 
                            <b>Report Description: </b>The following is a listing of all Jobs started in the past 28 calendar days. The intended purpose of this report is an overall review of the quality of information provided in the Job Setup, as well as a notice that a job has been started (for '20 Day Letter' purposes).<br />
                            <b>Report Use:</b>This report exports directly to Excel.
                        </div>

    	            </div>
                </div> 

                <div id="div2" style="margin:10px 0px 0px 0px;float:left;width:1300px;float:left;">
                    <div style="width:1300px;">    
                        <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                            Tax Exempt Job Review 
                        </div>
                    </div>
                    <div style="width:1300px;">
	                    <div style="width:300px;float:left; margin:10px;">
                            <telerik:RadButton ID="lnkTaxExemptJobReview" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch" Text="Tax Exempt Job Review" NavigateUrl="../Reports2/Credit_TaxExemptJobReview.aspx" Target="_blank"></telerik:RadButton>
        	            </div>
         	            <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                            <b>Data Source: </b> <i>Datawarehouse - Updated nightly</i><br /><br /> 
                            
                            <b>Report Use:</b>This report exports directly to Excel in another window.
                        </div>

    	            </div>
                </div> 
                
                
                
                
            </telerik:RadPageView>
  
        </telerik:RadMultiPage>

    </div>
    
    </div>

</asp:Content>

