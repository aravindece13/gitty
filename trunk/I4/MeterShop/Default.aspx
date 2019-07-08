<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/MeterShop.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="MeterShop_Default" EnableEventValidation="false" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="300" Transparency="0"></telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadTabStrip1" >
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" />
                        <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnwoSearch">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="grdWO" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="woCustSearch">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="woCustSearch" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnwoAdd">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="SqlDS_grdWO" />
                        <telerik:AjaxUpdatedControl ControlID="grdWO" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                        <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                        <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="fltrSerialNo">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="grMeterSearch" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrMake">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="grMeterSearch" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrCustName">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="grMeterSearch" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrTestYear">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="grMeterSearch" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrSizeCode">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="grMeterSearch" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>



<div id="divBody" style="width:1800px;Margin: 10px;"> 
<%--<h1>MeterShop</h1>--%>
    
    <div id="divTabStrip1" style="Margin:0px 5px 0px 10px;float:left;width:1300px;"> 
        <telerik:RadTabStrip ID="RadTabStrip1" MultiPageID="RadMultiPage1" runat="server" Align="Left" AutoPostBack="true" Skin="MetroTouch" Width="1200px" >
            <Tabs>
                <telerik:RadTab runat="server" PageViewID="Home" Text="Home" Selected="true" Width="400px"></telerik:RadTab>
                
                <telerik:RadTab runat="server" PageViewID="NewWorkOrder" Text="WorkOrders" Width="400px" >
                    <Tabs>
                        <telerik:RadTab runat="server" PageViewID="NewWorkOrder" Text="New WorkOrder" Width="200px" ></telerik:RadTab>
                        <telerik:RadTab runat="server" PageViewID="WorkOrderSearch" Text="WorkOrder Search" Width="200px" ></telerik:RadTab>
                    </Tabs>
                </telerik:RadTab>
                <telerik:RadTab runat="server" PageViewID="MeterSearch" Text="Meter Search" Width="400px" ></telerik:RadTab> 
                
            </Tabs>
        </telerik:RadTabStrip>
    </div>
    <div id="divMultiPage1" style="Margin:0px 5px 0px 10px;float:left;width:1800px;">
    <telerik:RadMultiPage ID="RadMultiPage1" Runat="server" Width="1800px">
            <telerik:RadPageView ID="Home" runat="server" TabIndex="0" Selected="true">
                <div id="divHome" style="Margin:20px;float:left;width:1075px;">
                    <h2>Welcome to the Dana Kepner Company MeterShop</h2>
                    <p>Our small meter testing facility is located in Phoenix, Arizona.  Meters of all makes up to 2" can be tested on our test bench, and large meters can be tested remotely using our large meter technicians based
                    out of Arizona and Colorado.</p>
                    
                    <div style="width:1000px; font-size:medium; color:#4c68a2; font-weight:bold; margin-top:50px;">
                        For Sales<br /><br /><br />
                    </div>
                    
                    <p>A Work Order number is necessary to start the testing process for your customer.  This Work Order number corresponds to a SXe (aka GUI) PO number that is created for a Direct Order from Vendor #7, 'Meter Shop.'</p>
                    <p>Product numbers in category 79 exist to cover the different services offered; Initial Test, Repair Evaluation,  and Final Test. </p>
                    <p>Testing will not commence without a Work Order number, testing instructions, and return shipping instructions.</p>
                    <p>When work is done, reports will be available that indicate individual test and refurbishment results, as well as master reports that cover total work completed, total parts used in refurbishment, beginning and ending register readings, and register ID changes.</p>
                    <p>For additional information on small meter testing, please contact Beau McKenna.</p>

                    <p>Once you have your Work Order number and return shipping information, you can start the process by entering that information on the next tab, 'WorkOrders \ New WorkOrders'.</p>


                </div>
            </telerik:RadPageView>
            
        
               
                <telerik:RadPageView ID="NewWorkOrder" runat="server">
                    <div style="width:1300px;Margin:20px 0px 0px 0px;">
                        <div style="width:1150px; margin:10px; float:left; text-align:center;" >
                            Please provide the following information to start the meter testing workflow with the Meter Shop.  Once your Work Order has been submitted, a confirmation email will be sent to Beau McKenna and yourself.
                        </div>
                            <div style="width:1150px; margin:10px; float:left; text-align:center;" >
                                <asp:Label ID="lblWOAddStatus" runat="server" ForeColor="#4c68a2" Font-Size="Large"></asp:Label>
                            </div>
                                <div style="width:1150px; Margin:10px; float:left;">
                                    <div style="float:left; width:1150px; margin-right:20px;"> 
                                            <div style="width:125px; float:left; ">
                                                <asp:Label ID="Label1" runat="server" Text="Customer:" CssClass="myLabelCssMedium"></asp:Label>
                                            </div>
                                            <div style="width:800px; float:left;">  
                                                <telerik:RadComboBox ID="woCustSearch" runat="server" Width="500px" EmptyMessage="Type part of customer name" 
                                                    EnableLoadOnDemand="True" AutoPostBack="false" LabelCssClass="myLabelCssMedium" Font-Size="Small" ValidationGroup="woInsert" >
                                                </telerik:RadComboBox>
                                        
                                                <asp:SqlDataSource ID="SqlDS_woWhseLookup" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                    SelectCommand="uspCustomerSearch" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:Parameter Name="CustName" Type="String" />
                                                        <asp:ControlParameter ControlID="woCustSearch" Name="CustID" PropertyName="SelectedValue" Type="String"  />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>

                                        <asp:HiddenField ID="woWhse" runat="server" />
                                    </div>
                                                       
                           
                                    <div style="width:1150px; float:left; margin-top:10px;">
                                        <div style="width:430px; float:left; ">
                                                <div style="width:400px; float:left; height:30px; margin-top:10px;">    
                                                    <telerik:RadMaskedTextBox ID="woWorkOrderID" runat="server" SelectionOnFocus="SelectAll" Label="Work Order:" LabelWidth="125px" Width="325px" 
                                                            Mask="########" PromptChar="" LabelCssClass="myLabelCssMedium" ValidationGroup="woInsert" >
                                                    </telerik:RadMaskedTextBox>
                                           
                                                </div>
                                                <div style="width:400px; float:left; height:30px; margin-top:10px;">
                                                    <div style="width:125px; float:left; ">
                                                        <asp:Label ID="Label4" runat="server" Text="Work Type:" CssClass="myLabelCssMedium"></asp:Label>
                                                    </div>
                                                    <div style="width:175px; float:left; margin-top:3px; ">
                                                        <telerik:RadComboBox ID="woWorkType" runat="server" Width="200px" CssClass="myLabelCssMedium" Font-Size="Small" AutoPostBack="true" >
                                                            <Items>   
                                                                <telerik:RadComboBoxItem runat="server" Text="Test &amp; Repair" Value="Test &amp; Repair" Selected="true"/> 
                                                                <telerik:RadComboBoxItem runat="server" Text="Test Only" Value="Test Only" />
                                                                <telerik:RadComboBoxItem runat="server" Text="Test Only (FBA)" Value="Test Only (FBA)" />
                                                                <telerik:RadComboBoxItem runat="server" Text="Test &amp; Estimate Repairs" Value="Test &amp; Estimate Repairs" />
                                                        
                                                            </Items>
                                                        </telerik:RadComboBox>
                                                    </div>
                                                </div>
                                                <div style="width:400px; float:left; height:200px; margin-top:10px;">
                                                    <telerik:RadTextBox ID="woWorkDetail" runat="server" Label="Instructions:" LabelCssClass="myLabelCssMedium" Font-Size="Small" 
                                                        LabelWidth="125px" Width="400px" Height="250px" InputType="Text" MaxLength="1000" TextMode="MultiLine" Wrap="true" ValidationGroup="woInsert">
                                                    </telerik:RadTextBox>
                                            
                                                </div>
                                        </div>       
                                
                                        <div style="width:600px; height:375px; float:left; margin-left:20px; margin-top:40px;">
                                            <div style="width:600px; margin-bottom:20px;">
                                                <asp:Label ID="Label2" runat="server" CssClass="myLabelCssMedium" 
                                                    Text="When work is complete, ship all meters to the following address:" ValidationGroup="woInsert" />
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <telerik:RadTextBox ID="woShipCo" runat="server" Label="Care Of:" LabelWidth="125px" Width="400px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="woInsert">
                                                </telerik:RadTextBox>
                                        
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <telerik:RadTextBox ID="woShipAdd1" runat="server" Label="Address 1:" LabelWidth="125px" Width="400px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="woInsert">
                                                </telerik:RadTextBox>
                                       
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <telerik:RadTextBox ID="woShipAdd2" runat="server" Label="Address 2:" LabelWidth="125px" Width="400px" Font-Size="Small" LabelCssClass="myLabelCssMedium" >
                                                </telerik:RadTextBox>
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <telerik:RadTextBox ID="woShipCity" runat="server" Label="City:" LabelWidth="125px" Width="400px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="woInsert">
                                                </telerik:RadTextBox>
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <div style="width:200px; float:left;">
                                                    <telerik:RadTextBox ID="woShipState" runat="server" Label="State:" LabelWidth="125px" Width="175px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="woInsert">
                                                    </telerik:RadTextBox>
                                            
                                                </div>
                                                <div style="width:300px; float:left;">
                                                    <telerik:RadTextBox ID="woShipZip" runat="server" Label="Zip:" LabelWidth="50px" Width="225px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="woInsert">
                                                    </telerik:RadTextBox>
                                            
                                                </div>
                                        
                                            </div>
                                            <div style="width:600px; height:30px; float:left; ">
                                            </div>
                                            <div style="width:600px; float:left; ">
                                                <telerik:RadTextBox ID="woShipInstruct" runat="server" Label="Shipping Instructions:" TextMode="MultiLine" Wrap="true"
                                                    LabelWidth="175px" Width="600px" Height="100px" InputType="Text" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="woInsert">
                                                </telerik:RadTextBox>
                                            </div>
                                
                                        </div>
                                        <div style="float:left; width:1150px;">
                          
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" Display="Dynamic" ValidationGroup="woInsert"
                                                        ControlToValidate="woCustSearch" ErrorMessage="Please select a customer." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" Display="Dynamic" ValidationGroup="woInsert"
                                                        ControlToValidate="woWorkOrderID" ErrorMessage="Please enter a Work Order number.  This is the DO number from SXe." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" Display="Dynamic" ValidationGroup="woInsert"
                                                            ControlToValidate="woWorkDetail" ErrorMessage="Please provide some description of testing to be done." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator4" runat="server" Display="Dynamic" ValidationGroup="woInsert"
                                                            ControlToValidate="woShipCo" ErrorMessage="Please provide a receiving contact." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator5" runat="server" Display="Dynamic" ValidationGroup="woInsert"
                                                        ControlToValidate="woShipAdd1" ErrorMessage="Please provide a shipping address." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator6" runat="server" Display="Dynamic" ValidationGroup="woInsert"
                                                        ControlToValidate="woShipState" ErrorMessage="Please provide a shipping state." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server" Display="Dynamic" ValidationGroup="woInsert"
                                                        ControlToValidate="woShipZip" ErrorMessage="Please provide a shipping zip code." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div style="float:left; width:1150px;">
                                                <telerik:RadButton ID="btnwoAdd" runat="server" Text="Add Work Order" Width="200px" Skin="BlackMetroTouch" ValidationGroup="woInsert"></telerik:RadButton>
                                        </div>

                                    </div>


                                </div>
                    </div>
                               

                </telerik:RadPageView>
                <telerik:RadPageView ID="WorkOrderSearch" runat="server" >
                           
                                <div style="width:1150px; height:45px; float:left;Margin:10px 0px 0px 10px;">
                                    <div style="width:300px; float:left;">
                                        <telerik:RadTextBox ID="woCustNameFilter" Label="Customer Filter:" runat="server" Width="280px" LabelWidth="150px" LabelCssClass="myLabelCssMedium" Font-Size="Small">
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="width:300px; float:left;">
                                        <telerik:RadTextBox ID="woSalesRepFilter" Label="Sales Rep Filter:" runat="server" Width="280px" LabelWidth="150px" LabelCssClass="myLabelCssMedium" Font-Size="Small">
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="width:200px; float:left;">
                                        <telerik:RadButton ID="btnwoSearch" runat="server" Text="Search" Width="200px"  Skin="BlackMetroTouch"></telerik:RadButton>
                                    </div>
                                </div>
                            
                                <div style="width:1150px; height:45px; float:left;Margin:10px 0px 0px 10px;">   
                                        <telerik:RadGrid ID="grdWO" runat="server" Width="1110px" Height="500px" AllowPaging="True" CellSpacing="0" DataSourceID="SqlDS_grdWO" GridLines="None" PageSize="50" >
                                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                                <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                                                <Selecting AllowRowSelect="true" />
                                        
                                            </ClientSettings>
                                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdWO" DataKeyNames="WOList_ID" CommandItemDisplay="Top">
                                                <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                                <Columns>
                                                    <telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../MeterShop/WorkOrder.aspx?WOList_ID={0}"  DataNavigateUrlFields="WOList_ID" Text="Edit" UniqueName="column">
                                                        <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                                        <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" Font-Bold="true" Font-Italic="true" Font-Size="Small" />
                                                    </telerik:GridHyperLinkColumn>
                                                    <telerik:GridBoundColumn DataField="WOList_ID" SortExpression="WOList_ID" UniqueName="WOList_ID" Visible="false">     
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                                        <HeaderStyle Width="225px" />
                                                        <ItemStyle Width="225px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" SortExpression="SalesName" UniqueName="SalesName">
                                                        <HeaderStyle Width="150px" />
                                                        <ItemStyle Width="150px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="WorkOrderID" HeaderText="WorkOrder" SortExpression="WorkOrderID" UniqueName="WorkOrderID">
                                                        <HeaderStyle Width="85px" />
                                                        <ItemStyle Width="85px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="branchno" HeaderText="branchno" SortExpression="branchno" UniqueName="branchno" Visible="False">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="comboname" HeaderText="Branch" SortExpression="comboname" UniqueName="comboname">
                                                        <HeaderStyle Width="125px" />
                                                        <ItemStyle Width="125px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="WOStatus" HeaderText="Status" SortExpression="WOStatus" UniqueName="WOStatus">
                                                        <HeaderStyle Width="80px" />
                                                        <ItemStyle Width="80px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="WorkOrderDate" DataType="System.DateTime" HeaderText="Created" SortExpression="WorkOrderDate" UniqueName="WorkOrderDate" 
                                                        DataFormatString="{0:MM/dd/yy}">
                                                        <HeaderStyle Width="80px" />
                                                        <ItemStyle Width="80px" HorizontalAlign="Right" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="MetersTested" DataType="System.Int32" HeaderText="Meters" ReadOnly="True" SortExpression="MetersTested" UniqueName="MetersTested">
                                                        <HeaderStyle Width="60px" />
                                                        <ItemStyle Width="60px" HorizontalAlign="Center" />
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                        
                                            </MasterTableView>
                                    
                                        </telerik:RadGrid>
                    
                                        <asp:SqlDataSource ID="SqlDS_grdWO" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                            SelectCommand="uspMSGetWorkOrders" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="%" Name="WOStatus" Type="String" />
                                                <asp:Parameter DefaultValue="%" Name="CustID" Type="String" />
                                                <asp:ControlParameter Name="SalesRep" ControlID="woSalesRepFilter" DefaultValue="%" Type="String" />
                                                <asp:ControlParameter Name="CustName" ControlID="woCustNameFilter" DefaultValue="%" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                </div>
                    
                </telerik:RadPageView>     
                       
   
             
            <telerik:RadPageView ID="MeterSearch" runat="server"  >
                <div style="width:1800px; float:left; margin:25px 0px 25px 25px;">
                    <div style="width:240px; float:left;">    
                        <telerik:RadTextBox ID="fltrCustName" runat="server" Width="220px" LabelWidth="100px" AutoPostBack="true" Label="Customer:" ToolTip="Customer name contains..."
                            LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:220px; float:left;">    
                        <telerik:RadTextBox ID="fltrSerialNo" runat="server" Width="180px" LabelWidth="75px" AutoPostBack="true" Label="Serial #:" ToolTip="Serial number contains..."
                            LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:220px; float:left;">    
                        <telerik:RadComboBox ID="fltrSizeCode" runat="server" Width="100px" 
                                Label="Size:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" AutoPostBack="true" 
                                DataSourceID="SqlDS_fltrSizeCode" DataTextField="SizeDesc" DataValueField="SizeCode" ResolvedRenderMode="Classic" AppendDataBoundItems="true" >
                        
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Show All" Value="%" />   
                            </Items>
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_fltrSizeCode" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                            SelectCommand="SELECT [SizeCode], [SizeDesc] FROM [xMS_SizeCodes] ORDER BY [SizeCode]">
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:290px; float:left; ">
                        <telerik:RadComboBox ID="fltrMake" runat="server" Width="200px" 
                                                Label="Make:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                ResolvedRenderMode="Classic" DataSourceID="SqlDS_fltrMake" AutoPostBack="true"
                                                DataTextField="Label" DataValueField="Value1" AppendDataBoundItems="true" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="Show All" Value="%" />   
                                </Items>
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_fltrMake" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                            SelectCommand="SELECT Label, Value1 FROM xMS_Menus WHERE Type='Make' AND TypeStatus = 'Active' ORDER BY Seq ">
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:220px; float:left;">
                        <telerik:RadComboBox ID="fltrTestYear" runat="server" AutoPostBack="True" Label="Test Year:" LabelCssClass="myLabelCssMedium" ResolvedRenderMode="Classic" Width="80px">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Show All" Value="%" />
                                <telerik:RadComboBoxItem runat="server" Text="2016" Value="2016" />
                                <telerik:RadComboBoxItem runat="server" Text="2015" Value="2015" />
                                <telerik:RadComboBoxItem runat="server" Text="2014" Value="2014" />
                                <telerik:RadComboBoxItem runat="server" Text="2013" Value="2013" />
                                <telerik:RadComboBoxItem runat="server" Text="2012" Value="2012" />
                                <telerik:RadComboBoxItem runat="server" Text="2011" Value="2011" />
                                <telerik:RadComboBoxItem runat="server" Text="2010" Value="2010" />
                                <telerik:RadComboBoxItem runat="server" Text="2009" Value="2009" />
                                <telerik:RadComboBoxItem runat="server" Text="2008" Value="2008" />
                                <telerik:RadComboBoxItem runat="server" Text="2007" Value="2007" />
                                <telerik:RadComboBoxItem runat="server" Text="2006" Value="2006" />
                                <telerik:RadComboBoxItem runat="server" Text="2005" Value="2005" />
                                <telerik:RadComboBoxItem runat="server" Text="2004" Value="2004" />
                                <telerik:RadComboBoxItem runat="server" Text="2003" Value="2003" />
                            </Items>
                        </telerik:RadComboBox>
                    </div>
                    
                </div>

                <div style="width:1800px; float:left; margin:0px 0px 0px 25px;">

                    <telerik:RadGrid runat="server" ID="grdMeterSearch" Width="1100px" 
                        Height="500px" DataSourceID="SqlDS_grdMeterSearch" GroupPanelPosition="Top" ResolvedRenderMode="Classic" AllowPaging="True" PageSize="100">
                        
                        <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="False" EnablePostBackOnRowClick="false" AllowKeyboardNavigation="true" >
                            <Selecting AllowRowSelect="True" />
                            <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="false" />
                            <Resizing AllowColumnResize="true" AllowRowResize="True" />
                            
                        </ClientSettings>
                        
                        <MasterTableView AutoGenerateColumns="False" DataKeyNames="Test_ID" DataSourceID="SqlDS_grdMeterSearch" >
                            <Columns>
                                <telerik:GridBoundColumn DataField="Test_ID" DataType="System.Int32" HeaderText="Test_ID" 
                                    ReadOnly="True" SortExpression="Test_ID" UniqueName="Test_ID" Visible="false">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="SerialNo" HeaderText="SerialNo" SortExpression="SerialNo" UniqueName="SerialNo">
                                    <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                    <ItemStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                    <HeaderStyle Width="225px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                    <ItemStyle Width="225px" HorizontalAlign="Left" VerticalAlign="Top" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="WorkOrderID" HeaderText="Work Order" SortExpression="WorkOrderID" UniqueName="WorkOrderID">
                                    <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                    <ItemStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="TestDate" DataType="System.DateTime" HeaderText="Test Date" SortExpression="TestDate" UniqueName="TestDate" DataFormatString="{0: MM/dd/yy}">
                                    <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                    <ItemStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" />
                                </telerik:GridBoundColumn>
                                
                                <telerik:GridBoundColumn DataField="MeterDescription" HeaderText="Description" ReadOnly="True" SortExpression="MeterDescription" UniqueName="MeterDescription">
                                    <HeaderStyle Width="200px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                    <ItemStyle Width="200px" HorizontalAlign="Left" VerticalAlign="Top" />
                                </telerik:GridBoundColumn>

                                <telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../Reports2/MeterShop_TestReport.aspx?Test_ID={0}"  DataNavigateUrlFields="Test_ID" Text="Test Report" UniqueName="column">
                                    <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" Font-Bold="true" Font-Italic="true" Font-Size="Small" ForeColor="#4c68a2" />
                                  </telerik:GridHyperLinkColumn>

                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>
                    <asp:SqlDataSource ID="SqlDS_grdMeterSearch" runat="server"  ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                        SelectCommand="uspMSGetTests" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter Name="CustName" Type="String" />
                            <asp:Parameter Name="SizeCode" Type="String" />
                            <asp:Parameter Name="Make" Type="String" />
                            <asp:Parameter Name="SerialNo" Type="String" />
                            <asp:Parameter Name="TestYear" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </telerik:RadPageView>

           
    </telerik:RadMultiPage>
    </div>

</div>





</asp:Content>

