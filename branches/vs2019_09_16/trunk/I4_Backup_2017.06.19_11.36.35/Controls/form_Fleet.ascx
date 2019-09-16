<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_Fleet.ascx.vb" Inherits="Controls_form_Fleet" %>


<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="VehicleList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="VehicleList"  />
                    <telerik:AjaxUpdatedControl ControlID="RadMultipage2"  />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleInfo" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelOwnership" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddService" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleDetails" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlAddService" LoadingPanelID="RadAjaxLoadingPanel1" />
                    
                    <telerik:AjaxUpdatedControl ControlID="lblVehicleDesc" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblDriver" LoadingPanelID="" />
                    <%--<telerik:AjaxUpdatedControl ControlID="lblTest" LoadingPanelID="" />--%>
                    <telerik:AjaxUpdatedControl ControlID="lblAddServiceTitle" LoadingPanelID="" />

                </UpdatedControls>    

            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="RadGridService">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridService" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="RadTabStrip2">
                <UpdatedControls>
                  
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelVehicleDetails" LoadingPanelID="RadAjaxLoadingPanel1" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnAddService">
                <UpdatedControls>
                  
                    <telerik:AjaxUpdatedControl ControlID="RadGridService" LoadingPanelID="RadAjaxLoadingPanel1" />
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
              
 
        </AjaxSettings>
 </telerik:RadAjaxManagerProxy>
 
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>
 

<asp:SqlDataSource ID="SqlDS_VehicleList" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="uspFleetListingWhseFilter" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="WhseID1" Type="String" />
            <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="WhseID2" Type="String" />
            <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="WhseID3" Type="String" />
            <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="WhseID4" Type="String" />
            <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="WhseID5" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDS_PastService" runat="server" 
     ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
     SelectCommand="uspFleetPastServices" SelectCommandType="StoredProcedure">
     <SelectParameters>
         <asp:ControlParameter ControlID="VehicleList" Name="ID" PropertyName="SelectedValue" Type="Int32" />
     </SelectParameters>
</asp:SqlDataSource>

