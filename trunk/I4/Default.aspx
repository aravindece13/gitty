

<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>


      

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
    <style type="text/css"> .RadMenu_Metro .rmLink .rmText {
           text-transform: none;
                }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server" >
 

 <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
           
            <%--Employee Links--%>
            <telerik:AjaxSetting AjaxControlID="lnkHandbook">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkHandbook" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkBackGrndCheck">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkBackGrndCheck" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkCDLBackGrnd">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCDLBackGrnd" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="lnkNewHireReq">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewHireReq" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkEmployeeStatusChange">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkEmployeeStatusChange" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkI9">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkI9" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkW4">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkW4" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkEmpWarning">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkEmpWarning" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <%--Payroll Links--%>
            <telerik:AjaxSetting AjaxControlID="lnkPayCom">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkPayCom" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkConcur">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkConcur" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkTSHourly">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkTSHourly" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkTSSalary">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkTSSalary" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkTimeOffReq">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkTimeOffReq" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkDirectDeposit">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkDirectDeposit" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkCheckRequest">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCheckRequest" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
           
            
            <%--Inventory links--%>
            <telerik:AjaxSetting AjaxControlID="lnkNewProductInv">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewProductInv" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkStockReturnInv">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkStockReturnInv" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkStockAdjustInv">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkStockAdjustInv" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkDamagedMatInv">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkDamagedMatInv" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkCapitalizedFreight">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCapitalizedFreight" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkUnavailInv">
                 <UpdatedControls>
                      <telerik:AjaxUpdatedControl ControlID="lnkUnavailInv" />
                 </UpdatedControls>
            </telerik:AjaxSetting>

            <%--IT links--%>
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
            
           <%-- Reference Links--%>
            <telerik:AjaxSetting AjaxControlID="lnkProductCategories">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkProductCategories" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkProductLines">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkProductLines" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkProductCatLines">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkProductCatLines" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             
              <%--Sales Links--%>
             <telerik:AjaxSetting AjaxControlID="lnkCredAppDK">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCredAppDK" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkCredAppWI">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCredAppWI" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkCredAppAZ">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCredAppAZ" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkNewProduct">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewProduct" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkStockRet">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkStockRet" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkStockAdjust">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkStockAdjust" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkDamagedMat">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkDamagedMat" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkAccountChange">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkAccountChange" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkAZ5000">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkAZ5000" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkExpenseReportInstructions">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkExpenseReportInstructions" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkNewJob">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewJob" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkNewJobWyo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewJobWyo" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             
             <%--TDG Links--%>
            <telerik:AjaxSetting AjaxControlID="lnkTDGVendors">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkTDGVendors" />
                </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="lnkTDGProfiles">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkTDGProfiles" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>
    <div id="HomePageMainContent" style="width:1100px; float:left; Margin: 2px 2px 2px 5px;">
    
        <strong style="background-color:Gray; color:White;" ></strong>

        <div id="News" style="Margin:0px 2px 2px 5px;float:left;height:300px;width:1000px;" >
            <h1>News</h1> 
            <div style="padding:5px 0px 0px 10px;">
                <asp:Panel ID="Panel1" runat="server"  Width="1000px" Height="260px" scrollBars="Auto" >
                    <telerik:RadListView ID="RadListView1" runat="server" DataSourceID="SqlDataSourceNews" width="980px" Height="250px" BorderColor="Silver" >
                
                        <ItemTemplate>
                           <fieldset style="float: left; vertical-align:top;width:825px; padding:5px 0px 0px 0px;">

                                <legend style="color:White; width:300px; padding:3px 15px 3px 15px; background-color: Gray; font-size:small;"><%#Eval("TopicArea")%> | <%#Eval("Headline")%> </legend>
                                            
                            <div id="NewsItem" style="width:800px; padding: 5px 0px 5px 10px;">
                                <asp:Label ID="NewsItemLabel" runat="server"  Text='<%# Eval("NewsItem") %>' />
                            </div>

                           </fieldset>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            No news to display
                        </EmptyDataTemplate>
                    </telerik:RadListView>

                    <asp:SqlDataSource ID="SqlDataSourceNews" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspNews_RetrieveCurrentNews" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
                </asp:Panel> 
            </div>
        </div>
     



        <div id="divCommonForms" style="padding:5px 2px 2px 5px;float:left;height:200px;width:1000px;">
        
           <h1>Common Links</h1>
           <div style="padding:0px 0px 5px 10px;">
               <div id="divTabStrip1" style="float:left;">   
    
                    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Width="900px">
                         <Tabs>
                            <telerik:RadTab runat="server"  Text="Human Resources" PageViewID="HR" ></telerik:RadTab>
                            <telerik:RadTab runat="server"  Text="Inventory" PageViewID="Inventory" ></telerik:RadTab>
                            <telerik:RadTab runat="server"  Text="IT" PageViewID="IT" ></telerik:RadTab>
                            <telerik:RadTab runat="server"  Text="Payroll" PageViewID="Payroll" Selected="true"></telerik:RadTab>
                            <telerik:RadTab runat="server"  Text="Reference" PageViewID="Reference" ></telerik:RadTab>
                            <telerik:RadTab runat="server"  Text="Sales" PageViewID="Sales" Selected="True" ></telerik:RadTab>
                            <telerik:RadTab runat="server"  Text="TDG" PageViewID="TDG" ></telerik:RadTab>
            
                         </Tabs>
                    </telerik:RadTabStrip>
               </div>
               <div id="divMultiPage1" style="float:left;">    
                    <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="120px"  Width="900px" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" SelectedIndex="3">
    
                       <telerik:RadPageView ID="HR" runat="server"  > 
                                <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                      <telerik:RadButton ID="lnkHandbook" ButtonType="LinkButton" runat="server" Width="130px" Text="Employee Handbook" NavigateUrl="~/HR/EmployeeManual_2018.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                </div>
                                <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                      <telerik:RadButton ID="lnkBackGrndCheck" ButtonType="LinkButton" runat="server" Width="130px" Text="Background Check" NavigateUrl="~/Information/Form_BackgroundCheck.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                </div>
                                <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                      <telerik:RadButton ID="lnkCDLBackGrnd" ButtonType="LinkButton" runat="server" Width="130px" Text="CDL Background Check" NavigateUrl="~/Information/Form_CDLBackgroundCheck.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                </div>
                                <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                      <telerik:RadButton ID="lnkApplication" ButtonType="LinkButton" runat="server" Width="130px" Text="Employment App"  NavigateUrl="~/Information/Form_EmploymentApp.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                </div>
                                <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                      <telerik:RadButton ID="lnkNewHireReq" ButtonType="LinkButton" runat="server" Width="130px" Text="New Hire Request"  NavigateUrl="~/Information/Form_NewHireReq.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                </div> 

                                <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                      <telerik:RadButton ID="lnkEmpStatusChange" ButtonType="LinkButton" runat="server" Width="130px" Text="Emp. Status Change" NavigateUrl="~/Information/Form_EmployeeStatusChange.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                </div>
                                <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                     <telerik:RadButton ID="lnkEmpWarning" ButtonType="LinkButton" runat="server" Width="130px" Text="Employee Warning" NavigateUrl="~/Information/Form_EmployeeWarning.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                </div>
                                <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                     <telerik:RadButton ID="lnkI9" ButtonType="LinkButton" runat="server" Width="130px" Text="I-9" NavigateUrl="~/Information/Form_I9.pdf" Target="_blank" Skin="BlackMetroTouch" Font-Size="X-Small" ></telerik:RadButton>
                                </div> 
                                <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                    <telerik:RadButton ID="lnkW4" ButtonType="LinkButton" runat="server" Width="130px" Text="W4 | Withholding" NavigateUrl="~/Information/Form_W4.pdf" Target="_blank" Skin="BlackMetroTouch" Font-Size="X-Small" ></telerik:RadButton>
                                </div> 
                               
                                <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                     <telerik:RadButton ID="lnkHIPPA" ButtonType="LinkButton" runat="server" Width="130px" Text="HIPPA (2013)" NavigateUrl="~/Information/Form_HIPPA_Privacy.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                </div>
                
                      </telerik:RadPageView>
                      <telerik:RadPageView ID="Inventory" runat="server" > 
       
                            <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                  <telerik:RadButton ID="lnkNewProductInv" ButtonType="LinkButton" runat="server" Width="130px" Text="New Product" NavigateUrl="~/Information/Form_NewProduct.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                            </div>
                             <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkStockReturnInv" ButtonType="LinkButton" runat="server" Width="130px" Text="Stock Return" NavigateUrl="~/Information/Form_StockReturn.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                             <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkStockAdjustInv" ButtonType="LinkButton" runat="server" Width="130px" Text="Stock Adjust" NavigateUrl="~/Information/Form_StockAdjustments.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div> 
                             <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkDamagedMatInv" ButtonType="LinkButton" runat="server" Width="130px" Text="Damaged Material" NavigateUrl="~/Information/Form_DamagedMaterial.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                             <div style="margin:4px 4px 4px 4px; width:160px; float:left;" >
                                 <telerik:RadButton ID="lnkUnavailInv" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="130px" Text="Unavail. Inventory" NavigateUrl="~/Information/Form_UnavailableInventory.pdf" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                             <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkCapitalizedFreight" ButtonType="LinkButton" runat="server" Width="130px" Text="Capitalized Freight" NavigateUrl="~/Information/Form_CapitalizedFreight.PDF" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                      </telerik:RadPageView>
                       <telerik:RadPageView ID="IT" runat="server" > 
                                 <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                      <telerik:RadButton ID="lnkContactExts" ButtonType="LinkButton" runat="server" Width="130px" Text="Phone Ext." NavigateUrl="~/Reports2/Employees_Exts_ByBranch.aspx" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                 </div> 
                                 <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                      <telerik:RadButton ID="lnkContactListing" ButtonType="LinkButton" runat="server" Width="130px" Text="Contact Listing" NavigateUrl="~/Reports2/Employees_Contacts_ByBranch.aspx" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                 </div> 
                               
                                 <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                      <telerik:RadButton ID="lnkFilter" ButtonType="LinkButton" runat="server" Width="130px" Text="Spam Filter" NavigateUrl="http://srv-spam.danakepner.com/quarantine/Login.aspx" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                 </div> 
                                               
                                 <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                      <telerik:RadButton ID="lnkSecurityReq" ButtonType="LinkButton" runat="server" Width="130px" Text="Security Request/Change" NavigateUrl="~/Information/Form_IS_AccessRequest.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                 </div>
                                 <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                      <telerik:RadButton ID="lnkSecurityAcc" ButtonType="LinkButton" runat="server" Width="130px" Text="Profile Cleanup" NavigateUrl="~/Information/Profile Clean.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                                 </div>
                                
                      </telerik:RadPageView>
                       <telerik:RadPageView ID="Payroll" runat="server" Selected="true" > 
                             <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkPayCom" ButtonType="LinkButton" runat="server" Width="130px" Text="PayCom" NavigateUrl="http://www.paycomonline.com" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div> 
                             <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkConcur" ButtonType="LinkButton" runat="server" Width="130px" Text="Concur Expenses" NavigateUrl="https://www.concursolutions.com" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div> 
                             <%--<div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                  <telerik:RadButton ID="lnkTSSalary" ButtonType="LinkButton" runat="server" Width="130px" Text="Salary Timesheet" NavigateUrl="~/Information/Form_TimeSheet_Exempt.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                              <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkTimeOffReq" ButtonType="LinkButton" runat="server" Width="130px" Text="Time Off Request" NavigateUrl="~/Information/Form_TimeOffRequest.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div> --%>
                             <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkDirectDeposit" ButtonType="LinkButton" runat="server" Width="130px" Text="Direct Deposit" NavigateUrl="~/Information/Form_DirectDeposit.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                             <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkCheckRequest" ButtonType="LinkButton" runat="server" Width="130px" Text="Check Request" NavigateUrl="~/Information/Form_CheckRequest.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                             <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkW4IRS" ButtonType="LinkButton" runat="server" Width="130px" Text="W4 - IRS Withholdings" NavigateUrl="~/Information/Form_W4.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                             <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkWF401k" ButtonType="LinkButton" runat="server" Width="130px" Text="Wells Fargo 401(k)" NavigateUrl="https://www.wellsfargo.com/retirementplan" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                      </telerik:RadPageView>
                       <telerik:RadPageView ID="Reference" runat="server" > 

                             <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkProductCategories" ButtonType="LinkButton" runat="server" Width="130px" Text="Product Categories" NavigateUrl="~/Information/Product_Categories.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div> 
                             <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                  <telerik:RadButton ID="lnkProductLines" ButtonType="LinkButton" runat="server" Width="130px" Text="Product Lines" NavigateUrl="~/Information/Product_Lines.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div>
                             <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkProductCatLines" ButtonType="LinkButton" runat="server" Width="130px" Text="Product Cats and Lines" NavigateUrl="~/Information/ProductCatsLines.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                             </div> 
                  
                      </telerik:RadPageView>
                       <telerik:RadPageView ID="Sales" runat="server" > 
                              <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkCredAppDK" ButtonType="LinkButton" runat="server" Width="130px" Text="Credit App - Kepner" NavigateUrl="~/Information/Form_CreditAppDK.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div> 
                              <div style="padding:4px 4px 4px 4px;width:160px; float:left;  " >
                                  <telerik:RadButton ID="lnkCredAppWI" ButtonType="LinkButton" runat="server" Width="130px" Text="Credit App - Western" NavigateUrl="~/Information/Form_CreditAppWI.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div>
                              <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkCredAppAZ" ButtonType="LinkButton" runat="server" Width="130px" Text="Credit App - Arizona" NavigateUrl="~/Information/Form_CreditAppDK_AZ.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div>
                              <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                  <telerik:RadButton ID="lnkNewProduct" ButtonType="LinkButton" runat="server" Width="130px" Text="New Product" NavigateUrl="~/Information/Form_NewProduct.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div>
                              <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkStockRet" ButtonType="LinkButton" runat="server" Width="130px" Text="Stock Return" NavigateUrl="~/Information/Form_StockReturn.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div>
                              <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkStockAdjust" ButtonType="LinkButton" runat="server" Width="130px" Text="Stock Adjust" NavigateUrl="~/Information/Form_StockAdjustments.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div> 
                              <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkDamagedMat" ButtonType="LinkButton" runat="server" Width="130px" Text="Damaged Material" NavigateUrl="~/Information/Form_DamagedMaterial.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div>
                              <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkAccountChange" ButtonType="LinkButton" runat="server" Width="130px" Text="Account Change" NavigateUrl="~/Information/Form_AccountChange.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div> 
                              <div style="padding:4px 4px 4px 4px;width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkAZ5000" ButtonType="LinkButton" runat="server" Width="130px" Text="Arizona (5000)" NavigateUrl="~/Information/Form_AzTaxExempt5000.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div>
                             
                              <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkNewJob" ButtonType="LinkButton" runat="server" Width="130px" Text="New Job" NavigateUrl="~/Information/Form_JobInfo.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div>
                              <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                   <telerik:RadButton ID="lnkNewJobWyo" ButtonType="LinkButton" runat="server" Width="130px" Text="New Job - Wyo" NavigateUrl="~/Information/Form_JobInfo_Wyoming.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                              </div>

                        </telerik:RadPageView>
                       <telerik:RadPageView ID="TDG" runat="server" > 
                         
                            <div style="padding:4px 4px 4px 4px; width:160px; float:left;" >
                                  <telerik:RadButton ID="lnkTDGVendors" ButtonType="LinkButton" runat="server" Width="130px" Text="TDG Vendors" NavigateUrl="~/Information/TDG_Vendors.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                            </div> 
                            <div style="padding:4px 4px 4px 4px;width:160px; float:left; " >
                                  <telerik:RadButton ID="lnkTDGProfiles" ButtonType="LinkButton" runat="server" Width="130px" Text="TDG Vendor Profiles" NavigateUrl="~/Information/TDG_Vendor_Profiles.pdf" Skin="BlackMetroTouch" Font-Size="X-Small" Target="_blank"></telerik:RadButton>
                            </div>
           
                        </telerik:RadPageView>

                    </telerik:RadMultiPage>
               </div>
           </div>
        </div> 

        <div id="CalendarPayScheduleVacation" style="width:1000px; padding-left:15px; vertical-align:bottom;" >
  
            <div id="Calendar" style="padding:2px 10px 0px 2px;float:left;width:250px;height:200px;">  
                     <h6>Calendar</h6>       
                            <telerik:RadCalendar ID="RadCalendar1" runat="server" PresentationType="Preview" SelectedDate="" width="95%" Height="100%"
                                    ViewSelectorText="x" EnableMultiSelect="False" >
                            </telerik:RadCalendar>
            </div>    
            <div id="Vacation" style="padding:2px 10px 5px 2px;float:left;width:250px;height:200px;">    
                            <h6>Holiday Schedule</h6>
    
                              <telerik:RadGrid ID="RadGrid1" runat="server"   
                                  DataSourceID="SqlDataSourceHolidaySched" GridLines="None" Height="200px"  >
                                    <MasterTableView AllowPaging="False" AutoGenerateColumns="False" DataSourceID="SqlDataSourceHolidaySched" >
                                        <RowIndicatorColumn>
                                            <HeaderStyle Width="20px"></HeaderStyle>
                                        </RowIndicatorColumn>

                                        <ExpandCollapseColumn>
                                            <HeaderStyle Width="20px"></HeaderStyle>
                                        </ExpandCollapseColumn>
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="date" DataType="System.DateTime" 
                                                HeaderText="Date" SortExpression="date" 
                                                UniqueName="date" DataFormatString="{0:MM/dd/yyyy}">
                                                <HeaderStyle Width="33%" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="desc"  
                                                HeaderText="Holiday" SortExpression="desc" UniqueName="desc">
                                                <HeaderStyle Width="67%" />
                                            </telerik:GridBoundColumn>
                                        </Columns>
                                        <HeaderStyle Font-Bold="True" Wrap="True" />
                                    </MasterTableView>
                                          <ClientSettings>
                                              <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                          </ClientSettings>
                              </telerik:RadGrid>
             
                                          <asp:SqlDataSource ID="SqlDataSourceHolidaySched" runat="server"  
                                              ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                              SelectCommand="SELECT [desc],[date] FROM [dbo].[HR_Holiday] WHERE date > DATEADD(DAY,-10, GETDATE())">
                                          </asp:SqlDataSource>
            </div>
        <div id="PaySched" style="padding:2px 5px 5px 2px;float:left; width:350px;height:150px;">
            <h6>Pay Schedule</h6>
     
              <telerik:RadGrid ID="RadGrid2" runat="server"  DataSourceID="SqlDataSourcePaySchedule" GridLines="None" Height="200px" >
                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDataSourcePaySchedule" >
                    <RowIndicatorColumn>
                        <HeaderStyle Width="20px"></HeaderStyle>
                    </RowIndicatorColumn>

                    <ExpandCollapseColumn>
                    <HeaderStyle Width="20px"></HeaderStyle>
                    </ExpandCollapseColumn>
                    <Columns>
                        <telerik:GridBoundColumn DataField="periodbegin" DataType="System.DateTime" 
                            DefaultInsertValue="" HeaderText="Start" SortExpression="periodbegin" 
                            UniqueName="periodbegin" DataFormatString="{0:MM/dd/yyyy}">
                            <HeaderStyle Width="25%" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="periodend" DataType="System.DateTime" 
                            DefaultInsertValue="" HeaderText="End" SortExpression="periodend" 
                            UniqueName="periodend" DataFormatString="{0:MM/dd/yyyy}">
                            <HeaderStyle Width="25%" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="due" DataType="System.DateTime" 
                            DefaultInsertValue="" HeaderText="Due" SortExpression="due" UniqueName="due" DataFormatString="{0:MM/dd/yyyy}">
                            <HeaderStyle Width="25%" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="paydate"  DataType="System.DateTime" 
                            DefaultInsertValue="" HeaderText="Pay Day" SortExpression="paydate" 
                            UniqueName="paydate" DataFormatString="{0:MM/dd/yyyy}">
                            <HeaderStyle Width="25%" />
                        </telerik:GridBoundColumn>
                    </Columns>

                    <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="False" Wrap="True" />
                </MasterTableView>
                  <ClientSettings>
                      <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                  </ClientSettings>
                  <FilterMenu Font-Size="8px">
                  </FilterMenu>
              </telerik:RadGrid>
 
               <asp:SqlDataSource ID="SqlDataSourcePaySchedule" runat="server"  
                  ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                  SelectCommand="SELECT periodbegin, periodend, due, paydate FROM HR_PayPeriod WHERE (paydate > DATEADD(day,-10,GETDATE())) AND (paydate < DATEADD(day,365,GETDATE()))">
              </asp:SqlDataSource>
        </div>
 
 
        </div>
    
    </div>
    
    
</asp:Content>

