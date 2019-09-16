<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_AR.ascx.vb" Inherits="Controls_form_AR" %>

   <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="grdCustomerListing">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCustomerListing" LoadingPanelID="" />
                    <%--<telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                    <telerik:AjaxUpdatedControl ControlID="pivgrdSales" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdOpenOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdSalesHistory" LoadingPanelID="RadAjaxLoadingPanel1" />
                                       
                    <telerik:AjaxUpdatedControl ControlID="lblCurrent" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblYTD" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblOtherStats" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblPeriods" LoadingPanelID="" />
                                        
                    <telerik:AjaxUpdatedControl ControlID="lblCustomer" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblOrderBal" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblCreditLimit" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblBalanceDue" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblServiceChargeBal" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblUnappliedcashbal" LoadingPanelID="" />
                    
                    <telerik:AjaxUpdatedControl ControlID="lblSalesYTD" LoadingPanelID="" />
                    <%--<telerik:AjaxUpdatedControl ControlID="lblMarginYTD" LoadingPanelID="" />--%>
                    <telerik:AjaxUpdatedControl ControlID="lblReturnsYTD" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblServiceChargeYTD" LoadingPanelID="" />
                    <%--<telerik:AjaxUpdatedControl ControlID="lblLastSaleAmt" LoadingPanelID="" />--%>
                    <telerik:AjaxUpdatedControl ControlID="lbllastSaleDate" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblHighSaleAmt" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblHighBal" LoadingPanelID="" />
                    <%--<telerik:AjaxUpdatedControl ControlID="lblAvgDaysToPay" LoadingPanelID="" />--%>
                    <telerik:AjaxUpdatedControl ControlID="lblp4p5pct" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblperiod1" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblperiod2" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblperiod3" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblperiod4" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblperiod5" LoadingPanelID="" />
                    
                    <telerik:AjaxUpdatedControl ControlID="lblTotBal2to5" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblTotBal3to5" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblTotBal4to5" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblBorrowBaseIneligible" LoadingPanelID="" />
                    
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
                      
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>


    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
    </telerik:RadAjaxLoadingPanel>

    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script  type="text/javascript">

            function ShowOrderDetail(sender, args) {
                var OrderNumber = args.getDataKeyValue("OrderNumber");
                var wnd = window.radopen("\OrdersActiveDetail.aspx?OrderNumber=" + OrderNumber, null);

                //Get the clicked row
                var index = args.get_itemIndexHierarchical();
                var item = args.get_tableView().get_dataItems()[index];
                var rowElement = item.get_element();

                //Get coordinates of the row and reposition the window relative to it
                var bounds = $telerik.getBounds(rowElement);
                wnd.moveTo(bounds.x + 120 + index * 10, bounds.y - 400);
            }
        </script>
    </telerik:RadCodeBlock>

    
