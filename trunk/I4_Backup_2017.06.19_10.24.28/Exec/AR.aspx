<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="AR.aspx.vb" Inherits="Exec_AR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Executive | Customers</h1>


<div style="padding:5px 2px 2px 5px; width:1000px; height:600px;">


    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid3" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid4" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="btnAddComment" LoadingPanelID="" />
                    
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
                    <telerik:AjaxUpdatedControl ControlID="lblMarginYTD" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblReturnsYTD" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblServiceChargeYTD" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblLastSaleAmt" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lbllastSaleDate" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblHighSaleAmt" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblHighBal" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblAvgDaysToPay" LoadingPanelID="" />
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


    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
    </telerik:RadAjaxLoadingPanel>



    <script  type="text/javascript">

        function ShowOrderDetail(sender, args)
        {
            var OrderNumber = args.getDataKeyValue("OrderNumber");
            var wnd = window.radopen("OrdersActiveDetail.aspx?OrderNumber=" + OrderNumber, null);

            //Get the clicked row
            var index = args.get_itemIndexHierarchical();
            var item = args.get_tableView().get_dataItems()[index];
            var rowElement = item.get_element();

            //Get coordinates of the row and reposition the window relative to it
            var bounds = $telerik.getBounds(rowElement);
            wnd.moveTo(bounds.x + 120 + index * 10, bounds.y -400);
        }
    </script>

    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function OpenPositionedWindow(oButton, url, windowName) {
            var oWnd = window.radopen(url, windowName);
        }
        
        function openRadNewWindow(custid) {
           
            var oWnd = radopen("ActionAddCustomerComment.aspx?custid=" + custid, "NewDialog");
            oWnd.center();
        }

        
     </script>
   </telerik:RadCodeBlock>
  
    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" 
        AllowPaging="True" AllowSorting="True" DataSourceID="SqlDS_CustomerList" 
        GridLines="None" Width="1000px" Height="315px" >
            
        <GroupingSettings CaseSensitive="false" />

        <ClientSettings Selecting-AllowRowSelect="true" 
                EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="2" />
        </ClientSettings>
        
        
        <MasterTableView AutoGenerateColumns="False" 
            DataKeyNames="CustId" ClientDataKeyNames="CustId" 
            DataSourceID="SqlDS_CustomerList" PageSize="25"  Width="1400px"  AllowFilteringByColumn="true" >
        
        <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>
        
   
        <ItemStyle VerticalAlign="Top" />
        <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" />
        

            <Columns>
                <telerik:GridBoundColumn DataField="CustId" HeaderText="CustId" 
                    SortExpression="CustId" UniqueName="CustId" Display="false">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" 
                    SortExpression="CustName" UniqueName="CustName" 
                    FilterControlWidth="130px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="140px" />
                    <ItemStyle Width="140px" HorizontalAlign="Left" Font-Size="X-Small" />
         
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="OrderBal" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Order Bal" SortExpression="OrderBal" 
                    UniqueName="OrderBal" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle Width="80px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="SalesYTD" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Sales YTD" SortExpression="SalesYTD" 
                    UniqueName="SalesYTD" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle Width="80px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="MarginYTD" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Margin YTD" ReadOnly="True" 
                    SortExpression="MarginYTD" UniqueName="MarginYTD" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle Width="80px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="BalanceDue" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Balance" ReadOnly="True" 
                    SortExpression="BalanceDue" UniqueName="BalanceDue" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle Width="80px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="LastSaleDate" 
                    DataFormatString="{0:MM/dd/yy}" DataType="System.DateTime" 
                    HeaderText="Last Sale" SortExpression="LastSaleDate" UniqueName="LastSaleDate" 
                    FilterControlWidth="40px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="75px" />
                    <ItemStyle Width="75px" HorizontalAlign="Center" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Credits" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Credits" SortExpression="Credits" 
                    UniqueName="Credits" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle Width="80px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="ServiceChargeBal" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Service Charge Bal" 
                    SortExpression="ServiceChargeBal" UniqueName="ServiceChargeBal" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle Width="80px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="ServiceChargeYTD" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Service Charge YTD" 
                    SortExpression="ServiceChargeYTD" UniqueName="ServiceChargeYTD" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="85px" />
                    <ItemStyle Width="85px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="AvgDaysToPay" DataType="System.Int32" 
                    HeaderText="Avg Days" SortExpression="AvgDaysToPay" UniqueName="AvgDaysToPay" 
                    FilterControlWidth="25px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="60px" />
                    <ItemStyle Width="60px" HorizontalAlign="Center" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="LastPmtDate" 
                    DataFormatString="{0:MM/dd/yy}" DataType="System.DateTime" 
                    HeaderText="Last Pay" SortExpression="LastPmtDate" UniqueName="LastPmtDate" 
                    FilterControlWidth="40px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="75px" />
                    <ItemStyle Width="75px" HorizontalAlign="Center" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="ReturnsYTD" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Returns YTD" SortExpression="ReturnsYTD" 
                    UniqueName="ReturnsYTD" 
                    FilterControlWidth="40px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle Width="80px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="BorrowBaseIneligible" 
                    DataFormatString="{0:c0}" DataType="System.Decimal" 
                    HeaderText="Base Ineligible" SortExpression="BorrowBaseIneligible" 
                    UniqueName="BorrowBaseIneligible" 
                    FilterControlWidth="40px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle Width="80px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="P4P5Pct" DataType="System.Decimal" 
                    HeaderText="91+ %" SortExpression="P4P5Pct" UniqueName="P4P5Pct" DataFormatString="{0:N1}%" 
                    FilterControlWidth="25px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="65px" />
                    <ItemStyle Width="65px" HorizontalAlign="Center" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="UnAppliedCashBal" DataFormatString="{0:c0}"
                    DataType="System.Decimal" HeaderText="UnApplied Cash Bal" 
                    SortExpression="UnAppliedCashBal" UniqueName="UnAppliedCashBal" 
                    FilterControlWidth="35px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle Width="80px" HorizontalAlign="Right" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="SalesRep" HeaderText="Sales Rep" 
                    SortExpression="SalesRep" UniqueName="SalesRep" 
                    FilterControlWidth="90px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="90px" />
                    <ItemStyle Width="90px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Branch" HeaderText="Branch" 
                    SortExpression="Branch" UniqueName="Branch" 
                    FilterControlWidth="30px" CurrentFilterFunction="EqualTo" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="50px" />
                    <ItemStyle Width="50px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
            </Columns>
            <PagerStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" Wrap="True" />
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" Wrap="True" />
        </MasterTableView>
        <ClientSettings>
            <Selecting AllowRowSelect="True" />
        </ClientSettings>
    </telerik:RadGrid>

  
    <asp:SqlDataSource ID="SqlDS_CustomerList" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        SelectCommand="SELECT aCustomer.CustId, LEFT (aCustomer.CustName, 15) AS CustName, aCustomer.OrderBal, aCustomer.SalesYTD, 
        aCustomer.SalesYTD - aCustomer.CostYTD AS MarginYTD, aCustomer.BalanceDue, aCustomer.LastSaleDate, aCustomer.Credits, 
        aCustomer.ServiceChargeBal, aCustomer.ServiceChargeYTD, aCustomer.AvgDaysToPay, aCustomer.LastPmtDate, aCustomer.ReturnsYTD, 
        aCustomer.BorrowBaseIneligible, aCustomer.UnAppliedCashBal, LEFT(SalesRep.Name,12) AS SalesRep, aCustomer.CustWhseID AS Branch, P4P5Pct 
        FROM aCustomer INNER JOIN SalesRep ON aCustomer.Cono = SalesRep.Cono AND aCustomer.OutsideSlsrep = SalesRep.SlsRepId 
        ORDER BY aCustomer.OrderBal DESC">
    </asp:SqlDataSource>

    
    <div id="details" style="padding:10px 0px 2px 0px; border:single 1px blue;">
    
    
        
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="Web20">
        <Tabs>
            <telerik:RadTab runat="server" Text="Open Orders" PageViewID="OpenOrders" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Balances" PageViewID="Balances" ></telerik:RadTab>
            
            <telerik:RadTab runat="server" Text="Comments" PageViewID="Comments" Selected="true"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="SXe Notes" PageViewID="SXeNotes"></telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>

    <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="240px" Width="1000px" >
         <telerik:RadPageView ID="Comments" runat="server" Selected="true">
             <telerik:RadGrid ID="RadGrid4" runat="server" AllowSorting="True" 
                 AutoGenerateColumns="False" DataSourceID="SqlDS_Comments" GridLines="None" 
                 Width="1000px" Height="190px"  >
                 
                 <MasterTableView DataSourceID="SqlDS_Comments" DataKeyNames="PartnerId" ClientDataKeyNames="PartnerId" 
                    CommandItemDisplay="Top" CommandItemSettings-ShowRefreshButton="true" CommandItemSettings-ShowAddNewRecordButton="false">
                     <CommandItemSettings ExportToPdfText="Export to Pdf" />
                     
                     <ItemStyle VerticalAlign="Top" />
                     <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" />
                     
                     <Columns>
                         <telerik:GridBoundColumn DataField="Comment" HeaderText="Comment" 
                             SortExpression="Comment" UniqueName="Comment" HeaderStyle-Width="600px" ItemStyle-Width="600px" ItemStyle-Font-Size="X-Small">
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="Author" HeaderText="Author" 
                             SortExpression="Author" UniqueName="Author" HeaderStyle-Width="150px" ItemStyle-Width="150px" ItemStyle-Font-Size="X-Small">
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="CommentDate" HeaderText="Date" 
                             SortExpression="CommentDate" UniqueName="CommentDate" 
                             DataType="System.DateTime" HeaderStyle-Width="150px" ItemStyle-Width="150px" DataFormatString="{0:MM/dd/yy}" ItemStyle-Font-Size="X-Small">
                         </telerik:GridBoundColumn>
                     </Columns>
                 </MasterTableView>
                 <ClientSettings>
                     <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                 </ClientSettings>
             </telerik:RadGrid>
             <asp:SqlDataSource ID="SqlDS_Comments" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                 
                 SelectCommand="SELECT [PartnerID], [Comment], [Author], [CommentDate] FROM [aComments] 
                        WHERE (([PartnerID] = @CustId) AND ([Type] = @Type) AND ([Hide] = @Hide)) 
                        ORDER BY [CommentDate] DESC">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadGrid1" Name="CustId" 
                         PropertyName="SelectedValue" Type="String" />
                     <asp:Parameter DefaultValue="Customer" Name="Type" Type="String" />
                     <asp:Parameter DefaultValue="No" Name="Hide" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
            <br />
            <%--<input id="Button1" type="button" onclick="openRadNewWindow('<%# DataBinder.Eval(Container.DataItem, "custid") %>'); return false;" value="Add Comment" style="width:200px; text-align:center;" />--%>
             <asp:Button ID="btnAddComment" OnClientClick="" runat="server" Text="Add Comment" />
         </telerik:RadPageView>
         <telerik:RadPageView ID="OpenOrders" runat="server" Selected="false">
                
                <telerik:RadGrid ID="RadGrid3" runat="server" DataSourceID="SqlDS_OpenOrders" 
                            width="1000px" Height="200px"  AllowSorting="True" GridLines="None">
                
                    <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true">
                        <ClientEvents OnRowSelected="ShowOrderDetail" />
                        <Scrolling AllowScroll="true" UseStaticHeaders="true" />
                    </ClientSettings>
                
                
                    <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_OpenOrders" 
                            ClientDataKeyNames="OrderNumber" DataKeyNames="OrderNumber" Width="1000px" >
                        <CommandItemSettings ExportToPdfText="Export to Pdf" />
                        
                        <ItemStyle VerticalAlign="Top" />
                        <HeaderStyle VerticalAlign="Bottom" Font-Bold="true" />
                        
                        <Columns>
                            <telerik:GridBoundColumn DataField="Enterdate" DataType="System.DateTime" 
                                HeaderText="Entered" SortExpression="Enterdate" UniqueName="Enterdate" DataFormatString="{0:MM/dd/yy}">
                            <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle width="40px" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order #" 
                                SortExpression="OrderNumber" UniqueName="OrderNumber">
                            <ItemStyle HorizontalAlign="Left" Width="60px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle width="60px" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="TotalOrderAmount" DataType="System.Decimal" 
                                HeaderText="Value" SortExpression="TotalOrderAmount" UniqueName="TotalOrderAmount" 
                                DataFormatString="{0:c2}" >
                            <ItemStyle HorizontalAlign="Right" Width="45px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle width="45px" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Margin" DataType="System.Decimal" 
                                HeaderText="Margin" SortExpression="Margin" UniqueName="Margin" 
                                DataFormatString="{0:c2}" >
                            <ItemStyle HorizontalAlign="Right" Width="45px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle width="45px" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ShipViaType" HeaderText="Ship Via" 
                                SortExpression="ShipViaType" UniqueName="ShipViaType">
                            <ItemStyle HorizontalAlign="Center" Width="35px" VerticalAlign="Top" Font-Size="X-Small"/>
                            <HeaderStyle width="35px" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            
                            <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" 
                                SortExpression="TransType" UniqueName="TransType">
                            <ItemStyle HorizontalAlign="Center" Width="35px" VerticalAlign="Top" Font-Size="X-Small"  />
                            <HeaderStyle width="35px" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ShipTo" HeaderText="Ship To" 
                                SortExpression="ShipTo" UniqueName="ShipTo">
                            <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle width="35px" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ShipToName" HeaderText="Job Name" 
                                SortExpression="ShipToName" UniqueName="ShipToName">
                            <ItemStyle HorizontalAlign="Left" Width="140px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle width="140px" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="TakenBy" HeaderText="Taken" 
                                SortExpression="TakenBy" UniqueName="TakenBy">
                            <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle width="35px" Font-Size="X-Small"/>
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="PlacedBy" HeaderText="Placed" 
                                SortExpression="PlacedBy" UniqueName="PlacedBy">
                            <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle width="35px" Font-Size="X-Small"/>
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="PickBy" HeaderText="Picked" 
                                SortExpression="PickBy" UniqueName="PickBy">
                            <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle width="35px" Font-Size="X-Small" />
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                    
                          
                </telerik:RadGrid>
      
                
                
                <asp:SqlDataSource ID="SqlDS_OpenOrders" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [Enterdate],[CustId],[OrderNumber],[TotalOrderAmount],[Margin],[ShipViaType],[TakenBy],[PlacedBy],[Pickby],[TransType],[ShipTo],[ShipToName]  
                    FROM [aOrder_Header] 
                    WHERE ([CustId] = @CustId) AND ([Status]='Active')
                    ORDER BY [Enterdate] DESC, [Totalorderamount] DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="RadGrid1" DefaultValue="0" Name="CustId" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource> 
                
             </telerik:RadPageView>
         <telerik:RadPageView ID="Balances" runat="server" Selected="false">
            <div id="divBalances" style="width:1000px; height:225px; border: solid 1px silver;" >
                
                
                 <div style="padding:3px 3px 3px 3px;"> 
                                        
                   <div style="width:800px; height:20px; ">
                        <table style="width: 100%;">
                         <tr>
                             <td style="width:60px;">
                                <asp:Label ID="Label2" runat="server" Text="Customer: " Width="60px" Font-Bold="true" ForeColor="Gray" Font-Size="X-Small"></asp:Label>
                             </td>
                             <td>
                               <asp:Label ID="lblCustomer" runat="server" Width="600px" Font-Size="X-Small" ></asp:Label>  
                             </td>
                         </tr>
                     </table>
    
                        
                   </div> 
                 <div style="width:1000;height:205px; font-size:x-small; " > 
                   <div style="width:220px; height:205px; float:left;">
                       
                       <table style="width: 200px;">
                           <tr>
                               <td style="font-size:x-small; font-weight:bold;">
                                   Current
                               </td>
                               <td>
                                  
                               </td>
                           </tr><tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray; width:100px;">
                                   Order Balance:
                               </td>
                               <td style="font-size:x-small;width:100px; text-align:right;">
                                   <asp:Label ID="lblOrderBal" runat="server" Font-Size="X-Small" ></asp:Label></td>
                            </tr>
                            <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Credit Limit: 
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblCreditLimit" runat="server" Font-Size="X-Small" ></asp:Label></td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Balance Due:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblBalanceDue" runat="server" Font-Size="X-Small"></asp:Label>
                               
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Service Charges:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblServiceChargeBal" runat="server" Font-Size="X-Small"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Unapplied Cash:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblUnappliedcashbal" runat="server" Font-Size="X-Small"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   &nbsp;
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   &nbsp;
                               </td>
                           </tr>
                       </table>

                       
                      </div>
                      <div style="width:220px; height:205px; float:left;">
                                              
                       <table style="width: 200px;">
                           <tr>
                               <td style="font-size:x-small; font-weight:bold;">
                                   YTD
                               </td>
                               <td>
                                  
                               </td>
                           </tr><tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray; width:100px;">
                                   Sales
                               </td>
                               <td style="font-size:x-small;width:100px; text-align:right;">
                                   <asp:Label ID="lblSalesYTD" runat="server" ></asp:Label></td>
                            </tr>
                            <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Margin: 
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblMarginYTD" runat="server" ></asp:Label></td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Returns:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblReturnsYTD" runat="server" ></asp:Label>
                               
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Service Charge:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblServiceChargeYTD" runat="server" ></asp:Label>
                               </td>
                           </tr>
                           
                       </table>
                       
                       </div>
                       
                       
                       <div style="width:180px; height:205px; float:left;">

                       
                       <table style="width: 160px;">
                           <tr>
                               <td style="font-size:x-small; font-weight:bold;">
                                   Periods
                               </td>
                               <td>
                                  
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray; width:50px;">
                                   0 - 30:
                               </td>
                               <td style="font-size:x-small;width:100px; text-align:right;">
                                   <asp:Label ID="lblPeriod1" runat="server" ></asp:Label></td>
                            </tr>
                            <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   31 - 60: 
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblPeriod2" runat="server" ></asp:Label></td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   61 - 90:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblPeriod3" runat="server" ></asp:Label>
                               
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   91 - 120:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblPeriod4" runat="server" ></asp:Label>
                               
                               </td>
                           </tr>
                           
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   120+:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblPeriod5" runat="server" ></asp:Label>
                               </td>
                           </tr>
                           
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   31 +:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblTotBal2to5" runat="server" ></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   61+:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblTotBal3to5" runat="server" ></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   91+:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblTotBal4to5" runat="server" ></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="Label6" runat="server" ></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="Label7" runat="server" ></asp:Label>
                               </td>
                           </tr>
                       </table>
                       
                       
                       </div>
                       
                       
                       <div style="width:240px; height:205px; float:left;">
                       
            
                        <table style="width: 220px;">
                           <tr>
                               <td style="font-size:x-small; font-weight:bold;">
                                   Other Stats
                               </td>
                               <td>
                                  
                               </td>
                           </tr><tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray; width:120px;">
                                   Last Sale Amt:
                               </td>
                               <td style="font-size:x-small;width:100px; text-align:right;">
                                   <asp:Label ID="lblLastSaleAmt" runat="server" ></asp:Label></td>
                            </tr>
                            <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Last Sale: 
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lbllastSaleDate" runat="server" ></asp:Label></td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   High Balance:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblHighBal" runat="server" ></asp:Label>
                               
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Avg Days To Pay:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblavgdaystopay" runat="server" ></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   &nbsp;
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   91+ Pct::
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblp4p5pct" runat="server" ></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="font-size:x-small; font-weight:bold; color:Gray;">
                                   Borrow Base Ineligible:
                               </td>
                               <td style="font-size:x-small; text-align:right;">
                                   <asp:Label ID="lblBorrowBaseIneligible" runat="server" ></asp:Label>
                               </td>
                           </tr>
                           
             
                           
                       </table>
                    </div>
                  </div>
                 </div>
                 </div>
                 </telerik:RadPageView>   
         <telerik:RadPageView ID="SXeNotes" runat="server" >
            
            <telerik:RadGrid ID="RadGrid2" runat="server" DataSourceID="SqlDS_SXeNotes" 
                GridLines="None" Width="1000px" Height="225px" 
                AutoGenerateColumns="False" AllowSorting="True"  >
                
                <ClientSettings>
                      <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                </ClientSettings>
                
                
                <MasterTableView DataSourceID="SqlDS_SXeNotes" ClientDataKeyNames="CustId" 
                        ShowHeadersWhenNoRecords="true" AutoGenerateColumns="False" >          
                            
                  <HeaderStyle VerticalAlign="Bottom" />
                  <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" />
                    
                    <NoRecordsTemplate>
                    <b>No SXe Notes are available for this customer.</b></NoRecordsTemplate><Columns>
                        <telerik:GridBoundColumn DataField="Note" HeaderStyle-Width="700px" 
                            HeaderText="Note" ItemStyle-Width="700px" SortExpression="Note" 
                            UniqueName="Note">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CustID" HeaderStyle-Width="60px" 
                            HeaderText="CustID" ItemStyle-Width="60px" SortExpression="CustID" 
                            UniqueName="CustID" Display="false">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Transdt" DataType="System.DateTime" 
                            HeaderStyle-Width="80px" HeaderText="Date" ItemStyle-Width="80px" 
                            SortExpression="Transdt" UniqueName="Transdt" DataFormatString="{0:MM/dd/yy}">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Operinit" HeaderStyle-Width="100px" 
                            HeaderText="By" ItemStyle-Width="100px" SortExpression="Operinit" 
                            UniqueName="Operinit">
                        </telerik:GridBoundColumn>
                    </Columns>
     
                </MasterTableView>
                
            </telerik:RadGrid>
            
            
            
            <asp:SqlDataSource ID="SqlDS_SXeNotes" runat="server" 
                ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                
                SelectCommand="SELECT [CustID], [Transdt], [Operinit], [Note] FROM [aNotes_Customer] WHERE ([CustID] = @CustID) ORDER BY [Transdt] DESC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadGrid1" DefaultValue="0" Name="CustID" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>  
        
        </telerik:RadPageView>
        
          
   
       </telerik:RadMultiPage>
       
       <telerik:RadWindowManager ID="Singleton" Skin="Silk" Width="1050" Height="550"
                        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
            <Windows>
                    
                    <telerik:RadWindow ID="NewDialog" runat="server" Title="Add Comment" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
            </Windows> 
              
                    
       </telerik:RadWindowManager>   
      
       </div>
      </div>
   </asp:Content>