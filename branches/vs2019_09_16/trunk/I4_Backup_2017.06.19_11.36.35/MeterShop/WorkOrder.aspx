<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="WorkOrder.aspx.vb" Inherits="MeterShop_WorkOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="btnAddBatch" >
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBatchID1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="addBatchID" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="addSizeCode" />
                    <telerik:AjaxUpdatedControl ControlID="addTestDate" />
                    <%--<telerik:AjaxUpdatedControl ControlID="lblTest" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                </UpdatedControls>
            </telerik:AjaxSetting>
           <%-- <telerik:AjaxSetting AjaxControlID="addBatchID">
                <UpdatedControls>
                   
                    <telerik:AjaxUpdatedControl ControlID="addSizeCode" />
                </UpdatedControls>
            </telerik:AjaxSetting>--%>
            <telerik:AjaxSetting AjaxControlID="addType">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblAddRangeLow" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lblAddRangeMed" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lblAddRangeHi" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lblAddFlowLow" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lblAddFlowMed" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lblAddFlowHi" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="addParts" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="addAcc" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddStart">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlAddMeterSelection" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlAddTesting" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdTestMeters" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdPartsConsumed1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="addParts" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="addAcc" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddTestResults">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlAddMeterSelection" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlAddTesting" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdTestMeters" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <%--<telerik:AjaxUpdatedControl ControlID="grdPartsConsumed1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="addParts" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="addAcc" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateStatus">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnUpdateStatus" LoadingPanelID="RadAjaxLoadingPanel1" />
                   
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="grdPartsConsumed1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPartsConsumed1" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddPart">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPartsConsumed1" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
           
           <telerik:AjaxSetting AjaxControlID="grdTestMeters">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTestMeters" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnleditMeterSelection" LoadingPanelID="RadAjaxLoadingPanel1" />

                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btneditTestResults">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTestMeters" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnleditMeterSelection" LoadingPanelID="RadAjaxLoadingPanel1" />

                </UpdatedControls>
           </telerik:AjaxSetting>

           <telerik:AjaxSetting AjaxControlID="btnTestResultsOutput">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnTestResultsOutput" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnWorkOrderOutput">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnWorkOrderOutput" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>

        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="300" Transparency="0"></telerik:RadAjaxLoadingPanel>
    
    <asp:HiddenField ID="hdnCustID" runat="server" />
    <asp:HiddenField ID="hdnWorkOrderID" runat="server" />
    <asp:HiddenField ID="hdnWOList_ID" runat="server" />
    <asp:HiddenField ID="hdnWOStatus" runat="server" />

    <div style="background-color:#4c68a2; color:White; font-size:large; padding:20px; width:1200px;">
        <asp:Label ID="lblWorkOrderTitle" runat="server"></asp:Label>
    </div>

    <div style="margin:20px; width:1400px; float:left;">

        <div style="width:1400px; float:right;" >
            <div style="width:1400px; float:left;" >
                <div style="float:left; width:650px; float:left;">
                    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" ResolvedRenderMode="Classic" Skin="MetroTouch" MultiPageID="RadMultiPage1" Width="600px" AutoPostBack="false">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="Directions" PageViewID="Directions" Width="150px" Selected="true"></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="Add Batch" PageViewID="AddBatch" Width="150px" ></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="Add Tests" PageViewID="Add" Width="150px"></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="Edit Tests" PageViewID="Edit" Width="150px"></telerik:RadTab>
                        </Tabs>
                    </telerik:RadTabStrip>
                </div>
                <div style="float:left; width:550px;">
                    <div style="width:270px; float:left;">
                        <telerik:RadButton ID="btnWorkOrderOutput" ButtonType="LinkButton" runat="server" Text="Print Work Order Results" UseSubmitBehavior="false" Width="230px" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="width:270px; float:left;">
                        <telerik:RadButton ID="btnUpdateStatus" ButtonType="LinkButton" runat="server" UseSubmitBehavior="false" Width="230px" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>
                    </div>
                </div>
            </div>
            <telerik:RadMultiPage ID="RadMultiPage1" runat="server" ResolvedRenderMode="Classic">
                <telerik:RadPageView runat="server" ID="Directions" Width="600px" Height="600px" Selected="true">
               
                    <div style="width:1300px;Margin:20px 0px 0px 0px;">
                            <div style="width:1150px; margin:10px; float:left; text-align:center;" >
                                <asp:Label ID="lblWOAddStatus" runat="server" ForeColor="#4c68a2" Font-Size="Large"></asp:Label>
                            </div>
                                <div style="width:1150px; Margin:10px; float:left;">
                                                                                         
                           
                                    <div style="width:1150px; float:left; margin-top:10px;">
                                        <div style="width:430px; float:left; ">
                                               
                                                <div style="width:400px; float:left; height:30px; margin-top:10px;">
                                                    <div style="width:125px; float:left; ">
                                                        <asp:Label ID="Label9" runat="server" Text="Work Type:" CssClass="myLabelCssMedium"></asp:Label>
                                                    </div>
                                                    <div style="width:175px; float:left; margin-top:3px; ">
                                                        <telerik:RadComboBox ID="editWorkType" runat="server" Width="200px" CssClass="myLabelCssMedium" Font-Size="Small" AutoPostBack="false" >
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
                                                    <telerik:RadTextBox ID="editWorkDetail" runat="server" Label="Instructions:" LabelCssClass="myLabelCssMedium" Font-Size="Small" 
                                                        LabelWidth="125px" Width="400px" Height="250px" InputType="Text" MaxLength="1000" TextMode="MultiLine" Wrap="true" ValidationGroup="editInsert">
                                                    </telerik:RadTextBox>
                                            
                                                </div>
                                        </div>       
                                
                                        <div style="width:600px; height:375px; float:left; margin-left:20px; margin-top:40px;">
                                            <div style="width:600px; margin-bottom:20px;">
                                                <asp:Label ID="Label10" runat="server" CssClass="myLabelCssMedium" 
                                                    Text="When work is complete, ship all meters to the following address:" ValidationGroup="editInsert" />
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <telerik:RadTextBox ID="editShipCo" runat="server" Label="Care Of:" LabelWidth="125px" Width="400px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="editInsert">
                                                </telerik:RadTextBox>
                                        
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <telerik:RadTextBox ID="editShipAdd1" runat="server" Label="Address 1:" LabelWidth="125px" Width="400px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="editInsert">
                                                </telerik:RadTextBox>
                                       
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <telerik:RadTextBox ID="editShipAdd2" runat="server" Label="Address 2:" LabelWidth="125px" Width="400px" Font-Size="Small" LabelCssClass="myLabelCssMedium" >
                                                </telerik:RadTextBox>
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <telerik:RadTextBox ID="editShipCity" runat="server" Label="City:" LabelWidth="125px" Width="400px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="editInsert">
                                                </telerik:RadTextBox>
                                            </div>
                                            <div style="width:600px; margin-bottom:20px;">
                                                <div style="width:200px; float:left;">
                                                    <telerik:RadTextBox ID="editShipState" runat="server" Label="State:" LabelWidth="125px" Width="175px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="editInsert">
                                                    </telerik:RadTextBox>
                                            
                                                </div>
                                                <div style="width:300px; float:left;">
                                                    <telerik:RadTextBox ID="editShipZip" runat="server" Label="Zip:" LabelWidth="50px" Width="225px" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="editInsert">
                                                    </telerik:RadTextBox>
                                            
                                                </div>
                                        
                                            </div>
                                            <div style="width:600px; height:30px; float:left; ">
                                            </div>
                                            <div style="width:600px; float:left; ">
                                                <telerik:RadTextBox ID="editShipInstruct" runat="server" Label="Shipping Instructions:" TextMode="MultiLine" Wrap="true"
                                                    LabelWidth="175px" Width="600px" Height="100px" InputType="Text" Font-Size="Small" LabelCssClass="myLabelCssMedium" ValidationGroup="editInsert">
                                                </telerik:RadTextBox>
                                            </div>
                                
                                        </div>
                                        <div style="float:left; width:1150px;">
                          
                                            
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" Display="Dynamic" ValidationGroup="editInsert"
                                                            ControlToValidate="editWorkDetail" ErrorMessage="Please provide some description of testing to be done." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator4" runat="server" Display="Dynamic" ValidationGroup="editInsert"
                                                            ControlToValidate="editShipCo" ErrorMessage="Please provide a receiving contact." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator5" runat="server" Display="Dynamic" ValidationGroup="editInsert"
                                                        ControlToValidate="editShipAdd1" ErrorMessage="Please provide a shipping address." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator6" runat="server" Display="Dynamic" ValidationGroup="editInsert"
                                                        ControlToValidate="editShipState" ErrorMessage="Please provide a shipping state." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div style="width:1150px; float:left;">
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server" Display="Dynamic" ValidationGroup="editInsert"
                                                        ControlToValidate="editShipZip" ErrorMessage="Please provide a shipping zip code." ForeColor="Red" >
                                                </asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div style="float:left; width:1150px;">
                                                <telerik:RadButton ID="btnEditWO" runat="server" Text="Save Changes" Width="200px" Skin="BlackMetroTouch" ValidationGroup="editInsert"></telerik:RadButton>
                                        </div>

                                    </div>


                                </div>
                    </div>


                </telerik:RadPageView>

                <telerik:RadPageView runat="server" ID="AddBatch" Width="1200px" Height="700px" >
                    <div style="width:300px; height:650px; margin:20px; float:left; ">
                        <asp:Panel ID="pnlAddBatch" runat="server"  >
                            <div style="width:275px; float:left;">
                                <div style="width:550px; float:left; ">

                                    <telerik:RadComboBox ID="BatchAddSizeCode" runat="server" Width="100px" 
                                                         Label="New Batch Size:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" AutoPostBack="false" 
                                                         DataSourceID="SqlDS_BatchAddSizeCode" DataTextField="SizeDesc" DataValueField="SizeCode" ResolvedRenderMode="Classic" >
                                    </telerik:RadComboBox>
                                    <asp:SqlDataSource ID="SqlDS_BatchAddSizeCode" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                       SelectCommand="SELECT [SizeCode], [SizeDesc] FROM [xMS_SizeCodes] ORDER BY [SizeCode]">
                                    </asp:SqlDataSource>
                                </div>
                                <div style="width:275px; margin-top:20px; float:left;">
                                    <telerik:RadDatePicker ID="BatchAddTestDate" runat="server" Width="230px" 
                                                           DateInput-Label="Test Date:" CssClass="myLabelCssMedium" DateInput-LabelCssClass="myLabelCssMedium"
                                                           Culture="en-US"  MinDate="1900-01-01" MaxDate="2030-01-01" DatePopupButton-ToolTip="The date the batch was tested." >
                                        <Calendar ID="Calendar3"  UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                        <DateInput ID="DateInput3" Font-Size="Medium" Width="110px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                    </telerik:RadDatePicker>
                                </div>

                                <div style="float:left; width:275px; margin-top:20px;">
                                    <telerik:RadButton ID="btnAddBatch" runat="server" Text="Add Batch" Width="200px" Skin="BlackMetroTouch" UseSubmitBehavior="TRUE" ></telerik:RadButton>
                                </div>

                            </div>
                        </asp:Panel>
                    </div>
                    <div style="width:500px; height:650px; margin:20px; float:left;">
                        <div style="width:250px; float:left; ">
                            <div style="width:250px; padding:8px; background-color: #4c68a2; color:White; font-weight:bold; font-size:medium;">
                                Current Batches
                            </div>
                            <div style="margin-top:10px; width:275px; height:615px;">
                                <telerik:RadGrid ID="grdBatchID1" runat="server" Width="275px" Height="615px" 
                                                 DataSourceID="SqlDS_grdBatchIDs" GroupPanelPosition="Top" 
                                                 ResolvedRenderMode="Classic">

                                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                                        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                        <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                                        <Selecting AllowRowSelect="true" />
                                    </ClientSettings>

                                    <MasterTableView AutoGenerateColumns="False" DataKeyNames="BatchList_ID, BatchID" DataSourceID="SqlDS_grdBatchIDs" NoDetailRecordsText="Add a batch above.">

                                        <Columns>
                                            <telerik:GridBoundColumn DataField="BatchList_ID" HeaderText="Batch" SortExpression="BatchList_ID,BatchID" UniqueName="BatchList_ID" Visible="false">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="BatchID" HeaderText="Batch" SortExpression="BatchID" UniqueName="BatchID">
                                                <HeaderStyle Width="75px" Font-Size="Medium" />
                                                <ItemStyle Width="75px" Font-Size="Medium" HorizontalAlign="Center" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="SizeDesc" DataType="System.Char" HeaderText="Size" ReadOnly="True" SortExpression="SizeDesc" UniqueName="SizeDesc">
                                                <HeaderStyle Width="75px" Font-Size="Medium" />
                                                <ItemStyle Width="75px" Font-Size="Medium" HorizontalAlign="Center" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="TestDate" HeaderText="Test Date" ReadOnly="True" SortExpression="TestDate" UniqueName="TestDate" >
                                                <HeaderStyle Width="125px" VerticalAlign="Bottom" HorizontalAlign="Left" Font-Size="Medium"/>
                                                <ItemStyle Width="125px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" Font-Size="Medium" />
                                            </telerik:GridBoundColumn>

                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                                <asp:SqlDataSource ID="SqlDS_grdBatchIDs" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                   SelectCommand="uspMSGetBatchIDs" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="hdnWorkOrderID" DefaultValue="0" Name="WorkOrderID" PropertyName="Value" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>

                            </div>
                        </div>
                    </div>

                </telerik:RadPageView>
                <telerik:RadPageView runat="server" ID="Add" Width="1200px" Height="700px"  >

                    <asp:Panel ID="pnlAddMeterSelection" runat="server" Width="1800px"  >
                        <div style="width:1200px; margin:10px; float:left; ">
                            <telerik:RadComboBox ID="addBatchID" runat="server" AutoPostBack="true" OnSelectedIndexChanged="addBatchID_SelectedIndexChanged" Width="250px" 
                                                 Label="Batch:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium"  
                                                 DataSourceID="SqlDS_grdBatchIDs" DataTextField="Description" DataValueField="BatchID" ResolvedRenderMode="Classic" >
                            </telerik:RadComboBox>

                            <asp:HiddenField ID="addSizeCode" runat="server" />
                            <asp:HiddenField ID="addRate1" runat="server" />
                            <asp:HiddenField ID="addRate2" runat="server" />
                            <asp:HiddenField ID="addRate3" runat="server" />
                            <asp:HiddenField ID="addMin1" runat="server" />
                            <asp:HiddenField ID="addMax1" runat="server" />
                            <asp:HiddenField ID="addMin2" runat="server" />
                            <asp:HiddenField ID="addMax2" runat="server" />
                            <asp:HiddenField ID="addMin3" runat="server" />
                            <asp:HiddenField ID="addMax3" runat="server" />
                            <asp:HiddenField ID="addTestDate" runat="server" />
                            <asp:HiddenField ID="addBatch_ID" runat="server" />
                            <asp:HiddenField ID="addMeter_ID" runat="server" />
                            <asp:HiddenField ID="addTest_ID" runat="server" />

                        </div>
                        <div style="width:1200px; margin:10px;float:left; ">
                            <div style="width:300px; float:left;">
                                <telerik:RadTextBox ID="addSerialNo" runat="server" Width="250px" MaxLength="15" Label="Serial No.:" LabelCssClass="myLabelCssMedium" Font-Size="Medium">
                                </telerik:RadTextBox><%--<asp:Label ID="lblTest" runat="server"> </asp:Label>--%>

                            </div>
                            <div style="width:290px; float:left; padding-top:5px;">
                                <telerik:RadComboBox ID="addMake" runat="server" Width="200px" 
                                                     Label="Make:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                     ResolvedRenderMode="Classic" DataSourceID="SqlDS_addMake" 
                                                     DataTextField="Label" DataValueField="Value1" >

                                </telerik:RadComboBox>
                                <asp:SqlDataSource ID="SqlDS_addMake" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                   SelectCommand="SELECT Label, Value1 FROM xMS_Menus WHERE Type='Make' AND TypeStatus = 'Active' ORDER BY Seq ">
                                </asp:SqlDataSource>
                            </div>
                            <div style="width:270px; float:left; padding-top:5px;">
                                <telerik:RadComboBox ID="addType" runat="server" Width="200px" AutoPostBack="true" 
                                                     Label="Type:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                     ResolvedRenderMode="Classic" DataSourceID="SqlDS_addType" DataTextField="Label" DataValueField="Value1" OnSelectedIndexChanged="addType_SelectedIndexChanged" >
                                </telerik:RadComboBox>
                                <asp:SqlDataSource ID="SqlDS_addType" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                   SelectCommand="SELECT Label, Value1 FROM xMS_Menus WHERE Type='MeterType' AND TypeStatus = 'Active' ORDER BY Seq ">
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div style="width:1200px; margin:10px; float:left; ">
                            <div style="width:300px; float:left;">
                                <telerik:RadComboBox ID="addStatus" runat="server" Width="200px" 
                                                     Label="Status:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                     ResolvedRenderMode="Classic" DataSourceID="SqlDS_addStatus" DataTextField="Label" DataValueField="Value1" >
                                </telerik:RadComboBox>
                                <asp:SqlDataSource ID="SqlDS_addStatus" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                   SelectCommand="SELECT Label, Value1 FROM xMS_Menus WHERE Type='TestStatus' AND TypeStatus = 'Active' ORDER BY Seq ">
                                </asp:SqlDataSource>
                            </div>
                            <div style="width:290px; float:left;">
                                <telerik:RadComboBox ID="addTestBy" runat="server" Width="180px" 
                                                     Label="Test By:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                     ResolvedRenderMode="Classic" DataSourceID="SqlDS_addStaff" DataTextField="Label" DataValueField="Value1" >
                                </telerik:RadComboBox>
                                <asp:SqlDataSource ID="SqlDS_addStaff" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                   SelectCommand="SELECT Label, Value1 FROM xMS_Menus WHERE Type='Staff' AND TypeStatus = 'Active' ORDER BY Seq ">
                                </asp:SqlDataSource>
                            </div>
                            <div style="width:600px; float:left;">
                                <telerik:RadComboBox ID="addRepairBy" runat="server" Width="180px" 
                                                     Label="Repair By:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                     ResolvedRenderMode="Classic" DataSourceID="SqlDS_addStaff" DataTextField="Label" DataValueField="Value1" >

                                </telerik:RadComboBox>

                            </div>
                            <div style="width:1200px; margin:20px 0px 10px 0px; float:left;">
                                <div style="width:1200px; float:left;">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="btnAddStart" ControlToValidate="addSerialNo" ErrorMessage="A Serial Number is required." Font-Bold="true" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <%--<div style="width:1200px; float:left;">
                                    <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
                                </div>--%>
                                <div style="width:1200px; float:left;">
                                    <telerik:RadButton ID="btnAddStart" runat="server" Text="Save Meter and Begin Test Results &amp; Parts Entry" Width="1200px" Skin="BlackMetroTouch"
                                                       AutoPostBack="true" UseSubmitBehavior="false" ValidationGroup="btnAddStart" >
                                    </telerik:RadButton>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnlAddTesting" runat="server"  >
                        <div style="width:1200px; margin:10px; float:left;">
                            <telerik:RadButton ID="btnAddTestResults" runat="server" Text="Save Test Results" Width="1200px" Skin="BlackMetroTouch" AutoPostBack="true" UseSubmitBehavior="false" ></telerik:RadButton>
                        </div>

                        <div style="width:1200px; margin:10px; float:left;">
                            <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                                Work Performed
                            </div>
                        </div>
                        <div style="width:1200px; margin:10px; float:left;">
                            <div style="width:150px; float:left;">
                                <asp:CheckBox ID="addInitialTest" Text="Initial Test" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                            </div>
                            <div style="width:150px; float:left;">
                                <asp:CheckBox ID="addEval" Text="Evaluation" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                            </div>
                            <div style="width:150px; float:left;">
                                <asp:CheckBox ID="addRepair" Text="Repair" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                            </div>
                            <div style="width:150px; float:left;">
                                <asp:CheckBox ID="addFinalTest" Text="Final Test" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                            </div>
                            <div style="width:150px; float:left;">
                                <asp:CheckBox ID="addFBA" Text="FBA Test" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                            </div>
                            <div style="width:150px; float:left;">
                                <asp:CheckBox ID="addNoWork" Text="No Work" runat="server"  CssClass="myLabelCssMedium" AutoPostBack="False"  />
                            </div>
                        </div>
                        <div style="width:1200px; margin:10px; float:left;">
                            <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                                Register's
                            </div>
                        </div>

                        <div style="width:1200px; margin:10px;">
                            <div style="width:300px; float:left;">
                                <telerik:RadTextBox ID="addRegister_Initial" runat="server" Width="200px" Label="Initial ID:" LabelCssClass="myLabelCssMedium" font-size="Medium">
                                </telerik:RadTextBox>
                            </div>
                            <div style="width:800px; float:left;">
                                <telerik:RadNumericTextBox ID="addPreReading" runat="server" Width="290px" NumberFormat-DecimalDigits="0" Label="Initial Reading:" LabelCssClass="myLabelCssMedium" font-size="Medium">
                                </telerik:RadNumericTextBox>
                            </div>
                        </div>
                        <div style="width:1200px; margin:25px 0px 10px 10px;">
                            <div style="width:300px; float:left;">
                                <telerik:RadTextBox ID="addRegister_Final" runat="server" Width="200px" Label="Post ID:" LabelCssClass="myLabelCssMedium" font-size="Medium">
                                </telerik:RadTextBox>
                            </div>
                            <div style="width:800px; float:left;">
                                <telerik:RadNumericTextBox ID="addPostReading" runat="server" Width="290px" NumberFormat-DecimalDigits="0" Label="Post Reading:" LabelCssClass="myLabelCssMedium" font-size="Medium">
                                </telerik:RadNumericTextBox>
                            </div>
                        </div>
                        <div style="width:1200px; margin:10px; float:left;">
                            <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                                Test Results
                            </div>
                        </div>
                        <div style="width:1200px; height:40px; margin:10px;">
                            <div style="width:150px; float:left; ">
                                <asp:Label ID="Label1" runat="server" Text="Flow Rate" CssClass="myLabelCssMedium" ForeColor="#4c68a2"></asp:Label>
                            </div>
                            <div style="width:200px; float:left;">
                                <asp:Label ID="Label2" runat="server" Text="Pre-Repair Accuracy" CssClass="myLabelCssMedium" ForeColor="#4c68a2"></asp:Label>
                            </div>
                            <div style="width:200px; float:left;">
                                <asp:Label ID="Label3" runat="server" Text="Post-Repair Accuracy" CssClass="myLabelCssMedium" ForeColor="#4c68a2"></asp:Label>
                            </div>
                            <div style="width:200px; float:left;">
                                <asp:Label ID="Label4" runat="server" Text="Acceptable Range" CssClass="myLabelCssMedium" ForeColor="#4c68a2"></asp:Label>
                            </div>
                        </div>
                        <div style="width:1200px; height:25px; float:left; margin:10px;">
                            <div style="width:150px; float:left;">
                                <asp:Label ID="lblAddFlowLow" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                            </div>
                            <div style="width:200px; float:left; padding-left:20px;">
                                <telerik:RadNumericTextBox ID="addRate1_PreResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                </telerik:RadNumericTextBox>
                            </div>
                            <div style="width:200px; float:left; padding-left:20px;">
                                <telerik:RadNumericTextBox ID="addRate1_PostResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                </telerik:RadNumericTextBox>
                            </div>
                            <div style="width:200px; float:left;">
                                <asp:Label ID="lblAddRangeLow" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                            </div>
                        </div>
                        <div style="width:1200px; float:left; height:25px; margin:10px;">
                            <div style="width:150px; float:left;">
                                <asp:Label ID="lblAddFlowMed" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                            </div>
                            <div style="width:200px; float:left;padding-left:20px;">
                                <telerik:RadNumericTextBox ID="addRate2_PreResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                </telerik:RadNumericTextBox>
                            </div>
                            <div style="width:200px; float:left;padding-left:20px;">
                                <telerik:RadNumericTextBox ID="addRate2_PostResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                </telerik:RadNumericTextBox>
                            </div>
                            <div style="width:200px; float:left;">
                                <asp:Label ID="lblAddRangeMed" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                            </div>
                        </div>
                        <div style="width:1200px; float:left; height:25px; margin:10px;">
                            <div style="width:150px; float:left;">
                                <asp:Label ID="lblAddFlowHi" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                            </div>
                            <div style="width:200px; float:left;padding-left:20px;">
                                <telerik:RadNumericTextBox ID="addRate3_PreResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                </telerik:RadNumericTextBox>
                            </div>
                            <div style="width:200px; float:left;padding-left:20px;">
                                <telerik:RadNumericTextBox ID="addRate3_PostResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                </telerik:RadNumericTextBox>
                            </div>
                            <div style="width:200px; float:left;">
                                <asp:Label ID="lblAddRangeHi" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                            </div>
                        </div>

                        <div style="width:1200px; margin:10px; float:left;">
                            <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                                Test Notes
                            </div>
                        </div>
                        <div style="width:1200px; margin:10px; float:left;">
                            <telerik:RadTextBox ID="addNotes" runat="server" Width="600px" Height="50px" LabelWidth="100px" MaxLength="250" Font-Size="Medium"
                                                TextMode="MultiLine" Wrap="true" Enabled="true" LabelCssClass="myLabelCss" Label="Notes:" >
                            </telerik:RadTextBox>
                        </div>

                    </asp:Panel>
                    <div style="width:1200px; margin:10px; float:left;">
                        <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                            Parts
                        </div>
                    </div>
                    <div style="width:1200px; margin:10px; float:left;">

                        <div style="width:450px; float:left;">
                            <telerik:RadComboBox ID="addParts" runat="server" Width="370px" 
                                                 Label="Part:" LabelCssClass="myLabelCssMedium" Font-Size="Small" CssClass="myLabelCssMedium"  
                                                 ResolvedRenderMode="Classic" DataSourceID="SqlDS_addParts" DataTextField="Description" DataValueField="ProdID" AppendDataBoundItems="true" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                </Items>
                            </telerik:RadComboBox>
                            <asp:SqlDataSource ID="SqlDS_addParts" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                               SelectCommand="uspMS_PartsGet" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:Parameter Name="Type" />
                                    <asp:Parameter Name="SizeCode" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        <div style="width:120px; float:left;">
                            <telerik:RadComboBox ID="addQuantity" runat="server" Width="50px" ResolvedRenderMode="Classic"
                                                 Label="Qty:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="1" Value="1" />
                                    <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                                    <telerik:RadComboBoxItem runat="server" Text="3" Value="3" />
                                    <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                                    <telerik:RadComboBoxItem runat="server" Text="5" Value="5" />
                                </Items>
                            </telerik:RadComboBox>
                        </div>

                        <div style="width:110px; float:left;">
                            <asp:CheckBox ID="addWarranty" Text="Warranty" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                        </div>
                        <div style="width:90px; float:left;">
                            <telerik:RadButton ID="btnAddPart" runat="server" Text="Add Part" Width="90px" UseSubmitBehavior="false" ></telerik:RadButton>
                        </div>

                    </div>
                    

                    <div style="width:1200px; margin:10px; float:left;">

                        <telerik:RadGrid ID="grdPartsConsumed1" runat="server" Width="675px" Height="150px" DataSourceID="SqlDS_grdPartsConsumed1" GroupPanelPosition="Top" 
                                         ResolvedRenderMode="Classic" AutoGenerateDeleteColumn="True" >

                            <ClientSettings>
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                            </ClientSettings>

                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdPartsConsumed1" AllowAutomaticDeletes="true" DataKeyNames="RecordID">
                                <Columns>
                                    <telerik:GridBoundColumn DataField="RecordID" DataType="System.Int32" Visible="false"  
                                                             SortExpression="RecordID" UniqueName="RecordID" HeaderText="RecordID" ReadOnly="True">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                        <HeaderStyle Width="120px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" Font-Bold="true" />
                                        <ItemStyle Width="120px" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                        <HeaderStyle Width="300px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" Font-Bold="true" />
                                        <ItemStyle Width="300px" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Qty" DataType="System.Int16" HeaderText="Qty" SortExpression="Qty" UniqueName="Qty">
                                        <HeaderStyle Width="60px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" Font-Bold="true" />
                                        <ItemStyle Width="0px" VerticalAlign="Top" HorizontalAlign="Left" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="WarrantyFlag" HeaderText="Warranty" SortExpression="WarrantyFlag" UniqueName="WarrantyFlag">
                                        <HeaderStyle Width="75px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" Font-Bold="true" />
                                        <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Center" />
                                    </telerik:GridBoundColumn>

                                </Columns>
                            </MasterTableView>
                        </telerik:RadGrid>
                        <asp:SqlDataSource ID="SqlDS_grdPartsConsumed1" runat="server" 
                                           ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            
                                           SelectCommand="SELECT xMS_PartsConsumed.RecordID, xMS_PartsConsumed.ProdID, xMS_PartsConsumed.Qty, xMS_PartsConsumed.WarrantyFlag, xMS_ReplacementParts.Description
                                           FROM   xMS_PartsConsumed INNER JOIN
                                           xMS_ReplacementParts ON xMS_PartsConsumed.ProdID = xMS_ReplacementParts.ProdID INNER JOIN
                                           xMS_Meters ON xMS_ReplacementParts.SizeCode = xMS_Meters.SizeCode AND xMS_PartsConsumed.SerialNo = xMS_Meters.SerialNo
                                           WHERE (xMS_PartsConsumed.SerialNo = @SerialNo) AND (xMS_PartsConsumed.WorkOrderID = @WorkOrderID) AND (xMS_PartsConsumed.BatchID = @BatchID)" 
                                           DeleteCommand="uspMS_PartsDelete" DeleteCommandType="StoredProcedure">
                            <DeleteParameters>
                                <asp:Parameter Name="RecordID" Type="Int32" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="addSerialNo" Name="SerialNo" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="hdnWorkOrderID" Name="WorkOrderID" PropertyName="Value" Type="String" />
                                <asp:ControlParameter ControlID="addBatchID" Name="BatchID" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>

                </telerik:RadPageView>
                <telerik:RadPageView runat="server" ID="Edit" Width="600px" Height="600px" >
                    <div style="width:1300px; float:left; margin:10px;">
                        <div style="width:1300px; height:350px; float:left;">
                            <telerik:RadGrid ID="grdTestMeters" runat="server" DataSourceID="SqlDS_grdTestMeters" GroupPanelPosition="Top" ResolvedRenderMode="Classic" >
                                
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                </ClientSettings>
                                
                                <MasterTableView AllowSorting="True" AutoGenerateColumns="False" AllowAutomaticDeletes="true" DataKeyNames="Test_ID, Batch_ID, SerialNo" DataSourceID="SqlDS_grdTestMeters">
                                    <Columns>
                                         <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton" ItemStyle-Width="30px" HeaderStyle-Width="30px" />
                                        <telerik:GridBoundColumn DataField="BatchID" HeaderText="Batch" SortExpression="BatchID" UniqueName="BatchID">
                                            <HeaderStyle Width="40px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                            <ItemStyle Width="40px" HorizontalAlign="Left" VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="SerialNo" HeaderText="SerialNo" SortExpression="SerialNo" UniqueName="SerialNo" >
                                            <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                            <ItemStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="MeterDescription" HeaderText="Description" ReadOnly="True" SortExpression="MeterDescription" UniqueName="MeterDescription">
                                            <HeaderStyle Width="175px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                            <ItemStyle Width="175px" HorizontalAlign="Left" VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>

                                        <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status" >
                                            <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                            <ItemStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridCheckBoxColumn DataField="NoWork" DataType="System.Boolean" HeaderText="No Work" ReadOnly="True" SortExpression="NoWork" UniqueName="NoWork">
                                            <HeaderStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Bottom" />
                                            <ItemStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Top" />
                                        </telerik:GridCheckBoxColumn>
                                        <telerik:GridCheckBoxColumn DataField="InitialTest" DataType="System.Boolean" HeaderText="Initial Test" ReadOnly="True" SortExpression="InitialTest" UniqueName="InitialTest">
                                            <HeaderStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Bottom" />
                                            <ItemStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Top" />
                                        </telerik:GridCheckBoxColumn>
                                        <telerik:GridCheckBoxColumn DataField="FinalTest" DataType="System.Boolean" HeaderText="Final Test" ReadOnly="True" SortExpression="FinalTest" UniqueName="FinalTest">
                                            <HeaderStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Bottom"/>
                                            <ItemStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Top" />
                                        </telerik:GridCheckBoxColumn>

                                        <telerik:GridCheckBoxColumn DataField="Repair" DataType="System.Boolean" HeaderText="Repair" ReadOnly="True" SortExpression="Repair" UniqueName="Repair">
                                            <HeaderStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Bottom" />
                                            <ItemStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Top" />
                                        </telerik:GridCheckBoxColumn>
                                        <telerik:GridCheckBoxColumn DataField="Eval" DataType="System.Boolean" HeaderText="Eval" ReadOnly="True" SortExpression="Eval" UniqueName="Eval">
                                            <HeaderStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Bottom" />
                                            <ItemStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Top" />
                                        </telerik:GridCheckBoxColumn>
                                        
                                        <telerik:GridCheckBoxColumn DataField="FBA" DataType="System.Boolean" HeaderText="FBA" ReadOnly="True" SortExpression="FBA" UniqueName="FBA">
                                            <HeaderStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Bottom" />
                                            <ItemStyle Width="80px" HorizontalAlign="Center" VerticalAlign="Top" />
                                        </telerik:GridCheckBoxColumn>
                                       
                                        <telerik:GridBoundColumn DataField="Notes"  HeaderText="Notes" SortExpression="Notes" UniqueName="Notes">
                                            <HeaderStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                                            <ItemStyle Width="300px" HorizontalAlign="Left" VerticalAlign="Top" />
                                        </telerik:GridBoundColumn>
                                        
                                        <telerik:GridBoundColumn DataField="Batch_ID" HeaderText="Batch_ID" ReadOnly="True" SortExpression="Batch_ID" UniqueName="Batch_ID" 
                                            DataType="System.Int32" Visible="false">
                                        </telerik:GridBoundColumn>
                                        
                                        <telerik:GridBoundColumn DataField="Test_ID" DataType="System.Int32" ReadOnly="True" UniqueName="Test_ID" Visible="false">
                                        </telerik:GridBoundColumn>
                                        
                                        <telerik:GridBoundColumn DataField="Batch_ID" DataType="System.Int32" ReadOnly="True" UniqueName="Batch_ID" Visible="false">
                                        </telerik:GridBoundColumn>
                                        
                                        <telerik:GridBoundColumn DataField="WorkOrderID" UniqueName="WorkOrderID" Visible="false">
                                        </telerik:GridBoundColumn>
                                        
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>
                            <asp:SqlDataSource ID="SqlDS_grdTestMeters" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspMSGetTestData" DeleteCommand="uspMSTestDelete" SelectCommandType="StoredProcedure" DeleteCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:Parameter Name="CustID" Type="String" DefaultValue="%" />
                                    <asp:ControlParameter ControlID="hdnWorkOrderID" Name="WorkOrderID" PropertyName="Value" Type="String" DefaultValue="5555555" />
                                    <asp:Parameter Name="BatchID" Type="String" DefaultValue="%"/>
                                    <asp:Parameter Name="Batch_ID" Type="String" DefaultValue="%" />
                                    <asp:Parameter Name="SerialNo" Type="String" DefaultValue="%" />
                                    <asp:Parameter Name="CustName" Type="String" DefaultValue="%" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="Test_ID" Type="Int32" />
                                    <asp:Parameter Name="Batch_ID" Type="Int32" />
                                    <asp:Parameter Name="SerialNo" Type="String" />
                                </DeleteParameters>
                            </asp:SqlDataSource>
                        </div>
                        <div>
                            <asp:Panel ID="pnleditMeterSelection" runat="server" Width="1800px"  >
                                <div style="width:1200px; margin:10px; float:left;">
                                     <div style="float:left; width:500px;">
                                            <telerik:RadButton ID="btneditTestResults" runat="server" Text="Save Changes" Width="400px" Skin="BlackMetroTouch" AutoPostBack="true" UseSubmitBehavior="false" ></telerik:RadButton>
                                     </div>
                                     <div style="float:left; width:500px;">
                                            <telerik:RadButton ID="btnTestResultsOutput" ButtonType="LinkButton" runat="server" Text="Print Meter Test Results" UseSubmitBehavior="false" Width="400px" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>
                                     </div>   
                                        
                                
                                
                                </div>

                                <div style="width:1200px; margin:10px; float:left; ">
                                    <div style="width:400px; float:left;">
                                        <telerik:RadComboBox ID="editBatchID" runat="server" AutoPostBack="true"  Width="250px" 
                                                             Label="Batch:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium"  
                                                             DataSourceID="SqlDS_grdBatchIDs" DataTextField="Description" DataValueField="BatchID" ResolvedRenderMode="Classic" >
                                        </telerik:RadComboBox>
                                    </div>
                                    <div style="width:600px; float:left;">
                                        <asp:Label ID="lbleditTestDate" runat="server" Text="Test Date:" CssClass="myLabelCssMedium"></asp:Label>
                                        <telerik:RadDatePicker ID="editTestDate"  runat="server" Culture="en-US"  MinDate="1900-01-01" MaxDate="2030-01-01"  >
                                              <Calendar ID="Calendar1"  CssClass="myLabelCssMedium" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                              <DateInput ID="DateInput1" Font-Size="Medium"  Width="100px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                        </telerik:RadDatePicker>
                                    </div>
                            
                                    <asp:HiddenField ID="editTest_ID" runat="server" />
                                    <asp:HiddenField ID="editMeter_ID" runat="server" />
                                    <asp:HiddenField ID="editBatch_ID" runat="server" />
                        
                                

                                </div>
                                <div style="width:1200px; margin:10px;float:left; ">
                                    <div style="width:300px; float:left;">
                                        <telerik:RadTextBox ID="editSerialNo" runat="server" Width="250px" MaxLength="15" Label="Serial No.:" LabelCssClass="myLabelCssMedium" Font-Size="Medium">
                                        </telerik:RadTextBox>

                                    </div>
                                    <div style="width:290px; float:left; padding-top:5px;">
                                        <telerik:RadComboBox ID="editMake" runat="server" Width="200px" 
                                                             Label="Make:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                             ResolvedRenderMode="Classic" DataSourceID="SqlDS_editMake" 
                                                             DataTextField="Label" DataValueField="Value1" >

                                        </telerik:RadComboBox>
                                        <asp:SqlDataSource ID="SqlDS_editMake" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                           SelectCommand="SELECT Label, Value1 FROM xMS_Menus WHERE Type='Make' AND TypeStatus = 'Active' ORDER BY Seq ">
                                        </asp:SqlDataSource>
                                    </div>
                                    <div style="width:270px; float:left; padding-top:5px;">
                                        <telerik:RadComboBox ID="editType" runat="server" Width="200px" AutoPostBack="true" 
                                                             Label="Type:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                             ResolvedRenderMode="Classic" DataSourceID="SqlDS_editType" DataTextField="Label" DataValueField="Value1"  >
                                        </telerik:RadComboBox>
                                        <asp:SqlDataSource ID="SqlDS_editType" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                           SelectCommand="SELECT Label, Value1 FROM xMS_Menus WHERE Type='MeterType' AND TypeStatus = 'Active' ORDER BY Seq ">
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div style="width:1200px; margin:10px; float:left; ">
                                    <div style="width:300px; float:left;">
                                        <telerik:RadComboBox ID="editStatus" runat="server" Width="200px" 
                                                             Label="Status:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                             ResolvedRenderMode="Classic" DataSourceID="SqlDS_editStatus" DataTextField="Label" DataValueField="Value1" >
                                        </telerik:RadComboBox>
                                        <asp:SqlDataSource ID="SqlDS_editStatus" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                           SelectCommand="SELECT Label, Value1 FROM xMS_Menus WHERE Type='TestStatus' AND TypeStatus = 'Active' ORDER BY Seq ">
                                        </asp:SqlDataSource>
                                    </div>
                                    <div style="width:290px; float:left;">
                                        <telerik:RadComboBox ID="editTestBy" runat="server" Width="180px" 
                                                             Label="Test By:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                             ResolvedRenderMode="Classic" DataSourceID="SqlDS_editStaff" DataTextField="Label" DataValueField="Value1" >
                                        </telerik:RadComboBox>
                                        <asp:SqlDataSource ID="SqlDS_editStaff" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                           SelectCommand="SELECT Label, Value1 FROM xMS_Menus WHERE Type='Staff' AND TypeStatus = 'Active' ORDER BY Seq ">
                                        </asp:SqlDataSource>
                                    </div>
                                    <div style="width:600px; float:left;">
                                        <telerik:RadComboBox ID="editRepairBy" runat="server" Width="180px" 
                                                             Label="Repair By:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" 
                                                             ResolvedRenderMode="Classic" DataSourceID="SqlDS_editStaff" DataTextField="Label" DataValueField="Value1" >

                                        </telerik:RadComboBox>

                                    </div>
                                   
                                </div>
                           
                                <div style="width:1200px; margin:10px; float:left;">
                                    <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                                        Work Performed
                                    </div>
                                </div>
                                <div style="width:1200px; margin:10px; float:left;">
                                    <div style="width:150px; float:left;">
                                        <asp:CheckBox ID="editInitialTest" Text="Initial Test" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                                    </div>
                                    <div style="width:150px; float:left;">
                                        <asp:CheckBox ID="editEval" Text="Evaluation" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                                    </div>
                                    <div style="width:150px; float:left;">
                                        <asp:CheckBox ID="editRepair" Text="Repair" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                                    </div>
                                    <div style="width:150px; float:left;">
                                        <asp:CheckBox ID="editFinalTest" Text="Final Test" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                                    </div>
                                    <div style="width:150px; float:left;">
                                        <asp:CheckBox ID="editFBA" Text="FBA Test" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                                    </div>
                                    <div style="width:150px; float:left;">
                                        <asp:CheckBox ID="editNoWork" Text="No Work" runat="server"  CssClass="myLabelCssMedium" AutoPostBack="False"  />
                                    </div>
                                </div>
                                <div style="width:1200px; margin:10px; float:left;">
                                    <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                                        Register's
                                    </div>
                                </div>

                                <div style="width:1200px; margin:10px;">
                                    <div style="width:300px; float:left;">
                                        <telerik:RadTextBox ID="editRegister_Initial" runat="server" Width="200px" Label="Initial ID:" LabelCssClass="myLabelCssMedium" font-size="Medium">
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="width:800px; float:left;">
                                        <telerik:RadNumericTextBox ID="editPreReading" runat="server" Width="290px" NumberFormat-DecimalDigits="0" Label="Initial Reading:" LabelCssClass="myLabelCssMedium" font-size="Medium">
                                        </telerik:RadNumericTextBox>
                                    </div>
                                </div>
                                <div style="width:1200px; margin:25px 0px 10px 10px;">
                                    <div style="width:300px; float:left;">
                                        <telerik:RadTextBox ID="editRegister_Final" runat="server" Width="200px" Label="Final ID:" LabelCssClass="myLabelCssMedium" font-size="Medium">
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="width:800px; float:left;">
                                        <telerik:RadNumericTextBox ID="editPostReading" runat="server" Width="290px" NumberFormat-DecimalDigits="0" Label="Final Reading:" LabelCssClass="myLabelCssMedium" font-size="Medium">
                                        </telerik:RadNumericTextBox>
                                    </div>
                                </div>
                                <div style="width:1200px; margin:10px; float:left;">
                                    <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                                        Test Results
                                    </div>
                                </div>
                                <div style="width:1200px; float:left; height:40px; margin:10px;">
                                    <div style="width:150px; float:left; ">
                                        <asp:Label ID="Label5" runat="server" Text="Flow Rate" CssClass="myLabelCssMedium" ForeColor="#4c68a2"></asp:Label>
                                    </div>
                                    <div style="width:200px; float:left;">
                                        <asp:Label ID="Label6" runat="server" Text="Pre-Repair Accuracy" CssClass="myLabelCssMedium" ForeColor="#4c68a2"></asp:Label>
                                    </div>
                                    <div style="width:200px; float:left;">
                                        <asp:Label ID="Label7" runat="server" Text="Post-Repair Accuracy" CssClass="myLabelCssMedium" ForeColor="#4c68a2"></asp:Label>
                                    </div>
                                   <%-- <div style="width:200px; float:left;">
                                        <asp:Label ID="Label8" runat="server" Text="Acceptable Range" CssClass="myLabelCssMedium" ForeColor="#4c68a2"></asp:Label>
                                    </div>--%>
                                </div>
                                <div style="width:1200px; height:25px; float:left; margin:10px;">
                                    <div style="width:150px; float:left;">
                                        <asp:Label ID="lbleditFlowLow" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                                    </div>
                                    <div style="width:200px; float:left; padding-left:20px;">
                                        <telerik:RadNumericTextBox ID="editRate1_PreResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                        </telerik:RadNumericTextBox>
                                    </div>
                                    <div style="width:200px; float:left; padding-left:20px;">
                                        <telerik:RadNumericTextBox ID="editRate1_PostResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                        </telerik:RadNumericTextBox>
                                    </div>
                                   <%-- <div style="width:200px; float:left;">
                                        <asp:Label ID="lbleditRangeLow" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                                    </div>--%>
                                </div>
                                <div style="width:1200px; float:left; height:25px; margin:10px;">
                                    <div style="width:150px; float:left;">
                                        <asp:Label ID="lbleditFlowMed" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                                    </div>
                                    <div style="width:200px; float:left;padding-left:20px;">
                                        <telerik:RadNumericTextBox ID="editRate2_PreResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                        </telerik:RadNumericTextBox>
                                    </div>
                                    <div style="width:200px; float:left;padding-left:20px;">
                                        <telerik:RadNumericTextBox ID="editRate2_PostResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                        </telerik:RadNumericTextBox>
                                    </div>
                                    <%--<div style="width:200px; float:left;">
                                        <asp:Label ID="lbleditRangeMed" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                                    </div>--%>
                                </div>
                                <div style="width:1200px; float:left; height:25px; margin:10px;">
                                    <div style="width:150px; float:left;">
                                        <asp:Label ID="lbleditFlowHi" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                                    </div>
                                    <div style="width:200px; float:left;padding-left:20px;">
                                        <telerik:RadNumericTextBox ID="editRate3_PreResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                        </telerik:RadNumericTextBox>
                                    </div>
                                    <div style="width:200px; float:left;padding-left:20px;">
                                        <telerik:RadNumericTextBox ID="editRate3_PostResult" runat="server" Width="70px" Type="Percent" NumberFormat-DecimalDigits="1" MaxValue="150" Font-Size="Medium">
                                        </telerik:RadNumericTextBox>
                                    </div>
                                    <%--<div style="width:200px; float:left;">
                                        <asp:Label ID="lbleditRangeHi" runat="server" CssClass="myLabelCssMedium"></asp:Label>
                                    </div>--%>
                                </div>

                                <div style="width:1200px; margin:10px; float:left;">
                                    <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                                        Test Notes
                                    </div>
                                </div>
                                <div style="width:1200px; margin:10px; float:left;">
                                    <telerik:RadTextBox ID="editNotes" runat="server" Width="600px" Height="50px" LabelWidth="100px" MaxLength="250" Font-Size="Medium"
                                                        TextMode="MultiLine" Wrap="true" Enabled="true" LabelCssClass="myLabelCss" Label="Notes:" >
                                    </telerik:RadTextBox>
                                </div>

                           

                            <div style="width:1200px; margin:10px; float:left;">
                                <div style="width:300px; padding:5px; background-color:Orange; color:White; font-size:medium; font-weight:bold; float:left; ">
                                        Parts
                                </div>
                            </div>
                            <div style="width:1200px; margin:10px; float:left;">

                                <div style="width:450px; float:left;">
                                    <telerik:RadComboBox ID="editParts" runat="server" Width="370px" 
                                                         Label="Part:" LabelCssClass="myLabelCssMedium" Font-Size="Small" CssClass="myLabelCssMedium"  
                                                         ResolvedRenderMode="Classic" DataSourceID="SqlDS_editParts" DataTextField="Description" DataValueField="ProdID" AppendDataBoundItems="true" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                        </Items>
                                    </telerik:RadComboBox>
                                    <asp:SqlDataSource ID="SqlDS_editParts" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                       SelectCommand="uspMS_PartsGet" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:Parameter Name="Type" />
                                            <asp:Parameter Name="SizeCode" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                                <div style="width:120px; float:left;">
                                    <telerik:RadComboBox ID="editQuantity" runat="server" Width="50px" ResolvedRenderMode="Classic"
                                                         Label="Qty:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" CssClass="myLabelCssMedium" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="1" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="3" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="5" Value="5" />
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>

                                <div style="width:110px; float:left;">
                                    <asp:CheckBox ID="editWarranty" Text="Warranty" runat="server" CssClass="myLabelCssMedium" AutoPostBack="False"  />
                                </div>
                                <div style="width:90px; float:left;">
                                    <telerik:RadButton ID="btneditPart" runat="server" Text="Add Part" Width="90px" UseSubmitBehavior="false" ></telerik:RadButton>
                                </div>

                            </div>
                    

                            <div style="width:1200px; margin:10px; float:left;">

                                <telerik:RadGrid ID="grdPartsConsumedEdit1" runat="server" Width="675px" Height="150px" DataSourceID="SqlDS_grdPartsConsumedEdit1" GroupPanelPosition="Top" 
                                                 ResolvedRenderMode="Classic" AutoGenerateDeleteColumn="True" >

                                    <ClientSettings>
                                        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                    </ClientSettings>

                                    <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdPartsConsumedEdit1" AllowAutomaticDeletes="true" DataKeyNames="RecordID">
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="RecordID" DataType="System.Int32" Visible="false"  
                                                                     SortExpression="RecordID" UniqueName="RecordID" HeaderText="RecordID" ReadOnly="True">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                                <HeaderStyle Width="120px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" Font-Bold="true" />
                                                <ItemStyle Width="120px" VerticalAlign="Top" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                                <HeaderStyle Width="300px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" Font-Bold="true" />
                                                <ItemStyle Width="300px" VerticalAlign="Top" />
                                            </telerik:GridBoundColumn>

                                            <telerik:GridBoundColumn DataField="Qty" DataType="System.Int16" HeaderText="Qty" SortExpression="Qty" UniqueName="Qty">
                                                <HeaderStyle Width="60px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" Font-Bold="true" />
                                                <ItemStyle Width="0px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="WarrantyFlag" HeaderText="Warranty" SortExpression="WarrantyFlag" UniqueName="WarrantyFlag">
                                                <HeaderStyle Width="75px" VerticalAlign="Bottom" BackColor="#4c68a2" ForeColor="White" Font-Bold="true" />
                                                <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Center" />
                                            </telerik:GridBoundColumn>

                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                                <asp:SqlDataSource ID="SqlDS_grdPartsConsumedEdit1" runat="server" 
                                                   ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            
                                                   SelectCommand="SELECT xMS_PartsConsumed.RecordID, xMS_PartsConsumed.ProdID, xMS_PartsConsumed.Qty, xMS_PartsConsumed.WarrantyFlag, xMS_ReplacementParts.Description
                                                   FROM   xMS_PartsConsumed INNER JOIN
                                                   xMS_ReplacementParts ON xMS_PartsConsumed.ProdID = xMS_ReplacementParts.ProdID INNER JOIN
                                                   xMS_Meters ON xMS_ReplacementParts.SizeCode = xMS_Meters.SizeCode AND xMS_PartsConsumed.SerialNo = xMS_Meters.SerialNo
                                                   WHERE (xMS_PartsConsumed.SerialNo = @SerialNo) AND (xMS_PartsConsumed.WorkOrderID = @WorkOrderID) AND (xMS_PartsConsumed.BatchID = @BatchID)" 
                                                   DeleteCommand="uspMS_PartsDelete" DeleteCommandType="StoredProcedure">
                                    <DeleteParameters>
                                        <asp:Parameter Name="RecordID" Type="Int32" />
                                    </DeleteParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="editSerialNo" Name="SerialNo" PropertyName="Text" Type="String" />
                                        <asp:ControlParameter ControlID="hdnWorkOrderID" Name="WorkOrderID" PropertyName="Value" Type="String" />
                                        <asp:ControlParameter ControlID="editBatchID" Name="BatchID" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>

                           



                             </asp:Panel>




                        </div>
                    </div>
                    
                </telerik:RadPageView>

            </telerik:RadMultiPage>
        </div>

    </div>

