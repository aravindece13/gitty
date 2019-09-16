<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_OrdersTaxResearch.ascx.vb" Inherits="Controls_form_OrdersTaxResearch" %>

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="10" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="searchCustomer">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hShipToID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hTransType">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hStage">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hStartDate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hEndDate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hOrderNumber">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="grdOrders">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOrderLines" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlOrderHeader"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<div style="width:1800px; float:left;">
    <div style="width:1700px; margin:10px 0px 10px 20px;">
        <h4 style="width:400px;">Order Filters</h4>
    </div>
    <div style="width:1700px; height:40px; Margin:10px 0px 0px 30px;">
                        
                <div style="height:30px; float:left;">

                    <div style="width:330px; float:left;">      
                        <telerik:RadSearchBox ID="searchCustomer" runat="server" Label="Customer:" Width="300px" LabelCssClass="myLabelCssMedium"
                                DataSourceID="SqlDS_CustomerSearch" DataTextField="CustName" DataKeyNames="CustID, CustName"
                                DataValueField="CustID" EmptyMessage="No matches." ShowSearchButton="false" >
                               
                        </telerik:RadSearchBox>
                            
                        <asp:HiddenField ID="hCustID" runat="server" />

                        <asp:SqlDataSource ID="SqlDS_CustomerSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT Customers.CustID, Customers.CustName FROM Customers WHERE (Customers.Status = 'Active')">         
                        </asp:SqlDataSource>
                        
                                    
                    </div>
                    <div style="width:140px; float:left;">
                        <div style="width:60px; float:left; ">
                            <asp:Label ID="Label6" runat="server" Text="Order:" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                        <div style="width:60px; float:left;">
                            <telerik:RadTextBox ID="hOrderNumber" runat="server" AutoPostBack="true" Width="70px" MaxLength="15" ></telerik:RadTextBox>
                        </div>
                    </div>
                    <div style="width:140px; float:left;">
                        <div style="width:70px; float:left; ">
                            <asp:Label ID="Label3" runat="server" Text="Ship To:" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                        <div style="width:60px; float:left;">
                            <telerik:RadTextBox ID="hShipToID" runat="server" AutoPostBack="true" Width="60px" MaxLength="10" ></telerik:RadTextBox>
                        </div>
                    </div>

                    <div style="width:130px; float:left;">
                        <div style="width:50px; float:left; ">
                            <asp:Label ID="Label1" runat="server" Text="Type:" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                        <div style="width:70px; float:left; ">
                            <telerik:RadComboBox ID="hTransType" runat="server" Width="60px" LabelCssClass="myLabelCssMedium" AutoPostBack="true" >
                                <Items>   
                                    <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true"/> 
                                    <telerik:RadComboBoxItem runat="server" Text="DO" Value="DO" />
                                    <telerik:RadComboBoxItem runat="server" Text="SO" Value="SO" />   
                                    <telerik:RadComboBoxItem runat="server" Text="RM" Value="RM" />
                                    <telerik:RadComboBoxItem runat="server" Text="CR" Value="CR" /> 
                                                
                                </Items>
                            </telerik:RadComboBox>
                        </div>
                                    
                    </div>
                    <div style="width:160px; float:left;">
                        <div style="width:50px; float:left; ">
                            <asp:Label ID="Label2" runat="server" Text="Stage:" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                        <div style="width:100px; float:left;">
                            <telerik:RadComboBox ID="hStage" runat="server" Width="100px" LabelCssClass="myLabelCssMedium" AutoPostBack="true" >
                                <Items>   
                                    <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true"/> 
                                    <telerik:RadComboBoxItem runat="server" Text="0-Entered" Value="0-Entered" />
                                    <telerik:RadComboBoxItem runat="server" Text="1-Ordered" Value="1-Ordered" />
                                    <telerik:RadComboBoxItem runat="server" Text="2-Picked" Value="2-Picked" />
                                    <telerik:RadComboBoxItem runat="server" Text="3-Shipped" Value="3-Shipped" /> 
                                    <telerik:RadComboBoxItem runat="server" Text="4-Invoiced" Value="4-Invoiced" />
                                    <telerik:RadComboBoxItem runat="server" Text="5-Paid" Value="5-Paid" />            
                                </Items>
                            </telerik:RadComboBox>
                        </div>
                                    
                    </div>
                    <div style="width:245px; float:left;">
                        <div style="width:125px; float:left; ">
                            <asp:Label ID="Label4" runat="server" Text="Start (Entered):" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                        <div style="width:100px; float:left;">
                            <telerik:RadDateInput ID="hStartDate" runat="server" AutoPostBack="True" 
                                Culture="en-US" DateFormat="M/d/yyyy" DisplayDateFormat="M/d/yyyy" 
                                ResolvedRenderMode="Classic" Width="100px" MinDate="1/1/2012" EmptyMessage="Enter valid date" CausesValidation="true">
                            </telerik:RadDateInput> 
                            <asp:RequiredFieldValidator ID="rfhStartDate" ControlToValidate="hStartDate"  runat="server" ErrorMessage="A start date is required" Font-Bold="True" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div> 
                    <div style="width:235px; float:left;">
                        <div style="width:125px; float:left; ">
                            <asp:Label ID="Label5" runat="server" Text="End (Entered):" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                        <div style="width:100px; float:left;">
                            <telerik:RadDateInput ID="hEndDate" runat="server" AutoPostBack="True" CausesValidation="true" EmptyMessage="Enter valid date"
                                Culture="en-US" DateFormat="M/d/yyyy" DisplayDateFormat="M/d/yyyy" ResolvedRenderMode="Classic" Width="100px">
                            </telerik:RadDateInput> 
                            <asp:RequiredFieldValidator ID="frhEndDate" ControlToValidate="hEndDate"  runat="server" ErrorMessage="An end date is required" Font-Bold="True" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>           
                </div>
                           
    </div>
    <div style="width:1700px; height:600px; Margin:0px 0px 0px 20px;">
        <div style="width:370px; float:left;">
            <div style="width:100%;">
                <h4 style="width:350px;">Order Listing</h4>
            </div>
            <div style="width:100%;">
                <telerik:RadGrid ID="grdOrders" runat="server" Width="350px" Height="600px" AllowSorting="True" DataSourceID="SqlDS_grdOrders" GroupPanelPosition="Top" 
                    ResolvedRenderMode="Classic">
                    
                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                        <Selecting AllowRowSelect="true" />
                        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                    </ClientSettings>
                    
                    <MasterTableView AutoGenerateColumns="False" DataKeyNames="OrderNumber" ClientDataKeyNames="OrderNumber" DataSourceID="SqlDS_grdOrders">
                        <Columns>
                            <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" ReadOnly="True" SortExpression="OrderNumber" UniqueName="OrderNumber">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="EnterDate" DataType="System.DateTime" HeaderText="Enter Date" SortExpression="EnterDate" UniqueName="EnterDate"  DataFormatString="{0:MM/dd/yy}">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Stage" HeaderText="Stage" SortExpression="Stage" UniqueName="Stage">
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
                <asp:SqlDataSource ID="SqlDS_grdOrders" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="uspOrdersHeaderTaxResearch" SelectCommandType="StoredProcedure">
                    <selectparameters>
                        <asp:parameter name="custid" type="string" />
                        <asp:parameter name="transtype" type="string" />
                        <asp:parameter name="stage" type="string" />
                        <asp:parameter name="shiptoid" type="string" />
                        <asp:parameter name="startdate" type="datetime" />
                        <asp:parameter name="enddate" type="datetime" />
                        <asp:parameter name="ordernumber" type="string" />
                    </selectparameters>
                </asp:SqlDataSource>
            </div>
        
        </div>
        <div style="width:1200px; float:left;margin-left:20px;">
            <div style="width:100%;">
                <h4 style="width:400px;">Line Items (Select Order at Left)</h4>
            </div>
            <asp:Panel ID="pnlOrderHeader" runat="server">
            
                <div style="width:100%; margin:5px 0px 0px 5px; height:25px;">
                    <div style="width:125px; font-size:small; font-weight:bold; color:Black; float:left;">
                        <asp:Label ID="lblOrderNumber" runat="server"></asp:Label>
                    </div>
                    <div style="width:250px; font-size:small; font-weight:bold; color:Red; float:left;">
                        <asp:Label ID="lblCustomer" runat="server"></asp:Label>
                    </div>
                    <div style="width:125px; font-size:small; font-weight:bold; color:Red; float:left;">
                        <asp:Label ID="lblShipToID" runat="server"></asp:Label>
                    </div>
                    <div style="width:50px; font-size:small; font-weight:bold; color:Red; float:left;">
                        <asp:Label ID="lblTransType" runat="server"></asp:Label>
                    </div>
                    <div style="width:175px; font-size:small; font-weight:bold; color:Red; float:left;">
                        <asp:Label ID="lblInvoiceDate" runat="server"></asp:Label>
                    </div>
                    <div style="width:300px; font-size:small; font-weight:bold; color:Red; float:left;">
                        <asp:Label ID="lblSalesName" runat="server"></asp:Label>
                    </div>
                </div>
            </asp:Panel>

            <div style="width:100%;">
                <telerik:RadGrid ID="grdOrderLines" runat="server" Width="1000px" Height="500px" AllowSorting="True" DataSourceID="SqlDS_grdOrderLines" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                    <ClientSettings>
                        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                    </ClientSettings>
                    <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdOrderLines">
                        <Columns>
                            <%--<telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" SortExpression="OrderNumber" UniqueName="OrderNumber">
                            </telerik:GridBoundColumn>--%>
                            <telerik:GridBoundColumn DataField="Line" DataType="System.Int32" HeaderText="Line" SortExpression="Line" UniqueName="Line">
                                <HeaderStyle VerticalAlign="Bottom" Width="30px" />
                                <ItemStyle VerticalAlign="Top" Width="30px" />
                            </telerik:GridBoundColumn>
                            <%--<telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipToID" SortExpression="ShipToID" UniqueName="ShipToID">
                            </telerik:GridBoundColumn>--%>
                            <%--<telerik:GridBoundColumn DataField="TransType" HeaderText="TransType" SortExpression="TransType" UniqueName="TransType">
                            </telerik:GridBoundColumn>--%>
                            <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                <HeaderStyle VerticalAlign="Bottom" Width="100px" />
                                <ItemStyle VerticalAlign="Top" Width="100px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Description" HeaderText="Description" UniqueName="Description">
                                <HeaderStyle VerticalAlign="Bottom" Width="300px" />
                                <ItemStyle VerticalAlign="Top" Width="300px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Price" DataType="System.Decimal" HeaderText="Price" SortExpression="Price" UniqueName="Price" DataFormatString="{0:c2}">
                                <HeaderStyle VerticalAlign="Bottom" Width="60px" />
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="60px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="NetAmount" DataType="System.Decimal" HeaderText="Net Amount" SortExpression="NetAmount" UniqueName="NetAmount" DataFormatString="{0:c2}">
                                <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="80px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="QtyShip" DataType="System.Decimal" HeaderText="Qty Ship" SortExpression="QtyShip" UniqueName="QtyShip">
                                <HeaderStyle VerticalAlign="Bottom" Width="75px" />
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="75px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="QtyOrd" DataType="System.Decimal" HeaderText="Qty Ord" SortExpression="QtyOrd" UniqueName="QtyOrd">
                                <HeaderStyle VerticalAlign="Bottom" Width="75px" />
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="75px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Flag_Taxable" HeaderText="OE Tax" ReadOnly="True" SortExpression="Flag_Taxable" UniqueName="Flag_Taxable">
                                <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                <ItemStyle VerticalAlign="Top" BackColor="Silver" Font-Bold="true" Width="50px"/>                                
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ICSW_TaxType" HeaderText="ICSW Tax" ReadOnly="True" SortExpression="ICSW_TaxType" UniqueName="ICSW_TaxType">
                                <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                <ItemStyle VerticalAlign="Top" BackColor="Silver" Font-Bold="true" Width="50px"/>                                
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
                <asp:SqlDataSource ID="SqlDS_grdOrderLines" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="uspOrdersLinesTaxReview" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="grdOrders" DefaultValue="0" Name="OrderNumber" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div style="width:100%; margin:5px 0px 0px 5px;">
                <div style="width:150px; font-size:small; font-weight:bold; color:Black; float:left;">Tax Status Codes:</div>
                <div style="width:100px; font-size:small; font-weight:bold; color:Red; float:left;">T-Taxable</div>
                <div style="width:100px; font-size:small; font-weight:bold; color:Red; float:left;">E-Exempt</div>
            </div>
        
        </div>
    
    </div>

</div>

