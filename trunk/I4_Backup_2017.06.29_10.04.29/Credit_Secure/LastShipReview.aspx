<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Credit_Secure.master" AutoEventWireup="false" CodeFile="LastShipReview.aspx.vb" Inherits="Credit_Secure_LastShipReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="200" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<asp:SqlDataSource ID="SqlDS_CreditManagerListing" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="SELECT [CreditMngr] FROM [Credit_Mngrs] ORDER BY [CreditMngr]">
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDS_uspCreditJobsLastShipReview" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="uspCreditJobsLastShipReview" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="fltrCreditMngr" DefaultValue="%" Name="CreditMngr" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="fltrClockDaysStart" DefaultValue="50" Name="ClockDaysStart" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="fltrClockDaysEnd" DefaultValue="90" Name="ClockDaysEnd" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="fltrP3P4P5Balance" DefaultValue="0" Name="P3P4P5" PropertyName="SelectedValue" Type="Double" />
                <asp:ControlParameter ControlID="fltrP4P5" DefaultValue="0" Name="P4P5" PropertyName="SelectedValue" Type="Double" />
                <asp:ControlParameter ControlID="fltrCustName" DefaultValue="%" Name="CustName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="fltrSalesName" DefaultValue="%" Name="SalesName" PropertyName="Text" Type="String" />
            </SelectParameters>
</asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDS_uspCreditJobStatsGet" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="uspCreditJobStatsGet" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="grdJobsListing"  Name="CustID" PropertyName="SelectedValues['CustID']" Type="String" />
                    <asp:ControlParameter ControlID="grdJobsListing"  Name="ShipToID" PropertyName="SelectedValues['ShipToID']" Type="String" />
                </SelectParameters>
</asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDS_uspOrdersHeaderGetByShipTo" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspOrdersHeaderGetByShipTo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="grdJobsListing"  Name="CustID" PropertyName="SelectedValues['CustID']" Type="String" />
                    <asp:ControlParameter ControlID="grdJobsListing"  Name="ShipToID" PropertyName="SelectedValues['ShipToID']" Type="String" />
                </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDS_uspCustomerSXeNotesGet" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspCustomerSXeNotesGet" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="grdJobsListing"  Name="CustID" PropertyName="SelectedValues['CustID']" Type="String" />
                </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDS_uspCreditJobListingGet" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspCreditJobListingGet" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="grdJobsListing"  Name="CustID" PropertyName="SelectedValues['CustID']" Type="String" />
                </SelectParameters>
</asp:SqlDataSource>



<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>

           <%-- <telerik:AjaxSetting AjaxControlID="btnFilter">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdJobsListing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                  
                </UpdatedControls>
            </telerik:AjaxSetting>--%>
            <telerik:AjaxSetting AjaxControlID="fltrCreditMngr">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdJobsListing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrClockDaysStart">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdJobsListing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrClockDaysEnd">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdJobsListing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrP3P4P5Balance">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdJobsListing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrP4P5">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdJobsListing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrCustName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdJobsListing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrSalesName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdJobsListing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdJobsListing">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdJobStats"   />
                    <telerik:AjaxUpdatedControl ControlID="pnlJob" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdJobOrders" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdOtherJobs" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdSXeNotes" LoadingPanelID="RadAjaxLoadingPanel1"  />

                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<h1>Credit | Jobs Last Ship Review</h1>