<%--<asp:Panel ID="testPanelAddMeters" runat="server" Height="100%" Width="100%" >

                                        
                    
                    
                                        

<div style="Margin:5px 0px 0px 15px; ">
<div style="width:90%; Margin:0px 0px 0px 3px; margin:3px; color:White; background-color:#2E8B57; ">
<asp:Label ID="testHeader" runat="server" Font-Size="Medium" CssClass="myLabelCssSmall" Width="100%" />
</div>
<div style="width:100%; Margin:10px 0px 15px 3px;">
<telerik:RadTextBox ID="testSN" Label="Serial No.:" LabelWidth="70px" Width="200px" MaxLength="15" runat="server" LabelCssClass="myLabelCssSmall">
</telerik:RadTextBox>
<asp:Label ID="testlblTestDate" runat="server" Text="Test Date: " AssociatedControlID="testTestDate" CssClass="myLabelCssSmall"></asp:Label>
<telerik:RadDatePicker ID="testTestDate" runat="server" Width="120px">
</telerik:RadDatePicker>
<telerik:RadComboBox ID="testStatus" runat="server" DataSourceID="SqlDS_testTestStatus" LabelCssClass="myLabelCssSmall"
DataTextField="Label" DataValueField="Value1" Label="Status" Width="130px">
</telerik:RadComboBox>
<asp:SqlDataSource ID="SqlDS_testTestStatus" runat="server" 
ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
SelectCommand="uspMSMenusGet" SelectCommandType="StoredProcedure">
<SelectParameters>
<asp:Parameter DefaultValue="TestStatus" Name="Type" Type="String" />
<asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
</SelectParameters>
</asp:SqlDataSource>
</div>
<div style="width:100%; Margin:0px 0px 15px 3px;">                                                                                                    
<telerik:RadComboBox ID="testBatchID" runat="server" Label="Batch: " Width="55px" labelwidth="50px" LabelCssClass="myLabelCssSmall" >
<Items>
<telerik:RadComboBoxItem runat="server" Selected="True" Text="00" Value="00" />
<telerik:RadComboBoxItem runat="server" Text="01" Value="01" />
<telerik:RadComboBoxItem runat="server" Text="02" Value="02" />
<telerik:RadComboBoxItem runat="server" Text="03" Value="03" />
<telerik:RadComboBoxItem runat="server" Text="04" Value="04" />
<telerik:RadComboBoxItem runat="server" Text="05" Value="05" />
<telerik:RadComboBoxItem runat="server" Text="06" Value="06" />
<telerik:RadComboBoxItem runat="server" Text="07" Value="07" />
<telerik:RadComboBoxItem runat="server" Text="08" Value="08" />
<telerik:RadComboBoxItem runat="server" Text="09" Value="09" />
<telerik:RadComboBoxItem runat="server" Text="10" Value="10" />
<telerik:RadComboBoxItem runat="server" Text="11" Value="11" />
<telerik:RadComboBoxItem runat="server" Text="12" Value="12" />
<telerik:RadComboBoxItem runat="server" Text="13" Value="13" />
<telerik:RadComboBoxItem runat="server" Text="14" Value="14" />
<telerik:RadComboBoxItem runat="server" Text="15" Value="15" />
<telerik:RadComboBoxItem runat="server" Text="16" Value="16" />
<telerik:RadComboBoxItem runat="server" Text="17" Value="17" />
<telerik:RadComboBoxItem runat="server" Text="18" Value="18" />
<telerik:RadComboBoxItem runat="server" Text="19" Value="19" />
<telerik:RadComboBoxItem runat="server" Text="20" Value="20" />
</Items>
</telerik:RadComboBox>
<telerik:RadComboBox ID="testSizeCode" runat="server" Label="Size: "  Width="70px" labelwidth="50px" AutoPostBack="true" LabelCssClass="myLabelCssSmall">
<Items>
<telerik:RadComboBoxItem runat="server" Text="5/8x3/4&quot;" Value="02" />
<telerik:RadComboBoxItem runat="server" Text="3/4&quot;" Value="03" />
<telerik:RadComboBoxItem runat="server" Text="1&quot;" Value="04" />
<telerik:RadComboBoxItem runat="server" Text="1 1/2&quot;" Value="06" />
<telerik:RadComboBoxItem runat="server" Text="2&quot;" Value="07" />
<telerik:RadComboBoxItem runat="server" Text="3&quot;" Value="30" />
<telerik:RadComboBoxItem runat="server" Text="4&quot;" Value="40" />
<telerik:RadComboBoxItem runat="server" Text="6&quot;" Value="60" />
<telerik:RadComboBoxItem runat="server" Text="8&quot;" Value="80" />
<telerik:RadComboBoxItem runat="server" Text="10&quot;" Value="10" />
<telerik:RadComboBoxItem runat="server" Text="16&quot;" Value="16" />
</Items>
</telerik:RadComboBox>
<telerik:RadComboBox ID="testMake" runat="server" label="Make: "  Width="120px" labelwidth="50px" 
DataSourceID="SqlDS_testMakeMenu" DataTextField="Label" DataValueField="Value1" LabelCssClass="myLabelCssSmall" >
</telerik:RadComboBox>
<asp:SqlDataSource ID="SqlDS_testMakeMenu" runat="server" 
ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
SelectCommand="uspMSMenusGet" SelectCommandType="StoredProcedure">
<SelectParameters>
<asp:Parameter DefaultValue="Make" Name="Type" Type="String" />
<asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
</SelectParameters>
</asp:SqlDataSource>
<telerik:RadComboBox ID="testType" runat="server" label="Type: "  Width="120px" labelwidth="50px" AutoPostBack="true"
DataSourceID="SqlDS_testTypeMenu" DataTextField="Label" DataValueField="Value1" LabelCssClass="myLabelCssSmall">
</telerik:RadComboBox>
<asp:SqlDataSource ID="SqlDS_testTypeMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
SelectCommand="uspMSMenusGet" SelectCommandType="StoredProcedure" >
<SelectParameters>
<asp:Parameter DefaultValue="MeterType" Name="Type" Type="String" />
<asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
</SelectParameters>
</asp:SqlDataSource>
</div>
<div style="width:100%; Margin:10px 0px 15px 3px;">
<asp:CheckBox ID="testInitialTest" runat="server" Checked="True" Text="Inital Test" TextAlign="Left" CssClass="myLabelCssSmall" />
<asp:CheckBox ID="testEval" runat="server" Checked="False" Text="Evaluation" TextAlign="Left" CssClass="myLabelCssSmall" />
<asp:CheckBox ID="testRepair" runat="server" Checked="False" Text="Repair" TextAlign="Left" CssClass="myLabelCssSmall" />
<asp:CheckBox ID="testFinalTest" runat="server" Checked="False" Text="Final Test" TextAlign="Left" CssClass="myLabelCssSmall"/>
<asp:CheckBox ID="testFBA" runat="server" Checked="False" Text="FBA Test" TextAlign="Left" CssClass="myLabelCssSmall" />
<asp:CheckBox ID="testNoWork" runat="server" Checked="False" Text="No Work" TextAlign="Left" CssClass="myLabelCssSmall" ToolTip="Check if no work was performed on this meter." />
<telerik:RadToolTip ID="RadToolTiptestInitialTest" runat="server" TargetControlID="testInitialTest" Title="Initial Test" Position="BottomCenter"  width="200px" HideEvent="LeaveToolTip" 
Text="Select if an Initial Test was performed as part of test and rebuild order scenario. Do NOT check for FBA." >
</telerik:RadToolTip>
<telerik:RadToolTip ID="RadToolTiptestEval" runat="server" TargetControlID="testEval" Title="Evaluation" Position="BottomCenter" width="200px" HideEvent="LeaveToolTip" 
Text="Select if an Evaluation was performed as part of test and rebuild order scenario.  An Evaluation is defined as a case where the meter
must be opened and evaluated for repair if it does not meet the accuracy limits. Do NOT check for FBA." >
</telerik:RadToolTip>
<telerik:RadToolTip ID="RadToolTip1" runat="server" TargetControlID="testRepair" Title="Repair" Position="BottomCenter" width="200px" HideEvent="LeaveToolTip" 
Text="Select if Repair if labor was used in a test and rebuild order scenario. Do NOT check for FBA." >
</telerik:RadToolTip>
<telerik:RadToolTip ID="RadToolTip2" runat="server" TargetControlID="testFinalTest" Title="Final Test" Position="BottomCenter"  width="200px" HideEvent="LeaveToolTip" 
Text="Select if an Final Test was performed after Evaluation and/or Repair as part of test and rebuild order scenario. Do NOT check for FBA." >
</telerik:RadToolTip>
<telerik:RadToolTip ID="RadToolTip3" runat="server" TargetControlID="testFBA" Title="FBA" Position="BottomCenter" width="200px" HideEvent="LeaveToolTip" 
Text="Check if a single accuracy test was performed as part of a Financial Benefits Analysis." >
</telerik:RadToolTip>
<telerik:RadToolTip ID="RadToolTip4" runat="server" TargetControlID="testNoWork" Title="No Work" Position="BottomCenter"  width="200px" HideEvent="LeaveToolTip" 
Text="Select if no work was peformed on a meter.  This is a test and rebuild scenario where a meter is obviously not repairable." >
</telerik:RadToolTip>
                                            
                                            
                                            
