<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_FleetManager.ascx.vb" Inherits="Controls_form_FleetManager" %>


<div style="width:1800px; margin:10px;">



<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
            <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" />
                  
                </UpdatedControls> 
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="fStatus">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fStatus" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fDriver">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fDriver" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fVIN">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fVIN" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fLocation">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fLocation" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fLeaseUnit">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fLeaseUnit" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fMake">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fMake" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            
            
            <telerik:AjaxSetting AjaxControlID="RadGridVehicleList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadMultipage2" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleInfo" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelOwnership" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleDetails" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelNewService" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelRecordSale" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridService" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="hdnID" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblVehicleDesc" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblDriver" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblTest" LoadingPanelID="" />
                     
                </UpdatedControls>    
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnRecordSale">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadMultipage2" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleInfo" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelOwnership" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleDetails" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelNewService" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelRecordSale" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="hdnID" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblVehicleDesc" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblDriver" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblTest" LoadingPanelID="" />
                     
                </UpdatedControls>    
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="RadTabStrip2">
                <UpdatedControls>
                  
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleDetails" LoadingPanelID="RadAjaxLoadingPanel1" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnUpdateVehicleInfo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage2" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleInfo" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lblVehicleDesc" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblDriver" LoadingPanelID="" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnUpdateOwnershipInfo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleInfo" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelOwnerhip" LoadingPanelID="RadAjaxLoadingPanel1" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>    
           
            <telerik:AjaxSetting AjaxControlID="btnDetailsUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleDetails" LoadingPanelID="RadAjaxLoadingPanel1" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnRecordSale">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelRecordSale" LoadingPanelID="RadAjaxLoadingPanel1" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>   
        
            <telerik:AjaxSetting AjaxControlID="RadGridService">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridService" LoadingPanelID="RadAjaxLoadingPanel1" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>   
        
             <telerik:AjaxSetting AjaxControlID="btnAddNewVehicle">
                 <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridVehicleList" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddNewVehicle" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridRecentlyAddedVeh" LoadingPanelID="RadAjaxLoadingPanel1" />
                 </UpdatedControls>
             </telerik:AjaxSetting> 
             <telerik:AjaxSetting AjaxControlID="newLease_term">
                 <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="newLease_EndDt" LoadingPanelID="" />
                 </UpdatedControls>
             </telerik:AjaxSetting>    

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>


<div id="divTabStrip1" style="Margin:5px 0px 10px 5px;float:left;width:1750px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1"  Width="1750px" Skin="MetroTouch">
        <Tabs>
            
            <telerik:RadTab runat="server" Text="Vehicles" PageViewID="Vehicles" Selected="true" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="New Vehicle" PageViewID="NewVehicle" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Maintenance" PageViewID="Maintenance" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Reports" PageViewID="Reports" ></telerik:RadTab>
 
        </Tabs>
    </telerik:RadTabStrip>
</div>