<div style="width:1800px; height:1000px;">
    <div style="margin:10px 10px 10px 10px; width:1750px; height:30px;">
        <div style="width:100%; float:left;">
            <div style="width:270px; float:left;"> 
                <telerik:RadComboBox ID="fltrCreditMngr" Runat="server" DataSourceID="SqlDS_CreditManagerListing" AutoPostBack="true"  LabelCssClass="myLabelCss"
                    DataTextField="CreditMngr" DataValueField="CreditMngr" AppendDataBoundItems="true" Width="130px" Label="Credit Manager: ">
                    <Items>
                        <telerik:RadComboBoxItem Text="All Managers" Value="%" />
                    </Items>
                </telerik:RadComboBox>
                
            </div>
            <div style="width:180px; float:left;"> 
                <telerik:RadNumericTextBox ID="fltrClockDaysStart" Runat="server" 
                        AutoPostBack="True" Culture="en-US" DbValueFactor="1" LabelWidth="110px" Label="Clock Days Min: " LabelCssClass="myLabelCss"
                        MaxValue="100" MinValue="0" Value="50" Width="160px" ShowSpinButtons="true" ButtonsPosition="Right" >
                    <IncrementSettings InterceptArrowKeys="true" InterceptMouseWheel="true" Step="1" />
                    <NumberFormat DecimalDigits="0" />
                </telerik:RadNumericTextBox>
            </div>
            <div style="width:180px; float:left;"> 
                <telerik:RadNumericTextBox ID="fltrClockDaysEnd" Runat="server"
                            AutoPostBack="True" DbValueFactor="1" LabelWidth="110px" Label="Clock Days Max: " LabelCssClass="myLabelCss"
                            MinValue="0" MaxValue="1000" Value="90" Width="160px" ShowSpinButtons="true" ButtonsPosition="Right" >
                     <IncrementSettings InterceptArrowKeys="true" InterceptMouseWheel="true" Step="1" />
                     <NumberFormat DecimalDigits="0" />
                </telerik:RadNumericTextBox>
            </div>
            <div style="width:200px; float:left;"> 
                <telerik:RadComboBox ID="fltrP3P4P5Balance" runat="server" Width="100px" Label="Periods 3 -5:" AutoPostBack="true" LabelCssClass="myLabelCss">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="Include $0" Value="0" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $0" Value="0.01" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $50" Value="50" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $250" Value="250" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $500" Value="500" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $1,000" Value="1000" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $5,000" Value="5000" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $7,500" Value="7500" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $10,000" Value="10000" />
                    </Items>
                </telerik:RadComboBox>
            </div>
            <div style="width:200px; float:left;"> 
                <telerik:RadComboBox ID="fltrP4P5" runat="server" Width="100px" Label="Periods 4 -5:" AutoPostBack="true" LabelCssClass="myLabelCss">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="Include $0" Value="0" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $0" Value="0.01" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $50" Value="50" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $250" Value="250" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $500" Value="500" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $1,000" Value="1000" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $5,000" Value="5000" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $7,500" Value="7500" />
                        <telerik:RadComboBoxItem runat="server" Text="&gt; $10,000" Value="10000" />
                    </Items>
                </telerik:RadComboBox>
            </div>