</div>
<div style="width:100%; Margin:0px 0px 15px 3px;">
                                                
<telerik:RadComboBox ID="testTestBy" runat="server" DataSourceID="SqlDS_testTestBy" 
DataTextField="Label" DataValueField="Value1" Label="Tested By: " Width="150px" LabelCssClass="myLabelCssSmall">
</telerik:RadComboBox>
<asp:SqlDataSource ID="SqlDS_testTestBy" runat="server" 
ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
SelectCommand="uspMSMenusGet" SelectCommandType="StoredProcedure">
<SelectParameters>
<asp:Parameter DefaultValue="Staff" Name="Type" Type="String" />
<asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
</SelectParameters>
</asp:SqlDataSource>
<telerik:RadComboBox ID="testRepairBy" runat="server" DataSourceID="SqlDS_testRepairBy" 
DataTextField="Label" DataValueField="Value1" Label="Repaired By: " Width="150px" LabelCssClass="myLabelCssSmall">
</telerik:RadComboBox>
<asp:SqlDataSource ID="SqlDS_testRepairBy" runat="server" 
ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
SelectCommand="uspMSMenusGet" SelectCommandType="StoredProcedure">
<SelectParameters>
<asp:Parameter DefaultValue="Staff" Name="Type" Type="String" />
<asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
</SelectParameters>
</asp:SqlDataSource>
                                                
