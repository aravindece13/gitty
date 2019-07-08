<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_MileageLogEditor.ascx.vb" Inherits="Controls_form_MileageLogEditor" %>


<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>

           <telerik:AjaxSetting AjaxControlID="lnkFleet_MileageStats2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkFleet_MileageStats2" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting> 

           <telerik:AjaxSetting AjaxControlID="lnkPayComExport">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkPayComExport" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>

           <telerik:AjaxSetting AjaxControlID="PayComID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="LoggedBegin">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lnkPayComExport"  />

                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="LoggedEnd">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lnkPayComExport"  />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="TotalMiles">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="MilesBusiness">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="MilesPersonal">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="PersonalUsagePct">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>

           <telerik:AjaxSetting AjaxControlID="grdLogs">
                <UpdatedControls>
                    <%--<telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                    <telerik:AjaxUpdatedControl ControlID="pnlUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnUpdateLogEntry">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnDeleteLogEntry">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


<div style="width:1800px; margin:10px;">
    <div style="width:1800px; margin-bottom:10px;">
         <div style="width:1600px;margin: 5px 0px 10px 0px;float:left;">
             <div style="float:left;width:200px; margin:0px 0px 0px 0px;">
                        <telerik:RadButton ID="lnkFleet_MileageStats2" ButtonType="LinkButton" runat="server" width="150px" font-size="Small" Text="Last Entry Stats" Skin="BlackMetroTouch" NavigateUrl="~/Reports2/Fleet_MileageStats2.aspx"  Target="_blank"></telerik:RadButton>
             </div>
             <div style="float:left;width:150px; margin:0px 0px 0px 0px;">
                        <telerik:RadButton ID="lnkPayComExport" ButtonType="LinkButton" runat="server" width="150px" font-size="Small" Text="PayCom Export" Skin="BlackMetroTouch"  Target="_blank"></telerik:RadButton>
             </div>
        </div>
        <div style="width:1600px; margin:0px 20px 10px 0px; float:left;">
            <div style="margin:0px 20px 10px 0px; width:230px; float:left; vertical-align:middle;">
                <telerik:RadComboBox ID="PayComID" runat="server" Enabled="true"  Label="Taxable User:"
                            DataSourceID="SqlDS_TaxAutoUser" DataValueField="PayComID" DataTextField="LoggedBy" 
                            Width="150px" Height="250px" LabelCssClass="myLabelCss" AutoPostBack="true" AppendDataBoundItems="true">
                    <Items>
                        <telerik:RadComboBoxItem Text="All" Value="%" />
                    </Items>
                </telerik:RadComboBox>
                <asp:SqlDataSource ID="SqlDS_TaxAutoUser" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="SELECT PayComID, LoggedBy FROM Fleet_MileageLog GROUP BY PayComID, LoggedBy ORDER BY LoggedBy">
                </asp:SqlDataSource>
            </div>
            <div style="margin:0px 10px 10px 20px; width:200px; float:left; vertical-align:middle;">
                <telerik:RadDateInput ID="LoggedBegin" runat="server" AutoPostBack="True" Label="Logged Between:"
                    Culture="en-US" DateFormat="M/d/yyyy" DisplayDateFormat="M/d/yyyy" 
                    Width="200px" LabelWidth="140px" MinDate="1950-01-01" >
                </telerik:RadDateInput>
            </div>
            <div style="margin:0px 20px 10px 0px; width:170px; float:left; vertical-align:middle;">
                <telerik:RadDateInput ID="LoggedEnd" runat="server" AutoPostBack="True" Label="and:"
                    Culture="en-US" DateFormat="M/d/yyyy" DisplayDateFormat="M/d/yyyy" 
                    Width="150px" LabelWidth="50px" MinDate="1950-01-01" >
                </telerik:RadDateInput>
            </div>
             <div style="margin:0px 20px 10px 0px; width:170px; float:left; vertical-align:middle;">
                 <telerik:RadComboBox ID="TotalMiles" runat="server" Label="Total Miles:"  LabelCssClass="myLabelCss" AutoPostBack="true"  Width="90px">
                     <Items>
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 0" Value="0" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 1000" Value="999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 1,500" Value="1499" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 2,000" Value="1999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 3,000" Value="2999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 4,000" Value="3999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 5,000" Value="4999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 6,000" Value="5999" />
                     </Items>
                 </telerik:RadComboBox>
            </div>
            
            <div style="margin:0px 20px 10px 0px; width:200px; float:left; vertical-align:middle;">
                 <telerik:RadComboBox ID="MilesBusiness" runat="server" Label="Business Miles:"  LabelCssClass="myLabelCss" AutoPostBack="true" Width="90px">
                     <Items>
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 0" Value="0" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 1000" Value="999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 1,500" Value="1499" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 2,000" Value="1999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 3,000" Value="2999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 4,000" Value="3999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 5,000" Value="4999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 6,000" Value="5999" />
                     </Items>
                 </telerik:RadComboBox>
            </div>
            
             <div style="margin:0px 20px 10px 0px; width:200px; float:left; vertical-align:middle;">
                 <telerik:RadComboBox ID="MilesPersonal" runat="server" Label="Personal Miles:"  LabelCssClass="myLabelCss" AutoPostBack="true" Width="90px">
                     <Items>
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 0" Value="0" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 1000" Value="999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 1,500" Value="1499" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 2,000" Value="1999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 3,000" Value="2999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 4,000" Value="3999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 5,000" Value="4999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 6,000" Value="5999" />
                     </Items>
                 </telerik:RadComboBox>
            </div>
            <div style="margin:0px 20px 10px 0px; width:200px; float:left; vertical-align:middle;">
                 <telerik:RadComboBox ID="PersonalUsagePct" runat="server" Label="Personal %:"  LabelCssClass="myLabelCss" AutoPostBack="true" Width="90px">
                     <Items>
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 0%" Value="0" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 30%" Value=".2999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 40%" Value=".3999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 50%" Value=".4999" />
                         <telerik:RadComboBoxItem runat="server" Text="&gt; 60%" Value=".5999" />
                     </Items>
                 </telerik:RadComboBox>
            </div>

        </div>
        <div style="width:1600px;margin: 20px 0px 10px 20px;float:left;">
            
            <div style="width:1400px; margin:0px 0px 20px 0px;float:left;">
                <h4 style="width:500px;">Mileage Log Entries</h4>
               
            </div>
             <div style="width:1400px; margin:0px 0px 20px 0px;float:left;">
                 <telerik:RadGrid ID="grdLogs" runat="server" Width="1400px" Height="400px" DataSourceID="SqlDS_grdLogs" AllowSorting="True" >

                    <GroupingSettings CaseSensitive="false" />

                        <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True"  />
                        </ClientSettings>
                       

                     <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdLogs" DataKeyNames="LogIndex" ClientDataKeyNames="LogIndex" Width="2000px" >
                         <Columns>
                             <telerik:GridBoundColumn DataField="LogIndex" DataType="System.Int32" HeaderText="LogIndex" ReadOnly="True" SortExpression="LogIndex" UniqueName="LogIndex" Visible="False"></telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="Logged" DataType="System.DateTime" HeaderText="Logged" SortExpression="Logged" UniqueName="Logged" DataFormatString="{0:MM/dd/yyyy}">
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="LoggedBy" HeaderText="LoggedBy" SortExpression="LoggedBy" UniqueName="LoggedBy">
                             </telerik:GridBoundColumn>

                             <telerik:GridBoundColumn DataField="PayComID" HeaderText="PayComID" SortExpression="PayComID" UniqueName="PayComID">
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="OdoBegin" DataType="System.Decimal" HeaderText="Odo Begin" SortExpression="OdoBegin" UniqueName="OdoBegin" DataFormatString="{0:n0}" >
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="OdoEnd" DataType="System.Decimal" HeaderText="Odo End" SortExpression="OdoEnd" UniqueName="OdoEnd" DataFormatString="{0:n0}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="TotalMiles" DataType="System.Decimal" HeaderText="Total Miles" DataFormatString="{0:n0}" ReadOnly="True" SortExpression="TotalMiles" UniqueName="TotalMiles">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="MilesBusiness" DataType="System.Decimal" HeaderText="Bus. Miles" SortExpression="MilesBusiness" UniqueName="MilesBusiness" DataFormatString="{0:n0}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="PersonalUsagePct" DataType="System.Decimal" DataFormatString="{0:p1}"
                                 HeaderText="Personal %" ReadOnly="True" SortExpression="PersonalUsagePct" UniqueName="PersonalUsagePct" >
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             </telerik:GridBoundColumn>
                             
                             <telerik:GridBoundColumn DataField="TaxableAuto" DataType="System.Decimal" HeaderText="Taxable Auto" 
                                 ReadOnly="True" SortExpression="TaxableAuto" UniqueName="TaxableAuto" DataFormatString="{0:c2}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="GasValueToEmployee" DataType="System.Decimal" 
                                 HeaderText="Gas Value" ReadOnly="True" 
                                 SortExpression="GasValueToEmployee" UniqueName="GasValueToEmployee" DataFormatString="{0:c2}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="LeaseValueToEmployee" DataType="System.Decimal" HeaderText="Lease Value" ReadOnly="True" 
                                 SortExpression="LeaseValueToEmployee" UniqueName="LeaseValueToEmployee" DataFormatString="{0:c2}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>

                             <telerik:GridBoundColumn DataField="LeaseAmount" DataType="System.Decimal" HeaderText="Mo. Lease" 
                                 SortExpression="LeaseAmount" UniqueName="LeaseAmount" DataFormatString="{0:c2}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>
                             

                             <telerik:GridBoundColumn DataField="GasMileageRate" DataType="System.Decimal" HeaderText="Gas Rate" DataFormatString="{0:c3}"
                                 SortExpression="GasMileageRate" UniqueName="GasMileageRate">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>
                             
                             <telerik:GridBoundColumn DataField="VehicleDescription"  HeaderText="Vehicle Description" ReadOnly="True" 
                                 SortExpression="VehicleDescription" UniqueName="VehicleDescription">
                             </telerik:GridBoundColumn>
                             

                             <telerik:GridBoundColumn DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" UniqueName="ModifiedBy">
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="Modified" DataType="System.DateTime" HeaderText="Modified" DataFormatString="{0:MM/dd/yyyy}"
                                 SortExpression="Modified" UniqueName="Modified">
                             </telerik:GridBoundColumn>
                         </Columns>
                     </MasterTableView>
                 </telerik:RadGrid>
                 <asp:SqlDataSource ID="SqlDS_grdLogs" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="uspFleetLogListingFilterable" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="PayComID" Name="PayComID" PropertyName="SelectedValue" Type="String" DefaultValue="%" />
                         <asp:ControlParameter ControlID="LoggedBegin" DbType="Date" Name="LoggedBegin" PropertyName="SelectedDate" DefaultValue="1/1/2018" />
                         <asp:ControlParameter ControlID="LoggedEnd" DbType="Date" Name="LoggedEnd" PropertyName="SelectedDate" DefaultValue="12/31/30" />
                         <asp:ControlParameter ControlID="TotalMiles" Name="TotalMiles" PropertyName="SelectedValue" Type="Decimal" DefaultValue="0" />
                         <asp:ControlParameter ControlID="MilesBusiness" Name="MilesBusiness" PropertyName="SelectedValue" Type="Decimal" DefaultValue="0" />
                         <asp:ControlParameter ControlID="MilesPersonal" Name="MilesPersonal" PropertyName="SelectedValue" Type="Decimal"  DefaultValue="0" />
                         <asp:ControlParameter ControlID="PersonalUsagePct" Name="PersonalUsagePct" PropertyName="SelectedValue" Type="Decimal"  DefaultValue="0" />
                     </SelectParameters>
                 </asp:SqlDataSource>
             </div>
            
        </div>
        <div style="width:1600px;margin: 10px 0px 10px 20px;float:left;">
            
           <div style="width:1500px; margin:0px 0px 10px 0px;float:left;">
                <h4 style="width:500px;">Mileage Log Entry Edit</h4>
           </div>
         <asp:Panel ID="pnlUpdate" runat="server">
            
         
           <div style="width:1500px; margin:0px 0px 20px 0px;float:left; ">
            <div style="width:1500px; margin-left:20px; height:20px; font-size:medium; color:#4c68a2; vertical-align:middle;">
                    <asp:Label ID="lblMileageLogToEdit" runat="server"></asp:Label>
            </div>
               <asp:HiddenField ID="hdnModifiedBy" runat="server" />
               <asp:HiddenField ID="hdnLogIndex" runat="server" />
               <asp:HiddenField ID="hdnVehicleID" runat="server" />
               <asp:HiddenField ID="hdnPayComID" runat="server" />
               

           </div>
           <div style="width:1500px; margin:0px 0px 20px 0px;float:left;">
            <div style="margin: 0px 0px 5px 0px; width:250px; float:left; vertical-align:middle;">
                <telerik:RadNumericTextBox ID="uOdoBegin" runat="server"  Label="Beginning Odometer:" LabelWidth="160px" Width="220px"
                        EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Type="Number" LabelCssClass="myLabelCssMedium" >
                </telerik:RadNumericTextBox>
            </div>
            <div style="margin: 0px 0px 5px 0px; width:250px; float:left; vertical-align:middle;">
                <telerik:RadNumericTextBox ID="uOdoEnd" runat="server"  Label="Ending Odometer:" LabelWidth="140px" Width="200px"
                        EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Type="Number" LabelCssClass="myLabelCssMedium" >
                </telerik:RadNumericTextBox>
            </div>
            <div style="margin: 0px 0px 5px 0px; width:250px;float:left; vertical-align:middle;">
                <telerik:RadNumericTextBox ID="uMilesBusiness" runat="server"  Label="Business Miles:" LabelWidth="120px" Width="200px"
                        EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Type="Number" LabelCssClass="myLabelCssMedium" >
                </telerik:RadNumericTextBox>
            </div>
            <div style="margin: 0px 0px 5px 0px; width:250px;float:left; vertical-align:middle;">
                <telerik:RadNumericTextBox ID="uLeaseAmount" runat="server"  Label="Month Lease:" LabelWidth="110px" Width="215px"
                        EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Type="Currency" LabelCssClass="myLabelCssMedium" >
                </telerik:RadNumericTextBox>
            </div>
            <div style="width:220px; float:left;">
                <telerik:RadButton ID="btnUpdateLogEntry" runat="server" Text="Update Log Entry" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
            </div>
            <div style="width:200px; float:left; ">
                <telerik:RadButton ID="btnDeleteLogEntry" runat="server" Text="Delete Log Entry" Width="200px" Skin="BlackMetroTouch" AutoPostBack="true"></telerik:RadButton>
            </div>  
           </div>
         
         </asp:Panel>
        
        </div>


    </div>






</div>