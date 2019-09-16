<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Accounting.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Accounting_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

    <div style="margin:10px;float:left; width:1000px; ">   
        <h1>Accounting</h1>
   
       <div id="divTabStrip1" style="margin:0px 0px 0px 0px;float:left;width:1000px;">   
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server"  MultiPageID="RadMultiPage1" SelectedIndex="1"  Width="1000px" Skin="MetroTouch">
            <Tabs>
                <telerik:RadTab runat="server" Text="Staff" PageViewID="Staff" Selected="True"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Payroll" PageViewID="Payroll"  ></telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
      </div>
      <div style="margin:20px 0px 0px 0px;float:left; width:1000px; ">

            <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="700px" Width="1000px" SelectedIndex="1">
    
  
              <telerik:RadPageView ID="Staff" runat="server" Selected="true">
                    <div id="div2" style="margin:15px 5px 5px 15px;float:left;width:975px;">
                            <%--<p><b style="font-size:medium; color:#4c68a2;">Bill Levy - Controller</b></p> <p>303.446.3977&nbsp;&nbsp;F: 303.446.3905&nbsp;&nbsp;M:303.726.3320 | Commissions, Financials, Insurance</p><br />--%>
                            <p><b style="font-size:medium; color:#4c68a2;">Mike Murray - Controller</b></p> <p>303.446.3975&nbsp;&nbsp;F: 303.446.3911 <%--| Accounting Supervision, Financials, Month End--%> </p><br />
                            <p><b style="font-size:medium; color:#4c68a2;">Colin Hubert - Senior Accountant</b></p><p>303.446.3985&nbsp;&nbsp;F: 303.446.3911 | Property Tax, Leases, Electronic Funds Transfer, Fixed Assets</p><br />
                            <p><b style="font-size:medium; color:#4c68a2;">Chia Vang - Staff Accountant</b></p><p>303.446.3985&nbsp;&nbsp;F: 303.446.3907 | General Ledger, Posts checks, cash receipts, A/R Adjustments, Refunds, Credit Dept Support, Sales Tax, Gross Profit Reporting, Expense Reports</p><br />
                            
                            <p><b style="font-size:medium; color:#4c68a2;">Bobbi Wieczorek - Invoicing Specialist</b></p><p>303.446.3952&nbsp;&nbsp;F: 303.446.3926 | Invoicing, Sales Tax</p><br />
                
                            <p><b style="font-size:medium; color:#4c68a2;">Jean Lev -  Overhead A/P &amp; Payroll</b></p> <p>303.446.3949&nbsp;&nbsp;F: 303.446.39 | Overhead Payables, Payroll</p><br />
                            <p><b style="font-size:medium; color:#4c68a2;">Michael Eledge  -  A/P Trade &amp; Accounting Generalist</b></p><p> 303.446.3955&nbsp;&nbsp;F: 303.446.3917 | Trade Payables, New Vendor Setup</p><br />
                            <p><b style="font-size:medium; color:#4c68a2;">Angela Coxson - A/R Specialist</b></p><p>303.446.3982&nbsp;&nbsp;</p><br />
                    </div>  
        
  
              </telerik:RadPageView>
              <telerik:RadPageView ID="Payroll" runat="server">  
                    <div id="div4" style="margin:15px 0px 5px 20px;float:left;width:1000px;">
            
                        <div style="margin:4px 4px 4px 4px; width:240px; float:left;" >
                            <telerik:RadButton ID="lnkPayCom" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="PayCom" NavigateUrl="http://www.paycomonline.com" Target="_blank"></telerik:RadButton>
                        </div> 

                        <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                            <telerik:RadButton ID="RadButton1" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Direct Deposit" NavigateUrl="~/Information/Form_DirectDeposit.pdf" Target="_blank"></telerik:RadButton>
                        </div>
                        <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                            <telerik:RadButton ID="RadButton2" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="Check Request" NavigateUrl="~/Information/Form_CheckRequest.pdf" Target="_blank"></telerik:RadButton>
                        </div>
                        <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                            <telerik:RadButton ID="lnkW42" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="200px" Text="W4 - IRS Withholdings" NavigateUrl="~/Information/Form_W4.pdf" Target="_blank"></telerik:RadButton>
                        </div>
                    </div>
                    <div id="div1" style="margin:15px 0px 5px 20px;float:left;width:1000px;">
                        <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                              <telerik:RadButton ID="lnkDirectDeposit" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Text="Direct Deposit" NavigateUrl="~/Information/Form_DirectDeposit.pdf" Target="_blank"></telerik:RadButton>
                        </div>
                        <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                              <telerik:RadButton ID="lnkCheckRequest" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Text="Check Request" NavigateUrl="~/Information/Form_CheckRequest.pdf" Target="_blank"></telerik:RadButton>
                        </div>
                        <div style="margin:4px 4px 4px 4px;width:240px; float:left;" >
                              <telerik:RadButton ID="lnkW4" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch" Text="W4 - IRS Withholdings" NavigateUrl="~/Information/Form_W4.pdf" Target="_blank"></telerik:RadButton>
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
  
  
  
  
            </telerik:RadMultiPage>  
   
      </div>
   
   
</div>
    





</asp:Content>