</div>
<div style="width:100%; Margin:0px 0px 15px 3px;"> 
<telerik:RadTextBox ID="testRegister_Initial" runat="server" Label="Register ID(Start): " Width="250px" LabelWidth="115px" MaxLength="10" LabelCssClass="myLabelCssSmall">
</telerik:RadTextBox>
<telerik:RadTextBox ID="testRegister_Final" runat="server" Label="Register ID(End): " Width="250px" LabelWidth="115px" MaxLength="10" LabelCssClass="myLabelCssSmall">
</telerik:RadTextBox>
<telerik:RadToolTip ID="RadToolTipTestRegisterInitial" runat="server" TargetControlID="testRegister_Initial" Title="Register ID (Start)" Position="BottomCenter"  width="200px" HideEvent="LeaveToolTip" 
Text="The register ID on the meter when it came into the MeterShop." >
</telerik:RadToolTip>
<telerik:RadToolTip ID="RadToolTipTestRegisterFinal" runat="server" TargetControlID="testRegister_Final" Title="Register ID (End)" Position="BottomCenter"  width="200px" HideEvent="LeaveToolTip" 
Text="The register ID on the meter when it left the MeterShop." >
</telerik:RadToolTip>

</div>
<div style="width:100%; Margin:20px 0px 5px 3px;">
                                                
