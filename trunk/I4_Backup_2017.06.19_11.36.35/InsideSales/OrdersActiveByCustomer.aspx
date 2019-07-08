<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/InsideSales.master" AutoEventWireup="false" CodeFile="OrdersActiveByCustomer.aspx.vb" Inherits="InsideSales_OrdersBacklog2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
  
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="ListBoxCustomers">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid_OrderList" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadGrid_OrderList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid_OrderDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
 
 <h1>Inside Sales | Active Orders by Customer</h1>
 
   <div id="divCollection1" style="float:left; ">  
        
        <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700" Skin="Default" Transparency="0">
        </telerik:RadAjaxLoadingPanel> 
    
    <div id="divOrderBacklogCustomerList" style="float:left; margin:2px 1px 1px 5px;">
        
         
               
        
    <h6>Customers</h6>
        
        
        <telerik:RadListBox ID="ListBoxCustomers" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDS_OrderBacklogCustList" DataTextField="CustName" 
            DataValueField="CustId" Height="565px" Width="180px"
            style="top: 0px; left: 0px; font-size:small" >
        </telerik:RadListBox>
    
    
  
        <asp:SqlDataSource ID="SqlDS_OrderBacklogCustList" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            
            
            
            SelectCommand="SELECT LEFT (Customer.CustName, 20) AS CustName, aOrder_Header.CustID, COUNT(aOrder_Header.OrderNumber) AS OrderCnt FROM aOrder_Header LEFT OUTER JOIN Customer ON aOrder_Header.CustID = Customer.CustId WHERE (aOrder_Header.Status = 'Active') AND (aOrder_Header.Whse = @whseID1) OR (aOrder_Header.Status = 'Active') AND (aOrder_Header.Whse = @whseID2) OR (aOrder_Header.Status = 'Active') AND (aOrder_Header.Whse = @whseID3) OR (aOrder_Header.Status = 'Active') AND (aOrder_Header.Whse = @whseID4) OR (aOrder_Header.Status = 'Active') AND (aOrder_Header.Whse = @whseID5) GROUP BY Customer.CustName, aOrder_Header.CustID ORDER BY CustName">
            <SelectParameters>
                <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="whseID1" Type="String" />
                <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="whseID2" Type="String" />
                <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="whseID3" Type="String" />
                <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="whseID4" Type="String" />
                <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="whseID5" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    
    <div id="divOrderBacklogOrderList" style="float:left;margin:2px 1px 1px 2px;" align="left" >
        <h6>Associated Orders</h6>
    
        <telerik:RadGrid ID="RadGrid_OrderList" runat="server" DataSourceID="SqlDS_OrderList" 
            Height="275px" Width="775px" AllowPaging="True" 
            HeaderStyle-Font-Bold="true" HeaderStyle-VerticalAlign="Bottom" 
            ItemStyle-VerticalAlign="Top"
            AllowSorting="True" GridLines="None" 
            ClientSettings-Resizing-AllowColumnResize="true" ItemStyle-Wrap="false" >
            
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_OrderList" 
                DataKeyNames="OrderNumber" TableLayout="Fixed" PageSize="9" HeaderStyle-HorizontalAlign="Left" >
                               
                <RowIndicatorColumn>
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                </RowIndicatorColumn>
                
                <NoRecordsTemplate>
                    Select a customer at left to see a list of open orders.
                </NoRecordsTemplate>
                <Columns>
                    <telerik:GridBoundColumn DataField="EnterDate" DataType="System.DateTime" 
                        HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate" 
                        DataFormatString="{0:MM/dd/yy}" 
                        HeaderStyle-Width="50px" ItemStyle-Width="50px"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="OrderNumber" 
                        HeaderText="Order" SortExpression="OrderNumber" UniqueName="OrderNumber"
                        HeaderStyle-Width="65px" ItemStyle-Width="65px">
                    </telerik:GridBoundColumn>      
                    <telerik:GridBoundColumn 
                        DataField="TotalOrderAmount" DataType="System.Decimal" 
                        HeaderText="Value" UniqueName="TotalOrderAmount" SortExpression="TotalOrderAmount"
                        DataFormatString="{0:c2}" 
                        HeaderStyle-Width="55px" ItemStyle-Width="55px"                       
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="TakenBy" 
                        HeaderText="Init" SortExpression="TakenBy" UniqueName="TakenBy"
                        HeaderStyle-Width="35px" ItemStyle-Width="35px">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ShipToName" 
                        HeaderText="ShipToName" SortExpression="ShipToName" UniqueName="ShipToName" 
                        HeaderStyle-Width="170px" ItemStyle-Width="170px"
                        Display="true">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ShipTo" UniqueName="ShipTo"
                        HeaderText="ShipTo" 
                        SortExpression="ShipTo" 
                        HeaderStyle-Width="70px" ItemStyle-Width="70px">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="TransType" 
                        HeaderText="Type" SortExpression="TransType" UniqueName="TransType" 
                        HeaderStyle-Width="40px" ItemStyle-Width="40px">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="SalesRep"  
                        HeaderText="Sales Rep" SortExpression="SalesRep" UniqueName="SalesRep"
                        HeaderStyle-Width="100px" ItemStyle-Width="100px" >
                    </telerik:GridBoundColumn>   
                </Columns>
            </MasterTableView>
            <ClientSettings EnablePostBackOnRowClick="True">
                <Selecting AllowRowSelect="True" EnableDragToSelectRows="False" />
                <Scrolling AllowScroll="true" SaveScrollPosition="true" />
            </ClientSettings>
        </telerik:RadGrid>

        
        <asp:SqlDataSource ID="SqlDS_OrderList" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            
            SelectCommand="SELECT aOrder_Header.OrderNumber, aOrder_Header.EnterDate, aOrder_Header.TotalOrderAmount, aOrder_Header.TakenBy, aOrder_Header.ShipToName, aOrder_Header.ShipTo, aOrder_Header.ShipTo, aOrder_Header.TransType, SalesRep.Name AS SalesRep 
            FROM aOrder_Header INNER JOIN SalesRep ON aOrder_Header.Cono = SalesRep.Cono AND aOrder_Header.OutsideSlsrep = SalesRep.SlsRepId 
            WHERE aOrder_Header.Status='Active' AND (aOrder_Header.CustId = @CustId)
            ORDER By aOrder_Header.EnterDate Desc">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListBoxCustomers" Name="CustId" 
                    PropertyName="SelectedValue" Type="String" DefaultValue="50" />
            </SelectParameters>
        </asp:SqlDataSource>
        
 

        
        <h6>Order Detail</h6>
        <telerik:RadGrid ID="RadGrid_OrderDetail" runat="server" 
            DataSourceID="SqlDS_OrderDetail" GridLines="None" Height="260px" 
            Width="775px" AllowPaging="True" AllowSorting="True" 
            HeaderStyle-Font-Bold="true" HeaderStyle-VerticalAlign="Bottom" HeaderStyle-HorizontalAlign="Left" 
            ItemStyle-VerticalAlign="Top" >
            
            
            <ClientSettings>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" FrozenColumnsCount="2">
                    </Scrolling>
            </ClientSettings>
            
            
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_OrderDetail" PagerStyle-VerticalAlign="Bottom" PageSize="8">
                <RowIndicatorColumn>
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                </RowIndicatorColumn>

                <NoRecordsTemplate>
                    Select an order above to see order details.
                </NoRecordsTemplate>
                <Columns>
                    <telerik:GridBoundColumn DataField="OrderNumber" 
                        HeaderText="Order" SortExpression="OrderNumber" UniqueName="OrderNumber"
                        HeaderStyle-Width="65px" ItemStyle-Width="65px"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" HeaderStyle-VerticalAlign="Bottom">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="LineNum" DataType="System.Int32" 
                        HeaderText="Line" SortExpression="LineNum" UniqueName="LineNum"
                        HeaderStyle-Width="30px" ItemStyle-Width="30px"
                        ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" HeaderStyle-VerticalAlign="Bottom">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ProdId" 
                        HeaderText="Product" SortExpression="ProdId" UniqueName="ProdId" 
                        HeaderStyle-Width="85px" ItemStyle-Width="85px"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top" HeaderStyle-VerticalAlign="Bottom">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Description" 
                        HeaderText="Description" SortExpression="Description" UniqueName="Description"
                        HeaderStyle-Width="225px" ItemStyle-Width="225px"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top" HeaderStyle-VerticalAlign="Bottom" ReadOnly="True" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyOrd" DataType="System.Decimal" 
                        HeaderText="Qty Ord" SortExpression="QtyOrd" UniqueName="QtyOrd"
                        HeaderStyle-Width="35px" ItemStyle-Width="35px"
                        DataFormatString="{0:n0}"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" HeaderStyle-VerticalAlign="Bottom" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyShip" DataType="System.Decimal" 
                        HeaderText="Qty Ship" SortExpression="QtyShip" UniqueName="QtyShip"
                        HeaderStyle-Width="40px" ItemStyle-Width="40px"
                        DataFormatString="{0:n0}"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" HeaderStyle-VerticalAlign="Bottom" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Price" DataType="System.Decimal" 
                        HeaderText="Price" SortExpression="Price" UniqueName="Price"
                        HeaderStyle-Width="50px" ItemStyle-Width="50px"
                        DataFormatString="{0:c2}"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" HeaderStyle-VerticalAlign="Bottom" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" 
                        DefaultInsertValue="" HeaderText="Marg %" SortExpression="MarginPct" UniqueName="MarginPct"
                        HeaderStyle-Width="55px" ItemStyle-Width="55px"
                        DataFormatString="{0:f1}"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" ReadOnly="True" HeaderStyle-VerticalAlign="Bottom">
                    </telerik:GridBoundColumn>
                    
                </Columns>
                <PagerStyle VerticalAlign="Bottom" />
            </MasterTableView>
            <ClientSettings>
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>
        </telerik:RadGrid>
        
        <asp:SqlDataSource ID="SqlDS_OrderDetail" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            
            
            
            SelectCommand="SELECT aOrder_Line.OrderNumber, aOrder_Line.LineNum, aOrder_Line.ProdId, 
            COALESCE (aProduct.Description, aOrder_Line.NS_Description) AS Description, aOrder_Line.QtyOrd, aOrder_Line.QtyShip, aOrder_Line.Price, 
            aOrder_Line.MarginPct
            FROM aOrder_Line LEFT OUTER JOIN aProduct ON aOrder_Line.ProdId = aProduct.ProdId 
            WHERE (aOrder_Line.OrderNumber = @OrderNumber) ORDER BY aOrder_Line.LineNum">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadGrid_OrderList" Name="OrderNumber" 
                    PropertyName="SelectedValue" Type="String" DefaultValue="0" />
            </SelectParameters>
        </asp:SqlDataSource>
      
    
 
        
        
        
        
        
        
    </div>
  </div>
  
   
      


</asp:Content>

