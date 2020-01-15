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

            <%-- new links 2020-01-14 from Tracy Beal --%>
            <telerik:AjaxSetting AjaxControlID="CHIPNotice">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="CHIPNotice" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="HealthPlanNotice">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="HealthPlanNotice" />
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
            <%-- FSA 2018 amendment removed 2019-11-27 by SRS
            <telerik:AjaxSetting AjaxControlID="lnkFSA2018">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkFSA2018" />
                </UpdatedControls>
            </telerik:AjaxSetting>--%>

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
            <telerik:RadTab runat="server" Text="Benefits" PageViewID="Summary" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="401(k) Retirement Plan" PageViewID="Financial" ></telerik:RadTab> <%-- Renamed from 'Financial Benefits' 2020-01-14 per Tracy Beal--%>
            <%-- Deleted tab 'Health' 2020-01-14 <telerik:RadTab runat="server" Text="Health" PageViewID="Health" ></telerik:RadTab> --%>
            <telerik:RadTab runat="server" Text="Payroll" PageViewID="Payroll" ></telerik:RadTab>

            <%-- Deleted tab 'Program Audits' 2020-01-14 per Tracy Beal
            <telerik:RadTab runat="server" Text="Program Audits" PageViewID="Audits" ></telerik:RadTab>
            --%>

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

                    <%-- Next two divs are new --%>
                    <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
                          <telerik:RadButton ID="CHIPNotice" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="CHIP Notice" NavigateUrl="~/HR/2020/CHIP%20Notice%202020%20from%20Locton.pdf" Target="_blank"></telerik:RadButton>
                    </div>

                    <div style="margin:4px 4px 4px 4px;width:240px; float:left; " >
                          <telerik:RadButton ID="HealthPlanNotice" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Health Plan Notice Matrix" NavigateUrl="~/HR/2020/Health%20Plan%20Notice%20Matrix%20-%2001022018%20from%20Locton.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    
                </div>  
        
  
          </telerik:RadPageView>
          <telerik:RadPageView ID="Summary" runat="server" > <%-- Benefits Summary --%>
                <div id="div8" style="margin:15px 5px 5px 15px;float:left;width:1300px;">
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " > <%-- Moved here (Benefits tab) from Health tab by SRS 2019-11-27 BUTTON TEXT: SUMMARY--%>
                        <telerik:RadButton ID="lnkBenefitsGuide" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Summary" NavigateUrl="~/HR/2020/2020%20Dana%20Kepner%20OE%20Presentation%20-%20FINAL2.pdf" Target="_blank"></telerik:RadButton>
                    </div> 

                    <%-- Deleted this duplicate one - there is no link for it at the top of the page
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="lnkBenefitsGuideB" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Summary" NavigateUrl="~/HR/2018/2018_OpenEnrollment_BenefitsGuide.pdf" Target="_blank"></telerik:RadButton>
                    </div>--%>
                <%-- next two divs moved here from health tab. --%>
                <div id="div10" style="margin:15px 5px 55px 15px;float:left;width:1000px;">
                     <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkAllegiance" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Allegiance" NavigateUrl="http://www.askallegiance.com/" Target="_blank"></telerik:RadButton>
                     </div>
                     <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkDeltaDental2" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Delta Dental" NavigateUrl="http://www.deltadental.com/" Target="_blank"></telerik:RadButton>
                     </div>
                     <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                          <telerik:RadButton ID="lnkHIPPA" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="HIPPA" NavigateUrl="~/Information/Form_HIPPA_Privacy.pdf" Target="_blank"></telerik:RadButton>
                     </div>
                </div> 
                <div id="div6" style="margin:15px 5px 55px 15px;float:left;width:1000px;">
                    <div style="margin:4px 4px 4px 4px;width:320px; float:left; " >
                        <telerik:RadButton ID="lnkPreventiveDrug" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Welldyne Prescriptions/Preventive" NavigateUrl="~/HR/2020/Welldyne%20-FORMULARY-(2020).pdf" Target="_blank"></telerik:RadButton>
                    </div>
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
                          <telerik:RadButton ID="lnkSBCOAP" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Summary of Benefits Coverage - Open Access Plus Plan" NavigateUrl="~/HR/2020/Allegiance%20PPO%20SBC%202020.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="lnkSBCHDHP" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Summary of Benefits Coverage - High Deductible Plan" NavigateUrl="~/HR/2020/Allegiance%20HDHP%20SBC%202020.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                          <telerik:RadButton ID="lnkKP" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Summary of Benefits Coverage - Kaiser" NavigateUrl="~/HR/2020/Kaiser%20SBC%202020.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                    
                </div>
                 <div id="div9" style="margin:15px 5px 5px 15px;float:left;width:1300px;">
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                        <telerik:RadButton ID="lnkUnum" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="UNUM Accident and Critical Care" NavigateUrl="~/HR/2018/2018_Unum.pdf" Target="_blank"></telerik:RadButton>
                    </div>
                 </div>

                <%--<div id="div11" style="margin:75px 5px 5px 15px;float:left;width:1300px;">
                     Removed per Tracy 2019-11-27 by SRS
                    <div style="margin:4px 4px 4px 4px;width:340px; float:left; " >
                        <telerik:RadButton ID="lnkFSA2018" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="FSA 2018 Amendment" NavigateUrl="FSA_2018Amendment.pdf" Target="_blank"></telerik:RadButton>
                    </div> 
                </div>--%>

          </telerik:RadPageView>
          <telerik:RadPageView ID="Financial" runat="server">  <%-- '401(k) Retirement Plan' tab content --%>
                <div id="div3" style="margin:15px 5px 5px 15px;float:left;width:1500px;">
                      <div style="margin:4px 4px 4px 4px;width:1500px; float:left; " >
                          <telerik:RadButton ID="lnkWellsFargoRetirement" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Wells-Fargo 401(k)" NavigateUrl="https://www.wellsfargo.com/retirementplan/" Target="_blank"></telerik:RadButton>
                      </div>  
                      <div style="margin:4px 4px 4px 4px;width:1100px; float:left; " >
                            <p style="width:900px; font-size:medium;">To access the Wells Fargo Retirement Plan web site, you need a username and password. Your initial username is your Social Security number. 
                                Your initial password is your six-digit date of birth (mmddyy). You will be asked to change your username and password at your first web-site visit.
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
                        <div style="width:340px; float:left;"><%-- 2020-01-14 SRS removed year from button text --%>
                            <telerik:RadButton ID="lnk401WFPresentation" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="300px" Text="Wells Fargo Presentation" NavigateUrl="~/HR/2020/2019%20Wells%20Fargo%20401K%20FINAL.pdf" Target="_blank"></telerik:RadButton>
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
                
                <%-- 2019-11-27: links moved to benefits tab, another deleted --%>

          </telerik:RadPageView>
          <telerik:RadPageView ID="Payroll" runat="server">  
                <div id="div4" style="margin:15px 5px 5px 15px;float:left;width:1000px;">
                    <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                        <telerik:RadButton ID="lnkPayCom" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="PayCom" NavigateUrl="http://www.paycomonline.com" Target="_blank"></telerik:RadButton>
                    </div> 
                    
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
  
  <%-- Deleted 2020-01-14 per Tracy Beal
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
  --%>
        </telerik:RadMultiPage>  
  </div>  
   
</div>
    



</asp:Content>