<asp:HiddenField ID="testRate1" runat="server" />
<asp:HiddenField ID="testRate2" runat="server" />
<asp:HiddenField ID="testRate3" runat="server" />
<asp:HiddenField ID="testMin1" runat="server" />
<asp:HiddenField ID="testMin2" runat="server" />
<asp:HiddenField ID="testMin3" runat="server" />
<asp:HiddenField ID="testMax1" runat="server" />
<asp:HiddenField ID="testMax2" runat="server" />
<asp:HiddenField ID="testMax3" runat="server" />
                                                


<asp:Label ID="testlblFlow1" runat="server" ></asp:Label>
<div style="width:100%; Margin: 5px 0px 5px 10px;">
<telerik:RadNumericTextBox ID="testRate1_PreResult" runat="server" Label="Pre-Repair Accuracy (%): " Width="190px" LabelWidth="145px"
NumberFormat-DecimalDigits="1" MinValue="0" MaxValue="150" LabelCssClass="myLabelCssSmall" >
</telerik:RadNumericTextBox>
<telerik:RadNumericTextBox ID="testRate1_PostResult" runat="server" Label="Post-Repair Accuracy (%): " Width="190px" LabelWidth="150px"
NumberFormat-DecimalDigits="1" MinValue="0" MaxValue="150" LabelCssClass="myLabelCssSmall" >
</telerik:RadNumericTextBox>
</div>
</div>
<div style="width:100%; Margin:0px 0px 5px 3px;">
<asp:Label ID="testlblFlow2" runat="server" ></asp:Label>
<div style="width:100%; Margin: 5px 0px 5px 10px;">
<telerik:RadNumericTextBox ID="testRate2_PreResult" runat="server" Label="Pre-Repair Accuracy (%): " Width="190px" LabelWidth="145px"
NumberFormat-DecimalDigits="1" MinValue="0" MaxValue="150" LabelCssClass="myLabelCssSmall" >
</telerik:RadNumericTextBox>
<telerik:RadNumericTextBox ID="testRate2_PostResult" runat="server" Label="Post-Repair Accuracy (%): " Width="190px" LabelWidth="150px"
NumberFormat-DecimalDigits="1" MinValue="0" MaxValue="150" LabelCssClass="myLabelCssSmall">
</telerik:RadNumericTextBox>
</div>
                                            
                                            
</div>
<div style="width:100%; Margin:0px 0px 5px 3px;">
<asp:Label ID="testlblFlow3" runat="server" ></asp:Label>
<div style="width:100%; Margin: 5px 0px 5px 10px;">
<telerik:RadNumericTextBox ID="testRate3_PreResult" runat="server" Label="Pre-Repair Accuracy (%): " Width="190px" LabelWidth="145px"
NumberFormat-DecimalDigits="1" MinValue="0" MaxValue="150" LabelCssClass="myLabelCssSmall" >
</telerik:RadNumericTextBox>
<telerik:RadNumericTextBox ID="testRate3_PostResult" runat="server" Label="Post-Repair Accuracy (%): " Width="190px" LabelWidth="150px"
NumberFormat-DecimalDigits="1" MinValue="0" MaxValue="150" LabelCssClass="myLabelCssSmall" >
</telerik:RadNumericTextBox>
</div>
                                            
</div>
<div style="width:95%; height:120px;Margin:20px 0px 5px 3px;">
<telerik:RadTextBox ID="testNotes" runat="server" Width="500px" Height="80px" LabelWidth="70px" 
MaxLength="250" Wrap="true" Label="Test Notes: " Rows="5" TextMode="MultiLine" LabelCssClass="myLabelCssSmall" >
</telerik:RadTextBox>
                                            
</div>
<div style="width:100%; height:120px;Margin:20px 0px 5px 3px;  ">
<telerik:RadButton ID="btntestInsert" runat="server" Text="Add Test Results" Width="300px" Height="30px" Skin="Metro"></telerik:RadButton>
</div>
</div>
                            
</asp:Panel>--%>

</asp:Content>