<div id="divBody" style="Width:1800px; margin: 20px;">
    <div style="width:1750px; height:375px;">
           <telerik:RadGrid ID="grdCustomerListing" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDS_CustomerList" 
                GridLines="None" Width="1700px" Height="350px" CellSpacing="0" >
            
                <GroupingSettings CaseSensitive="false" />

                <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="true" AllowKeyboardNavigation="true" >
                    <Selecting AllowRowSelect="True" />
                    <%--<KeyboardNavigationSettings AllowSubmitOnEnter="True" AllowActiveRowCycle="true" SaveChangesKey="S" CancelChangesKey="C" EnableKeyboardShortcuts="true" />--%>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                    
                </ClientSettings>

                     
        
                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_CustomerList" PageSize="50"  Width="1700px" 
                    DataKeyNames="CustId" ClientDataKeyNames="CustId" AllowFilteringByColumn="true" >

                    <Columns>
                        <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName" 
                            FilterControlWidth="130px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="200px" />
                            <ItemStyle VerticalAlign="Top" Width="200px" HorizontalAlign="Left" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="OrderBalance" HeaderText="Order Balance" SortExpression="OrderBalance" UniqueName="OrderBalance" DataFormatString="{0:c0}"
                            DataType="System.Decimal" 
                            FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" ShowFilterIcon="true" AutoPostBackOnFilter="true" >

                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="SalesYTD" DataType="System.Decimal" HeaderText="Sales YTD" SortExpression="SalesYTD" UniqueName="SalesYTD" DataFormatString="{0:c0}"
                            ShowFilterIcon="true" FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="MarginYTD" DataType="System.Decimal" HeaderText="Margin YTD" SortExpression="MarginYTD" UniqueName="MarginYTD" DataFormatString="{0:c0}"
                            ShowFilterIcon="true" ReadOnly="True" FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="FutureInvoiceBalance" DataType="System.Decimal" HeaderText="Invce Bal" SortExpression="FutureInvoiceBalance" UniqueName="FutureInvoiceBalance" DataFormatString="{0:c0}"
                            ShowFilterIcon="true" FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="P4P5Pct" DataType="System.Decimal" HeaderText="91+ %" SortExpression="P4P5Pct" UniqueName="P4P5Pct" 
                             DataFormatString="{0:N1}%" 
                            FilterControlWidth="25px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    
                            <HeaderStyle VerticalAlign="Bottom" Width="65px" />
                            <ItemStyle VerticalAlign="Top" Width="65px" HorizontalAlign="Center" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        
                       <%-- <telerik:GridBoundColumn DataField="FutureBalance" DataType="System.Decimal" HeaderText="Future Bal" SortExpression="FutureBalance" UniqueName="FutureBalance" DataFormatString="{0:c0}"
                            ShowFilterIcon="true" FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>--%>
                        
                        <telerik:GridBoundColumn DataField="LastSaleDate" DataType="System.DateTime" HeaderText="Last Sale" SortExpression="LastSaleDate" UniqueName="LastSaleDate"  DataFormatString="{0:MM/dd/yy}"
                            FilterControlWidth="40px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="75px" />
                            <ItemStyle VerticalAlign="Top" Width="75px" HorizontalAlign="Center" Font-Size="Small" />
 
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="LastPayDate" DataType="System.DateTime" HeaderText="Last Pay" SortExpression="LastPayDate" UniqueName="LastPayDate"  DataFormatString="{0:MM/dd/yy}"
                            FilterControlWidth="40px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="75px" />
                            <ItemStyle VerticalAlign="Top" Width="75px" HorizontalAlign="Center" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="LastPaymentamount" DataType="System.Decimal" HeaderText="Last Pay Amt" SortExpression="LastPaymentamount" UniqueName="LastPaymentamount" DataFormatString="{0:c0}"
                            ShowFilterIcon="true" FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ServiceChargeBalance" DataType="System.Decimal" HeaderText="Srv Charge Bal" SortExpression="ServiceChargeBalance" UniqueName="ServiceChargeBalance" DataFormatString="{0:c0}"
                            ShowFilterIcon="true" FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ServiceChargeYTD" DataType="System.Decimal" HeaderText="Serv Charge YTD" SortExpression="ServiceChargeYTD" UniqueName="ServiceChargeYTD" DataFormatString="{0:c0}"
                            ShowFilterIcon="true" FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="UnappliedCashBalance" DataType="System.Decimal" HeaderText="Unapplied Cash" SortExpression="UnappliedCashBalance" UniqueName="UnappliedCashBalance" DataFormatString="{0:c0}"
                            ShowFilterIcon="true" FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="BorrowBaseIneligible" DataType="System.Decimal" HeaderText="Base Ineligible" SortExpression="BorrowBaseIneligible" UniqueName="BorrowBaseIneligible" DataFormatString="{0:c0}"
                            ShowFilterIcon="true" FilterControlWidth="45px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        
                        <telerik:GridBoundColumn DataField="Branch" Display="false" HeaderText="Branch" SortExpression="Branch" UniqueName="Branch" 
                            FilterControlWidth="30px" CurrentFilterFunction="EqualTo" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="130px" />
                            <ItemStyle VerticalAlign="Top" Width="130px" Font-Size="Small" />
 
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" SortExpression="SalesName" UniqueName="SalesName" 
                            ReadOnly="True"  FilterControlWidth="130px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="175px" />
                            <ItemStyle VerticalAlign="Top" Width="175px" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CustID" Visible="false" HeaderText="CustID" SortExpression="CustID" UniqueName="CustID" ReadOnly="True" >
                
                        </telerik:GridBoundColumn>
                    </Columns>
                   <%-- <PagerStyle Font-Bold="False" Font-Italic="False" Font-Overline="False"  Font-Strikeout="False" Font-Underline="False" Wrap="True" />
                    <HeaderStyle VerticalAlign="Bottom" Font-Bold="False" Font-Italic="False" Font-Overline="False"  Font-Strikeout="False" Font-Underline="False" Wrap="True" />--%>
                </MasterTableView>
       

                <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>

               
            </telerik:RadGrid>

    
            <asp:SqlDataSource ID="SqlDS_CustomerList" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                SelectCommand="uspCustomerList" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="hdnJob" Name="Job" Type="String"  />
                    <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="WhseID1" Type="String" />
                    <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="WhseID2" Type="String" />
                    <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="WhseID3" Type="String" />
                    <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="WhseID4" Type="String" />
                    <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="WhseID5" Type="String" />
                    <asp:CookieParameter CookieName="SalesID1" DefaultValue="0" Name="SalesID1" Type="String" />
                    <asp:CookieParameter CookieName="SalesID2" DefaultValue="0" Name="SalesID2" Type="String" />
                    <asp:CookieParameter CookieName="SalesID3" DefaultValue="0" Name="SalesID3" Type="String" />
                    <asp:CookieParameter CookieName="SalesID4" DefaultValue="0" Name="SalesID4" Type="String" />
                    <asp:CookieParameter CookieName="SalesID5" DefaultValue="0" Name="SalesID5" Type="String" />
                    <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="State1" Type="String" />
                    <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="State2" Type="String" />
                    <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="State3" Type="String" />
                    <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="State4" Type="String" />
                    <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="State5" Type="String" />
                    <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="State6" Type="String" />
                    <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="State7" Type="String" />
                    <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="State8" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </div>
    
 <div id="details" style="Margin:10px; border:single 1px blue;">
    

    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="MetroTouch">
        <Tabs>
            <telerik:RadTab runat="server" Text="Balances" PageViewID="Balances" Selected="true"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Open Orders" PageViewID="OpenOrders" ></telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>

    <div style="margin:10px;">
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="300px" Width="1500px" >
         
             <telerik:RadPageView ID="OpenOrders" runat="server" Selected="false" Height="300px" Width="1400px">
               
                    <telerik:RadGrid ID="grdOpenOrders" runat="server" DataSourceID="SqlDS_OpenOrders" width="1400px" Height="275px"  
                        AllowSorting="True" GridLines="None" CellSpacing="0">
                
                        <ClientSettings AllowColumnsReorder="true" ReorderColumnsOnClient="True" Selecting-AllowRowSelect="true" EnableRowHoverStyle="true">
                            <ClientEvents OnRowSelected="ShowOrderDetail" />
                            <Scrolling AllowScroll="true" UseStaticHeaders="true" />
                            <Resizing AllowColumnResize="true" AllowRowResize="True" />
                        </ClientSettings>
                
                
                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_OpenOrders" ClientDataKeyNames="OrderNumber" DataKeyNames="OrderNumber" Width="1300px" >
                            
                        
                            <ItemStyle VerticalAlign="Top" />
                            <HeaderStyle VerticalAlign="Bottom" Font-Bold="true" />
                        
                         <Columns>
                            <telerik:GridBoundColumn DataField="Enterdate" DataType="System.DateTime" 
                                HeaderText="Entered" SortExpression="Enterdate" UniqueName="Enterdate" DataFormatString="{0:MM/dd/yy}">
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" Width="70px"  Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="70px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" 
                                SortExpression="OrderNumber" UniqueName="OrderNumber">
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" Width="80px"  Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="80px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Center" Width="50px"  Font-Size="Small"  />
                                <HeaderStyle VerticalAlign="Bottom" Width="50px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Stage" HeaderText="Stage" 
                                SortExpression="Stage" UniqueName="Stage">
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" Width="80px"  Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="80px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="TotalOrderAmount" DataType="System.Decimal" HeaderText="Value" SortExpression="TotalOrderAmount" UniqueName="TotalOrderAmount" 
                                DataFormatString="{0:c2}" >
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="75px"  Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="75px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="OrderMargin" DataType="System.Decimal" HeaderText="Margin" SortExpression="OrderMargin" UniqueName="OrderMargin" 
                                    DataFormatString="{0:c2}" >
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="70px"  Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="70px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" HeaderText="Margin %" SortExpression="MarginPct" UniqueName="MarginPct" 
                                    DataFormatString="{0:p1}" >
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="50px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ShipViaType" HeaderText="Ship Via" SortExpression="ShipViaType" UniqueName="ShipViaType">
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Center" Width="50px"  Font-Size="Small"/>
                                <HeaderStyle VerticalAlign="Bottom" Width="50px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                            
                           
                            <telerik:GridBoundColumn DataField="ShipToID" HeaderText="Ship To" SortExpression="ShipToID" UniqueName="ShipTo">
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" Width="65px" Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="65px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                           
                            <telerik:GridBoundColumn DataField="TakenBy" HeaderText="Taken" SortExpression="TakenBy" UniqueName="TakenBy">
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" Width="60px"  Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="60px" Font-Size="Small"/>
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="PlacedBy" HeaderText="Placed" 
                                SortExpression="PlacedBy" UniqueName="PlacedBy">
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" Width="60px" Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="60px" Font-Size="Small"/>
                            </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="PickedDate" DataType="System.DateTime" 
                                HeaderText="Picked" SortExpression="PickedDate" UniqueName="PickedDate" DataFormatString="{0:MM/dd/yy}">
                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" Width="70px"  Font-Size="Small" />
                                <HeaderStyle VerticalAlign="Bottom" Width="70px" Font-Size="Small" />
                            </telerik:GridBoundColumn>
                        </Columns>
                        </MasterTableView>
                    
                          
                    </telerik:RadGrid>

                    <asp:SqlDataSource ID="SqlDS_OpenOrders" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                        SelectCommand="uspOrdersHeaderOpenGetByCustID" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="grdCustomerListing" DefaultValue="0" Name="CustId" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource> 
                
             </telerik:RadPageView>
             <telerik:RadPageView ID="Balances" runat="server" Selected="true" Height="300px" Width="1700px">
                <div id="divBalances" style=" Width:1700px; height:300px; " >
                
                
                     <div style="margin:3px;"> 
                                        
                       <div style="Width:1200px; height:20px; ">
                           <div style="float:left;width:80px;">
                                <asp:Label ID="Label2" runat="server" Text="Customer: " Width="60px" Font-Bold="true" ForeColor="Gray" Font-Size="Small"></asp:Label>
                           </div>
                           <div>
                                <asp:Label ID="lblCustomer" runat="server" Width="600px" Font-Size="Small" ></asp:Label>
                           </div>
                       </div>
                       <div style="width:1800px; height:250px; float:left;">
                            <div style="width:300px; height:250px; float:left;">
                                <div style="width:300px; height:30px;">
                                    <div style="width:200px; margin-bottom:3px; padding:3px;  float:left; font-weight:bold; font-size:Small; color: white;  background-color: #639aff;">Current</div>  
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:130px; float:left; font-weight:bold; font-size:Small;">Order Balance:</div>
                                    <div style="width:70px; float:left; font-size:Small;">
                                        <asp:Label ID="lblOrderBal" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:130px; float:left; font-weight:bold; font-size:Small;">Credit Limit:</div>
                                    <div style="width:70px; float:left; font-size:Small;">
                                        <asp:Label ID="lblCreditLimit" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:130px; float:left; font-weight:bold; font-size:Small;">Balance Due:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblBalanceDue" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:130px; float:left; font-weight:bold; font-size:Small;">Service Charges:</div>
                                    <div style="width:70px; float:left;font-size:Small;"> 
                                        <asp:Label ID="lblServiceChargeBal" runat="server"></asp:Label>
                                    </div>
                                </div>
                                 <div style="width:300px; height:20px;float:left;">
                                     <div style="width:130px; float:left; font-weight:bold; font-size:Small;">Unapplied Cash:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblUnappliedcashbal" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div style="width:300px; height:250px; float:left;">
                                <div style="width:300px; height:30px;float:left;">
                                    <div style="width:200px; margin-bottom:3px; padding:3px; float:left; font-weight:bold; font-size:Small; color: white; background-color:#639aff;">Year To Date</div>  
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">Sales:</div>
                                    <div style="width:70px; float:left; font-size:Small;">
                                        <asp:Label ID="lblSalesYTD" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">Returns:</div>
                                    <div style="width:70px; float:left; font-size:Small;">
                                        <asp:Label ID="lblReturnsYTD" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">Serice Charges:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblServiceChargeYTD" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            
                            </div>
                            <div style="width:300px; height:250px; float:left;">
                                <div style="width:300px; height:30px;float:left;">
                                    <div style="width:200px; margin-bottom:3px; padding:5px; float:left; font-weight:bold; font-size:Small; color: white;  background-color: #639aff;">Periods</div>  
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">0 - 30:</div>
                                    <div style="width:70px; float:left; font-size:Small;">
                                        <asp:Label ID="lblPeriod1" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">31 - 60:</div>
                                    <div style="width:70px; float:left; font-size:Small;">
                                        <asp:Label ID="lblPeriod2" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">61 - 90:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblPeriod3" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">91 - 120:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblPeriod4" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                 <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">120+:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblPeriod5" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">31+:</div>
                                    <div style="width:70px; float:left; font-size:Small;">
                                        <asp:Label ID="lblTotBal2to5" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">61+:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblTotBal3to5" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">91+:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblTotBal4to5" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            
                            </div>
                            <div style="width:300px; height:250px; float:left;">
                                <div style="width:300px; height:30px;float:left;">
                                    <div style="width:200px; margin-bottom:3px; padding:3px; float:left; font-weight:bold; font-size:Small; color: white; background-color:#639aff;">Other Stats</div>  
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">Last Sale:</div>
                                    <div style="width:70px; float:left; font-size:Small;">
                                        <asp:Label ID="lbllastSaleDate" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">High Balance:</div>
                                    <div style="width:70px; float:left; font-size:Small;">
                                        <asp:Label ID="lblHighBal" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:100px; float:left; font-weight:bold; font-size:Small;">91+ %:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblp4p5pct" runat="server" ></asp:Label>
                                    </div>
                                </div>
                                <div style="width:300px; height:20px;float:left;">
                                     <div style="width:130px; float:left; font-weight:bold; font-size:Small;">Borrow Base Inelig.:</div>
                                    <div style="width:70px; float:left;font-size:Small;">
                                        <asp:Label ID="lblBorrowBaseIneligible" runat="server" ></asp:Label>
                                    </div>
                                </div>
                            
                            </div>
                            <div style="width:300px; height:250px; float:left;">    
                                <div style="width:300px; height:30px;float:left;">
                                    <div style="width:200px; margin-bottom:3px; padding:3px; float:left; font-weight:bold; font-size:Small; color: white; background-color:#639aff;">Sales History</div>  
                                </div>
                                <div style="width:300px; height:220px;float:left;">
                                    <telerik:RadGrid ID="grdSalesHistory" runat="server" DataSourceID="SqlDS_grdSalesHistory" width="300px" Height="200px"  
                                        AllowSorting="True" GridLines="None" CellSpacing="0">
                
                                        <ClientSettings EnableRowHoverStyle="true">
                            
                                            <Scrolling AllowScroll="true" UseStaticHeaders="true" />
                                            <%--<Resizing AllowColumnResize="true" AllowRowResize="True" />--%>
                                        </ClientSettings>
                                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdSalesHistory" Width="300px" >
                                            <ItemStyle VerticalAlign="Top" />
                                            <HeaderStyle VerticalAlign="Bottom" Font-Bold="true" />                      
                                         <Columns>
                                            <telerik:GridBoundColumn DataField="Year" HeaderText="Year" SortExpression="Year" UniqueName="Year">
                                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" Width="50px"  Font-Size="Small" />
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" Font-Size="Small" />
                                            </telerik:GridBoundColumn>
                            
                            
                                            <telerik:GridBoundColumn DataField="Sales" DataType="System.Decimal" HeaderText="Sales" SortExpression="Sales" UniqueName="Sales" 
                                                DataFormatString="{0:c2}" >
                                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="100px"  Font-Size="Small" />
                                                <HeaderStyle VerticalAlign="Bottom" Width="100px" Font-Size="Small" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="Margin" DataType="System.Decimal" HeaderText="Margin" SortExpression="Margin" UniqueName="Margin" 
                                                    DataFormatString="{0:c2}" >
                                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="100px"  Font-Size="Small" />
                                                <HeaderStyle VerticalAlign="Bottom" Width="100px" Font-Size="Small" />
                                            </telerik:GridBoundColumn>
                            
                            
                           
                            
                                        </Columns>
                                        </MasterTableView>
                    
                          
                                    </telerik:RadGrid>

                                    <asp:SqlDataSource ID="SqlDS_grdSalesHistory" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                        SelectCommand="uspCustomerStatsSalesMargin" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="grdCustomerListing" DefaultValue="0" Name="CustId" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource> 
                                </div>
                            </div>

                   
                       </div>

                        
                     </div> 
                 
                </div>
                 
             </telerik:RadPageView>
         
            
        
          
   
        </telerik:RadMultiPage>
    </div>       
       <telerik:RadWindowManager ID="Singleton" Skin="MetroTouch" Width="1250" Height="550"
                        VisibleStatusbar="false" Behaviors="Close,Move" runat="server">
            <Windows>
                    
                    <telerik:RadWindow ID="NewDialog" runat="server" Title="Add Comment" Height="350px"
                        Width="1000px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
            </Windows> 
              
                    
       </telerik:RadWindowManager>   
      
 </div>


</div>