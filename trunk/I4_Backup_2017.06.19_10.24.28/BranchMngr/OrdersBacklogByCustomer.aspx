<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/BranchMngr.master" AutoEventWireup="false" CodeFile="OrdersBacklogByCustomer.aspx.vb" Inherits="BranchMngr_OrdersBacklogByCustomer" %>

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
 
 <h1>Branch Manager | Order Backlog by Customer</h1>
 
   <div id="divCollection1" style="float:left; ">  
        
        <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700" Skin="Default" Transparency="0">
        </telerik:RadAjaxLoadingPanel> 
    
    <div id="divOrderBacklogCustomerList" style="float:left; margin:2px 1px 1px 5px;">
               
        
    <h6>Customers</h6>
        
        
        <telerik:RadListBox ID="ListBoxCustomers" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDS_OrderBacklogCustList" DataTextField="CustName" 
            DataValueField="CustId" Height="565px" Width="180px"
            style="top: 0px; left: 0px; font-size:small">
        </telerik:RadListBox>
    
    
  
        <asp:SqlDataSource ID="SqlDS_OrderBacklogCustList" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            
            
            SelectCommand="SELECT Order_Line_Backlog.CustId, LEFT (Customer.CustName, 20) AS CustName, COUNT(Order_Line_Backlog.OrderNumber) AS OrderCnt 
            FROM Order_Line_Backlog INNER JOIN Customer ON Order_Line_Backlog.CustId = Customer.CustId 
            WHERE (Order_Line_Backlog.WhseId = @whseID1) OR (Order_Line_Backlog.WhseId = @whseID2) 
            OR (Order_Line_Backlog.WhseId = @whseID3) OR (Order_Line_Backlog.WhseId = @whseID4) 
            OR (Order_Line_Backlog.WhseId = @whseID5) 
            GROUP BY Order_Line_Backlog.CustId, Customer.CustName">
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
            AllowSorting="True" GridLines="None" ClientSettings-Resizing-AllowColumnResize="true" ItemStyle-Wrap="false">
            
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_OrderList" 
                DataKeyNames="OrderNumber" TableLayout="Fixed" PageSize="9">
                               
                <RowIndicatorColumn>
                    <HeaderStyle HorizontalAlign="Left" />
                </RowIndicatorColumn>
                
                <NoRecordsTemplate>
                    Select a customer at left to see a list of open orders.
                </NoRecordsTemplate>
                <Columns>
                    <telerik:GridBoundColumn DataField="OrderDate" DataType="System.DateTime" 
                        HeaderText="Entered" SortExpression="OrderDate" UniqueName="OrderDate" 
                        DataFormatString="{0:MM/dd/yy}" 
                        HeaderStyle-Width="50px" ItemStyle-Width="50px"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="OrderNumber" 
                        HeaderText="Order" SortExpression="OrderNumber" UniqueName="OrderNumber"
                        HeaderStyle-Width="65px" ItemStyle-Width="65px">
                    </telerik:GridBoundColumn>      
                    <telerik:GridBoundColumn 
                        DataField="r_Sales" DataType="System.Decimal" 
                        HeaderText="Value" UniqueName="r_Sales" SortExpression="r_Sales"
                        DataFormatString="{0:c2}" 
                        HeaderStyle-Width="45px" ItemStyle-Width="45px"                       
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="TakenBy" 
                        HeaderText="Init" SortExpression="TakenBy" UniqueName="TakenBy"
                        HeaderStyle-Width="35px" ItemStyle-Width="35px">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ShipTo" 
                        HeaderText="ShipTo" SortExpression="ShipTo" UniqueName="ShipTo" 
                        HeaderStyle-Width="170px" ItemStyle-Width="170px"
                        Display="true">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ShipToId" 
                        HeaderText="ShipToId" 
                        SortExpression="ShipToId" UniqueName="ShipToId" Display="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="City" 
                        HeaderText="City" HeaderStyle-Width="100px" ItemStyle-Width="100px"
                        SortExpression="City" 
                        UniqueName="City" Resizable="true">
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
            
            SelectCommand="SELECT Order_Header_Backlog.OrderNumber, Order_Header_Backlog.OrderDate, Order_Header_Backlog.r_Sales, Order_Header_Backlog.TakenBy, Shipto.CustName AS ShipTo, Order_Header_Backlog.ShipToId, Shipto.City, Order_Header_Backlog.TransType, SalesRep.Name AS SalesRep FROM Order_Header_Backlog INNER JOIN SalesRep ON Order_Header_Backlog.Cono = SalesRep.Cono AND Order_Header_Backlog.OutsideSlsrep = SalesRep.SlsRepId LEFT OUTER JOIN Shipto ON Order_Header_Backlog.ShipToId = Shipto.ShipToId AND Order_Header_Backlog.CustId = Shipto.CustId WHERE (Order_Header_Backlog.CustId = @CustId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListBoxCustomers" Name="CustId" 
                    PropertyName="SelectedValue" Type="String" DefaultValue="50" />
            </SelectParameters>
        </asp:SqlDataSource>
        
 

        
        <h6>Order Detail</h6>
        <telerik:RadGrid ID="RadGrid_OrderDetail" runat="server" 
            DataSourceID="SqlDS_OrderDetail" GridLines="None" Height="260px" 
            Width="775px" AllowPaging="True" AllowSorting="True">
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_OrderDetail" PagerStyle-VerticalAlign="Bottom" PageSize="8">
                <RowIndicatorColumn>
                    <HeaderStyle HorizontalAlign="Left" />
                </RowIndicatorColumn>

                <NoRecordsTemplate>
                    Select an order above to see order details.
                </NoRecordsTemplate>
                <Columns>
                    <telerik:GridBoundColumn DataField="OrderNumber" 
                        HeaderText="Order" SortExpression="OrderNumber" UniqueName="OrderNumber"
                        HeaderStyle-Width="60px" ItemStyle-Width="65px"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="LineNum" DataType="System.Int32" 
                        HeaderText="Line" SortExpression="LineNum" UniqueName="LineNum"
                        HeaderStyle-Width="30px" ItemStyle-Width="30px"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ProdId" 
                        HeaderText="Product" SortExpression="ProdId" UniqueName="ProdId" 
                        HeaderStyle-Width="85px" ItemStyle-Width="85px"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Description" 
                        HeaderText="Description" SortExpression="Description" UniqueName="Description"
                        HeaderStyle-Width="215px" ItemStyle-Width="215px"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top" ReadOnly="True" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyOrd" DataType="System.Decimal" 
                        HeaderText="Qty Ord" SortExpression="QtyOrd" UniqueName="QtyOrd"
                        HeaderStyle-Width="60px" ItemStyle-Width="60px"
                        DataFormatString="{0:n2}"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Price" DataType="System.Decimal" 
                        HeaderText="Price" SortExpression="Price" UniqueName="Price"
                        HeaderStyle-Width="50px" ItemStyle-Width="50px"
                        DataFormatString="{0:c2}"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Margin" DataType="System.Decimal" 
                        DefaultInsertValue="" HeaderText="Margin" SortExpression="Margin" UniqueName="Margin"
                        HeaderStyle-Width="50px" ItemStyle-Width="50px"
                        DataFormatString="{0:p2}"
                        ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" ReadOnly="True">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Cost" DataType="System.Decimal" 
                        DefaultInsertValue="" HeaderText="Cost" SortExpression="Cost" UniqueName="Cost" Display="false">
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
            
            
            
            SelectCommand="SELECT Order_Line_Backlog.OrderNumber, Order_Line_Backlog.LineNum, Order_Line_Backlog.ProdId, 
            COALESCE (Product.ProdDesc, Order_Line_Backlog.ProdDesc) AS Description, Order_Line_Backlog.QtyOrd, Order_Line_Backlog.Price, 
            CASE Order_Line_Backlog.Price WHEN 0 THEN 0 ELSE (Order_Line_Backlog.Price - Order_Line_Backlog.Cost) / Order_Line_Backlog.Price END AS Margin, 
            Order_Line_Backlog.Cost 
            FROM Order_Line_Backlog LEFT OUTER JOIN Product ON Order_Line_Backlog.ProdId = Product.ProdId 
            WHERE (Order_Line_Backlog.OrderNumber = @OrderNumber) ORDER BY Order_Line_Backlog.LineNum">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadGrid_OrderList" Name="OrderNumber" 
                    PropertyName="SelectedValue" Type="String" DefaultValue="0" />
            </SelectParameters>
        </asp:SqlDataSource>
      

        
        
    </div>
  </div>
  
   
      


</asp:Content>