<%--
        </div>
        <div style="width:100%; float:left; margin-top:10px;">--%>
            <div style="width:160px; float:left;"> 
                <telerik:RadTextBox ID="fltrCustName" runat="server" AutoPostBack="true" Width="140px" LabelWidth="75px" Label="Customer: " LabelCssClass="myLabelCss">
                </telerik:RadTextBox>
            </div>
            <div style="width:160px; float:left;">
                <telerik:RadTextBox ID="fltrSalesName" runat="server" AutoPostBack="true"  Width="140px" LabelWidth="75px" Label="Sales Rep: " LabelCssClass="myLabelCss">
                </telerik:RadTextBox> 
            </div>
            <%--<div style="width:300px; float:left;">
                <telerik:RadButton ID="btnFilter" runat="server" Text="Filter Jobs" UseSubmitBehavior="false" Skin="BlackMetroTouch" Width="200px"></telerik:RadButton>
            </div>--%>

        </div>
    </div>
    <div style="width:100%; height:420px; margin-left:10px;">
    
         <telerik:RadGrid ID="grdJobsListing" runat="server" AllowPaging="True" AllowSorting="True" CellSpacing="0" 
              onselectindexchanged = "grdJobsListing_SelectedIndexChanged"
                        DataSourceID="SqlDS_uspCreditJobsLastShipReview" GridLines="None" PageSize="50" Width="1500px" Height="400px">
            
            <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="True" AllowKeyboardNavigation="true" >
                <Selecting AllowRowSelect="True" />
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                <Resizing AllowColumnResize="true" AllowRowResize="True" />
                        
            </ClientSettings>

            <MasterTableView AutoGenerateColumns="False" DataKeyNames="CustID, ShipToID" DataSourceID="SqlDS_uspCreditJobsLastShipReview">
            
                <Columns>
                    <telerik:GridBoundColumn DataField="CreditMngr" HeaderText="Manager" SortExpression="CreditMngr" UniqueName="CreditMngr">
                        <HeaderStyle HorizontalAlign="Left" Width="75px" />
                        <ItemStyle HorizontalAlign="Left" Width="75px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" SortExpression="SalesName" UniqueName="SalesName">
                        <HeaderStyle HorizontalAlign="Left" Width="125px" />
                        <ItemStyle HorizontalAlign="Left" Width="125px" />
                    </telerik:GridBoundColumn>
                    <%--<telerik:GridBoundColumn DataField="branchstate" HeaderText="branchstate" SortExpression="branchstate" UniqueName="branchstate">
                    </telerik:GridBoundColumn>--%>
                    <telerik:GridBoundColumn DataField="comboname" HeaderText="Branch" SortExpression="comboname" UniqueName="comboname">
                        <HeaderStyle HorizontalAlign="Left" Width="105px" />
                        <ItemStyle HorizontalAlign="Left" Width="105px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CustID" HeaderText="CustID" ReadOnly="True" SortExpression="CustID" UniqueName="CustID">
                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" Width="80px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                        <HeaderStyle HorizontalAlign="Left" Width="195px" />
                        <ItemStyle HorizontalAlign="Left" Width="195px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipTo" SortExpression="ShipToID" UniqueName="ShipToID">
                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                        <ItemStyle HorizontalAlign="Left" Width="60px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="JobBalance" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Job Bal" 
                        ReadOnly="True" SortExpression="JobBalance" UniqueName="JobBalance">
                       <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        <ItemStyle HorizontalAlign="Right" Width="80px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="P3P4P5" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="P3 - P5" ReadOnly="True" SortExpression="P3P4P5" UniqueName="P3P4P5">
                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        <ItemStyle HorizontalAlign="Right" Width="80px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="P4P5" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="P4 + P5" ReadOnly="True" SortExpression="P4P5" UniqueName="P4P5">
                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        <ItemStyle HorizontalAlign="Right" Width="80px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="LastShip" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Last Ship" ReadOnly="True" SortExpression="LastShip" UniqueName="LastShip">
                        <HeaderStyle HorizontalAlign="Left" Width="70px" />
                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ClockDays" DataFormatString="{0:n0}" DataType="System.Int32" HeaderText="Clock Days" ReadOnly="True" SortExpression="ClockDays" UniqueName="ClockDays">
                        <HeaderStyle HorizontalAlign="Left" Width="70px" />
                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                    </telerik:GridBoundColumn>
                </Columns>

           
            <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
            </MasterTableView>
        </telerik:RadGrid>
        
  
    </div>
    <div style="width:100%; height:450px; margin-left:10px; margin:5px 0px 5px 10px;;">
       
        <div style="width:100%; height:50px; float:left; margin-bottom:10px;"> 
            <telerik:RadGrid ID="grdJobStats" runat="server" Width="850px" DataSourceID="SqlDS_uspCreditJobStatsGet" CellSpacing="0"  GridLines="None" ResolvedRenderMode="Classic">

                    <MasterTableView DataSourceID="SqlDS_uspCreditJobStatsGet" AutoGenerateColumns="False"  >

                        <Columns>
                            <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                <HeaderStyle Width="300px" HorizontalAlign="Left" />
                                <ItemStyle Width="300px" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipTo" SortExpression="ShipToID" UniqueName="ShipToID">
                                <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                <ItemStyle Width="70px" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="FirstShipDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="First Ship" 
                                SortExpression="FirstShipDate" UniqueName="FirstShipDate">
                                <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                <ItemStyle Width="70px" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="LastShipDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Last Ship" 
                                SortExpression="LastShipDate" UniqueName="LastShipDate">
                                <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                <ItemStyle Width="70px" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="LastEnterDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Last Enter" SortExpression="LastEnterDate" UniqueName="LastEnterDate">
                                <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                <ItemStyle Width="70px" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="LastPaidDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Last Paid" SortExpression="LastPaidDate" UniqueName="LastPaidDate">
                                <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                <ItemStyle Width="70px" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="DaysSinceLastShip" DataFormatString="{0:n0}" DataType="System.Int32" HeaderText="Days Since Last Ship" SortExpression="DaysSinceLastShip" 
                                UniqueName="DaysSinceLastShip">
                                <HeaderStyle Width="150px" HorizontalAlign="Left" />
                                <ItemStyle Width="150px" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>
                        </Columns>

                    </MasterTableView>
            </telerik:RadGrid>

        
        </div>
        <div style="width:100%; float:left; margin-top:10px;"> 
            <asp:Panel ID="pnlJob" runat="server" Width="1600px" Height="300px"> 
            
            <telerik:RadTabStrip ID="tabstripJobInfo" runat="server" MultiPageID="RadMultiPage1" Width="1300px">
                <Tabs>
                    <telerik:RadTab runat="server" Text="Job Information" PageViewID="JobInfo" Selected="true">
                    </telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Orders" PageViewID="Orders">
                    </telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Other Jobs" PageViewID="OtherJobs">
                    </telerik:RadTab>
                    <telerik:RadTab runat="server" Text="SXe Customer Notes" PageViewID="SXeNotes">
                    </telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Job Notes" PageViewID="JobNotes">
                    </telerik:RadTab>
                </Tabs>
            </telerik:RadTabStrip>
            <telerik:RadMultiPage ID="RadMultiPage1" runat="server">
                <telerik:RadPageView ID="JobInfo" runat="server" Selected="true">
                   <div style="width:350px; margin:10px 0px 0px 10px; float:left;">
                        <div style="margin-top:3px;"><asp:Label ID="lblJobName" runat="server" Font-Size="Medium" ></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblAddress" runat="server" Font-Size="Small" ></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblCity" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblPhoneFax" runat="server" Font-Size="Small"></asp:Label></div>

                        <div style="margin-top:15px;"><asp:Label ID="lblOwner_Name" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblOwner_Address" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblOwner_City" runat="server" Font-Size="Small"></asp:Label></div>
                        
                   
                   </div> 
                   <div style="width:200px; margin:10px 0px 0px 10px; float:left;">
                        <div style="margin-top:3px;"><asp:Label ID="lblCreditLimit" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblOrderBalance" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:10px;"><asp:Label ID="lblHoldPeriodCode" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="LblPeriod1" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblPeriod2" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblPeriod3" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblPeriod4" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblPeriod5" runat="server" Font-Size="Small"></asp:Label></div>
                        
                       

                   </div> 
                   <div style="width:250px; margin:10px 0px 0px 10px; float:left;">
                        <div style="margin-top:3px;"><asp:Label ID="lblBondNo" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblLienPreAmount" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblLienPreDate" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblLienPreOper" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblLienPreWith" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblPreLienConfirmation" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblPreLienID" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblAPN" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblLienAmount" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblLienFileDate" runat="server" Font-Size="Small"></asp:Label></div>
                       

                   </div> 
                   <div style="width:350px; margin:10px 0px 0px 10px; float:left;">
                       

                        <div style="margin-top:3px;"><asp:Label ID="lblGeneral_Name" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblGeneral_Address" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblGeneral_City" runat="server" Font-Size="Small"></asp:Label></div>
                        
                        <div style="margin-top:15px;"><asp:Label ID="lblLender_Name" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblLender_Address" runat="server" Font-Size="Small"></asp:Label></div>
                        <div style="margin-top:3px;"><asp:Label ID="lblLender_City" runat="server" Font-Size="Small"></asp:Label></div>
                       

                   </div> 
                    
                
                </telerik:RadPageView>
                <telerik:RadPageView ID="Orders" runat="server">
                   <div style="margin:10px; width:100%; height:200px;">
                       <telerik:RadGrid ID="grdJobOrders" runat="server" Width="1300px" Height="200px" AllowPaging="True" AllowSorting="True" CellSpacing="0" 
                           DataSourceID="SqlDS_uspOrdersHeaderGetByShipTo" GridLines="None">
                           
                           <ClientSettings>
                               <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                           </ClientSettings>
                           <MasterTableView AutoGenerateColumns="False" DataKeyNames="OrderNumber" DataSourceID="SqlDS_uspOrdersHeaderGetByShipTo" PageSize="20">
                               
                               
                               <Columns>
                                   <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="OrderNumber" ReadOnly="True" SortExpression="OrderNumber" UniqueName="OrderNumber">
                                        <HeaderStyle  HorizontalAlign="Left" Width="60px" />
                                        <ItemStyle HorizontalAlign="Left" Width="60px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                                        <HeaderStyle  HorizontalAlign="Left" Width="40px" />
                                        <ItemStyle HorizontalAlign="Left" Width="40px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="InvoiceDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Invoice" SortExpression="InvoiceDate" UniqueName="InvoiceDate">
                                       <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="TotalOrderAmount" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Total Order" SortExpression="TotalOrderAmount" 
                                       UniqueName="TotalOrderAmount">
                                       <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="TotalInvoiceAmount" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Total Invoice" SortExpression="TotalInvoiceAmount" 
                                       UniqueName="TotalInvoiceAmount">
                                        <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status">
                                        <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Left" Width="70px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="CustPO" HeaderText="Cust PO" SortExpression="CustPO" UniqueName="CustPO">
                                        <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Left" Width="70px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="PlacedBy" HeaderText="Placed By" SortExpression="PlacedBy" UniqueName="PlacedBy">
                                        <HeaderStyle  HorizontalAlign="Left" Width="50px" />
                                        <ItemStyle HorizontalAlign="Left" Width="50px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="TakenBy" HeaderText="Taken By" SortExpression="TakenBy" UniqueName="TakenBy">
                                        <HeaderStyle  HorizontalAlign="Left" Width="50px" />
                                        <ItemStyle HorizontalAlign="Left" Width="50px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Enter" SortExpression="EnterDate" UniqueName="EnterDate">
                                        <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="ShipDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Ship" SortExpression="ShipDate" UniqueName="ShipDate">
                                        <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="BillDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Bill" SortExpression="BillDate" UniqueName="BillDate">
                                        <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="PaidDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Paid" SortExpression="PaidDate" UniqueName="PaidDate">
                                        <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                                   </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="CancelDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Cancelled" SortExpression="CancelDate" UniqueName="CancelDate">
                                        <HeaderStyle  HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" />
                                   </telerik:GridBoundColumn>
                               </Columns>
                             
                               <PagerStyle PageSizeControlType="RadComboBox" />
                           </MasterTableView>
                           <PagerStyle PageSizeControlType="RadComboBox" />
                          
                       </telerik:RadGrid>
                       
                   </div>
                </telerik:RadPageView>
                <telerik:RadPageView ID="OtherJobs" runat="server">
                    <telerik:RadGrid ID="grdOtherJobs" runat="server" Width="1300px" Height="200px" AllowPaging="True" PageSize="15" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_uspCreditJobListingGet" GridLines="None">
                        
                        <ClientSettings>
                            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                        </ClientSettings>
                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_uspCreditJobListingGet" Width="1700px">
                            
                            <Columns>
                                <telerik:GridBoundColumn DataField="CustID" HeaderText="CustID" SortExpression="CustID" UniqueName="CustID" Visible="false">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="HOLD" HeaderText="HOLD" ReadOnly="True" SortExpression="HOLD" UniqueName="HOLD">
                                    <HeaderStyle Width="50px" HorizontalAlign="Left" />
                                    <ItemStyle Width="50px" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="HoldPeriodCode" DataType="System.Int32" HeaderText="Hold CD" SortExpression="HoldPeriodCode" UniqueName="HoldPeriodCode">
                                    <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Center" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LastShipDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Last Ship" SortExpression="LastShipDate" UniqueName="LastShipDate">
                                    <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                    <ItemStyle Width="70px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="DaysSinceLastShip" DataType="System.Int32" HeaderText="Clock Days" SortExpression="DaysSinceLastShip" UniqueName="DaysSinceLastShip">
                                    <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                    <ItemStyle Width="70px" HorizontalAlign="Center" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LastPaidDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Last Paid" SortExpression="LastPaidDate" UniqueName="LastPaidDate">
                                    <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                    <ItemStyle Width="70px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipTo" SortExpression="ShipToID" UniqueName="ShipToID">
                                    <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                    <ItemStyle Width="70px" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="JobName" HeaderText="Job Name" SortExpression="JobName" UniqueName="JobName">
                                    <HeaderStyle Width="180px" HorizontalAlign="Left" />
                                    <ItemStyle Width="180px" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="JobOrderBalance" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Job Ord Bal" SortExpression="JobOrderBalance" UniqueName="JobOrderBalance">
                                     <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                    <ItemStyle Width="70px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="JobPeriod1" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="P1" SortExpression="JobPeriod1" UniqueName="JobPeriod1">
                                     <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="JobPeriod2" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="P2" SortExpression="JobPeriod2" UniqueName="JobPeriod2">
                                     <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="JobPeriod3" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="P3" SortExpression="JobPeriod3" UniqueName="JobPeriod3">
                                     <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="JobPeriod4" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="P4" SortExpression="JobPeriod4" UniqueName="JobPeriod4">
                                     <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="JobPeriod5" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="P5" SortExpression="JobPeriod5" UniqueName="JobPeriod5">
                                     <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LienFileDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Lien Filed" SortExpression="LienFileDate" UniqueName="LienFileDate">
                                    <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                    <ItemStyle Width="70px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LienAmount" DataFormatString="{0:c0}" DataType="System.Decimal" HeaderText="Lien Amt" SortExpression="LienAmount" UniqueName="LienAmount">
                                     <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="PreLienConfirmation" HeaderText="PreLien Cnfrm" SortExpression="PreLienConfirmation" UniqueName="PreLienConfirmation">
                                    <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                    <ItemStyle Width="70px" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="BondNo" HeaderText="Bond #" SortExpression="BondNo" UniqueName="BondNo">
                                    <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LienPreAmount" DataFormatString="{0:c0}" DataType="System.Decimal" HeaderText="Pre Lien" SortExpression="LienPreAmount" UniqueName="LienPreAmount">
                                    <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LienPreDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Pre Lien" SortExpression="LienPreDate" UniqueName="LienPreDate">
                                    <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                    <ItemStyle Width="70px" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LienPreWith" HeaderText="LienPre With" SortExpression="LienPreWith" UniqueName="LienPreWith">
                                    <HeaderStyle Width="70px" HorizontalAlign="Left" />
                                    <ItemStyle Width="70px" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                            </Columns>
                            
                        </MasterTableView>
                        <PagerStyle PageSizeControlType="RadComboBox" />
                        
                    </telerik:RadGrid>
                </telerik:RadPageView>
                <telerik:RadPageView ID="SXeNotes" runat="server">
                    <telerik:RadGrid ID="grdSXeNotes" runat="server" Width="1000px" Height="200px" AllowPaging="True" AllowSorting="True" CellSpacing="0" 
                        DataSourceID="SqlDS_uspCustomerSXeNotesGet" GridLines="None">
                        
                        <ClientSettings>
                            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                        </ClientSettings>
                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_uspCustomerSXeNotesGet">
                            
                            <Columns>
                                <telerik:GridBoundColumn DataField="CustID" Display="False" HeaderText="CustID" SortExpression="CustID" UniqueName="CustID">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Page" DataType="System.Int32" HeaderText="Page" SortExpression="Page" UniqueName="Page">
                                    <HeaderStyle Width="40px" HorizontalAlign="Left" />
                                    <ItemStyle Width="40px" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Operator" HeaderText="Operator" SortExpression="Operator" UniqueName="Operator">
                                    <HeaderStyle Width="60px" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Note" HeaderText="Note" SortExpression="Note" UniqueName="Note">
                                    <HeaderStyle Width="800px" HorizontalAlign="Left" />
                                    <ItemStyle Width="800px" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                            </Columns>
                            
                            <PagerStyle PageSizeControlType="RadComboBox" />
                        </MasterTableView>
                        
                    </telerik:RadGrid>
                </telerik:RadPageView>
                <telerik:RadPageView ID="JobNotes" runat="server">
                    <div style="width:1200px;height:200px; margin:10px;">
                        <div style="width:550px; height:175px;float:left;">
                            <div style="width:100%; ">
                                 <telerik:RadEditor ID="updateComment" runat="server" Width="475px" Height="145px">
                                                <Tools>
                                                    <telerik:EditorToolGroup >
                                                        <telerik:EditorTool Name="Cut" />
                                                        <telerik:EditorTool Name="Copy" />
                                                        <telerik:EditorTool Name="Paste" />
                                                        <telerik:EditorTool Name="Bold" />
                                                        <telerik:EditorTool Name="ForeColor" />
                                                        <telerik:EditorTool Name="FontSize" />
                                                        <telerik:EditorTool Name="Underline" />
                                                        <telerik:EditorTool Name="StrikeThrough" />
                                                        <telerik:EditorTool Name="Undo" />
                                                        <telerik:EditorTool Name="Redo" />
                                                        <telerik:EditorTool Name="AjaxSpellCheck" />
                                                    </telerik:EditorToolGroup>
                                                </Tools>
                                        </telerik:RadEditor>
                            </div>
                            <div style="width:100%; height:35px; margin-top:10px;">
                                <telerik:RadButton ID="btnUpdateComments" runat="server" Text="Update Comments" UseSubmitBehavior="false" Width="300px"></telerik:RadButton>
                            </div>
                        </div>
                        <div style="width:550px; height:175px;float:left;">
                            <%--<telerik:RadTextBox ID="pastComment" runat="server" Label="Past Comments:" LabelWidth="100px" Width="475px" Height="145px" TextMode="MultiLine" Wrap="true" Enabled="false">
                            </telerik:RadTextBox>--%>
                            <telerik:RadEditor ID="pastComment" runat="server" Width="475px" Height="145px" >
                                        <Tools>
                                            <telerik:EditorToolGroup >
                                               
                                            </telerik:EditorToolGroup>
                                        </Tools>
                            </telerik:RadEditor>


                        </div>

                    </div>
                </telerik:RadPageView>


            </telerik:RadMultiPage>
        
             </asp:Panel>
        </div>
       
    </div>

</div>

</asp:Content>

