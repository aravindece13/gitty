<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_MileageLogBasic.ascx.vb" Inherits="Controls_MileageLogBasic" %>


<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>

            
           <telerik:AjaxSetting AjaxControlID="btnAddLogEntry">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPastLogs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlInsertLogEntry" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lblThanks"  />
                </UpdatedControls>
           </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<div style="width:1800px; margin:10px;">
    <div style="width:1800px; margin-bottom:10px;">
        <div style="width:1450px; margin-left:20px; height:50px; font-size:medium; color:#4c68a2; vertical-align:middle;">
            <asp:Label ID="lblVehicleToLog" runat="server"></asp:Label>
        </div>
        
        <div style="width:1600px;margin-bottom:10px;  margin-left:20px;">
            
            <h4 style="width:500px;">New Mileage Log Entry</h4>
        </div>
        <div style="width:1600px;margin-bottom:10px; margin-left:20px; height:25px;" >
          <telerik:RadAjaxPanel ID="pnlInsertLogEntry" runat="server" >
            <%--<asp:HiddenField ID="OdoBegin" runat="server" Visible="true" />--%>
            <asp:HiddenField ID="LeaseAmount" runat="server" />
            <asp:HiddenField ID="VehicleID" runat="server" />
            <div style="margin: 0px 0px 5px 0px; width:250px; float:left; vertical-align:middle;">
                <telerik:RadNumericTextBox ID="OdoBegin" runat="server"  Label="Start Odometer:" LabelWidth="140px" Width="200px" DisabledStyle-Font-Bold="true" DisabledStyle-ForeColor="Gray"
                        EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Type="Number" LabelCssClass="myLabelCssMedium" Enabled="false" >
                </telerik:RadNumericTextBox>
                <asp:Label ID="lblOdoBegin" runat="server"></asp:Label>
            </div>


            <div style="margin: 0px 0px 5px 0px; width:250px; float:left; vertical-align:middle;">
                <telerik:RadNumericTextBox ID="OdoEnd" runat="server"  Label="End Odometer:" LabelWidth="140px" Width="200px"
                        EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Type="Number" LabelCssClass="myLabelCssMedium" >
                </telerik:RadNumericTextBox>
            </div>
            <div style="margin: 0px 0px 5px 0px; width:250px;float:left; vertical-align:middle;">
                <telerik:RadNumericTextBox ID="MilesBusiness" runat="server"  Label="Business Miles:" LabelWidth="120px" Width="200px"
                        EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Type="Number" LabelCssClass="myLabelCssMedium" >
                </telerik:RadNumericTextBox>
            </div>
            
            <div style="width:200px; float:left;">
                <telerik:RadButton ID="btnAddLogEntry" runat="server" Text="Add Log Entry"  Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
            </div>  
            
            
          </telerik:RadAjaxPanel>
          <div style="width:1450px; margin-left:20px; height:40px; font-size:medium; color:#4c68a2; vertical-align:middle;">
                <asp:Label ID="lblThanks" runat="server"></asp:Label>
          </div>
        </div>
        <div style="width:1600px; margin-top:40px; margin-left:20px;">
            
            <h4 style="width:500px;">Past Mileage Log Entries</h4>
        </div>
        <div style="width:1600px;margin-bottom:10px;  margin-left:20px;">
            <telerik:RadGrid ID="grdPastLogs" runat="server" Width="1200px" Height="600px" DataSourceID="SqlDS_grdPastLogs">

                <ClientSettings>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                </ClientSettings>
                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdPastLogs" Width="1200px">
                    <Columns>
                             <telerik:GridBoundColumn DataField="LogIndex" DataType="System.Int32" HeaderText="LogIndex" ReadOnly="True" SortExpression="LogIndex" UniqueName="LogIndex" Visible="False"></telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="Logged" DataType="System.DateTime" HeaderText="Logged" SortExpression="Logged" UniqueName="Logged" DataFormatString="{0:MM/dd/yyyy}">
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="LoggedBy" HeaderText="LoggedBy" SortExpression="LoggedBy" UniqueName="LoggedBy">
                             </telerik:GridBoundColumn>

                            <%-- <telerik:GridBoundColumn DataField="PayComID" HeaderText="PayComID" SortExpression="PayComID" UniqueName="PayComID">
                             </telerik:GridBoundColumn>--%>
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
                                 HeaderText="Personal %" ReadOnly="True" SortExpression="Personal %" UniqueName="PersonalUsagePct">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             </telerik:GridBoundColumn>
                             
                             <telerik:GridBoundColumn DataField="TaxableAuto" DataType="System.Decimal" HeaderText="Taxable Auto" 
                                 ReadOnly="True" SortExpression="TaxableAuto" UniqueName="TaxableAuto" DataFormatString="{0:c2}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>
                            <%-- <telerik:GridBoundColumn DataField="GasValueToEmployee" DataType="System.Decimal" 
                                 HeaderText="Gas Value" ReadOnly="True" 
                                 SortExpression="GasValueToEmployee" UniqueName="GasValueToEmployee" DataFormatString="{0:c2}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="LeaseValueToEmployee" DataType="System.Decimal" HeaderText="Lease Value" ReadOnly="True" 
                                 SortExpression="LeaseValueToEmployee" UniqueName="LeaseValueToEmployee" DataFormatString="{0:c2}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>--%>

                             <%--<telerik:GridBoundColumn DataField="LeaseAmount" DataType="System.Decimal" HeaderText="Mo. Lease" 
                                 SortExpression="LeaseAmount" UniqueName="LeaseAmount" DataFormatString="{0:c2}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>
                             

                             <telerik:GridBoundColumn DataField="GasMileageRate" DataType="System.Decimal" HeaderText="Gas Rate" DataFormatString="{0:c3}"
                                 SortExpression="GasMileageRate" UniqueName="GasMileageRate">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                             
                             </telerik:GridBoundColumn>--%>
                             
                             <telerik:GridBoundColumn DataField="VehicleDescription"  HeaderText="Vehicle Description" ReadOnly="True" 
                                 SortExpression="VehicleDescription" UniqueName="VehicleDescription">
                             </telerik:GridBoundColumn>
                             

                             <%--<telerik:GridBoundColumn DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" UniqueName="ModifiedBy">
                             </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="Modified" DataType="System.DateTime" HeaderText="Modified" DataFormatString="{0:MM/dd/yyyy}"
                                 SortExpression="Modified" UniqueName="Modified">
                             </telerik:GridBoundColumn>--%>
                         </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDS_grdPastLogs" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspFleetLogListingByPayComID" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:CookieParameter CookieName="PayComID" DefaultValue="0" Name="PayComID" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

    </div>
</div>
