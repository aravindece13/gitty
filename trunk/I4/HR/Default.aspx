<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/HR.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="HR_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
           
            <%--Employee Links--%>
            <telerik:AjaxSetting AjaxControlID="lnkHandbook">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkHandbook" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkHandbookAck">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkHandbookAck" />
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
            <telerik:AjaxSetting AjaxControlID="lnkNewEmp">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkNewEmp" />
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
            
            <%--Benefits Summaries--%>
            <telerik:AjaxSetting AjaxControlID="lnkBenefitsGuide">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkBenefitsGuide" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkEnrollmentPresentation">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkEnrollmentPresentation" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkSBCOAP">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkSBCOAP" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkSBCHDHP">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkSBCHDHP" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkUnum">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkUnum" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkKP">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkKP" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkFSA2018">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkFSA2018" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <%--Payroll Links--%>
            <telerik:AjaxSetting AjaxControlID="lnkPayCom">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkPayCom" />
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
            <telerik:AjaxSetting AjaxControlID="lnkW42">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkW42" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="lnk401AccessOptions2016">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnk401AccessOptions2016" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnk401ManagingAccount2016">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnk401ManagingAccount2016" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnk401WFPresentation">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnk401WFPresentation" />
                </UpdatedControls>
            </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="lnkPayComHourlyInstructions">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkPayComHourlyInstructions" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkPayComSalaryInstructions">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkPayComSalaryInstructions" />
                </UpdatedControls>
            </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="lnkPayComTOR">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkPayComTOR" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<div id="CommonLinks" style="margin:10px;float:left;width:1000px;">    