<div style="Margin: 0px 5px 5px 10px; width:1200px;">
    
        <%--<div > --%>   
            <div style="width:270px; float:left; margin: 5px 10px 15px 0px; border:2px solid #4c68a2;">  
                             
                <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                    Vehicle List
                </div>

                <telerik:RadListBox ID="VehicleList" runat="server" Height="680px" Width="250px" DataSourceID="SqlDS_VehicleList" SelectionMode ="Single" 
                    style="top: 0px; left: 0px"  AutoPostBack="true" DataValueField="b" >

                    <%--<ButtonSettings TransferButtons="All"></ButtonSettings>--%>
                    <ItemTemplate>
                        <div style="height: 40px;">
                            <div>
                                Unit: <asp:Label ID="Label1" runat="server" Text='<%# Eval("dkunit") %>' ></asp:Label> &nbsp;&nbsp;
                    
                                Driver: <asp:Label ID="Label2" runat="server" Text='<%# Eval("driver_namel") %>' ></asp:Label>
                            </div>
                            <div style="padding:0px 0px 0px 5px;">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>

                </telerik:RadListBox>
            </div>
        <div style="width:750px; height:750px; float:left; margin: 0px 0px 0px">
            <div id="divVehiclesDetails" style="width:750px;height:470px; float:left;Margin:0px 0px 15px 0px;vertical-align:top;" >
                    <div>
                        <div style="width:375px;height:30px;float:left;">
                            <asp:Label ID="lblVehicleDesc" runat="server" Width="400px" Font-Bold="true" Font-Size="Large" />
                        </div>
                        <div style="width:375px;height:30px;float:left;">
                            <asp:Label ID="lblDriver" runat="server" Width="400px" Font-Bold="true" Font-Size="Large" />
                        </div>
                    </div>
                    <div style="width:750px;">
                         <telerik:RadTabStrip ID="RadTabStrip2" runat="server" MultiPageID="RadMultiPage2" SelectedIndex="2" Width="750px" Skin="MetroTouch">
                            <Tabs>
                                <telerik:RadTab runat="server" Text="Vehicle Info" PageViewID="VehicleInfo" Selected="true" ></telerik:RadTab>
                                <telerik:RadTab runat="server" Text="Details" PageViewID="VehicleDetails" ></telerik:RadTab>
                                <telerik:RadTab runat="server" Text="Past Service" PageViewID="PastService" ></telerik:RadTab>
                            </Tabs>
                         </telerik:RadTabStrip>
                    </div>
                   
                    <div style="width:750px; height:400px;">
                        <telerik:RadMultiPage ID="RadMultiPage2" runat="server" Height="400px" Width="750px" >
                
                               <telerik:RadPageView ID="VehicleInfo" runat="server" Selected="true" Width="750px" Height="400px" BorderColor="SteelBlue" BorderWidth="1px" >
                                    <div id="div2" style="Margin:5px 5px 5px 15px;float:left;width:750px;">
                                         <telerik:RadAjaxPanel ID="RadAjaxPanelVehicleInfo" runat="server" Height="400px" Width="750px" >
                                            <div style="width:750px; float:left;">
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="vin" runat="server" Label="Vin:" LabelWidth="75px" ReadOnly="true" Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="plate" runat="server" ReadOnly="true" Label="Plate:" LabelWidth="75px" Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="dkunit" runat="server" ReadOnly="true" Label="Unit:" LabelWidth="75px" Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                            
                                            </div>
                                            <div style="width:750px; float:left;">
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="location" runat="server" ReadOnly="true" Label="Branch:" LabelWidth="75px" Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="AssetType" runat="server" ReadOnly="true" Label="Asset Type:" LabelWidth="75px"  Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="Status" runat="server" ReadOnly="true" Label="Status:" LabelWidth="75px" Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                            
                                            </div>
                                            <div style="width:750px; float:left;">
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="Make" runat="server" ReadOnly="true" Label="Make:" LabelWidth="75px" Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="model" runat="server" ReadOnly="true" Label="Model:" LabelWidth="75px" Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:140px; float:left;">
                                                    <telerik:RadTextBox ID="ModelYr" runat="server" ReadOnly="true" Label="Year:" LabelWidth="75px" Width="130px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:115px; float:left;">
                                                    <telerik:RadTextBox ID="fueltype" runat="server" ReadOnly="true" Label="Fuel:" LabelWidth="60px" Width="115px" LabelCssClass="myLabelCss"></telerik:RadTextBox> 
                                                </div>
                                            
                                            </div>
                                            <div style="width:750px; float:left;">
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="driver_namef" runat="server" ReadOnly="true" Label="Driver (F):" LabelWidth="75px" Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:215px; float:left;">
                                                    <telerik:RadTextBox ID="driver_namel" runat="server" ReadOnly="true" Label="Driver (L):" LabelWidth="75px" Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                            </div>
                                            
                                            <div style="width:500px; height:50px;Margin:10px;">
                                                <telerik:RadTextBox ID="description" runat="server" Label="Additional Description:" ReadOnly="true" Wrap="true" Width="500px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                <p style="font-weight:bold;margin-top:10px;">Contact Steve Anderson to report changes to <i>Vehicle Info</i> or <i>Details.</i></p>
                                            </div>
                                                                                                                                                                                                                                                                                                                                                
                                           
                                           
                                         </telerik:RadAjaxPanel>
                                        
                                    </div>
                        
                               </telerik:RadPageView>
                               <telerik:RadPageView ID="VehicleDetails" runat="server" Width="750px" Height="400px" BorderColor="SteelBlue" BorderWidth="1px" >
                                    <div id="div5" style="Margin:5px 5px 5px 15px;float:left;">
                                    <telerik:RadAjaxPanel ID="RadAjaxPanelVehicleDetails" runat="server" Height="400px" Width="750px">
  
                                    
                                        <div style="width:750px; float:left;">
                                                <div style="height:40px; width:350px; float:left;">
                                                    <telerik:RadTextBox ID="GasCard" runat="server" ReadOnly="true" Label="Gas Card:" LabelWidth="100px" Width="300px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:350px; float:left;">
                                                    <telerik:RadTextBox ID="warrantyservice" runat="server" ReadOnly="true" Label="Warranty Loc.:" LabelWidth="100px" Width="300px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                        </div>
                                        <div style="width:750px; float:left;">
                                                <div style="height:40px; width:350px; float:left;">
                                                    <telerik:RadTextBox ID="Engine" runat="server" ReadOnly="true" Label="Engine:" LabelWidth="100px" Width="300px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                                <div style="height:40px; width:350px; float:left;">
                                                    <telerik:RadTextBox ID="TireSize" runat="server" ReadOnly="true" Label="Tires:" LabelWidth="100px" Width="300px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                </div>
                                        </div>
                                        <div style="width:750px; float:left;">
                                                <div style="height:40px; width:250px; float:left;">
                                                    <telerik:RadNumericTextBox ID="GVWR" runat="server" ReadOnly="true" Label="GVWR:" LabelWidth="100px" Width="150px" EnabledStyle-HorizontalAlign="Right"  LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                                                </div>
                                                <div style="height:40px; width:250px; float:left;">
                                                    <telerik:RadNumericTextBox ID="ActualWeight" runat="server" ReadOnly="true" Label="Actual Weight:" LabelWidth="100px" Width="150px" EnabledStyle-HorizontalAlign="Right" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                                                </div>
                                                <div style="height:40px; width:250px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CarryWeight" runat="server" ReadOnly="true" Label="Carry Weight:" LabelWidth="100px" Width="150px" EnabledStyle-HorizontalAlign="Right" LabelCssClass="myLabelCss"></telerik:RadNumericTextBox>
                                                </div>
                                        </div>
                                        <div style="width:650px; height:50px;Margin-Top:10px;">
                                                <telerik:RadTextBox ID="Other" runat="server" Label="Other Details:" ReadOnly="true" LabelWidth="100px" Width="550px" Wrap="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                                <p style="font-weight:bold; margin-top:10px;">Contact Steve Anderson to report changes to <i>Vehicle Info</i> or <i>Details.</i></p>
                                        </div>
                                    
                                    
                                    </telerik:RadAjaxPanel>
                                    
                                                 
                                 </div>
                     
                               </telerik:RadPageView>
 
                               <telerik:RadPageView ID="PastService" runat="server" Width="750px" Height="400px" BorderColor="SteelBlue" BorderWidth="1px" >
                                        <div id="div6" style="Margin:5px;float:left;">
                                            <telerik:RadAjaxPanel ID="RadAjaxPanelPastService" runat="server" Width="750px" Height="400px">
                                                  <telerik:RadGrid ID="RadGridService" runat="server" DataSourceID="SqlDS_PastService"
                                                        AllowPaging="True" AllowSorting="True" AllowFilteringByColumn="True" Width="725px" Height="375px"   >
                            
                                                        <ClientSettings Selecting-AllowRowSelect="false" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                                                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                            <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                                                        </ClientSettings>
                                                    
                                                    <GroupingSettings CaseSensitive="false"></GroupingSettings>

                                                    <MasterTableView DataKeyNames="id" DataSourceID="SqlDS_PastService" PageSize="50" AutoGenerateColumns="False" Width="775px" >
                                                        <HeaderStyle VerticalAlign="Bottom" />
                                                        <ItemStyle VerticalAlign="Top" />
                                
                                                                                       
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
                                                                 <ItemStyle Wrap="false" HorizontalAlign="Left" Width="100px"  VerticalAlign="Top" />
                                                                 <HeaderStyle Width="100px" />
                                                            </telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="vendor" HeaderText="Vendor" 
                                                                        SortExpression="vendor" UniqueName="vendor" 
                                                                        AndCurrentFilterFunction="Contains" MaxLength="20">
                                                                  <HeaderStyle Width="150px" />
                                                                  <ItemStyle Wrap="false" HorizontalAlign="Left" Width="150px"  VerticalAlign="Top"  />
                                                            </telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="description" HeaderText="Description" 
                                                                        SortExpression="description" UniqueName="description" 
                                                                        AndCurrentFilterFunction="Contains" FilterControlWidth="170px" >
                                                                   <HeaderStyle Width="220px" />
                                                                   <ItemStyle Width="220px" Wrap="true" HorizontalAlign="Left" VerticalAlign="Top" />
                                                             </telerik:GridBoundColumn>
                                                             <telerik:GridBoundColumn DataField="cost" DataType="System.Double" 
                                                                        HeaderText="Cost" SortExpression="cost" UniqueName="cost" 
                                                                        DataFormatString="{0:c2}" DefaultInsertValue="0" FilterControlWidth="40px" >
                                                                        <HeaderStyle width="85px" />
                                                                        <ItemStyle Wrap="false" HorizontalAlign="right" Width="85px"  VerticalAlign="Top"  />
                                                             </telerik:GridBoundColumn>
                                                             <telerik:GridBoundColumn DataField="odometer" DataType="System.Double" 
                                                                        HeaderText="Odometer" SortExpression="odometer" UniqueName="odometer" 
                                                                        DataFormatString="{0:n0}" EmptyDataText="0" FilterControlWidth="40px">
                                                                        <HeaderStyle width="85px" />
                                                                        <ItemStyle Width="85px" Wrap="false" HorizontalAlign="Right" />
                                                             </telerik:GridBoundColumn>
                                                             <telerik:GridBoundColumn DataField="servicetype" HeaderText="Type" 
                                                                        SortExpression="servicetype" UniqueName="servicetype" 
                                                                        AndCurrentFilterFunction="Contains" FilterControlWidth="50px" MaxLength="20" >
                                                                        <HeaderStyle Width="85px" />
                                                                        <ItemStyle Width="85px" Wrap="false" HorizontalAlign="Left"  VerticalAlign="Top"  />
                                                             </telerik:GridBoundColumn>
                                                             <telerik:GridBoundColumn DataField="createddate" 
                                                                        DataFormatString="{0:MM/dd/yy}" DataType="System.DateTime" HeaderText="Created" 
                                                                        SortExpression="createddate" UniqueName="createddate" ReadOnly="True" FilterControlWidth="60px" >
                                                                  <HeaderStyle Width="100px" />
                                                                  <ItemStyle Width="100px" Wrap="false" HorizontalAlign="Left"  VerticalAlign="Top"  />
                                                             </telerik:GridBoundColumn>
                                      
                                                        </Columns>
                                                    </MasterTableView>
                                  
                                                  </telerik:RadGrid>
                                
                                
                                            </telerik:RadAjaxPanel>
                                        </div>
                               </telerik:RadPageView>
                        </telerik:RadMultiPage>
                    </div>                   
                       

            </div>
        
            <div id="divAddService" style="width:800px; height:250px;float:left; ">
                        <%--<telerik:RadAjaxPanel ID="RadAjaxPanelAddService" runat="server" >--%>
                        <asp:Panel ID="pnlAddService" runat="server" Width="750px" Height="350px">
        
                  <div style="Margin:0px 0px 0px 0px; float:left; border-style:solid; border-color:Green; height:250px; width:750px;">
                                <div style="background:Green; width:750px; height:20px; "> 
                                     <asp:Label ID="lblAddServiceTitle" runat="server" Font-Bold="true" ForeColor="White" Font-Size="Medium" Height="15px" ></asp:Label>
                                </div>
        
                            <div style="Margin:10px 0px 0px 5px; width:740px; height:200px;">
            
                                   
                                    
                                <div style="width:250px; height:200px;Margin: 0px 0px 0px 5px; float:left;">
                                        <asp:HiddenField ID="hdnID" runat="server" />
                                    <%-- <telerik:RadDatePicker ID="serviceEventdate" runat="server"  
                                        DateInput-Label="Event Date:" DateInput-LabelWidth="75px"  Width="140px" MinDate="1/1/2010" DateInput-LabelCssClass="myLabelCss"></telerik:RadDatePicker>--%>
                                    <asp:Label ID="Label4" runat="server" Text="Event Date" CssClass="myLabelCss"></asp:Label>
                                    <telerik:RadCalendar ID="serviceEventdate" runat="server"  EnableMultiSelect="false" >
                                    </telerik:RadCalendar>
                                    
                                    
                                </div>
                                    
                                <div style="Width:400px; height:200px; Margin: 0px 0px 0px 0px; float:left;">   
                                    <div style="width:400px; margin: 0px 0px 10px 0px; float:left;">    
                                        <div style="width:140px; float:left; margin-left:5px;">
                                            <telerik:RadComboBox ID="servicetype" runat="server" Label="Type: " Width="80px" LabelCssClass="myLabelCss" >
                                                <Items>
                                                    <telerik:RadComboBoxItem runat="server" Text="Service" Value="Service" />
                                                    <telerik:RadComboBoxItem runat="server" Text="Repair" Value="Repair" />
                                                    <telerik:RadComboBoxItem runat="server" Text="Tires" Value="Tires" />
                                                </Items>
                                            </telerik:RadComboBox>
                                        </div>
                                        <div style="width:200px; float:left; margin-left:10px;">  
                                              <telerik:RadTextBox ID="serviceVendor" runat="server" Label="Vendor: " Width="200px" LabelWidth="70px" MaxLength="20" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                        </div>    
                                    </div>
                                    <div style="width:400px; margin: 0px 0px 10px 0px; float:left;">
                                
                                   
                                        <div style="width:140px; float:left; margin-left:5px;">
                                                    <telerik:RadNumericTextBox ID="serviceCost" runat="server" MinValue="-1000" MaxValue="990000" Label="Cost:" LabelWidth="40px" 
                                                            EnabledStyle-HorizontalAlign="Right" Culture="English (United States)" Type="Currency" Width="140px" LabelCssClass="myLabelCss">
                                                    </telerik:RadNumericTextBox>

                                        </div>
                                        <div style="width:200px; float:left; margin-left:5px;">
                                                    <telerik:RadNumericTextBox ID="serviceOdometer" runat="server" Width="200px" Label="Odometer:" LabelWidth="75px"
                                                            Type="Number" MinValue="0" MaxValue="999999" NumberFormat-DecimalDigits="0" EnabledStyle-HorizontalAlign="Right" LabelCssClass="myLabelCss" >
                                                    </telerik:RadNumericTextBox>
                                        </div>
                                    </div>
                                
                                    <div style="Margin: 10px 0px 0px 5px; width:400px; float:left;">
                                    
                                        <telerik:RadTextBox ID="serviceDescription" runat="server" Label="Description: "  Width="400px" LabelWidth="90px"
                                             MaxLength="255" Height="60px" TextMode="MultiLine" Rows="5" LabelCssClass="myLabelCss"  >
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="Margin: 10px 0px 0px 5px; width:400px; float:left;">
                                    
                                        <telerik:RadButton ID="btnAddService" runat="server" Text="Add Service" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                        <%--<asp:Button ID="btnAddService" runat="server" Text="Add Service" Width="100px" />--%>
                                    </div>
                                
                                
                                </div>

                                
                            </div>
                   </div>
    
    
                        </asp:Panel>
                    <%--</telerik:RadAjaxPanel>--%>
            </div>
        </div>
        
        <%--</div>--%>



</div>