<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1750px">
    
  
  <telerik:RadPageView ID="Vehicles" runat="server" Selected="true" >
        
        <div style="width:1750px;Margin: 10px; ">                  
             <div style="width:1750px; float:left; height:40px;">
                <div style="width:200px; float:left;">
                    <telerik:RadComboBox ID="fStatus" runat="server"  Label="Type:" Width="100px" AutoPostBack="true" LabelCssClass="myLabelCss">
                            <Items>   
                                <telerik:RadComboBoxItem runat="server" Text="All" Value="%" />
                                <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" Selected="true" />   
                                <telerik:RadComboBoxItem runat="server" Text="Sold" Value="Sold" />   
                            </Items>
                    </telerik:RadComboBox> 
                </div>
                <div style="width:250px; float:left;">
                    <telerik:RadComboBox ID="fLocation" runat="server"  Label="Location:" Width="150px" Height="300px" 
                            DataSourceID="SqlDS_fLocation" DataValueField="branchname" DataTextField="comboname" AutoPostBack="true" AppendDataBoundItems="true" LabelCssClass="myLabelCss">
                            <Items>   
                                <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true" />
                            </Items>
                    </telerik:RadComboBox> 
                    <asp:SqlDataSource ID="SqlDS_fLocation" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspGetBranchesActiveOnly" SelectCommandType="StoredProcedure">  
                    </asp:SqlDataSource> 

                </div>
                <div style="width:180px; float:left;">
                    <telerik:RadTextBox ID="fDriver" runat="server" Label="Driver:" LabelWidth="50px" Width="160px" AutoPostBack="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                </div>
                <div style="width:180px; float:left;">
                    <telerik:RadTextBox ID="fVin" runat="server" Label="VIN:" LabelWidth="40px" Width="160px" AutoPostBack="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                </div>
                 <div style="width:150px; float:left;">
                    <telerik:RadTextBox ID="fDKUnit" runat="server" Label="DK Unit:" LabelWidth="75px" Width="125px" AutoPostBack="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                </div>
                <div style="width:150px; float:left;">
                    <telerik:RadTextBox ID="fLeaseUnit" runat="server" Label="Lease Unit:" LabelWidth="75px" Width="125px" AutoPostBack="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                </div>
                <div style="width:300px; float:left;">
                    <telerik:RadComboBox ID="fMake" runat="server"  Label="Make:"  Width="100px" Height="300px" 
                            DataSourceID="SqlDS_fMake" DataValueField="Display" DataTextField="Display" AutoPostBack="true" AppendDataBoundItems="true" LabelCssClass="myLabelCss">
                            <Items>   
                                <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true" />
                            </Items>
                    </telerik:RadComboBox>
                    <asp:SqlDataSource ID="SqlDS_fMake" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                        SelectCommand="SELECT [Display] FROM [Menu] WHERE (([Menu] = @Menu) AND ([TYPE] = @TYPE)) ORDER BY [DisplaySeq], [TYPE]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Fleet" Name="Menu" Type="String" />
                            <asp:Parameter DefaultValue="Make" Name="TYPE" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
              
             </div>
                 
                                 
                       
        </div>
        
        <div id="divVehiclesTop" style="padding:0px 5px 0px 5px;float:left;width:1500px;height:225px;"  >
           
                <telerik:RadGrid ID="RadGridVehicleList" runat="server"  DataSourceID="SqlDS_FleetList" GridLines="None" Width="1450px" Height="225px"  
                    AllowPaging="True" AllowSorting="True" >

                        <GroupingSettings CaseSensitive="false" />

                        <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True"  />
                        </ClientSettings>

                    <MasterTableView AutoGenerateColumns="False" DataKeyNames="id" ClientDataKeyNames="id" DataSourceID="SqlDS_FleetList" PageSize="50">
                

                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="True" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Wrap="True" />
                
                        <Columns>
                            <telerik:GridBoundColumn DataField="id" DataType="System.Int32" HeaderText="id" ReadOnly="True" SortExpression="id" UniqueName="id" Visible="False"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="location" HeaderText="Location" SortExpression="location" UniqueName="location" >
                                <ItemStyle Width="100px" />
                                <HeaderStyle Width="100px" />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn DataField="driver_namel" HeaderText="Driver" SortExpression="driver_namel" UniqueName="driver_namel" >
                                <ItemStyle Width="100px"  />
                                <HeaderStyle Width="100px" />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn  DataField="year" HeaderText="Year" SortExpression="year" UniqueName="year" >
                                <ItemStyle Width="50px"  />
                                <HeaderStyle Width="50px"  />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn  DataField="make" HeaderText="Make" SortExpression="make" UniqueName="make" >
                                <ItemStyle Width="120px"  />
                                <HeaderStyle Width="120px"  />
                            </telerik:GridBoundColumn> 
                    
                            <telerik:GridBoundColumn  DataField="Model" HeaderText="Model" SortExpression="model" UniqueName="model" >
                                <ItemStyle Width="200px" />
                                <HeaderStyle Width="200px"  />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn DataField="vin" HeaderText="Vin" SortExpression="vin" UniqueName="vin" >
                                <ItemStyle Width="150px"  />
                                <HeaderStyle Width="150px"  />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn DataField="unit" HeaderText="Lease Unit" SortExpression="unit" UniqueName="unit" >
                                <ItemStyle Width="75px"  />
                                <HeaderStyle Width="75px" HorizontalAlign="Left" VerticalAlign="Bottom" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn DataField="dkunit" HeaderText="DK Unit" SortExpression="dkunit" UniqueName="dkunit" >
                                <ItemStyle Width="75px"  />
                                <HeaderStyle Width="75px" />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn  DataField="Plate" HeaderText="Plate" SortExpression="plate" UniqueName="plate" >
                                <ItemStyle Width="100px"  />
                                <HeaderStyle Width="100px"  />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn DataField="ownership" HeaderText="Owner" SortExpression="ownership" UniqueName="ownership" >
                                <ItemStyle Width="100px"  />
                                <HeaderStyle Width="100px"  />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn DataField="status" HeaderText="Status" SortExpression="status" UniqueName="status" >
                                <ItemStyle Width="100px"  />
                                <HeaderStyle Width="100px" />
                            </telerik:GridBoundColumn>
                        </Columns>
                
                    </MasterTableView>
                    
                </telerik:RadGrid>
              
                <asp:SqlDataSource ID="SqlDS_FleetList" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="SELECT [id], [vin], [unit],[dkunit], [status], [driver_namel], [location], [year], [make], [model], [plate], [ownership] 
                        FROM [Fleet] 
                        WHERE (Status LIKE @fStatus2)
                            AND (location LIKE @fLocation2)
                            AND (make LIKE @fMake2)
                            AND (driver_namel LIKE '%' + @fDriver2 + '%')
                            AND (vin LIKE '%' + @fVIN2 + '%')
                            AND (unit LIKE '%' + @fLeaseUnit2 + '%')
                            AND (DKUnit LIKE '%' + @fDKUnit2 + '%')
                        ORDER BY [status], [driver_namel], [location]">
                
                    <SelectParameters>
                        <asp:ControlParameter ControlID="fStatus" DefaultValue="Active" Name="fStatus2"  PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="fLocation" DefaultValue="%" Name="fLocation2"  PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="fMake" DefaultValue="%" Name="fMake2"  PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="fDriver" DefaultValue="%" Name="fDriver2"  PropertyName="Text" />
                        <asp:ControlParameter ControlID="fVIN" DefaultValue="%" Name="fVIN2"  PropertyName="Text" />
                        <asp:ControlParameter ControlID="fLeaseUnit" DefaultValue="%" Name="fLeaseUnit2"  PropertyName="Text" />
                        <asp:ControlParameter ControlID="fDKUnit" DefaultValue="%" Name="fDKUnit2"  PropertyName="Text" />
        
                    </SelectParameters>

                </asp:SqlDataSource>
  
        </div>  
        
        <div id="divVehiclesBottom" style="Margin:10px 5px 5px 25px;float:left;width:1500px;">
            <div style="width:1450px; height:30px; font-size:medium; color:#4c68a2;">
                <div style="width:600px;float:left;">
                    <asp:Label ID="lblVehicleDesc" runat="server" Width="550px" Font-Bold="true" />
                </div>
                <div style="width:600px;float:left;">
                    <asp:Label ID="lblDriver" runat="server" Width="550px" Font-Bold="true" />
                </div>
            </div>

            <div style="width:1450px; margin:5px 0px 0px 0px;">
               <telerik:RadTabStrip ID="RadTabStrip2" runat="server" MultiPageID="RadMultiPage2" SelectedIndex="0"  Width="1450px" Skin="MetroTouch">
                    <Tabs>
                        <telerik:RadTab runat="server" Text="Vehicle Info" PageViewID="VehicleInfo" Selected="true" ></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Details" PageViewID="VehicleDetails" ></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Ownership" PageViewID="OwnershipPage" ></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Past Service" PageViewID="PastService" ></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Record Sale" PageViewID="RecordSale" ></telerik:RadTab>
                    
                    </Tabs>
               </telerik:RadTabStrip>
           </div>
           <telerik:RadMultiPage ID="RadMultiPage2" runat="server" Width="1450px" >
                
                  <telerik:RadPageView ID="VehicleInfo" runat="server" Selected="true" Width="1450px" >
                    <div id="div2" style="Margin:0px 0px 5px 10px;float:left;width:1450px;">
                         <telerik:RadAjaxPanel ID="RadAjaxPanelVehicleInfo" runat="server"  >
                           
                           <asp:HiddenField ID="hdnID" runat="server" Visible="true" />  
                           
                           <div style="width:1400px; height:40px; float:left; margin-top:5px;">
                                    <%--<asp:Button ID="btnUpdateVehicleInfo" runat="server" Text="Update Vehicle Info"  />--%>
                                <div style="width:200px; float:right;">
                                    <telerik:RadButton ID="btnUpdateVehicleInfo" runat="server" Text="Update Vehicle Info" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>    
                                  
                           </div>
                           <div style="width:350px;  float:left;">
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadTextBox ID="vin" runat="server" Label="VIN:" MaxLength="20" LabelWidth="75px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadComboBox ID="location" Label="Location:" runat="server" Enabled="true" 
                                                DataSourceID="SqlDS_Location" DataValueField="Branchname" DataTextField="comboname" 
                                                Width="200px" Height="200px"  LabelCssClass="myLabelCss" >
                                    </telerik:RadComboBox> 
                                </div>
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadComboBox ID="Make" Label="Make:" runat="server" Enabled="true" 
                                                DataSourceID="SqlDS_Make" DataValueField="Display" DataTextField="Display" 
                                                Width="200px" Height="200px" LabelCssClass="myLabelCss" >
                                    </telerik:RadComboBox>
                                </div>
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadTextBox ID="driver_namef" runat="server" Label="Driver (f):" MaxLength="25" LabelWidth="75px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                           </div>
                           <div style="width:350px; float:left; margin-left:10px;">
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                   <telerik:RadTextBox ID="plate" runat="server" Label="Plate:" MaxLength="10" LabelWidth="75px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                   <telerik:RadComboBox ID="AssetType" runat="server" Enabled="true"  Label="Type:"
                                                DataSourceID="SqlDS_AssetType" DataValueField="Display" DataTextField="Display" 
                                                 Width="200px" Height="50px" LabelCssClass="myLabelCss" >
                                   </telerik:RadComboBox>
                                </div>
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadTextBox ID="model" runat="server" Label="Model:" MaxLength="25" LabelWidth="75px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadTextBox ID="driver_namel" runat="server" Label="Driver (l):" MaxLength="25" LabelWidth="75px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                           </div>
                           <div style="width:350px; margin-left:10px; float:left;">
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadTextBox ID="dkunit" runat="server" Label="DK Unit:" MaxLength="10" LabelWidth="75px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadComboBox ID="Status" Label="Status:"  runat="server" Enabled="true" 
                                                DataSourceID="SqlDS_Status" DataValueField="Display" DataTextField="Display" 
                                                 Width="200px" Height="50px" LabelCssClass="myLabelCss" >
                                    </telerik:RadComboBox>
                                </div>
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadComboBox ID="ModelYr" Label="Year" runat="server" Enabled="true" 
                                                DataSourceID="SqlDS_ModelYr" DataValueField="Display" DataTextField="Display" 
                                                 Width="200px" Height="200px" LabelCssClass="myLabelCss" >
                                    </telerik:RadComboBox>
                                </div>
                                <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    <telerik:RadComboBox ID="fueltype" Label="Fuel:" runat="server" Enabled="true" 
                                                DataSourceID="SqlDS_Fuel" DataValueField="Display" DataTextField="Display" 
                                                Width="200px" Height="75px" LabelCssClass="myLabelCss" >
                                    </telerik:RadComboBox> 
                                </div>
                           </div>

                           <div style="width:1400px; margin:10px 0px 10px 0px;";>
                            <div>
                                <telerik:RadTextBox ID="description" runat="server" Label="Add. Description:" Height="70px" LabelWidth="140px" Width="850px" 
                                    LabelCssClass="myLabelCss" Wrap="true" TextMode="MultiLine" Rows="10" >
                                </telerik:RadTextBox>
                            </div>
                           </div>
 
                        
                           <asp:SqlDataSource ID="SqlDS_Location" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspGetBranchesActiveOnly" SelectCommandType="StoredProcedure">  
                           </asp:SqlDataSource> 
                           <asp:SqlDataSource ID="SqlDS_AssetType" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Asset' AND [display] != '%'
                                    ORDER BY [displayseq], [display]">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_Fuel" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Fuel' AND [display] != '%'
                                    ORDER BY [displayseq], [display]">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_Make" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Make' AND [display] != '%'
                                    ORDER BY [displayseq], [display]">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_ModelYr" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='ModelYr' AND [display] != '%'
                                    ORDER BY [displayseq], [display] Desc">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_Owner" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Owner' AND [display] != '%'
                                    ORDER BY [displayseq], [display] Desc">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_Status" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Status' AND [display] != 'All'
                                    ORDER BY [displayseq], [display] Desc">
                            </asp:SqlDataSource>
                        </telerik:RadAjaxPanel>
                    </div> 
                    </telerik:RadPageView>

                    <telerik:RadPageView ID="VehicleDetails" runat="server" Width="1500px" >
                      <div id="div5" style="Margin:0px 0px 5px 10px;float:left;width:1450px;">
                          <telerik:RadAjaxPanel ID="RadAjaxPanelVehicleDetails" runat="server" >   
                               <div style="width:1450px; height:40px; float:left; margin-top:5px;">
                                    
                                    <div style="width:200px; float:right;">
                                        <%--<asp:Button ID="btnDetailsUpdate" runat="server" Text="Update Vehicle Details"  />--%>
                                        <telerik:RadButton ID="btnDetailsUpdate" runat="server" Text="Update Vehicle Detail" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                    </div>    
                                  
                               </div>
                               <div style="width:350px;  float:left;">
                                    <div style="margin: 0px 0px 5px 0px; width:325px;">
                                         <telerik:RadTextBox ID="GasCard" runat="server" Label="Gas Card:" LabelWidth="75px" Width="300px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
    
                                    </div>
                                    <div style="margin: 0px 0px 5px 0px; width:325px;">
                                        <telerik:RadTextBox ID="warrantyservice" runat="server" Label="Serv. Loc.:" LabelWidth="75px" Width="300px" MaxLength="35" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="margin: 0px 0px 5px 0px; width:325px;">
                                       <telerik:RadTextBox ID="Engine" runat="server" Label="Engine:" LabelWidth="75px" MaxLength="50" Width="300px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="margin: 0px 0px 5px 0px; width:325px;">
                                        <telerik:RadTextBox ID="TireSize" runat="server" Label="Tires:" MaxLength="75" LabelWidth="75px" Width="300px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                               </div>
                               <div style="width:350px; float:left; margin-left:10px;">
                                    <div style="margin: 0px 0px 5px 0px; width:325px;">
                                       <telerik:RadNumericTextBox ID="GVWR" runat="server" Label="GVWR:" EnabledStyle-HorizontalAlign="Right" LabelWidth="75px" Width="220px" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                                    </div>
                                    <div style="margin: 0px 0px 5px 0px; width:325px;">
                                        <telerik:RadNumericTextBox ID="ActualWeight" runat="server" Label="Actual Wt.:" EnabledStyle-HorizontalAlign="Right" LabelWidth="75px"  Width="220px" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                                    </div>
                                    <div style="margin: 0px 0px 5px 0px; width:325px;">
                                       <telerik:RadNumericTextBox ID="CarryWeight" runat="server" Label="Carry Wt.:" LabelWidth="75px" EnabledStyle-HorizontalAlign="Right"  Width="220px" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                                    </div>
                                    <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    
                                    </div>
                               </div>
                               <div style="width:350px; margin-left:10px; float:left;">
                                    <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    
                                    </div>
                                    <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    
                                    </div>
                                    <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    
                                    </div>
                                    <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    
                                    </div>
                               </div>

                               <div style="width:1100px; margin:10px 0px 10px 0px;";>
                                    <div>
                                        <telerik:RadTextBox ID="Other" runat="server" Label="Add. Description:" Height="70px" LabelWidth="140px" Width="850px" 
                                            LabelCssClass="myLabelCss" Wrap="true" TextMode="MultiLine" Rows="10" >
                                        </telerik:RadTextBox>
                                    </div>
                               </div>
  
                          
                          </telerik:RadAjaxPanel>
       
                    </div> 
                    </telerik:RadPageView>
            
                    <telerik:RadPageView ID="OwnershipPage" runat="server" Width="1450px" >
                          <div id="div4" style="Margin:0px 0px 5px 10px;float:left;width:1450px;">
                                <telerik:RadAjaxPanel ID="RadAjaxPanelOwnership" runat="server" >
                        
                                   <div style="width:1450px; height:40px; float:left; margin-top:5px;">
                                    
                                        <div style="width:200px; float:right;">
                                            <%--<asp:Button ID="btnUpdateOwnershipInfo" runat="server" Text="Update Ownership Info"  />--%>
                                            <telerik:RadButton ID="btnUpdateOwnershipInfo" runat="server" Text="Update Ownership Info" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                        </div>    
                                  
                                   </div>
                                   <div style="width:350px;  float:left;">
                                        <div style="margin: 0px 0px 5px 0px; width:250px;">
                                            <telerik:RadComboBox ID="Ownership" runat="server" Enabled="true"  Label="Type:"
                                                        DataSourceID="SqlDS_Ownership" DataValueField="Display" DataTextField="Display" 
                                                        Width="100%" Height="100px" LabelCssClass="myLabelCss">
                                            </telerik:RadComboBox>
                                        </div>
                                        <div style="margin: 0px 0px 5px 0px; width:250px;">
                                            <telerik:RadComboBox ID="leasingco" Label="Leasing Co.:" runat="server" Enabled="true" 
                                                        DataSourceID="SqlDS_LeasingCo" DataValueField="Display" DataTextField="Display" 
                                                        Width="100%" Height="75px" LabelCssClass="myLabelCss" >
                                            </telerik:RadComboBox>
                                        </div>
                                        <div style="margin: 0px 0px 5px 0px; width:250px;">
                                            <telerik:RadTextBox ID="unit" runat="server" Label="Lease Unit:" LabelWidth="75px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                        </div>
                                        <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    
                                        </div>
                                   </div>
                                   <div style="width:350px; float:left; margin-left:10px;">
                                        <div style="margin: 0px 0px 5px 0px; width:250px;">
                                            <telerik:RadNumericTextBox ID="price_delivery" runat="server" Label="Orig. Price:" LabelWidth="75px" Width="200px"   
                                                    EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Type="Currency" LabelCssClass="myLabelCss" >
                                            </telerik:RadNumericTextBox>
                                        </div>
                                        <div style="margin: 0px 0px 5px 0px; width:250px;">
                                            <telerik:RadNumericTextBox ID="price_sold" runat="server"  Label="Sell Price:" LabelWidth="75px" Width="200px"
                                                    EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Type="Currency" LabelCssClass="myLabelCss" >
                                            </telerik:RadNumericTextBox>
                                        </div>
                                        <div style="margin: 0px 0px 5px 0px; width:250px;">
                                   
                                        </div>
                                        <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    
                                        </div>
                                   </div>
                                   <div style="width:350px; margin-left:10px; float:left;">
                                        <div style="margin: 0px 0px 5px 0px; width:350px;">
                                            <telerik:RadDatePicker ID="deliverydt" runat="server" DateInput-Label="Delivery Date:" DateInput-LabelWidth="75px" Width="200px" MinDate="1/1/1900" DateInput-LabelCssClass="myLabelCss"></telerik:RadDatePicker>
                                        </div>
                                        <div style="margin: 0px 0px 5px 0px; width:350px;">
                                            <telerik:RadDatePicker ID="lease_enddt" runat="server" DateInput-Label="Lease End:" DateInput-LabelWidth="75px" Width="200px" MinDate="1/1/1900" DateInput-LabelCssClass="myLabelCss"></telerik:RadDatePicker>
                                        </div>
                                        <div style="margin: 0px 0px 5px 0px; width:350px;">
                                            <telerik:RadDatePicker ID="disposedt" runat="server" DateInput-Label="Sell Date:" DateInput-LabelWidth="75px"  Width="200px" MinDate="1/1/1900" DateInput-LabelCssClass="myLabelCss" ></telerik:RadDatePicker>
                                        </div>
                                        <div style="margin: 0px 0px 5px 0px; width:250px;">
                                    
                                        </div>
                                   </div>

                                   <div style="width:1100px; margin:10px 0px 10px 0px;";>
                                    <div>
                                        <telerik:RadTextBox ID="ownerhistory" runat="server" Label="Add. Description:" Height="70px" LabelWidth="140px" Width="850px" 
                                            LabelCssClass="myLabelCss" Wrap="true" TextMode="MultiLine" Rows="10" >
                                        </telerik:RadTextBox>
                                    </div>
                                   </div>
                        
                            
                                    <asp:SqlDataSource ID="SqlDS_Ownership" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                            SelectCommand="SELECT [display], [value] 
                                                FROM [Menu] 
                                                WHERE [Menu] = 'Fleet' AND [type]='Owner'
                                                ORDER BY [displayseq], [display]">
                                     </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDS_LeasingCo" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                            SelectCommand="SELECT [display], [value] 
                                                FROM [Menu] 
                                                WHERE [Menu] = 'Fleet' AND [type]='LeaseCo' AND [display] != '%'
                                                ORDER BY [displayseq], [display]">
                                     </asp:SqlDataSource>
                           
                             
                                </telerik:RadAjaxPanel>
                        </div> 
                   </telerik:RadPageView>     
              
                    <telerik:RadPageView ID="PastService" runat="server" Width="1500px"   >
                          <div id="div6" style="Margin:5px 0px 5px 10px;float:left;width:1500px;">
                               <telerik:RadAjaxPanel ID="RadAjaxPanelPastService" runat="server" >   
                        
                        
                                <telerik:RadGrid ID="RadGridService" runat="server" DataSourceID="SqlDS_PastService"
                                    AllowPaging="True" AllowSorting="True" AllowFilteringByColumn="False" Width="1100px" Height="300px"  GridLines="None"  >
                            
                                    <ClientSettings Selecting-AllowRowSelect="false" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                     </ClientSettings>
                            
                                     <GroupingSettings CaseSensitive="false"></GroupingSettings>

                                    <MasterTableView DataKeyNames="id" DataSourceID="SqlDS_PastService" PageSize="50" AutoGenerateColumns="False" Width="1100px"  >
                                        <HeaderStyle VerticalAlign="Bottom" />
                    
                                                    <Columns>
                                                                                                                                   
                                                    <telerik:GridBoundColumn DataField="id" DataType="System.Int32" HeaderText="id" 
                                                        SortExpression="id" UniqueName="id" ReadOnly="true" Visible="False" Display="False" >
                                                    </telerik:GridBoundColumn>
                                            
                                                    <telerik:GridBoundColumn DataField="logid" DataType="System.Int32" 
                                                        HeaderText="logid" ReadOnly="True" SortExpression="logid" UniqueName="logid" 
                                                        Visible="False" Display="False">
                                                    </telerik:GridBoundColumn>
                                            
                                                    <telerik:GridBoundColumn DataField="eventdate" 
                                                        DataFormatString="{0:MM/dd/yy}" DataType="System.DateTime" HeaderText="Date" 
                                                        SortExpression="eventdate" UniqueName="eventdate" ReadOnly="True" FilterControlWidth="60px" >
                                                        <HeaderStyle Width="120px" />
                                                        <ItemStyle VerticalAlign="Top" Width="120px" Wrap="false" HorizontalAlign="Left" />
                                                    </telerik:GridBoundColumn>
                                                                                      
                                                    <telerik:GridBoundColumn DataField="vendor" HeaderText="Vendor" 
                                                        SortExpression="vendor" UniqueName="vendor" 
                                                        AndCurrentFilterFunction="Contains" MaxLength="20">
                                                        <HeaderStyle Width="175px" />
                                                        <ItemStyle VerticalAlign="Top" Width="175px" Wrap="false" HorizontalAlign="Left" />
                                                    </telerik:GridBoundColumn>
                                          
                                                    <telerik:GridBoundColumn DataField="description" HeaderText="Description" 
                                                        SortExpression="description" UniqueName="description" 
                                                        AndCurrentFilterFunction="Contains" FilterControlWidth="200px" >
                                                        <HeaderStyle Width="400px" />
                                                        <ItemStyle VerticalAlign="Top" Width="400px" Wrap="true" HorizontalAlign="Left"   />
                                                    </telerik:GridBoundColumn>
                                            
                                                    <telerik:GridBoundColumn DataField="cost" DataType="System.Double" 
                                                        HeaderText="Cost" SortExpression="cost" UniqueName="cost" 
                                                        DataFormatString="{0:c2}" DefaultInsertValue="0" FilterControlWidth="40px" >
                                                        <HeaderStyle Width="100px" />
                                                        <ItemStyle VerticalAlign="Top" Width="100px" Wrap="false" HorizontalAlign="right"  />
                                                    </telerik:GridBoundColumn>
                                            
                                                    <telerik:GridBoundColumn DataField="odometer" DataType="System.Double" 
                                                        HeaderText="Odometer" SortExpression="odometer" UniqueName="odometer" 
                                                        DataFormatString="{0:n0}" EmptyDataText="0" FilterControlWidth="40px">
                                                        <HeaderStyle Width="75px" />
                                                        <ItemStyle VerticalAlign="Top" Width="75px" Wrap="false" HorizontalAlign="Right"  />
                                                    </telerik:GridBoundColumn>
                                            
                                                    <telerik:GridBoundColumn DataField="servicetype" HeaderText="Type" 
                                                        SortExpression="servicetype" UniqueName="servicetype" 
                                                        AndCurrentFilterFunction="Contains" MaxLength="20">
                                                        <HeaderStyle Width="120px" />
                                                        <ItemStyle VerticalAlign="Top" Width="120px" Wrap="false" HorizontalAlign="Left" />
                                                    </telerik:GridBoundColumn>
                                            
                                            
                                                    <telerik:GridBoundColumn DataField="createddate" 
                                                        DataFormatString="{0:MM/dd/yy}" DataType="System.DateTime" HeaderText="Created" 
                                                        SortExpression="createddate" UniqueName="createddate" ReadOnly="True" FilterControlWidth="60px" >
                                                        <HeaderStyle Width="100px" />
                                                        <ItemStyle VerticalAlign="Top" Width="100px" Wrap="false" HorizontalAlign="Left"  />
                                                    </telerik:GridBoundColumn>
                                        
                                                </Columns>
                                         
                             </MasterTableView>
                     
                                </telerik:RadGrid>
                      
                                      <asp:SqlDataSource ID="SqlDS_PastService" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                           SelectCommand="SELECT [id], [logid], [eventdate], [vendor], [cost], [odometer], [servicetype], [description], [createddate], [lastupdate] 
                                                          FROM [Fleet_Service] WHERE ([id] = @id) ORDER BY [eventdate] DESC" >
                                            <SelectParameters>
                                                    <asp:ControlParameter ControlID="RadGridVehicleList" Name="id" PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>                                            
                                      </asp:SqlDataSource>
  
                             
                           </telerik:RadAjaxPanel>
                    </div> 
                    </telerik:RadPageView>
                    
                    
                    <telerik:RadPageView ID="RecordSale" runat="server" Width="1100px" Height="290px" BorderColor="SteelBlue" BorderWidth="1px">
                         <div id="div3" style="Margin:5px 0px 5px 10px;float:left;width:1100px;height:280px;">
                      <telerik:RadAjaxPanel ID="RadAjaxPanelRecordSale" runat="server"  >   
                            
                            
                             <div style="width:1000px; height:40px; float:left;margin-top:5px;">
                                    
                                <div style="width:200px; float:right;">
                                    <telerik:RadButton ID="btnRecordSale" runat="server" Text="Record Sale" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>    
                                  
                           </div>                      
                            
                           
                            <div style="Margin:0px 0px 0px 20px; width:300px; float:left;">
                            <h6>Vehicle Profile</h6>
                            
                                <asp:Table ID="TblSaleDetails" runat="server" Width="300px" CssClass="myLabelCss">
                                    <asp:TableRow >
                                        <asp:TableCell ><b>GL #:</b></asp:TableCell>
                                        <asp:TableCell ><asp:Label ID="rsGL" runat="server"></asp:Label></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow CssClass="myLabelCss">
                                        <asp:TableCell ><b>VIN:</b></asp:TableCell>
                                        <asp:TableCell ><asp:Label ID="rsVIN" runat="server"></asp:Label></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow CssClass="myLabelCss">
                                        <asp:TableCell ><b>Lease Unit:</b></asp:TableCell>
                                        <asp:TableCell ><asp:Label ID="rsUnit" runat="server"></asp:Label></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow CssClass="myLabelCss">
                                        <asp:TableCell><b>Desc.:</b></asp:TableCell>
                                        <asp:TableCell><asp:Label ID="rsDesc" runat="server"></asp:Label></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell><b>Driver:</b></asp:TableCell>
                                        <asp:TableCell><asp:Label ID="rsDriver" runat="server"></asp:Label></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell><b>Location:</b></asp:TableCell>
                                        <asp:TableCell><asp:Label ID="rsLocation" runat="server"></asp:Label></asp:TableCell>
                                    </asp:TableRow>
                                    
                                </asp:Table>

                            </div>
                            
                            <div style="padding:30px 0px 0px 15px; width:500px; float:left; ">
                               
                               <div style="margin: 0px 0px 5px 0px; width:400px;">
                                    <asp:HiddenField ID="rsStatus" runat="server" Value="Sold" />
                               
                                    <telerik:RadNumericTextBox ID="rsPrice_Sold" runat="server" Label="Sell Price:" LabelWidth="75px" Width="250px" 
                                        EnabledStyle-HorizontalAlign="Right" EnabledStyle-Width="250px" NumberFormat-DecimalDigits="0" Type="Currency" LabelCssClass="myLabelCss" >
                                    </telerik:RadNumericTextBox>
                               </div>
                               <div style="margin: 0px 0px 5px 0px; width:400px;">
                                    <telerik:RadDatePicker ID="rsDisposedt" runat="server" Width="250px" MinDate="1/1/1900" DateInput-Label="Sell Date:" 
                                            DateInput-LabelCssClass="myLabelCss">
                                    </telerik:RadDatePicker>
                               </div>
                               <div style="margin: 0px 0px 5px 0px; width:400px;">
                                    <telerik:RadTextBox ID="rsOwnerHistory" runat="server" Label="Notes:" Height="70px" LabelWidth="75px" Width="400px" 
                                            LabelCssClass="myLabelCss" Wrap="true" TextMode="MultiLine" Rows="10" >
                                    </telerik:RadTextBox>
                               </div>
                               <div style="margin: 0px 0px 5px 0px; width:400px;">
                                    
                               </div>

          
                                
                            </div>
                            
                       </telerik:RadAjaxPanel>
                       </div>
                    </telerik:RadPageView> 
           </telerik:RadMultiPage>
            
        </div>
  
  </telerik:RadPageView>
  <telerik:RadPageView ID="NewVehicle" runat="server" Width="1500px" >  
          
     <div style="padding:10px 0px 5px 10px;width:1500px;">
        <telerik:RadAjaxPanel ID="RadAjaxPanelAddNewVehicle" runat="server" >
               <div style="width:720px; float:left;">
           
                      <div style="width:350px; float:left;">
                            <div style="margin: 0px 0px 5px 0px; width:275px;">
                                <telerik:RadTextBox ID="newDriver_namef" runat="server" Label="Driver (F):" MaxLength="25" LabelWidth="100px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:275px;">
                                <telerik:RadTextBox ID="newDriver_namel" runat="server" Label="Driver (L):" MaxLength="25" LabelWidth="100px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:250px;">
                                <telerik:RadComboBox ID="newOwnership" Label="Ownership:" runat="server" Enabled="true" DataSourceID="SqlDS_nOwner" DataValueField="Display" DataTextField="Display"   Height="75px" LabelCssClass="myLabelCss" ></telerik:RadComboBox>   
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:250px;">
                                <telerik:RadComboBox ID="newLeasingCo" Label="Leasing Co.:" runat="server" Enabled="true" DataSourceID="SqlDS_nLeaseCo" DataValueField="Display" DataTextField="Display"  Height="75px" LabelCssClass="myLabelCss" ></telerik:RadComboBox>
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:275px;">
                                <telerik:RadNumericTextBox ID="newPrice_Delivery" runat="server" Label="Del. Price:" LabelWidth="100px" Type="Currency" EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Width="250px" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:275px;">
                                <div style="width:100px;float:left;">
                                    <asp:Label ID="Label1" runat="server" Text="Del. Date:" CssClass="myLabelCss"></asp:Label>
                                </div>
                                <div style="float:left;">
                                    <telerik:RadDatePicker ID="newDeliveryDt" runat="server"  Width="150px" ></telerik:RadDatePicker>
                                </div>

                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:250px;">
                                <telerik:RadComboBox ID="newLease_term" runat="server"  Label="Term:"  LabelCssClass="myLabelCss">
                                    <Items>   
                                        <telerik:RadComboBoxItem runat="server" Text="No Lease" Value="0" />
                                        <telerik:RadComboBoxItem runat="server" Text="36 Months" Value="36" />
                                        <telerik:RadComboBoxItem runat="server" Text="48 Months" Value="48" Selected="true" />
                                        <telerik:RadComboBoxItem runat="server" Text="60 Months" Value="60" />   
                                        <telerik:RadComboBoxItem runat="server" Text="72 Months" Value="72" />   
                                    </Items>
                                </telerik:RadComboBox> 
                            </div>
                            
                            <div style="margin: 0px 0px 10px 0px; width:275px;">
                               <div style="width:100px;float:left;">
                                    <asp:Label ID="Label2" runat="server" Text="Lease End:" CssClass="myLabelCss"></asp:Label>
                               </div>
                               <div style="float:left; width:150px;"> 
                                     <telerik:RadDatePicker ID="newLease_EndDt" runat="server"  ></telerik:RadDatePicker>
                               </div>
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:275px;">
                                <telerik:RadTextBox ID="newVin" runat="server" Label="Vin:" MaxLength="20" Width="250px" LabelWidth="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:250px;">
                                <telerik:RadComboBox ID="newLocation" Label="Location:" runat="server" Enabled="true" DataSourceID="SqlDS_nLocation" DataValueField="Display" DataTextField="Display"  LabelCssClass="myLabelCss"></telerik:RadComboBox>  
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:250px;">
                                <telerik:RadComboBox ID="newAssetType" Label="Asset Type:" runat="server" Enabled="true" DataSourceID="SqlDS_nAssetType" DataValueField="Display" DataTextField="Display"  Height="45px" LabelCssClass="myLabelCss"></telerik:RadComboBox>  
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:275px;">
                                <telerik:RadTextBox ID="newUnit" runat="server" Label="Lease Unit#:" MaxLength="10" LabelWidth="100px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:275px;">
                                <telerik:RadNumericTextBox ID="newDKUnit" runat="server" Label="DK Unit:" Type="Number" LabelWidth="100px" Width="250px" NumberFormat-DecimalDigits="0" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                            </div>
                            <div style="margin: 0px 0px 5px 0px; width:275px;">
                                <telerik:RadTextBox ID="newPlate" runat="server" Label="Lic. Plate:" MaxLength="10" LabelWidth="100px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                            </div>
           
       
                      </div>
      
                      <div style="width:350px; float:left;">
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadComboBox ID="newMake" Label="Make:" runat="server" Enabled="true" DataSourceID="SqlDS_nMake" DataValueField="Display" DataTextField="Display"  Width="200px" Height="250px" LabelCssClass="myLabelCss"></telerik:RadComboBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadTextBox ID="newModel" runat="server" Label="Model:" Text="" LabelWidth="100px" MaxLength="25" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadComboBox ID="newYear" Label="Year:" runat="server" Enabled="true" DataSourceID="SqlDS_nModelYr" DataValueField="Display" DataTextField="Display" Width="200px" Height="75px" LabelCssClass="myLabelCss"></telerik:RadComboBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadComboBox ID="newFueltype" Label="Fuel:" runat="server" Enabled="true" DataSourceID="SqlDS_nFuel" DataValueField="Display" DataTextField="Display" Width="200px" Height="75px" LabelCssClass="myLabelCss"></telerik:RadComboBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadTextBox ID="newTireSize" runat="server" Label="Tires:" MaxLength="75" LabelWidth="100px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadTextBox ID="newEngine" runat="server" Label="Engine:" MaxLength="75" LabelWidth="100px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadNumericTextBox ID="newGVWR" runat="server" Label="GVWR:" Type="Number" LabelWidth="100px" EnabledStyle-HorizontalAlign="Right" NumberFormat-DecimalDigits="0" Width="250px" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadNumericTextBox ID="newActualWeight" runat="server" Label="Act. Wt:" Type="Number" LabelWidth="100px" EnabledStyle-HorizontalAlign="Right"  NumberFormat-DecimalDigits="0" Width="250px" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadNumericTextBox ID="newCarryWeight" runat="server" Label="Carry Wt.:" Type="Number" LabelWidth="100px" EnabledStyle-HorizontalAlign="Right"  NumberFormat-DecimalDigits="0" Width="250px" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadTextBox ID="newWarrantyService" runat="server" Label="Warrenty Loc:" MaxLength="35" LabelWidth="100px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="margin: 0px 0px 5px 0px; width:275px;">
                            <telerik:RadTextBox ID="newGasCard" runat="server" Label="Gas Card:" MaxLength="15" LabelWidth="100px" Width="250px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
      
       
                       </div>


                    <div style="Margin:20px 0px 10px 0px; width:600px;">
                        <telerik:RadTextBox ID="newDescription" runat="server" Label="Add'l Desc.:" LabelWidth="100px"  Width="575px" Height="50px" Wrap="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                    </div>

                    <div style="width:600px; height:40px; float:left;">
                              
                            <div style="width:200px; float:right;">
                                <telerik:RadButton ID="btnAddNewVehicle" runat="server" Text="Add New Vehicle" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                <asp:Label ID="lblAddVehicleAction" runat="server" Font-Size="Small" Font-Bold="true" ForeColor="Red" LabelCssClass="myLabelCss"></asp:Label>
                            </div>    
                
                                <asp:HiddenField ID="newGL" runat="server"  />
                                <asp:HiddenField ID="newDisposedt" runat="server" />
                                <asp:HiddenField ID="newPrice_Sold" runat="server" />
                                <asp:HiddenField ID="newStatus" runat="server" />
                                <asp:HiddenField ID="newOwnerhistory" runat="server" />                      
       
                     </div>


                </div>
    
    
    

               <div style="Margin:0px 0px 20px 10px; width:750px; float:left;">
            
                    <h6>Recent Adds</h6>
                    <telerik:RadGrid ID="RadGridRecentlyAddedVeh" runat="server"  DataSourceID="SqlDS_RecentlyAddedVeh" GridLines="None" 
                                        Width="700px" Height="600px" AllowPaging="True"  >
                           
                        <ClientSettings Selecting-AllowRowSelect="false" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                        </ClientSettings>
                           
                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_RecentlyAddedVeh" PageSize="50" Width="700px"  >
      
                            <Columns>
                                <telerik:GridBoundColumn DataField="CreatedDt" HeaderText="Created" SortExpression="CreatedDt"  UniqueName="CreatedDt">
                                    <HeaderStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                                    <ItemStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="driver_namel" HeaderText="Last Name" SortExpression="driver_namel" UniqueName="driver_namel">
                                    <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                                    <ItemStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="driver_namef" HeaderText="First Name" SortExpression="driver_namef" UniqueName="driver_namef">
                                    <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                                    <ItemStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="year" HeaderText="Year" SortExpression="year" UniqueName="year">
                                    <HeaderStyle Width="50px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                                    <ItemStyle Width="50px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="make" HeaderText="Make" SortExpression="make" UniqueName="make">
                                    <HeaderStyle Width="50px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                                    <ItemStyle Width="50px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="model" HeaderText="Model" SortExpression="model" UniqueName="model">
                                    <HeaderStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                                    <ItemStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="location" HeaderText="Location" SortExpression="location" UniqueName="location">
                                    <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                                    <ItemStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" />
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                      </telerik:RadGrid>
                            <asp:SqlDataSource ID="SqlDS_RecentlyAddedVeh" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT TOP 25 [driver_namel], [driver_namef], [year], [make], [model], [location], [CreatedDt] FROM [Fleet] ORDER BY [CreatedDt] DESC">
                            </asp:SqlDataSource>

                 </div>
    
    
    
        </telerik:RadAjaxPanel>
        </div>
   

                            <asp:SqlDataSource ID="SqlDS_nLocation" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Location' AND [display] != '%'
                                    ORDER BY [displayseq], [display]">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_nAssetType" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Asset' AND [display] != '%'
                                    ORDER BY [displayseq], [display]">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_nFuel" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Fuel' AND [display] != '%'
                                    ORDER BY [displayseq], [display]">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_nMake" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Make' AND [display] != '%'
                                    ORDER BY [displayseq], [display]">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_nModelYr" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='ModelYr' AND [display] != '%'
                                    ORDER BY [displayseq], [display] Desc">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_nOwner" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='Owner' AND [display] != '%'
                                    ORDER BY [displayseq], [display] Desc">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDS_nLeaseCo" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT [display], [value] 
                                    FROM [Menu] 
                                    WHERE [Menu] = 'Fleet' AND [type]='LeaseCo' AND [display] != '%'
                                    ORDER BY [displayseq], [display] Desc">
                            </asp:SqlDataSource>                        
                            
           
         	  
  </telerik:RadPageView>
  <telerik:RadPageView ID="Maintenance" runat="server" Width="1800px">
        <div id="div8" style="Margin:10px;float:left;width:1800px;">
            <div style="width:180px; float:left;">
                    <telerik:RadTextBox ID="ssDriver_namel" runat="server" Label="Driver:" LabelWidth="50px" Width="160px" AutoPostBack="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
            </div>
            <div style="width:250px; float:left;">
                    <telerik:RadComboBox ID="ssLocation" runat="server"  Label="Location:" Width="150px" Height="300px" 
                            DataSourceID="SqlDS_fLocation" DataValueField="branchname" DataTextField="comboname" AutoPostBack="true" AppendDataBoundItems="true" LabelCssClass="myLabelCss">
                            <Items>   
                                <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true" />
                            </Items>
                    </telerik:RadComboBox> 
                   
            </div> 
            <div style="width:150px; float:left;">
                <telerik:RadTextBox ID="ssDKUnit" runat="server" Label="DK Unit:" LabelWidth="65px" Width="125px" AutoPostBack="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
            </div>
            <div style="width:150px; float:left;">
                <telerik:RadTextBox ID="ssVendor" runat="server" Label="Vendor:" LabelWidth="65px" Width="125px" AutoPostBack="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
            </div>
            <div style="width:250px; float:left;">
                <telerik:RadTextBox ID="ssServiceDesc" runat="server" Label="Service Desc.:" LabelWidth="110px" Width="230px" AutoPostBack="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
            </div>
            <div style="width:200px; float:left;">
                <telerik:RadComboBox ID="ssMake" runat="server"  Label="Make:"  Width="125px" Height="300px" 
                        DataSourceID="SqlDS_fMake" DataValueField="Display" DataTextField="Display" AutoPostBack="true" AppendDataBoundItems="true" LabelCssClass="myLabelCss">
                        <Items>   
                            <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true" />
                        </Items>
                </telerik:RadComboBox>
                    
            </div>
            <div style="width:150px; float:left;">
                <telerik:RadTextBox ID="ssModel" runat="server" Label="Model:" LabelWidth="50px" Width="125px" AutoPostBack="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
            </div>
              
        </div>
        
        
        <div id="div1" style="Margin:10px;float:left;width:1800px;">
              <telerik:RadGrid ID="RadGridRecentMaintenance" runat="server" Width="1500px" 
                  Height="600px" AllowPaging="True" 
                    AllowSorting="True" DataSourceID="SqlDS_RecentMaintenance" 
                  GroupPanelPosition="Top" ResolvedRenderMode="Classic" >
                    
                    <GroupingSettings CaseSensitive="false" />

                    <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                    </ClientSettings>
                    
                    <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_RecentMaintenance" PageSize="25" >
                    
                        <Columns>
                            <telerik:GridBoundColumn DataField="createddate" 
                                DataFormatString="{0:MM/dd/yy}" DataType="System.DateTime" HeaderText="Created" 
                                SortExpression="createddate" UniqueName="createddate" Display="false">
                            </telerik:GridBoundColumn>
                           <telerik:GridBoundColumn DataField="eventdate" DataFormatString="{0:MM/dd/yy}"  ItemStyle-HorizontalAlign="Right"
                                DataType="System.DateTime" HeaderText="Date" SortExpression="eventdate" UniqueName="eventdate" >
                                <HeaderStyle Width="50px" Font-Size="Small" />
                                <ItemStyle Width="50px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="Small" />
                            </telerik:GridBoundColumn>   
                            <telerik:GridBoundColumn DataField="location" HeaderText="Branch" 
                                SortExpression="location" UniqueName="location">
                                <HeaderStyle Width="50px" Font-Size="Small"/>
                                <ItemStyle Width="50px" VerticalAlign="Top" Font-Size="Small" Wrap="false" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="dkunit" HeaderText="Unit" 
                                SortExpression="dkunit" UniqueName="dkunit">
                                <HeaderStyle Width="50px" Font-Size="Small"/>
                                <ItemStyle Width="50px" HorizontalAlign="Center" VerticalAlign="Top" Font-Size="Small"/>
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="VehDesc" HeaderText="Description" 
                                ReadOnly="True" SortExpression="VehDesc" UniqueName="VehDesc">
                                <HeaderStyle Width="180px" Font-Size="Small"/>
                                <ItemStyle Width="180px" VerticalAlign="Top" Font-Size="Small"/>
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="description" HeaderText="Service" 
                                SortExpression="description" UniqueName="description">
                                <HeaderStyle Width="350px" Font-Size="Small" />
                                <ItemStyle Width="350px" VerticalAlign="Top" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="odometer" DataType="System.Double" 
                                HeaderText="Odometer" SortExpression="odometer" UniqueName="odometer" DataFormatString="{0:n0}" >
                                <HeaderStyle Width="75px" Font-Size="Small"/>
                                <ItemStyle Width="75px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="Small"/>
                            </telerik:GridBoundColumn>
                           
                           
                            <telerik:GridBoundColumn DataField="cost" DataType="System.Double" 
                                HeaderText="Cost" SortExpression="cost" UniqueName="cost" DataFormatString="{0:c2}" >
                                <HeaderStyle Width="50px" Font-Size="Small"/>
                                <ItemStyle Width="50px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="Small"/>
                            </telerik:GridBoundColumn>
                            
                             <telerik:GridBoundColumn DataField="vendor" HeaderText="Vendor" 
                                SortExpression="vendor" UniqueName="vendor">
                                <HeaderStyle Width="120px" Font-Size="Small"/>
                                <ItemStyle Width="120px" VerticalAlign="Top" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                        
                            <telerik:GridBoundColumn DataField="driver_namel" HeaderText="Driver" 
                                    SortExpression="driver_namel" UniqueName="driver_namel">
                                <HeaderStyle Width="60px" Font-Size="Small"/>
                                <ItemStyle Width="60px" VerticalAlign="Top" Font-Size="Small" Wrap="false" />
                            </telerik:GridBoundColumn>
                        
                            <telerik:GridBoundColumn DataField="unit" HeaderText="Lease" 
                                SortExpression="unit" UniqueName="unit">
                                <HeaderStyle Width="50px" Font-Size="Small"/>
                                <ItemStyle Width="50px" HorizontalAlign="Center" VerticalAlign="Top" Font-Size="Small"/>
                            </telerik:GridBoundColumn>
                        
                        </Columns>
                        
                       
                        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" Wrap="True" />
                    </MasterTableView>
        
              </telerik:RadGrid>
                


        <asp:SqlDataSource ID="SqlDS_RecentMaintenance" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="uspFleetPastServicesSearch" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ssLocation" DefaultValue="%" Name="Location" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ssDKUnit" DefaultValue="%" Name="DKUnit" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ssDriver_namel" DefaultValue="%" Name="Driver_namel" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ssVendor" DefaultValue="%" Name="Vendor" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ssServiceDesc" DefaultValue="%" Name="ServiceDesc" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ssMake" DefaultValue="%" Name="Make" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ssModel" DefaultValue="%" Name="Model" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                
        </div>  
        
  
  </telerik:RadPageView>
  <telerik:RadPageView ID="Reports" runat="server" >
        <div id="div7" style="padding:15px 5px 5px 15px;float:left; height:470px;width:1800px;">
            
            
           <div id="div9" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                <div style="width:1300px;">    
                    <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                        Fleet Vehicles
                    </div>
                </div>
                <div style="width:1300px;">
	                <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkVehicleListingAll" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"   Text="All Vehicle Dump" NavigateUrl="../Reports2/Fleet_VehicleListingall.aspx" Target="_blank"></telerik:RadButton>
        	        </div>
         	        <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                        <b>Data Source: </b><i>DK datawarehouse</i><br /><br /> 
                        <b>Report Description: </b>A data dump of every vehicle in the database.  
                        <br /><br />
                        <b>Report Use: </b>The report exports directly to an Excel file for further manipulation.
                    </div>

    	        </div>
            </div> 
        </div>
        
  
  </telerik:RadPageView>
  
  
  
  
</telerik:RadMultiPage> 





   
   </div>