<h1>Human Resources</h1>
   <div style="padding:4px 4px 4px 4px;width:1000px; float:left; margin: 20px 0px 20px 20px; " >
        <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
          <telerik:RadButton ID="lnkHandbook" ButtonType="LinkButton" runat="server" Width="200px" Text="Employee Handbook" NavigateUrl="~/HR/EmployeeManual_2018.pdf" Skin="BlackMetroTouch" Target="_blank">
          </telerik:RadButton>
        </div>  
        <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
            <telerik:RadButton ID="lnkHandbookAck" ButtonType="LinkButton" runat="server" Width="200px" Text="Handbook Receipt" NavigateUrl="~/HR/EmployeeManual_Acknowledgement_2018.pdf" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>  
        </div>                
   </div>
   <div id="divTabStrip1" style="margin:0px 0px 0px 0px;float:left;width:1000px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server"  MultiPageID="RadMultiPage1" SelectedIndex="0"  Width="1000px" Skin="MetroTouch">
        <Tabs>
            
            <telerik:RadTab runat="server" Text="Employee Forms" PageViewID="Employee" Selected="true" ></telerik:RadTab>
            <%--<telerik:RadTab runat="server" Text="Employee Manual" PageViewID="Manual" ></telerik:RadTab>--%>
            <telerik:RadTab runat="server" Text="Benefits" PageViewID="Summary" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Financial Benefits" PageViewID="Financial" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Health" PageViewID="Health" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Payroll" PageViewID="Payroll" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Program Audits" PageViewID="Audits" ></telerik:RadTab>
            

        </Tabs>
    </telerik:RadTabStrip>
  </div>

  <div style="margin:20px 0px 0px 0px;float:left; width:1000px; ">
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1000px">
    
  
          <telerik:RadPageView ID="Employee" runat="server" Selected="true">
                <div id="div2" style="margin:15px 5px 5px 15px;float:left;width:1000px;">
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
                          <telerik:RadButton ID="lnkBackGrndCheck" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Background Check" NavigateUrl="~/Information/Form_BackgroundCheck.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
                          <telerik:RadButton ID="lnkCDLBackGrnd" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="CDL Background Check" NavigateUrl="~/Information/Form_CDLBackgroundCheck.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                          <telerik:RadButton ID="lnkApplication" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Employment App"  NavigateUrl="~/Information/Form_EmploymentApp.pdf" Target="_blank"></telerik:RadButton>
                    </div> 
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                          <telerik:RadButton ID="lnkNewHireReq" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="New Hire Request" NavigateUrl="~/Information/Form_NewHireReq.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                          <telerik:RadButton ID="lnkNewEmp" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="New Employee Data" NavigateUrl="~/Information/Form_NewEmployee.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                          <telerik:RadButton ID="lnkEmployeeStatusChange" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Status Change" NavigateUrl="~/Information/Form_EmployeeStatusChange.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                          <telerik:RadButton ID="lnkI9" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="I-9 | Elig. Verification" NavigateUrl="~/Information/Form_I9.pdf" Target="_blank" ></telerik:RadButton>
                    </div> 
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                          <telerik:RadButton ID="lnkW4" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="W4 | Withholding" NavigateUrl="~/Information/Form_W4.pdf" Target="_blank" ></telerik:RadButton>
                    </div> 
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
                          <telerik:RadButton ID="lnkEmpWarning" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Employee Warning" NavigateUrl="~/Information/Form_EmployeeWarning.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                </div>  
        
  
          </telerik:RadPageView>
          <telerik:RadPageView ID="Summary" runat="server" >
                <div id="div8" style="margin:15px 5px 5px 15px;float:left;width:1300px;">
                    
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="lnkBenefitsGuideB" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Summary" NavigateUrl="~/HR/2018/2018_OpenEnrollment_BenefitsGuide.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="lnkEnrollmentPresentation" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Enrollment Presentation" NavigateUrl="~/HR/2018/2018_OpenEnrollment_Main.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="lnkPaycomInstructions" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Paycom Enrollment Instructions" NavigateUrl="~/HR/2018/2018_OpenEnrollment_PaycomInstructions.pdf" Target="_blank"></telerik:RadButton>
                    </div>

                </div>
                <div id="div7" style="margin:15px 5px 5px 15px;float:left;width:1300px;">
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="lnkSBCOAP" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="SBC - Open Access Plus Plan" NavigateUrl="~/HR/2018/SBC_OpenAccessPlus.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="lnkSBCHDHP" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="SBC - High Deductible Plan" NavigateUrl="~/HR/2018/SBC_HDHP.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="lnkKP" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="SBC - Kaiser" NavigateUrl="~/HR/2018/2018_KP_SBC.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    
                </div>
                 <div id="div9" style="margin:15px 5px 5px 15px;float:left;width:1300px;">
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                        <telerik:RadButton ID="lnkUnum" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="UNUM Accident and Critical Care" NavigateUrl="~/HR/2018/2018_Unum.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                 </div>
                <div id="div11" style="margin:75px 5px 5px 15px;float:left;width:1300px;">
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                        <telerik:RadButton ID="lnkFSA2018" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="FSA 2018 Amendment" NavigateUrl="FSA_2018Amendment.pdf" Target="_blank"></telerik:RadButton>
                    </div>

                </div>
          </telerik:RadPageView>
          <telerik:RadPageView ID="Financial" runat="server">  
                <div id="div3" style="margin:15px 5px 5px 15px;float:left;width:1500px;">
                      <div style="margin:4px 4px 4px 4px;width:1500px; float:left; " >
                          <telerik:RadButton ID="lnkWellsFargoRetirement" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Wells-Fargo 401(k)" NavigateUrl="https://www.wellsfargo.com/retirementplan/" Target="_blank"></telerik:RadButton>
                      </div>  
                      <div style="margin:4px 4px 4px 4px;width:1100px; float:left; " >
                            <p style="width:900px; font-size:medium;">To access the Wells Fargo Retirement Plan web site you need a username and password. Your initial username is your Social Security number. 
                                Your initial password is your six-digit date of birth (mmddyy). You will be asked to change your username and password at your first web site visit.
                            </p>

                      </div>
                      <div style="margin:4px 4px 4px 4px;width:1100px; float:left; " >
                             <p style="width:900px; font-size:medium;">Call 1.800.728.3123 to access the Wells Fargo Benefits Helpline. Your initial PIN is your six-digit date of birth (mmddyy). 
                                    Access your retirement account 24-hours a day through the automated telephone system, or speak with a Customer Service Representative 
                                    Monday through Friday 7:00am to 10:00pm Central Time.
                             </p>
                      </div>
                      <div style="width:100%; float:left;">
                        <div style="width:340px; float:left;">
                            <telerik:RadButton ID="lnk401AccessOptions2016" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Wells Fargo Account Access Options" NavigateUrl="401K_WellsFargo_AccountAccess.pdf" Target="_blank"></telerik:RadButton>
                        </div>
                        <div style="width:340px; float:left;">
                            <telerik:RadButton ID="lnk401ManagingAccount2016" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Managing Your Account" NavigateUrl="401K_WellsFargo_ManagingAccount.pdf" Target="_blank"></telerik:RadButton>
                        </div>
                        <div style="width:340px; float:left;">
                            <telerik:RadButton ID="lnk401WFPresentation" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="2017 Wells Fargo Presentation" NavigateUrl="~/HR/2017/2017_OpenEnrollment_WellsFargo.pdf" Target="_blank"></telerik:RadButton>
                        </div>
                        <div style="width:340px; float:left;">
                            <telerik:RadButton ID="lnk401WFTools" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Wells Fargo Online Tools Demo" NavigateUrl="http://lp.mycustomemail.com/Retirement-Plan-RIE/wf4407875" Target="_blank"></telerik:RadButton>
                        </div>

                        
                        <div style="width:340px; float:left;padding-top:20px;">
                            <telerik:RadButton ID="lnkWellsFargoFeeDisclosureInfo" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Wells Fargo Fee Disclosures" NavigateUrl="1_WF440787%20Fee%20Disclosure%20information%209.2019%20(1).pdf" Target="_blank"></telerik:RadButton>
                        </div>
                      </div>
        
                </div>        	  
          </telerik:RadPageView>
          <telerik:RadPageView ID="Health" runat="server" >
                
                <div id="div1" style="margin:15px 5px 55px 15px;float:left;width:1300px;">
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkBenefitsGuide" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Benefits Guide" NavigateUrl="~/HR/2018/2018_OpenEnrollment_BenefitsGuide.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="RadButton1" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="SBC - Open Access Plus Plan" NavigateUrl="~/HR/2018/SBC_OpenAccessPlus.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="RadButton2" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="SBC - High Deductible Plan" NavigateUrl="~/HR/2018/SBC_HDHP.pdf" Target="_blank"></telerik:RadButton>
                    </div>

                </div>
                
                
                <div id="div10" style="margin:15px 5px 55px 15px;float:left;width:1000px;">
                     <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkAllegiance" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Allegiance" NavigateUrl="http://www.askallegiance.com/" Target="_blank"></telerik:RadButton>
                     </div>
                     <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkDeltaDental2" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Delta Dental" NavigateUrl="http://www.deltadental.com/" Target="_blank"></telerik:RadButton>
                     </div>
                     <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                          <telerik:RadButton ID="lnkHIPPA" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="HIPPA" NavigateUrl="~/Information/Form_HIPPA_Privacy.pdf" Target="_blank"></telerik:RadButton>
                     </div>
                </div> 
                <div id="div6" style="margin:15px 5px 55px 15px;float:left;width:1000px;">
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkPreventiveDrug" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="280px" Text="Welldyne Prescriptions/Preventive" NavigateUrl="~/HR/Welldyne_PreventiveDrugList.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                   
                
                </div>
                
               

       
        
  
          </telerik:RadPageView>
          <telerik:RadPageView ID="Payroll" runat="server">  
                <div id="div4" style="margin:15px 5px 5px 15px;float:left;width:1000px;">
                    <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                        <telerik:RadButton ID="lnkPayCom" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="PayCom" NavigateUrl="http://www.paycomonline.com" Target="_blank"></telerik:RadButton>
                    </div> 
                    <%--<div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                        <telerik:RadButton ID="lnkTSHourly" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Hourly Timesheet" NavigateUrl="~/Information/Kepner_NonExemptTimeSheet.xls" Target="_blank"></telerik:RadButton>
                    </div> 
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
                        <telerik:RadButton ID="lnkTSSalary" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Salary Timesheet" NavigateUrl="~/Information/Form_TimeSheet_Exempt.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                        <telerik:RadButton ID="lnkTimeOffReq" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Time Off Request" NavigateUrl="~/Information/Form_TimeOffRequest.pdf" Target="_blank"></telerik:RadButton>
                    </div> --%>
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                        <telerik:RadButton ID="lnkDirectDeposit" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Direct Deposit" NavigateUrl="~/Information/Form_DirectDeposit.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                        <telerik:RadButton ID="lnkCheckRequest" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Check Request" NavigateUrl="~/Information/Form_CheckRequest.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                        <telerik:RadButton ID="lnkW42" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="W4 - IRS Withholdings" NavigateUrl="~/Information/Form_W4.pdf" Target="_blank"></telerik:RadButton>
                    </div>
        
                </div>  
                
                <div style="margin:15px 5px 5px 15px;float:left;width:1000px;">
                    <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                        <telerik:RadButton ID="lnkPayComHourlyInstructions" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="PayCom Hourly Instructions" NavigateUrl="PayCom_Instructions_Hourly.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                        <telerik:RadButton ID="lnkPayComSalaryInstructions" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="PayCom Salary Instructions" NavigateUrl="PayCom_Instructions_Salary.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                        <telerik:RadButton ID="lnkPayComTOR" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Time Off Req. Instructions" NavigateUrl="PayCom_Instructions_TimeOffRequest.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                </div>      	  
          </telerik:RadPageView>
  
          <telerik:RadPageView ID="Audits" runat="server" >
                <div id="div5" style="margin:15px 5px 5px 15px;float:left;width:100px;">
           
                    <div style="margin:4px 4px 4px 4px;width:1000px; float:left;" >
                        <telerik:RadButton ID="lnk2016HealthSummary" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="2018 Health Benefits - Summary Annual Report" NavigateUrl="~/HR/2018/SummaryAnnualReport_2018.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:1000px; float:left;" >
                        <telerik:RadButton ID="lnk2010401k" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="2010 401(k) - Summary Annual Report" NavigateUrl="~/HR/DK401k_AnnualSummary_2010.pdf" Target="_blank"></telerik:RadButton>
                    </div>
            
                </div>  
        
  
          </telerik:RadPageView>
          <%--<telerik:RadPageView ID="Manual" runat="server" >
                <div style="width:1000px; float:left; margin:5px;">
                    <telerik:RadTabStrip ID="RadTabStrip2" runat="server" 
                        MultiPageID="RadMultiPage2" SelectedIndex="7" Skin="Silk" Width="1000px" 
                        ResolvedRenderMode="Classic" >
                        <Tabs>
                            <telerik:RadTab runat="server" PageViewID="Intro" Text="Introduction"></telerik:RadTab>
                            <telerik:RadTab runat="server" PageViewID="Employment" Text="Employment"></telerik:RadTab>
                            <telerik:RadTab runat="server" PageViewID="Status" Text="Status &amp; Records"></telerik:RadTab>
                            <telerik:RadTab runat="server" PageViewID="Benefits" Text="Benefit Programs"></telerik:RadTab>
                            <telerik:RadTab runat="server" PageViewID="TSPayroll" Text="Time Sheets / Payroll"></telerik:RadTab>
                            <telerik:RadTab runat="server" PageViewID="WorkConditions" Text="Working Conditions &amp; Hours"></telerik:RadTab>
                            <telerik:RadTab runat="server" PageViewID="Leave" Text="Leaves Of Absence"></telerik:RadTab>
                            <telerik:RadTab runat="server" PageViewID="Conduct" Text="Conduct &amp; Discipline" Selected="True"></telerik:RadTab>
                            <telerik:RadTab runat="server" PageViewID="Misc" Text="Miscellaneous"></telerik:RadTab>
                         
                        </Tabs>
                    </telerik:RadTabStrip>
                </div>
            <div style="width:900px; height:500px; float:left; margin:5px 0px 10px 20px;">
                <telerik:RadMultiPage ID="RadMultiPage2" runat="server" Width="900px" 
                    SelectedIndex="7">
                    <telerik:RadPageView ID="Intro" runat="server" Width="800px" Height="1200px" BorderColor="#639AFF" BorderWidth="1px" BorderStyle="Solid" Selected="true"  >
                       <h3 style="width:500px; margin:10px;">Introduction</h3>
                       <div style="width:100%; height:100%; margin:13px;">
                       <p>Welcome!</p>
                       <p>
                            On behalf of your colleagues, we welcome you to Dana Kepner Co., Inc. and wish you every success.
                            This handbook was developed to describe some of the expectations of our employees and to outline the
                            policies, programs, and benefits available to eligible employees. Employees shall familiarize themselves with the contents of the employee handbook as soon as possible. This handbook will answer many questions about employment with Dana Kepner Co., Inc.
                            We hope that your experience here will be challenging, enjoyable, and rewarding. 
                       </p>
                       <p>Again, welcome!</p>
                       <p>     Sincerely,</p>
                       <p>
                            Deron Johnson & David Wickett,  Co-President’s
                       </p>
                       <p>
                            ORGANIZATION DESCRIPTION
                       </p> 
                       <p>     
                            <b>I. The History of Company</b>
                       </p>
                       <p>
                            The Dana Kepner Company, Inc. is an outgrowth of the sole ownership and manufacturers' representative business created by Dana E. Kepner in 1933. Actually, the roots of Company can be traced back to the summer of 1912, when Dana Kepner himself contracted typhoid fever at the young age of 14. Ultimately, that very event led Dana Kepner to pursue a higher education in sanitary engineering, and the development of the waterworks equipment business now known as Dana Kepner Company, Inc.
                            The business endured the lasting effects of the depression and turbulence of World War II and was incorporated in 1953. The business continued to grow and prosper, which dictated the need for additional personnel. Two individuals who became part of the Dana Kepner legacy and were influential in Company's development and direction were Matt Stager who joined Company in 1954 and Hal Kepner in 1957. Both individuals eventually became owners of Company. The change to current ownership took place in 1995.
                            In 1966, Dana Kepner was asked the question, "What is of most importance and value to an organization like this?" He answered, "That would be honesty, loyalty, teamwork and cooperation among the workers." These values are just as important today as they have always been.
                       </p>
                       <p>
                            <b>II. Facilities and Locations</b>
                       </p>
                       <p>
                            Dana Kepner Co., Inc. has provided water and sewer materials to contractors and municipalities throughout the Rocky Mountain region for more than sixty years.
                            Dana Kepner's corporate office is located at 700 Alcott Street, Denver, CO 80204.
                       </p>
                       <p>
                            We have twelve warehouse and distribution locations:
                       </p>
               
                            <div style="width:775px; height:175px; margin:10px 0px 20px 20px;"> 
                             <div style="width:380px;float:left;">
                                <div style="width:100%;">Branch #1 - Denver, Colorado</div>
                                <div style="width:100%;">Branch #2 - Casper, Wyoming  </div>
                                <div style="width:100%; font-size:x-small; font-style:italic; margin-left:3px;">- Dana Kepner Company of Wyoming is a wholly owned subsidiary of Dana Kepner Company, Inc.</div>
                                <div style="width:100%;">Branch #3 - Colorado Springs, Colorado</div>
                                
                                <div style="width:100%;">Branch #6 - Fort Collins, Colorado</div>
                                <div style="width:100%;">Branch #7 - Phoenix, Arizona</div>
                                <div style="width:100%;">Branch #8 - Tucson, Arizona</div>
                                <div style="width:100%;"></div>
                                <div style="width:100%;"></div>

                             </div>   
                             <div style="width:380px;float:left;">
                                <div style="width:100%;">Branch #11 - Amarillo, Texas*</div>
                                
                                <div style="width:100%;">Branch #13 - Odessa, Texas*</div>
                                <div style="width:100%;">Branch #15 – Prescott, Arizona</div>
                                <div style="width:100%;">Branch #17 - Lake Havasu, Arizona</div>
                                <div style="width:100%;">Branch #18 – Show Low, Arizona</div>
                                <div style="width:100%;">Branch #20 – Henderson, Nevada</div>
                                <div style="width:100%;"></div>
                                <div style="width:100%; font-size:x-small; font-style:italic; margin-left:3px;">* Operates as Western Industrial Supply, LLC - and are wholly owned subsidiaries of Dana Kepner Company, Inc.</div>

                             </div>                       
                            </div>
                             <p>
                                <b>IMPORTANT INFORMATION ABOUT THE EMPLOYEE HANDBOOK</b>
                            </p>
                            <p>
                                THIS HANDBOOK IS DESIGNED TO ACQUAINT EMPLOYEES WITH THE COMPANY AND PROVIDE SOME INFORMATION ABOUT WORKING HERE. THE HANDBOOK IS NOT ALL INCLUSIVE, BUT IS INTENDED TO PROVIDE EMPLOYEES WITH A SUMMARY OF SOME OF THE COMPANY’S GUIDELINES. THIS EDITION REPLACES ALL PREVIOUSLY ISSUED EDITIONS.
                            </p>
                            <p>
                                EMPLOYMENT WITH Dana Kepner Co. IS AT-WILL. EMPLOYEES HAVE THE RIGHT TO END THEIR WORK RELATIONSHIP WITH THE COMPANY, WITH OR WITHOUT ADVANCE NOTICE FOR ANY REASON. THE COMPANY HAS THE SAME RIGHT. THE LANGUAGE USED IN THIS HANDBOOK AND ANY VERBAL STATEMENTS MADE BY MANAGEMENT ARE NOT INTENDED TO CONSTITUTE A CONTRACT OF EMPLOYMENT, EITHER EXPRESS OR IMPLIED; NOR ARE THEY A GUARANTEE OF EMPLOYMENT FOR A SPECIFIC DURATION. NO REPRESENTATIVE OF Dana Kepner Co., OTHER THAN THE PRESIDENT OF THE COMPANY, HAS THE AUTHORITY TO ENTER INTO AN AGREEMENT OF EMPLOYMENT FOR ANY SPECIFIED PERIOD AND SUCH AGREEMENT MUST BE IN WRITING, SIGNED BY THE PRESIDENT AND THE EMPLOYEE.
                            </p>
                            <p>
                                NO EMPLOYEE HANDBOOK CAN ANTICIPATE EVERY CIRCUMSTANCE OR QUESTION. AFTER READING THE HANDBOOK, EMPLOYEES THAT HAVE QUESTIONS SHOULD TALK WITH THEIR IMMEDIATE SUPERVISOR OR THE HUMAN RESOURCES DEPARTMENT.  IN ADDITION, THE NEED MAY ARISE TO CHANGE THE GUIDELINES DESCRIBED IN THE HANDBOOK; EXCEPT FOR THE AT-WILL NATURE OF THE EMPLOYMENT, THE COMPANY, THEREFORE, RESERVES THE RIGHT TO INTERPRET THEM OR TO CHANGE THEM WITHOUT PRIOR NOTICE.
                            </p>

               
                       </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Employment" runat="server" Width="800px" Height="2600px" BorderColor="#639AFF" BorderWidth="1px" BorderStyle="Solid" >
                       <h3 style="width:500px; margin:10px;">Employment</h3>
                       <div style="width:100%; height:100%; margin:13px; padding-right:10px;">
                       <h5>102 Equal Employment Opportunity</h5>
                       <p><b>EEO/Harassment Policy</b></p>
                       <p>The company is dedicated to the principles of equal employment opportunity. We prohibit unlawful discrimination against applicants or employees on the basis of age 40 and over, race, sex, color religion, national origin, disability and, genetic information or any other applicable status protected by state of local law. This prohibition includes unlawful harassment based on any of these protected classes. Unlawful harassment includes verbal or physical conduct which has the purpose or effect of substantially interfering with an individual’s work performance or creating an intimidating, hostile, or offensive work environment. This policy applies to all employees, including managers, supervisors, co-workers, and non-employees such as customers, clients, vendor’s consultants, etc.</p>
                       <p><b>ADA and Religious Accommodation</b></p>
                       <p>The Company will make reasonable accommodation for qualified individuals with known disabilities and employees whose work requirements interfere with a religious belief unless doing so would result in an undue hardship to the Company or a direct threat.</p>
                       <p><b>Sexual Harassment</b></p>
                       <p>The Company strongly opposes sexual harassment and inappropriate sexual conduct. Sexual harassment is defined as unwelcome sexual advances, requests for sexual favors, and other verbal or physical conduct of a sexual nature, when:</p>

                       <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Submission to such conduct is made explicitly or implicitly a term or condition of employment.</li>
                            <li>- Submission to or rejection of such conduct is used as the basis for decisions affecting an individual’s employment.</li>
                            <li>- Such conduct has the purpose or effect of substantially interfering with an individual’s work performance or creating an intimidating, hostile, or offensive work environment.</li>
                       </ul>

                       <p>All employees are expected to conduct themselves in a professional and businesslike manner at all times. Conduct which may violate this policy includes, but is not limited to, sexually implicit or explicit communications whether in:</p>
	
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Written form, such as cartoons, posters, calendars, notes, letters, e-mail.</li>
                            <li>- Verbal form, such as comments, jokes, foul or obscene language of a sexual nature, gossiping or questions about another’s sex life, or repeated unwanted requests for dates.</li>
                            <li>- Physical gestures and other nonverbal behavior, such as unwelcome touching, grabbing, fondling, kissing, massaging and brushing up against another’s body.</li>
                        </ul>

                    <p><b>Complaint Procedure</b></p>

                    <p>If you believe there has been a violation of the EEO policy or harassment based on the protected classes outlined above, including sexual harassment, please use the following complaint procedure. The Company expects employees to make a timely complaint to enable the Company to investigate and correct any behavior that may be in violation of this policy.</p>

                    <p>Report the incident to your Manager or the Human Resource Manager who will investigate the matter and take corrective action. Your complaint will be kept as confidential as practicable. If you prefer not to go to either of these individuals with your complaint you should report the incident to the branch manager.</p>

                    <p>The Company prohibits retaliation against any employee for filing a complaint under this policy or for assisting in a complaint investigation. If you believe there has been a violation of our EEO or retaliation standard, please follow the complaint procedure contained in the sexual harassment policy.</p>

                    <p>If the Company determines that an employee’s behavior is in violation of this policy, disciplinary action will be taken, up to and including termination of employment.</p>


                <h5>103 Business Ethics and Conduct</h5>

                    <p>The successful business operation and reputation of Company is built upon the principles of fair dealing and ethical conduct of our employees. Our reputation for integrity and excellence requires careful observance of the spirit and letter of all applicable laws and regulations, as well as a scrupulous regard for the highest standards of conduct and personal integrity.</p>

                    <p>The continued success of Company is dependent upon our customers' trust and we are dedicated to preserving that trust. Employees owe a duty to Company, its customers, and shareholders to act in a way that will merit the continued trust and confidence of the public.</p>


                    <p>In general, the use of good judgment, based on high ethical principles, will guide you with respect to lines of acceptable conduct. If a situation arises where it is difficult to determine the proper course of action, the matter should be discussed openly with your immediate supervisor and, if necessary, with the Human Resources Manager for advice and consultation.</p>

                    <p>Following the guidelines related to business ethics and conduct is the responsibility of every company employee. Disregarding or failing to comply with this standard of business ethics will not be tolerated.</p>

                <h5>104 Hiring of Relatives</h5>

                    <p>The employment of relatives in the same area of an organization may cause serious conflicts and problems with favoritism and employee morale. In addition to claims of partiality in treatment at work, personal conflicts from outside the work environment can be carried into day-to-day working relationships.</p>

                    <p>Relatives of persons currently employed by Company may be hired only if they will not be working directly for or supervising a relative or will not occupy a position in the same line of authority within the organization. This policy applies to any relative, higher or lower in the organization, who has the authority to review employment decisions. Company employees cannot be transferred into such a reporting relationship. If the relative relationship is established after employment, the individuals concerned will decide who is to be transferred. If that decision is not made within 30 calendar days, employees will flip a coin.</p>

                    <p>In other cases where a conflict or the potential for conflict arises, even if there is no supervisory relationship involved, the parties may be separated by reassignment or terminated from employment (1).</p>

                    <p>For the purposes of this policy, a relative is any person who is related by blood or marriage, (including spouses) or whose relationship with the employee is similar to that of persons who are related by blood or marriage.</p>

                    <p>Exceptions to this policy may only occur when approved by the President.</p>


                <h5>107 Conflicts of Interest</h5>

                    <p>Employees have an obligation to conduct business within guidelines that prohibit actual or potential conflicts of interest. This policy establishes only the framework within which Company wishes the business to operate. The purpose of these guidelines is to provide general direction so those employees can seek further clarification on issues related to the subject of acceptable standards of operation. Contact your Department Manager for more information or questions about conflicts of interest.</p>

                    <p>Transactions with outside firms must be conducted within a framework established and controlled by the executive level of Company. Business dealings with outside firms should not result in unusual gains for those firms. Unusual gain refers to bribes, product bonuses, special fringe benefits, unusual price breaks, and other windfalls designed to ultimately benefit the employer, the employee, or both.</p>

                    <p>An actual or potential conflict of interest occurs when an employee is in a position to influence a decision that may result in a personal gain for that employee or for a relative as a result of Dana Kepner's business dealings. For the purposes of this policy, a relative is any person who is related by blood or marriage, or whose relationship with the employee is similar to that of persons who are related by blood or marriage.</p>

                    <p>No "presumption of guilt" is created by the mere existence of a relationship with outside firms. However, if employees have any influence on transactions involving purchases, contracts, or leases, it is imperative that they disclose to a manager of Company as soon as possible the existence of any actual or potential conflict of interest so that safeguards can be established to protect all parties.</p>

                    <p>Personal gain may result not only in cases where an employee or relative has a significant ownership in a firm with which Company does business, but also when an employee or relative receives any kickback, bribe, substantial gift, or special consideration as a result of any transaction or business dealings involving Company</p>

                <h5>108 Outside Employment</h5>

                    <p>Employees may hold outside jobs as long as they meet the performance standards of their job with Company. All employees will be judged by the same performance standards and will be subject to Dana Kepner's scheduling demands, regardless of any existing outside work requirements.</p>

                    <p>Outside employment that constitutes a conflict of interest is prohibited. Employees may not receive any income or material gain from individuals outside Company for materials produced or services rendered while performing their jobs with Company. Employees may not work for a competitor, customer, or potential customer of Dana Kepner Company, Inc.</p>

                <h5>109 Confidentiality</h5>

                    <p>The protection of confidential business information and trade secrets is vital to the interests and the success of Company. Such confidential information includes, but is not limited to, the following examples:</p>

                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- compensation data</li>
                            <li>- computer programs and codes</li>
                            <li>- customer lists</li>
                            <li>- customer preferences</li>
                            <li>- financial information</li>
                            <li>- marketing strategies</li>
                            <li>- pending projects and proposals</li>
                            <li>- pricing information (estimates, invoices, etc.)</li>

               
                        </ul>

                    <p>Employees who are exposed to confidential information are required to treat this as such. Improperly using or disclosing confidential business information’s strictly prohibited.</p>


                <h5>110 Promoting from Within</h5>

                    <p>Dana Kepner Company, Inc. encourages employees to apply for openings, but Dana Kepner Company, Inc. retains the sole and absolute discretion as to who to hire for a particular position.</p>


                       </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Status" runat="server" Width="800px" Height="1000px" BorderColor="#639AFF" BorderWidth="1px" BorderStyle="Solid" >
                       <h3 style="width:500px; margin:10px;">Status &amp; Records</h3>
                       <div style="width:100%; height:100%; margin:13px;">
                            <h5>201 Employment Categories</h5>

                            <p>Each employee is designated as either NONEXEMPT or EXEMPT from federal and state wage and hour laws. NONEXEMPT employees are entitled to overtime pay under the specific provisions of federal and
                            state laws. EXEMPT employees are excluded from specific provisions of federal and state wage and hour laws.</p>

                            <p>In addition to the above categories, each employee will belong to one other employment category:</p>

                            <p>FULL-TIME employees are those who are not in a temporary status and who are regularly scheduled to work 40 hours per week Dana Kepner's full-time schedule. Generally, they are eligible for Dana Kepner's benefit package, subject to the terms, conditions, and limitations of each benefit program.</p>

                            <p>PART-TIME employees are those who are not assigned to a temporary status and who are regularly scheduled to work less than 32 hours per week. While they do receive all legally mandated benefits (such as Social Security and workers' compensation insurance), they are ineligible for all of Dana Kepner's other benefit programs.</p>



                            <h5>202 Access to Personnel Files</h5>

                            <p>Company maintains a personnel file on each employee. The personnel file includes such information as the employee's job application, resume, records of training, documentation of performance appraisals and salary increases, and other employment records.</p>

                            <p>Personnel files are the property of Company and access to the information they contain is restricted. Generally, only supervisors and management personnel of Company who have a legitimate reason to review information in a file are allowed to do so.</p>

                            <p>Dana Kepner Company, Inc. will consider any request to provide access to your personnel files. However, the Company retains the sole and absolute discretion whether or not to grant such a request  depending on state laws.</p>

                            <h5>204 Personnel Data Changes</h5>

                            <p>It is the responsibility of each employee to promptly notify Company of any changes in personnel data. Family status changes, personal mailing addresses, telephone numbers, number and names of dependents, individuals to be contacted in the event of an emergency, educational accomplishment, benefactors, and other such status reports should be accurate and current at all times. If any personnel data has changed, notify the Human Resources Department.</p>


                            <h5>207 Performance Evaluations</h5>

                            <p>Supervisors and employees are strongly encouraged to discuss job performance and goals on an informal, day-to-day basis. Formal performance evaluations are conducted to provide both supervisors and employees the opportunity to discuss job tasks, identify and correct weaknesses, encourage and recognize strengths, and discuss positive, purposeful approaches for meeting goals. </p>

                            <p>Merit-based pay adjustments may be awarded by Company in an effort to recognize truly superior employee performance. The decision to award such an adjustment is dependent upon numerous factors, including the information documented by this formal performance evaluation process along with overall business and economic conditions.</p>
 
                       </div>
                    </telerik:RadPageView>
            
                    <telerik:RadPageView ID="Benefits" runat="server" Width="800px" Height="5000px" BorderColor="#639AFF" BorderWidth="1px" BorderStyle="Solid" >
                       <h3 style="width:500px; margin:10px;">Benefit Programs</h3>
                       <div style="width:100%; height:100%; margin:13px;">
                        <h5>301 Employee Benefits</h5>
                        <p>Eligible employees at Company are provided a wide range of benefits. A number of the programs (such as Social Security, workers' compensation, state disability, and unemployment insurance) cover all employees.</p>

                        <p>Benefits eligibility is dependent upon a variety of factors, including employee classification. Your supervisor can identify the programs for which you are eligible. Details of many of these programs can be found elsewhere in the employee handbook or by contacting Human Resources.</p>

                        <p>The following benefit programs are currently available to eligible employees:</p>

                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Section 125 Cafeteria Plan</li>
                            <li>- 401(k) Savings Plan</li>
                            <li>- Auto Insurance</li>
                            <li>- Auto, Employer-Owned Car</li>
                            <li>- Auto Mileage</li>
                            <li>- Benefit Conversion at Termination (COBRA)</li>
                            <li>- Bereavement Leave</li>
                            <li>- Dental Insurance</li>
                            <li>- Family Leave</li>
                            <li>- Health Insurance</li>
                            <li>- Holidays</li>
                            <li>- Jury Duty Leave</li>
                            <li>- Life and AD &amp; D Insurance</li>
                            <li>- Long-Term Disability</li>
                            <li>- Medical Leave</li>
                            <li>- Military Leave</li>
                            <li>- Personal Leave</li>
                            <li>- Personal time Benefits</li>
                            <li>- Supplemental Life Insurance</li>
                            <li>- Company Provided Uniforms</li>
                            <li>- Up to $75.00 reimbursement for steel toed work books, once every nine months ONLY. No casual, dress or any other shoe or boot will be permitted for reimbursement.</li>
                
                            <li>- Vacation Benefits</li>
                            <li>- Voting Time Off</li>
                            <li>- Witness Duty Leave</li>
                            <li>- Yearly Flu Shots</li>
                        </ul>

                        <p>Some benefit programs require contributions from the employee, but many are fully paid by Company.</p>


                        <h5>302 Vacation Benefits</h5>

                        <p>Vacation time off with pay is currently available to eligible employees to provide opportunities for rest, relaxation, and personal pursuits. Employees in the following employment classification(s) are eligible to earn and use vacation time as described in this policy:</p>
                            <ul style="margin:5px 0px 10px 30px; width:500px;">
                                <li>- Full-time employees</li>
                            </ul>


                        <p>The amount of paid vacation time employees receive each year increases with the length of their employment as shown in the following schedule:</p>

                             <ul style="margin:5px 0px 10px 30px; width:500px;">
                                <li>- Upon initial eligibility the employee is eligible to 10 vacation days (80 hrs.) each year, accrued every two weeks at the rate of 3 .08 hours.</li>
                                <Li>- After 5 years of eligible service the employee is eligible to 15 vacation days (120 hrs.) each year, accrued every two weeks at the rate of 4.61 hours.</Li>
                                <li>- After 10 years of eligible service the employee is eligible to 20 vacation days (160 hrs.) each year, accrued every two weeks at the rate of 6.15 hours.</li>
                             </ul>

                        <p>(Note: The length of eligible service is calculated on the basis of a "benefit year." This is the I2-month
                        period that begins when the employee starts to earn vacation time. An employee's benefit year may be extended for any significant leave of absence except military leave of absence. Military leave has no effect on this calculation. (See individual leave of absence policies for more information.)</p>

                        <p>Once employees enter an eligible employment classification, they begin to accrue paid vacation time according to the schedule. Employees accrue vacation at the completion of each pay period. Should
                        employment be terminated at any time during a pay period, there will be no accrual for that pay period, Vacation time may only be taken after it has been accrued.</p>

                        <p>Paid vacation time can be used in minimum increments of 4 hours. To take vacation, employees must request advance approval from their supervisors. Requests will be reviewed based on a number of factors, including business needs, vacation time balance and staff requirements.</p>

                        <p>Vacation time off is paid at the employee's base pay rate at the time vacation is taken. It does not include overtime or any special forms of compensation such as incentives, commissions, bonuses, or shift differentials.</p>

                        <p>As stated above, employees are encouraged to use available paid vacation time for rest, relaxation, and personal pursuits. In the event that available vacation is not used by the end of the benefit year, employees may carry a maximum of 30 days (240 hrs.) unused time forward to the next benefit year.</p>

                        <p>Vacation time is not interchangeable with personal time. Vacation time cannot be extended by the use of personal time. In order to ensure proper staffing during peak time periods, limitations on the number of days taken at one time may be imposed. Current restrictions are as follows:</p>
                            <ul style="margin:5px 0px 10px 30px; width:500px;">
                                <li>Colorado, Texas, Wyoming and Montana    5 days - 4/1 through 9/30</li>
	                            <li>Arizona, Nevada	5 days - 10/1 through 3/31</li>
                            </ul>
                        <p>Upon termination of employment employees will be paid for unused vacation time that has been accrued through the last day of work.</p>
                        <h5>303 Dependent Care Benefits</h5>
                        <p> An employee paid benefit; dependent care assistance to all eligible employees. Eligible employee classifications are:</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Full-time employees</li>
                        </ul>
                        <p>Given below is a brief description of dependent care assistance that may be provided when feasible. For more detailed information, please contact the Human Resources Department.</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- CAFETERIA PLAN/FLEXIBLE SPENDING ACCOUNT: Employees choose benefits (including child care) from a list of options and contribute a part of pretax salaries to a dependent care account. This option will allow employees to minimize the federal tax they must pay on dependent care dollars.</li>
                            <li>-  PERSONAL TIME BENEFITS: Employees may use accrued personal time benefits in the event of the illness of a child.</li>
                        </ul>
                        <h5>304 Holidays</h5>
                        <p>Company currently grants holiday time off to all employees on the holidays listed below:</p>

                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- New Year's Day (January 1)</li>
                            <li>- Memorial Day (last Monday in May)</li>
                            <li>- Independence Day (July 4)</li>
                            <li>- Labor Day (first Monday in September)</li>
                            <li>- Thanksgiving (fourth Thursday in November)</li>
                            <li>- Day after Thanksgiving (Friday following Thanksgiving)</li> 
                            <li>- Christmas (December 25)</li>
                        </ul>
                        <p>Management may also schedule other holidays at its discretion. Each year, at the end of December, a specific list of holiday dates and observances will be distributed.</p>

                        <p>Company currently grants paid holiday time off to all eligible employees immediately upon assignment to an eligible employment classification. Holiday pay will be calculated based on the employee's straight-time pay rate (as of the date of the holiday) times the number of hours the employee would otherwise have worked on that day. Eligible employee classification(s):</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Full-time employees</li>
                        </ul>
         
                        <p>To be eligible for holiday pay, employee must work the last scheduled day immediately preceding and the first scheduled day immediately following the holiday, or absence of eitherlboth days must have been pre-approved vacation or personal time prior to the holiday.</p>

                        <p>A recognized holiday that falls on a Saturday will be observed on the preceding Friday. A recognized holiday that falls on a Sunday will be observed on the following Monday.</p>

                        <p>If a recognized holiday falls during an eligible employee's paid absence (e.g., vacation, personal time), the employee will NOT be eligible for both holiday pay and paid time off.</p>

                        <p>If eligible nonexempt employees work (as required by management) on a recognized holiday, they will receive holiday pay plus wages at one and one-half times their straight-time rate for the hours worked on the holiday.</p>

                        <p>Paid time off for holidays will not be counted as hours worked for the purposes of determining overtime.</p>

                        <h5>306 Personal Time Benefits</h5>

                        <p>Company currently provides paid personal time benefits to all eligible employees for periods of temporary absence due to illnesses, injuries or personal business. Eligible employee classification(s):</p>

                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Full-time employees</li>
                        </ul>

                        <p>Eligible employees currently accrue personal time benefits at the rate of 6 days per year (accrued every two weeks at the rate of 1.85 hours). Personal time benefits are calculated on the basis of a "benefit year," the 12-month period that begins when the employee starts to earn personal time benefits.</p>

                        <p>Employees can request use of paid personal time after it has been accrued. Employees accrue personal time at the completion of each pay period. Should employment be terminated at any time during a pay period, there will be no accrual for that pay period.</p>

                        <p>Employees who are unable to report to work due to illness or injury must notify their direct supervisor before the scheduled start of their workday if possible. The direct supervisor must also be contacted on each additional day of absence. Your supervisor may request medical certification for sick leave pay at any time. In the event an employee is absent for more than three days, medical certification from a healthcare provider is required or may be required. </p>

                        <p>Personal time benefits will be calculated based on the employee's base pay rate at the time of absence and will not include any special forms of compensation, such as incentives, commissions, bonuses, or shift differentials.</p>

                        <p>Unused personal time benefits may be carried over with no maximum carryover. Accrual of personal time is encouraged in order to provide income in the event of personal illness or injury.</p>

                        <p>Personal time may be extended by the use of vacation time in an extenuating circumstance of personal illness or injury.</p>

                        <p>Unused personal time benefits will not be paid to employees while they are employed or upon termination of employment.</p>
 

                        <h5>308 Bereavement Leave</h5>

                        <p>Employees who wish to take time off due to the death of an immediate family member should notify their supervisor immediately.</p>

                        <p>Bereavement leave is currently provided to eligible employees in the following classifications, as follows:</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Full-time employees</li>
                            <li>- Up to two (2) days for local occurrences (within 350 miles)</li>
                            <li>- Up to three (3) days for an out-of-town occurrence</li>
                        </ul>
                        <p>Bereavement pay is calculated based on the base pay rate at the time of absence and will not include any special forms of compensation, such as incentives, commissions, bonuses, or shift differentials.</p>

                        <p>Bereavement leave will normally be granted unless there are unusual business needs or staffing requirements. Employees may, with their supervisor approval, use any available paid leave for additional time off as necessary.</p>

                        <p>Company defines "immediate family" as the employee's spouse, parent, child, sibling; the employee's spouse's parent, child, or sibling; the employee's child's spouse; grandparents or grandchildren. Special consideration will also be given to any other person whose association with the employee was similar to any of the above relationships.</p>

                        <h5>309 Jury Duty</h5>

                        <p>Company encourages employees to fulfill their civic responsibilities by serving jury duty when required. Employees in an eligible classification may request up to 2 weeks of paid jury duty leave.</p>

                        <p>Jury duty pay will be calculated on the employee's base pay rate times the number of hours the employee would otherwise have worked on the day(s) of absence. Employee classifications that qualify for paid jury duty leave are:</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Full-time employees</li>
                        </ul>
                         <p>If employees are required to serve jury duty beyond the period of paid jury duty leave, they may use any available paid time off (e.g. vacation, personal time) or may request an unpaid jury duty leave of absence.</p>

                         <p>Employees must show the jury duty summons to their supervisor when requesting time off for jury duty as soon as possible so that the supervisor may make arrangements to accommodate their absence. Of course, employees are expected to report for work whenever the court schedule permits. Upon return to work from jury duty, employees must produce a receipt from the courts specifying times served on the jury. A jury duty summons is not acceptable proof.</p>

                         <p>Company will continue to provide health insurance benefits for the full term of the jury duty absence.</p>

                         <p>Benefit accruals such as vacation, personal time, or holiday benefits will be suspended during unpaid jury duty leave and will resume upon return to active employment.</p>
 
                        <h5>312 Health Insurance</h5>
                        <p>Dana Kepner's health insurance plan currently provides employees and their dependents access to medical insurance benefits. Employees in the following employment classifications are eligible to participate in the health insurance plan:</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Full-time employees</li>
                        </ul>
    

                        <p>Eligible employees may participate in the health insurance plan subject to all terms and conditions of the agreement between Company and the insurance carrier. Details of the health insurance plan are described in the Summary Plan Description (SPD). A SPD and information on cost of coverage will be provided in advance of enrollment to eligible employees. For more information about these plans, please refer to the Summary Plan Description or contact the Human Resource Department. In the event of a conflict between the SPD and handbook, the SPD governs.</p>

                        <h5>313 Life Insurance</h5>
                        <p>Life insurance currently offers you and your family important financial protection. Company provides a basic life insurance and AD&D plan for eligible employees in the amount of one times the employees basic annual earnings, rounded to next higher $1,000 if not a multiple of $1,000, to a maximum of $50,000. Additional supplemental and/or dependent life insurance coverage may also be purchased.</p>

                        <p>Employees in the following employment classifications are eligible to participate in the life insurance and AD &amp; D plan:</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Full-time employees</li>
                        </ul>
   

                        <p>Eligible employees may participate in the life insurance plan subject to all terms and conditions of the agreement between Company and the insurance carrier.</p>

                        <p>Details of the basic life and AD &amp; D insurance plan including benefit amounts are described in the Summary Plan Description provided to eligible employees. Contact the Human Resources Manager for more information about life insurance benefits.</p>

                        <h5>314 Long-Term Disability</h5>
                        <p>Company currently provides a basic LTD benefit. Company currently offers voluntary buy up employee paid long-term disability (LTD) benefits plan to help eligible employees cope with an illness or injury that results in a long-term absence from employment. LTD is designed to ensure a continuing income for employees who are disabled and unable to work. This voluntary buy up portion is 60% to a maximum monthly benefit of $5000.00.</p>


                        <p>Details of the LTD benefits plan including benefit amounts, limitations and restrictions are described in the Summary Plan Description provided to eligible employees. Contact the Human Resources Manager for more information about LTD benefits.</p>
 
                        <h5>315 Short Term Disability</h5>

                        <p>Employee paid benefit; the purpose of Short Term Disability is to assist you in meeting your reasonable income needs in the event you suffer a short-term disability and are unable to work. If you are totally disabled and you have elected voluntary short terms disability coverage, you may be eligible to received 60% of your earnings up to a weekly maximum of $1,250.00. Disability benefits, if approved, begin on the 31st day and end on the 90th day of disability.</p>

                        <h5>316 401(k) Savings Plan</h5>

                        <p>Company has established a 401 (k) savings plan to provide employees the potential for future financial security at retirement.</p>

                        <p>Eligible employees may participate in the 401(k) plan subject to all terms and conditions of the plan.</p>

                        <p>The 401 (k) savings plan allows you to elect how much salary you want to contribute and direct the investment of your plan account, so you can tailor your own retirement package to meet your individual needs. Company also contributes an additional matching amount to each employee's 401 (k) contribution.</p>

                        <p>Because your contribution to a 401(k) plan is automatically deducted from your pay before federal and state tax withholdings are calculated, you save tax dollars now by having your current taxable amount reduced. While the amounts deducted generally will be taxed when they are finally distributed, favorable tax rules typically apply to 401 (k) distributions.</p>

                        <p>Dana Kepner's 401(k) discretionary match is as follows:</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;"> 
                            <li>Years 1 through 5 of employment: for each $1.00 you contribute (up to 5% of your salary) we match with $.25.</li>
                            <li>Years 6 or more of employment: for each $1.00 you contribute (up to 5% of your salary) we match with $.50.</li>
                        </ul>
                        <p>Dana Kepner's vesting schedule is:</p> 
                            <ul style="margin:5px 0px 10px 30px; width:500px;">
                                <li>0-2 years of service - 0%</li>
                                <li>2-3 years of service - 20%</li>
                                <li>3-4 years of service - 40%</li>
                                <li>4-5 years of service - 60%</li>
                                <li>5-6 years of service - 80%</li>
                                <li>6+ years of service - 100%</li>
                            </ul>
                        <p>Complete details of the 401 (k) savings plan are described in the Summary Plan Description provided to eligible employees. Contact the Human Resources Manager for more information about the 401 (k) plan.</p>




                       </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="TSPayroll" runat="server" Width="800px" Height="700px" BorderColor="#639AFF" BorderWidth="1px" BorderStyle="Solid" >
                       <h3 style="width:500px; margin:10px;">Time Sheets / Payroll</h3>
                       <div style="width:100%; height:100%; margin:13px;">
                       <h5>402 Paydays</h5>

                        <p>All employees are paid every two weeks. Each paycheck will include salary for all work performed for the two week period ending Saturday of the previous week.</p>

                        <p>In the event that a regularly scheduled payday falls on a day off such as a weekend or holiday, employees will receive pay on the last day of work before the regularly scheduled payday.</p>

                        <p>If a regular payday falls during an employee's vacation, the employee's paycheck will be available on the regularly scheduled payday or upon his or her return from vacation.</p>

                        <p>It is strongly recommended that employees have their pay directly deposited into their bank accounts. Advance written authorization to Company is required for direct deposit of wages. Employees will receive an itemized statement of wages when Company makes direct deposits.</p>

 
                        <h5>405 Administrative Pay Corrections</h5>

                        <p>Company takes steps to ensure that employees receive the correct amount of pay in each paycheck and that employees are paid promptly on the scheduled payday.</p>

                        <p>In the unlikely event that there is an error in the amount of pay, the employee should promptly bring the discrepancy to the attention of the Department Manager so that corrections can be made as possible.</p>

                        <h5>406 Pay Deductions and Setoffs</h5>

                        <p>The law requires that Company make certain deductions from every employee's compensation. Among these are applicable federal, state, and local income taxes. Company also must deduct Social Security taxes on each employee's earnings up to a specified limit that is called the Social Security "wage base." Company matches the amount of Social Security taxes paid by each employee.</p>

                        <p>Company offers programs and benefits beyond those required by law. Eligible employees may voluntarily authorize deductions from their paychecks to cover the costs of participation in these programs.</p>

                        <p>Pay setoffs are pay deductions taken by Company, usually to help payoff a debt or obligation to Company or others.</p>

                        <p>If you have questions concerning why deductions were made from your paycheck or how they were calculated, your supervisor can assist in having your questions answered.</p>
 
                       </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="WorkConditions" runat="server" Width="800px" Height="4600px" BorderColor="#639AFF" BorderWidth="1px" BorderStyle="Solid" >
                       <h3 style="width:500px; margin:10px;">Working Conditions &amp; Hours</h3>
                       <div style="width:100%; height:100%; margin:13px;">
                       <h5>501 Safety</h5>

                        <p>Establishment and maintenance of a safe work environment is the shared responsibility of the employer and employees from all levels of the organization. The employer along with employees’ participation works to do everything within its control to help assure a safe environment for all employees.  Employees are required to follow safety rules and to exercise caution in all their work activities. They are asked to immediately report any unsafe conditions to their Supervisor. Not only supervisors, but employees at all levels of the organization are to correct unsafe conditions as promptly as possible.</p>


                        <p>Some of the best safety improvement ideas come from employees. Those with ideas, concerns, or suggestions for improved safety in the workplace are encouraged to raise them with their supervisor, or with another supervisor or manager, or bring them to the attention of the Branch Manager. All reports can be made without fear of reprisal.</p>

                        <p>The safety of Dana Kepner Company employees and the public is of chief importance. The prevention of accidents and injuries takes precedence over expedience. In the conduct of our business, everyone must strive to prevent accidents from occurring.  Each branch manager will be the primary safety coordinator contact for safety-related matters. All employees will receive an orientation to the safety rules upon initial employment and are encouraged to bring to the attention of their supervisor any unsafe conditions or practices. </p>

                        <h5>502 Work Schedules</h5>

                        <p>The normal work schedule for all employees is 8 hours a day, 5 days a week. Supervisors will advise employees of the times their schedules will normally begin and end. Staffing needs and operational demands may necessitate variations in starting and ending times, as well as variations in the total hours that may be scheduled each day and week.</p>

                        <h5>503 Use of Telephones</h5>

                        <p>Employees will be required to reimburse Company for any charges resulting from their personal use of the telephone.</p>

                        <p>To ensure effective telephone communications, employees should always use the approved greeting and speak in a courteous and professional manner. Please confirm information received from the caller, and hang up only after the caller has done so.</p>


                        <h5>504 Smoking</h5>

                        <p>In keeping with Dana Kepner's intent to provide a safe and healthful work environment, smoking in company vehicles is prohibited. Smoking at work is prohibited except in those outside locations that have been specifically designated as smoking areas. Employees that smoke will be allowed 2-10 minutes breaks. One in the morning and one in the afternoon - NO EXCEPTIONS. In situations where the preferences of smokers and nonsmokers are in direct conflict, the preferences of nonsmokers will prevail.</p>

                        <p>This policy applies equally to all employees, customers, and visitors.</p>

                        <h5>505 Rest and Meal Periods</h5>

                        <p>Each workday, full-time nonexempt employees are offered 2 rest periods of 10 minutes in length, one in the morning and one in the afternoon. It is preferable that rest periods be taken at a time when work periods dictate and the operations will be impacted the least. Since this time is counted and paid as time worked, employees must not be absent from their work stations beyond the allotted rest period time. This time is not to be tacked on to the start of the day, end of the day or added on to the lunch period. Smoking breaks are counted as 10 minute rest periods.  Therefore, smoke breaks are limited to two per day.</p>

                        <p>All full-time regular employees are offered one meal period each workday. Supervisors will schedule meal periods to accommodate operating requirements. Employees will be relieved of all active responsibilities and restrictions during meal periods and will not be compensated for that time.</p>

                        <h5>506 Overtime</h5>

                        <p>When operating requirements or other needs cannot be met during regular working hours, employees may be scheduled to work overtime hours. When practical, advance notification of these mandatory assignments will be provided. All overtime work must receive the supervisor's prior authorization. Overtime assignments will be distributed as equitably as practical to all employees qualified to perform the required work.</p>

                        <p>On call employees: Currently all hourly employees that return to work in response to after hours call will be paid a minimum of 3 hours of overtime. Overtime pay is based on actual hours worked. Time off for personal time, vacation leave, or any leave of absence will not be considered hours worked for purposes of performing overtime calculations on a weekly basis.</p>

                        <p>Failure to work scheduled overtime or overtime worked without prior authorization from the supervisor will not be tolerated.</p>

                        <h5>507 Use of Equipment and Vehicles</h5>

                        <p>Equipment and vehicles essential in accomplishing job duties are expensive and may be difficult to replace. When using property, assigned employees are expected to exercise care, perform required maintenance, and follow all operating instructions, safety standards, and guidelines. Personal use of Company vehicles or equipment for non-assigned employees requires written approval prior to use.</p>

                        <p>Please notify the supervisor if any equipment, machines, tools, or vehicles appear to be damaged, defective, or in need of repair. Prompt reporting of damages, defects, and the need for repairs could prevent deterioration of equipment and possible injury to employees or others. The supervisor can answer any questions about an employee's responsibility for maintenance and care of equipment or vehicles used on the job.</p>

                        <p>The improper, careless, negligent, destructive, or unsafe use or operation of equipment or vehicles, as well as excessive or avoidable traffic and parking violations, will not be tolerated.</p>

                        <h5>508 Emergency Closings</h5>

                        <p>At times, emergencies such as severe weather, fires, power failures, or earthquakes, can disrupt company operations. In extreme cases, these circumstances may require the closing of a work facility.</p>

                        <p>When operations are officially closed due to emergency conditions, the time off from scheduled work will be unpaid. However, with supervisory approval, employees may use available paid leave time.</p>

                        <p>In cases where an emergency closing is not authorized, employees who fail to report for work will not be paid for the time off. Employees may request available paid leave time such as unused vacation benefits.</p>

                        <p>Employees in essential operations may be asked to work on a day when operations are officially closed.</p>

 
                        <h5>509 Business Travel Expenses (if applicable)</h5>

                        <p>Company will reimburse employees for reasonable business travel expenses incurred while on assignments away from the normal work location. All business travel must be approved in advance by the immediate supervisor.</p>

                        <p>Employees whose travel plans have been approved should make all travel arrangements through Dana Kepner's designated corporate travel individual or company.</p>

                        <p>When approved, the actual costs of travel, meals, lodging, and other expenses directly related to accomplishing business travel objectives will be reimbursed by Company. Employees are expected to limit expenses to reasonable amounts.</p>

                        <p>Employees who are involved in an accident while traveling on business must promptly report the incident to their immediate supervisor. Vehicles which are not assigned to the employee may not be used for personal use without prior approval.</p>

                        <p>Cash advances to cover reasonable anticipated expenses may be made to employees, after travel has been approved. Employees should submit a written request to their supervisor when travel advances are needed.</p>

                        <p>Employees should submit completed travel expense reports within 10 days of the end of the month. Reports should be accompanied by receipts for all individual expenses exceeding $25.00.</p>

                        <p>Employees should contact their supervisor for guidance and assistance on procedures related to travel arrangements, travel advances, expense reports, reimbursement for specific expenses, or any other business travel issues.</p>

                        <p>Abuse of this business travel expenses policy, including falsifying expense reports to reflect costs not incurred by the employee, will not be tolerated.</p>

                        <h5>510 Visitors in the Workplace</h5>

                        <p>To provide for the safety and security of employees and the facilities at Company, only authorized visitors are allowed in the workplace. Restricting unauthorized visitors helps maintain safety standards, protects against theft, ensures security of equipment, protects confidential information, safeguards employee welfare, and avoids potential distractions and disturbances.</p>

                        <p>All visitors should enter Company at the reception area. Authorized visitors will receive directions or be escorted to their destination. Employees are responsible for the conduct and safety of their visitors.</p>

                        <p>If an unauthorized individual is observed on Dana Kepner's premises, employees should immediately notify their supervisor or, if necessary, direct the individual to the reception area.</p>
 
                        <h5>511 Computer and E-mail Usage</h5>

                        <p>Computers, computer files, the e-mail system, and software furnished to employees are Company property intended for business use. Employees should not use another's password, access others files, or retrieve any stored communication without authorization. To ensure compliance with this policy, computer and e-mail usage may be monitored.</p>

                        <p>Company strives to maintain a workplace free of harassment and sensitive to the diversity of its employees. Therefore, Company prohibits the use of computers and the e-mail system in ways that are disruptive, offensive to others, or harmful to morale.</p>

                        <p>For example, the display or transmission of sexually explicit images, messages, and cartoons is not allowed. Other such misuse includes, but is not limited to, ethnic slurs, racial comments, off-color jokes, or anything that may be construed as harassment or showing disrespect for others.</p>

                        <p>E-mail may not be used to solicit others for commercial ventures, religious or political causes, outside organizations, or other non-business matters.</p>

                        <p>Company purchases and licenses the use of various computer software for business purposes and does not own the copyright to this software or its related documentation. Unless authorized by the software developer, Company does not have the right to reproduce such software for use on more than one computer.</p>

                        <p>Employees may only use software on local area networks or on multiple machines according to the software license agreement. Company prohibits the illegal duplication of software and its related documentation.</p>

                        <p>Employees should notify their immediate supervisor, the Human Resources Manager or any member of management upon learning of violations of this policy.</p>
 
                        <h5>512 Internet Usage</h5>

                        <p>Internet access is provided by Company to assist employees in obtaining work-related data and technology. The following guidelines have been established to help ensure responsible and productive Internet usage. While Internet usage is intended for job-related activities, incidental and occasional brief personal use is permitted within reasonable limits.</p>

                        <p>All Internet data that is composed, transmitted, or received via our computer communications systems is considered to be part of the official records of Company and, as such, is subject to disclosure to law enforcement or other third parties. Consequently, employees should always ensure that the business information contained in Internet e-mail messages and other transmissions is accurate, appropriate, ethical, and lawful.</p>

                        <p>The equipment, services, and technology provided to access the Internet remain at all times the property of Company. As such, Company reserves the right to monitor Internet traffic, and retrieve and read any data composed, sent, or received through our online connections and stored in our computer systems.</p>

                        <p>Data that is composed, transmitted, accessed, or received via the Internet must not contain content that could be considered discriminatory, offensive, obscene, threatening, harassing, intimidating, or disruptive to any employee or other person. Examples of unacceptable content may include, but are not limited to, sexual comments or images, racial slurs, gender-specific comments, or any other comments or images that could reasonably offend someone on the basis of race, age, sex, religious or political beliefs, national origin, disability, sexual orientation, or any other characteristic protected by state or local law.</p>

                        <p>The unauthorized use, installation, copying, or distribution of copyrighted, trademarked, or patented material on the Internet is expressly prohibited. As a general rule, if an employee did not create material, does not own the rights to it, or has not gotten authorization for its use, it should not be put on the Internet. Employees are also responsible for ensuring that the person sending any material over the Internet has the appropriate distribution rights.</p>

                        <p>Internet users should take the necessary anti-virus precautions before downloading or copying any file from the Internet. All downloaded files are to be checked for viruses; all compressed files are to be checked before and after decompression.</p>
 
                        <p>Abuse of the Internet access provided by Company in violation of law and will not be tolerated. Employees may also be held personally liable for any violations of this policy. The following behaviors are examples of previously stated or additional actions and activities that are prohibited:</p> 
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>-  Sending or posting discriminatory, harassing, or threatening messages or images</li>
                            <li>-  Using the organization's time and resources for personal gain</li>
                            <li>-  Stealing, using, or disclosing someone else's code or password without authorization</li>
                            <li>-  Copying, pirating, or downloading software and electronic files without permission</li>
                            <li>-  Sending or posting confidential material, trade secrets, or proprietary information outside of the organization</li>
                            <li>-  Violating copyright law</li>
                            <li>-  Failing to observe licensing agreements</li>
                            <li>-  Engaging in unauthorized transactions that may incur a cost to the organization or initiate unwanted Internet services and transmissions</li>
                            <li>-  Sending or posting messages or material that could damage the organization's image or reputation</li> 
                            <li>-  Participating in the viewing or exchange of pornography or obscene materials</li>
                            <li>-  Sending or posting messages that defame or slander other individuals</li>
                            <li>-  Attempting to break into the computer system of another organization or person</li>
                            <li>-  Refusing to cooperate with a security investigation</li>
                            <li>-  Sending or posting chain letters, solicitations, or advertisements not related to business purposes or activities</li>
                            <li>-  Using the Internet for political causes or activities, religious activities, or any sort of gambling</li>
                            <li>-  Jeopardizing the security of the organization's electronic communications systems</li>
                            <li>-  Sending or posting messages that disparage another organization's products or services</li>
                            <li>-  Passing off personal views as representing those of the organization</li>
                            <li>-  Sending anonymous e-mail messages</li>
                            <li>-  Engaging in any other illegal activities</li>

                        </ul>


                        <h5>513 Workplace Monitoring</h5>
                        <p>Workplace monitoring may be conducted by Company to ensure quality control, employee safety, security, and customer satisfaction.</p>

                        <p>Employees who regularly communicate with customers may have their telephone conversations monitored or recorded. Telephone monitoring is used to identify and correct performance problems through targeted training. Improved job performance enhances our customers' image of Company as well as their satisfaction with our service.</p>

                        <p>Computers furnished to employees are the property of Company. As such, computer usage and files may be monitored or accessed.</p>

                        <p>Because Company is sensitive to the legitimate privacy rights of employees, efforts will be made to guarantee that workplace monitoring is done in an ethical and respectful manner.</p>


                        <h5>514 Workplace Violence Prevention</h5>

                        <p>Company is committed to preventing workplace violence and to maintaining a safe work environment. Given the increasing violence in society in general, Company has adopted the following guidelines to deal with intimidation, harassment, or other threats of (or actual) violence that may occur during business hours or on its premises.</p>

                        <p>All employees, including supervisors and temporary employees, should be treated with courtesy and respect at all times. Employees are expected to refrain from fighting, "horseplay," or other conduct that may be dangerous to others. Firearms, weapons, and other dangerous or hazardous devices or substances are prohibited from the premises of Company without proper authorization.</p>

                        <p>Conduct that threatens, intimidates, or coerces another employee, a customer, or a member of the public at any time, including off-duty periods, will not be tolerated.</p>

                        <p>All threats of (or actual) violence, both direct and indirect, should be reported as soon as possible to your immediate supervisor or any other member of management. This includes threats by employees, as well as threats by customers, vendors, solicitors, or other members of the public. When reporting a threat of violence, you should be as specific and detailed as possible.</p>

                        <p>All suspicious individuals or activities should also be reported as soon as possible to a supervisor. Do not place yourself in peril. If you see or hear a commotion or disturbance near your work station, do not try to intercede or see what is happening.</p>

                        <p>Company will investigate all reports of threats of (or actual) violence and of suspicious individuals or activities. The identity of the individual making a report will be protected as much as is practical. In order to maintain workplace safety and the integrity of its investigation,
                        Company may suspend employees, either with or without pay, pending investigation.</p>

                        <p> Anyone determined to be responsible for threats of (or actual) violence or other conduct that is in violation of these guidelines will be subject to prompt disciplinary action up to and including termination of employment. Company encourages employees to bring their disputes or differences with other employees to the attention of their supervisors or the Human Resources Manager before the situation escalates into potential violence. Company is eager to assist in the resolution of employee disputes.</p>
                       </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Leave" runat="server" Width="800px" Height="2800px" BorderColor="#639AFF" BorderWidth="1px" BorderStyle="Solid" >
                       <h3 style="width:500px; margin:10px;">Leaves of Absence</h3>
                       <div style="width:100%; height:100%; margin:13px;">
                       <h5>601 Medical Leave for Employees not Eligible for FMLA</h5>

                        <p>Company provides medical leaves of absence without pay to eligible employees who are temporarily unable to work due to a serious health condition or disability. For purposes of this policy, serious health conditions or disabilities include inpatient care in a hospital, hospice, or residential medical care facility; continuing treatment by a health care provider; and temporary disabilities associated with pregnancy, childbirth, and related medical conditions.</p>

                        <p>Employees in the following employment classifications are eligible to request medical leave as described in this policy:</p>

                            <ul style="margin:5px 0px 10px 30px; width:500px;">
                                <li>- Full-time employees</li>
                            </ul>
      
                        <p>Eligible employees may request medical leave only after having completed 90 calendar days of service.</p>

                        <p>Eligible employees should make requests for medical leave to their supervisors at least 30 days in advance of foreseeable events and as soon as possible for unforeseeable events.</p>

                        <p>A health care provider's statement must be submitted verifying the need for medical leave and its beginning and expected ending dates. Any changes in this information should be promptly reported to Company. Employees returning from medical leave must submit a health care provider's verification of their fitness to return to work.</p>

                        <p>Eligible employees are normally granted leave for the period of the disability, up to a maximum of 6 weeks within any 12 month period. Any combination of medical leave and family leave may not exceed this maximum limit. If the initial period of approved absence proves insufficient, consideration will be given to a request for an extension. Employees will be required to first use any accrued paid leave time before taking unpaid medical leave.</p>

                        <p>Employees who sustain work-related injuries are eligible for a medical leave of absence for the period of disability in accordance with all applicable laws covering occupational disabilities.</p>

                        <p>Subject to the terms, conditions, and limitations of the applicable plans, Company will continue to provide health insurance benefits for the full period of the approved medical leave.</p>

                        <p>Benefit accruals, such as vacation, personal time, or holiday benefits, will be suspended during the leave and will resume upon return to active employment.</p>

                        <p>So that an employee's return to work can be properly scheduled, an employee on medical leave is requested to provide Company with at least two weeks advance notice of the date the employee intends to return to work. When a medical leave ends, the employee will be reinstated to the same position, if it is available, or to an equivalent position for which the employee is qualified. However, there is no job guarantee. </p>
                        <p>If an employee fails to return to work on the agreed upon return date, they will be terminated.</p>

                        <p>(You may qualify for FMLA protection, please contact your Human Resources Manager to determine your eligibility.)</p>

                        <h5>602 Family Medical Leave (FMLA Leave)</h5>

                        <p>The Organization provides up to 12 weeks of unpaid, job-protected leave to eligible employees for the following reasons:</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>- Incapacity due to pregnancy, prenatal medical care or child birth;</li>
                            <li>- To care for the employee’s child after birth, or placement for adoption or foster care;</li>
                            <li>- To care for the employee’s spouse, son or daughter, or parent, who has a serious health condition;</li>
                            <li>- Serious health condition that makes the employee unable to perform the employee’s job.</li>
                        </ul>
               

                        <p><b>Military Family Leave Entitlements</b></p>
                        <p>Eligible employees with a spouse, son, daughter, or parent on active duty or called to active duty status in the National Guard or Reserves in support of a contingency operation may use their 12-week leave entitlement to address certain qualifying exigencies. Qualifying exigencies may include attending certain military events, arranging for alternative childcare, addressing certain financial and legal arrangements, attending certain counseling sessions, and attending post-deployment reintegration briefings.</p>

                        <p>Eligible employees may also take up to 26 weeks of leave to care for a covered service member during a single 12-month period. A covered service member is a current member of the Armed Forces, including a member of the National Guard or Reserves, who has a serious injury or illness incurred in the line of duty on active duty. The injury or illness must make the service member medically unfit to perform his or her duties for which the service member is undergoing medical treatment, recuperation, or therapy; or is in outpatient status; or is on the temporary disability retired list.</p>

                        <p><b>Benefits and Protections</b></p>
                        <p>During FMLA leave, the Organization maintains the employee’s health coverage under any group health plan on the same terms as if the employee had continued to work. Employees must continue to pay their portion of any insurance premium while on leave. If the employee is able but does not return to work after the expiration of the leave, the employee will be required to reimburse the Organization for payment of insurance premiums during leave.</p>

                        <p>Upon return from FMLA leave, most employees are restored to their original or equivalent positions with equivalent pay, benefits, and other employment terms. Certain highly compensated employees (key employees) may have limited reinstatement rights.</p>

                        <p>Use of FMLA leave cannot result in the loss of any employment benefit that accrued prior to the start of an employee’s leave. As with other types of unpaid leaves, paid leave will not accrue during the unpaid leave. Holidays, funeral leave, or employer’s jury duty pay are not granted on unpaid leave. Paid leave continues to accrue during FMLA. </p>


                        <p><b>Eligibility Requirements</b></p>
                        <p>Employees are eligible if they have worked for this Organization for at least 12 months, for 1,250 hours over the previous 12 months, and if they work at a work site with at least 50 employees within 75 miles. </p>

                        <p><b>Definition of Serious Health Condition</b></p>
                        <p>A serious health condition is an illness, injury, impairment, or physical or mental condition that involves either an overnight stay in a medical care facility, or continuing treatment by a health care provider for a condition that either prevents the employee from performing the functions of the employee’s job, or prevents a qualified family member from participating in school or other daily activities.</p>

                        <p>Subject to certain conditions, the continuing treatment requirement may be met by a period of incapacity of more than 3 consecutive full calendar days combined with at least two visits to a health care provider or one visit and a regimen of continuing treatment, or incapacity due to pregnancy, or incapacity due to a chronic condition. Other conditions may meet the definition of continuing treatment.</p>

                        <p><b>Use of Leave</b></p>
                        <p>The maximum time allowed for FMLA Leave is either 12 weeks in the 12-month period as defined by the Organization, or 26 weeks as explained above. The Organization uses the 12-month period measured forward from the first day of an employee’s leave.</p>

                        <p>An employee does not need to use this leave entitlement in one block. Leave can be taken intermittently or on a reduced leave schedule when medically necessary. Employees must make reasonable efforts to schedule leave for planned medical treatment so as not to unduly disrupt the Organization’s operations. Leave due to qualifying exigencies may also be taken on an intermittent basis.</p>

                        <p>Employees taking intermittent or reduced schedule leave based on planned medical treatment and those taking intermittent or reduced schedule family leave with the Organization’s agreement may be required to temporarily transfer to another job with equivalent pay and benefits that better accommodates that type of leave.</p>

                        <p><b>Substitution of Paid Leave for Unpaid Leave</b></p>
                        <p>The Organization requires employees to use accrued paid leave while taking FMLA leave. In order to use paid leave for FMLA leave, employees must comply with the Organization’s normal paid leave policies. FMLA leave is without pay when paid leave benefits are exhausted. While on FMLA your accrued personal time then your vacation time will be paid until exhausted then balance of leave is unpaid</p>     
                
                        <p><b>Employee Responsibilities</b></p>
                        <p>Employees must provide 30 days advance notice of the need to take FMLA leave when the need is foreseeable. When 30 days notice is not possible, the employee must provide notice as soon as practicable and generally must comply with the Organization’s normal call-in procedures.</p>

                        <p>Employees must provide sufficient information for the Organization to determine if the leave may qualify for FMLA protection and the anticipated timing and duration of the leave. Sufficient information may include that the employee is unable to perform job functions; the family member is unable to perform daily activities, the need for hospitalization or continuing treatment by a health care provider, or circumstances supporting the need for military family leave. Employees also must inform the Organization if the requested leave is for a reason for which FMLA leave was previously taken or certified.</p>

                        <p>Employees also may be required to provide a certification and periodic recertification supporting the need for leave. The Organization may require second and third medical opinions at the Organization’s expense. Documentation confirming family relationship, adoption or foster care may be required. If notification and appropriate certification are not provided in a timely manner, approval for leave may be denied. Continued absence after denial of leave may result in disciplinary action in accordance with the Organization’s attendance guideline. Employees on leave must contact the Human Resource Manager at least two days before their first day of return.</p>

                        <p><b>The Organization’s Responsibilities</b></p>
                        <p>The Organization will inform employees requesting leave whether they are eligible under FMLA. If they are, the notice will specify any additional information required as well as the employees’ rights and responsibilities. If they are not eligible, the Organization will provide a reason for the ineligibility.</p>

                        <p>The Organization will inform employees if leave will be designated as FMLA-protected and the amount of leave counted against the employee’s leave entitlement. If the Organization determines that the leave is not FMLA-protected, the Organization will notify the employee.</p>

                        <p><b>Unlawful Acts</b></p>
                        <p>FMLA makes it unlawful for the Organization to:</p>
                            <ul style="margin:5px 0px 10px 30px; width:500px;">
                                <li>- Interfere with, restrain, or deny the exercise of any right provided under FMLA;</li>
                                <li>- Discharge or discriminate against any person for opposing any practice made unlawful by FMLA or for involvement in any proceeding under or relating to FMLA.</li>
                            </ul>
                


                        <p><b>Enforcement</b></p>
                        <p>An employee may file a complaint with the U.S. Department of Labor or may bring a private lawsuit against the Organization.</p>

                        <p>FMLA does not affect any federal or state law prohibiting discrimination, or supersede any state or local law or collective bargaining agreement which provides greater family or medical leave rights.</p>

                        <p>(You may qualify for FMLA protection, please contact your Human Resources Manager to determine your eligibility.)</p>
                       </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Conduct" runat="server" Width="800px" Height="5400px" BorderColor="#639AFF" BorderWidth="1px" BorderStyle="Solid" >
                       <h3 style="width:500px; margin:10px;">Conduct &amp; Discipline</h3>
                       <div style="width:100%; height:100%; margin:13px;">
                       <h5>701 Discipline</h5>
                        <p>Good working relationships make demands on everyone, and employees have responsibilities to the Organization, themselves, and the people they work with.</p>

                        <p>Employees must at all times comply with Organization expectations for work, performance, and conduct. Failure to do so may result in any or all of the following actions, as the Organization deems appropriate; termination, suspension, demotion, written warning, reprimand, and counseling.</p>

                        <p>Management will decide in its judgment which of these actions would most effectively take care of the problem. The fact that the Organization has or has not utilized any of these actions does not set any precedent and should not be relied upon in future disciplinary situations by any employee.</p>

                        <h5>702 Drug and Alcohol Policy</h5>

                        <p><b>I. Purpose</b></p>

                        <p>Dana Kepner Co. Inc. is committed to a safe, healthy, and productive work environment for all employees free from the effects of substance abuse.  Abuse of alcohol, drugs, and controlled substances impairs employee judgment, resulting in increased safety risks, injuries, and faulty decision-making.</p>

                        <p><b>II. Scope</b></p>

                         <p>This policy applies to all employees.  All employees have been issued upon initiation of this policy or upon hire (whichever is later) a copy of the company policy, describing in detail what substances will be tested for and under what conditions employees will be tested.</p>

                        <p><b>III. Statement of Policy</b></p>

                         <p>To ensure a safe and productive work environment the company prohibits the use, sale, dispensation, manufacture, distribution or possession of alcohol, drugs, controlled substances, or drug paraphernalia on any company premises or worksites.  This prohibition includes company owned vehicles, or personal vehicles being used for company business or parked on company property.</p> 

                         <p>No employee shall report to work or be at work with alcohol or with any detectable amount of prohibited drugs in the employee’s system. </p> 

                         <p>Employee shall, when drugs are prescribed by a medical professional, inquire of the prescribing professional whether the drug prescribed has any side effects which may impair the employee’s ability to safely perform the employee’s job duties.  If the answer from the medical professional is yes, the employee shall obtain a statement from the medical professional indicating any work restrictions and their duration.  The employee shall present that statement to his or her supervisor prior to going on duty.</p>

                         <p>Illegal use of drugs off duty and off company premises or work sites is not acceptable.  It can affect on-the-job performance and the confidence of the public, and our customers in the company’s ability to meet its responsibilities.</p> 

                         <p>Any violation of this policy will result in disciplinary action up to and including termination.</p>


                        <p><b>IV. Employee and Applicant Drug and Alcohol Testing</b></p>

                         <p>To promote a safe and productive workplace, Dana Kepner Co. Inc. will conduct the following types of Drug/Alcohol test for all employees:</p>
                            <ul style="margin:5px 0px 10px 30px; width:500px;">
                                <li>A. Pre-employment</li>
                                <li>B. Reasonable Suspicion</li>
                                <li>C. Random</li>
                                <li>D. Post-accident</li>
                                <li>E.Return-to-Duty/Follow-up Testing</li> 
                            </ul>
                        <p><b>V.	Categories of Employee Substance Testing</b></p>

                        <p><b>A.	Pre-employment Testing:</b></p>

                        <p>1.	All persons seeking employment with Dana Kepner Co. Inc., (Applicants) shall undergo post-offer, pre-employment drug testing.  Applicants will be informed that, as a condition of employment, they must pass a drug-screening test.</p>

                        <p>2.	Applicants who test positive will be notified that they have not met the standards for employment and of their right to request a re-test of the urine sample that can be reviewed by a medical review officer.</p>

                        <p><b>B. Reasonable Suspicion Testing:</b></p>

                        <p>An employee will be asked to submit to tests for alcohol and/or illegal drugs when the employee is reasonably suspected of being impaired in the performance of his or her job.</p>

                        <p>1. Reasonable suspicion testing may result from one of the following examples, but is not limited to the following:</p>

                        <p>a. Specific, personal and particular observations concerning the appearance, behavior, speech or performance of the employee; or</p>
                        <p>b. Violation of a safety rule, or other unsafe work incident which, after further investigation of the employee’s behavior, leads the supervisor(s) /manager(s) to believe that the employee’s functioning is impaired; or</p>

                        <p>c. Other physical, circumstantial, or contemporaneous indicators of impairment.</p>

                        <p>2. When a supervisor/manager has reasonable suspicion to request testing, the supervisor/manager will arrange to transport the employee to the collection site, and will arrange for the employee’s transport home.</p>

                        <p>3. The employee will continue in a paid status pending the receipt of drug testing results by Dana Kepner Co. Inc.</p>

	                    <p><b>C. Random Testing:</b></p>

                        <p>Except on those work sites prohibited by state or local statute or ordinances, all employees will be subject to controlled substance and alcohol testing at any time on a random basis, as a term and condition of continuing employment.</p> 

                        <p>Random testing will be spread reasonably throughout the year and will be unannounced to ensure that no employee receives advanced knowledge of the time of testing.  All employees will have an equal chance of being selected each time a random selection is made.</p>

                        <p><b>D. Post Accident Testing:</b></p>

                        <p>An employee must submit to a drug and/or alcohol test after an on the job accident.</p>

                        <p>1. An accident for purposes of this policy is defined as an incident or occurrence in which:</p>

                        <p>(a) a person dies or requires medical treatment or</p>

                        <p>(b) property damage is estimated at greater than $50 or</p>

                        <p>(c) it involves use of a Company vehicle or</p>

                        <p>(d) it involves an employee in a personal vehicle accident who as a regular condition of his/her employment is required to drive a non-company vehicle.</p>

                        <p>2.	An employee who is involved in an accident must immediately report the accident to his or her supervisor/manger.  </p>

                        <p>3.	Whenever a supervisor/manager observes or is notified of an accident as defined in #1 above, the supervisor/manager will initiate drug and alcohol testing.  The supervisor/manager will order the employee to submit to a urine and/or breath test.  The supervisor/manager will arrange to transport the employee to the collection site and will arrange for the employee’s transport home.</p>

                        <p>4.	The employee will continue in a paid status pending the receipt of drug testing results by   Dana Kepner Co. Inc.</p>

                        <p><b>E. Return to Duty/Follow-up Testing</b></p> 

                        <p>If the company elects to allow an employee to return to work following a positive test result, it is mandatory that the employee must first pass a drug test and subsequently submit to a program of unannounced testing for a period of not more that twenty four (24) months from the date of return to duty.</p>


                        <p><b>VI. The kinds of substances tested for will include the following substances or their metabolites:</b></p> 
                        <p>These include drugs that are illegal according to federal law as well as locally.</p>
                        <ul style="margin:5px 0px 10px 30px; width:500px;">
                            <li>A.	Marijuana</li>
                            <li>B.	Cocaine</li>
                            <li>C.	Opiates</li>
                            <li>D.	Phencyclidine (PCP)</li>
                            <li>E.	Amphetamines</li>
                            <li>F.	MDMA, MDEA (Ecstasy)</li>
                            <li>G.	6-Acetylmorphine (6AM)</li>
                            <li>H.	Alcohol</li>
                        </ul>
                        <p><b>VII. Inspection and Searches</b></p>

                        <p>The company may conduct unannounced inspection for violations of this policy in the workplace, worksites, or company premises.  Employees are expected to cooperate in any inspection.</p>

                        <p><b>VIII.	Voluntary Treatment</b></p>

                        <p>The Company supports sound treatment efforts.  Whenever practical, the Company will assist employees in overcoming drug, alcohol, and other problems which may affect employee job performance, as long as this policy has not already been violated. </p>

                        <p>If an employee seeks treatment for drug or alcohol use, the employee may be eligible to go into a drug and/or alcohol treatment program at his or her own expense.</p>

                        <p>If the employee elects to enter an appropriate treatment program, the employee may be placed on unpaid status, but will be required to use any accrued vacation time and sick leave while participating in the evaluation and treatment program, so long as the employee is complying with the conditions of treatment.  Dana Kepner Co. Inc. will have the right to require verification from the health care provider for a release to work and/or verification of treatment as covered in the company’s medical leave policies.  More information regarding availability of treatment resources is available from the Human Resources Department.</p>

                        <p><b>IX.	Safeguards/Confidentiality</b></p>

                        <p>The drug screen analysis is accomplished through urinalysis testing.  Alcohol testing may be through breath testing.  Samples will be collected in a sanitary environment designed to maximize employee’s privacy while minimizing the possibility of sample tampering.  If there is a positive drug and/or alcohol result on the initial screening test, the laboratory or blood alcohol technician will automatically do a second test to confirm the results.  The second drug test will be performed using gas chromatography/mass spectrometry or other scientifically accepted method.  A positive breath alcohol test will be confirmed by a second breath test.</p>

                        <p>All drug tests are performed by a government-certified outside laboratory.  All government-certified outside laboratories strictly follow chain of custody guidelines to ensure the integrity of the testing process.  The company shall use a Medical Review Officer (MRO) who will receive the laboratory results of the testing procedure.  The MRO shall be a licensed physician and have knowledge of substance abuse disorders and the appropriate medical training to evaluate positive results, medical histories, and any other relevant biomedical information.  The MRO shall review all medical records made available by the tested individual when a confirmed positive test could have resulted from legally prescribed medication.</p>

                        <p>If the results of the initial test are negative, the testing laboratory will report the results to the MRO retained by the company.  The MRO or the testing laboratory reports the negative results to the company.   In this instance, no additional tests on the specimen will be done.</p>

                        <p>If the results of the initial test are positive, that is, if the results exceed the permitted levels for any of the five drugs tested or if the blood alcohol test comes back positive, a second confirmatory test shall be performed.  The employee is prohibited from performing any duties if the initial test is positive, and while the confirmatory testing is being performed.  Only specimens that are confirmed positive on the second (confirmatory) test are reported positive to the MRO for review and analysis.  The MRO will contact the employee personally, in the case of a positive test result.  The MRO has the responsibility of reporting to Dana Kepner Co. Inc. whether the test results are positive or negative.</p>

                        <p>An applicant or employee who does not pass a drug test may request that the original sample be analyzed again at the individual’s expense by a government certified laboratory.  All requests for an independent analysis must be made in writing within 72 hours of notification of a confirmed positive test result.  In the event the drug and/or alcohol test results are not achieved due to a diluted sample, the applicant will be required to re-test.</p>

                        <p>Each applicant or employee will have an opportunity to discuss the drug and/or alcohol test with a Medical Review Officer in a confidential setting.  Each applicant or employee upon his or her request may be provided with a written copy of the positive test result, upon written request.  Upon written request within seven days of taking the test an employee may access records relating to his drug and/or alcohol test.</p>

                        <p><b>X. Disciplinary Action</b></p>

                         <p>A.	Testing Positive</p>

                         <p>Employees who test positive for drugs or alcohol are in violation of this policy.  </p>

                         <p>B.	Refusal to comply</p>

                         <p>Employees who refuse required testing are in violation of this policy.</p>

                         <p>C.	Interference with testing</p>

                         <p>Employees who adulterate, tamper with or otherwise interfere with accurate testing are in violation of this policy.  </p>

                         <p>D.	Any employee, who has been observed using or possessing illegal drugs or alcohol during work time, including lunch breaks, or on Dana Kepner Co. Inc. premises is in violation of this policy.  </p>

                        <p><b>XI. At Will Employment</b></p>

                         <p>Nothing in this policy is to be construed to prohibit Dana Kepner Co. Inc. from maintaining a safe and secure work environment or to limit its right to impose disciplinary actions as it may deem appropriate for reasons of misconduct or poor performance, regardless of whether the misconduct or poor performance arises out of the use of alcohol or drugs.  Such disciplinary actions may include termination of employment.  Employment is at-will and subject to termination by   Dana Kepner Co. Inc. or the employee at any time, with or without notice and with or without cause.</p>

                        <h5>704 Attendance and Punctuality</h5>

                         <p>To maintain a safe and productive work environment, Company expects employees to be reliable and to be punctual in reporting for scheduled work. Absenteeism and tardiness place a burden on other employees and on Company. In the rare instances when employees cannot avoid being late to work or are unable to work as scheduled, they should notify their supervisor as soon as possible in advance of the anticipated tardiness or absence.</p>

                         <p>Poor attendance and excessive tardiness are disruptive. Either may lead to disciplinary action, up to and including termination of employment.</p>

                         <p>If an employee fails to report to work and notify management for a period of 48 hours, they will be terminated. </p>


                        <h5>705 Personal Appearance</h5>

                         <p>Dress, grooming, and personal cleanliness standards contribute to the morale of all employees and affect the business image Company presents to customers and visitors.</p>

                         <p>During business hours, employees are expected to present a clean and neat appearance and to dress according to the requirements of their positions. There shall be no visible facial or body piercing. Employees who appear for work inappropriately dressed will be sent home and directed to return to work in proper attire. Under such circumstances, employees will not be compensated for the time away from work.</p>

                         <p>Consult your supervisor or department head if you have questions as to what constitutes appropriate attire.</p>


                        <h5>707 Resignation</h5>

                         <p>Resignation is a voluntary act initiated by the employee to terminate employment with Company. Although advance notice is not required, Company appreciates at least 2 weeks' written resignation notice from all employees to be provided to the Human Resources Manager or the local manager.</p>

                         <p>Prior to an employee's departure, an exit interview may be scheduled to discuss the reasons for resignation.</p>


                        <h5>708 Security Inspections</h5>

                         <p>The company reserves the right to conduct inspections. Cooperation in the conduct of inspections is required as a condition of employment.</p>

                         <p>Employees on the Company’s premises are subject to questions and search at the Company’s discretion. The Company reserves the right to inspect personal items, such as lunch pails, toolboxes, thermoses, purses, etc., carried by individual employees. If you have personal items that you would not like subjected to such inspections, these items should not be brought onto Company premises. A search can also include Company property such as, Company vehicles, lockers, desks, filing cabinets, computer files, E-mail, and Voice-mail.</p>

                         <p>A Company-initiated search does not necessarily imply an accusation of theft or that an employee has broken a rule. Employees refusing to cooperate with or submit to search will be subject to termination.</p>


                        <h5>709 Solicitation</h5>

                         <p>In an effort to ensure a productive and harmonious work environment, persons not employed by Company may not solicit or distribute literature in the workplace at any time for any purpose.</p>

                         <p>Company recognizes that employees may have interests in events and organizations outside the workplace. However, employees may not solicit or distribute literature concerning these activities during working time. (Working time does not include lunch periods, work breaks, or any other periods in which employees are not on duty.)</p>

                         <p>In addition, the posting of written solicitations on company bulletin boards is prohibited. Bulletin boards are reserved for official organization communications on such items as:</p>
                            <ul style="margin:5px 0px 10px 30px; width:500px;">
                 
                                <li>- Equal Employment Opportunity statement</li>
                                <li>- Internal memoranda</li>
                                <li>- Job openings</li>
                                <li>- Organization announcements</li>
                                <li>- Workers' compensation insurance information</li> 
                                <li>- Other required government matters</li>
                            </ul>

                        <h5>710 Problem Resolution</h5>

                         <p>If employees disagree with established rules of conduct, policies, or practices, they can express their concern through the problem resolution procedure. No employee will be penalized, formally or informally, for voicing a complaint with Company in a reasonable, business-like manner, or for using the problem resolution procedure.</p>

                         <p>If a situation occurs when employees believe that a condition of employment or a decision affecting them is unjust or inequitable, they are encouraged to make use of the following steps. The employee may discontinue the procedure at any step.</p>

                         <p>1. Employee presents problem to immediate supervisor after incident occurs, typically within 3 – 5 days. If supervisor is unavailable or employee believes it would be inappropriate to contact that person, employee may present problem to Department Manager or any other member of management.</p>

                         <p>2. Supervisor responds to problem during discussion or after consulting with appropriate management, when necessary. Supervisor documents discussion.</p>

                         <p>3. Employee presents problem to Human Resources Manager if problem is unresolved.</p>

                         <p>4. Human Resources Manager counsels and advises employee, assists in putting problem in writing, visits with employee's manager( s), if necessary, and directs employee to President for review of problem.</p>

                         <p>5. Employee presents problem to President in writing.</p>

                         <p>6. President reviews and considers problem. President informs employee of decision and forwards copy of written response to Human Resources Manager for employee's file. The President has full authority to make any adjustment deemed appropriate to resolve the problem.</p>

                        <p>Not every problem can be resolved to everyone's total satisfaction, but only through understanding and discussion of mutual problems can employees and management develop confidence in each other. This confidence is important to the operation of an efficient and harmonious work environment, and helps to ensure everyone's job security.</p>

                       </div>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Misc" runat="server" Width="800px" Height="1500px" BorderColor="#639AFF" BorderWidth="1px" BorderStyle="Solid" >
                       <h3 style="width:500px; margin:10px;">Miscellaneous</h3>
                       <div style="width:100%; height:100%; margin:13px;">
                       <h5>801 Company Property</h5>
                        <p>You are expected to take good care of any company equipment you use. You are also required to use company supplies prudently and economically. In case of obvious misuse, you may be asked to share in the replacement cost of any item you damage or use excessively. Imprudent use of company equipment will not be tolerated.</p>


                       </div>
                    </telerik:RadPageView>

                </telerik:RadMultiPage>
            </div>
        
  
          </telerik:RadPageView>--%>
  
  
  
  
        </telerik:RadMultiPage>  
  </div>  
   
</div>
    



</asp:Content>

