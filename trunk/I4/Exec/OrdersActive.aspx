<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="OrdersActive.aspx.vb" Inherits="Exec_OrdersNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Executive | Active Orders</h1>
  
  
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
            wnd.moveTo(bounds.x + 120 + index * 10, bounds.y - 160);
        }
    </script>
  
  
  
  
  

<telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" Height="600px" Width="1000px">
    
      
 <div id="divOrderGrid" style=" float:left;padding:2px 0px 2px 5px;width:1000px;">    
    <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="SqlDS_NewOrders"
        AllowPaging="True" AllowSorting="True" AllowFilteringByColumn="true"  
        GridLines="None" Width="1000px" Height="570px"  > 
    
    <GroupingSettings CaseSensitive="false" />

    <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
        <ClientEvents OnRowSelected="ShowOrderDetail" />
        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="true" />
    </ClientSettings>

        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_NewOrders" 
            DataKeyNames="OrderNumber, OrderNo" ClientDataKeyNames="OrderNumber, OrderNo" 
            PageSize="25"  Width="1300px">

        
        <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" />
        <ItemStyle VerticalAlign="Top" />

                  
            <Columns>
                               
                <telerik:GridBoundColumn DataField="EnterDate" DataType="System.DateTime" 
                    HeaderText="Ordered" SortExpression="EnterDate" UniqueName="EnterDate" 
                    DataFormatString="{0:MM/dd/yy}" 
                    FilterControlWidth="40px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                <HeaderStyle width="75px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="OrderValue" 
                    HeaderText="Order Value" SortExpression="OrderValue"  UniqueName="OrderValue" DataFormatString="{0:c2}"
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                <HeaderStyle width="55px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="MarginPct" HeaderText="Margin %" UniqueName="MarginPct"
                    CurrentFilterFunction="LessThanOrEqualTo" AutoPostBackOnFilter="true" ShowFilterIcon="true"  
                    FilterControlWidth="20px"
                    DataType="System.Double" DataFormatString="{0:f1}">
                <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                <HeaderStyle width="50px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" 
                    SortExpression="TransType" UniqueName="TransType" 
                    FilterControlWidth="30px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" />
                <HeaderStyle width="35px" />
                </telerik:GridBoundColumn>
                
                
                <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" 
                    ReadOnly="True" SortExpression="CustName" UniqueName="CustName"  FilterControlWidth="175px"
                    CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" />
                <HeaderStyle width="200px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="SalesRep" HeaderText="Sales Rep" 
                    SortExpression="SalesRep" UniqueName="SalesRep" FilterControlWidth="90px"
                    CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Left" Width="130px" VerticalAlign="Top" />
                <HeaderStyle width="130px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="ShipToName" HeaderText="Job Name" 
                    SortExpression="ShipToName" UniqueName="ShipToName" FilterControlWidth="100px"
                    CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" />
                <HeaderStyle width="200px" />
                </telerik:GridBoundColumn>
                
                
                <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" 
                    SortExpression="OrderNumber" UniqueName="OrderNumber" 
                    FilterControlWidth="60px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="right" Width="70px" VerticalAlign="Top" />
                <HeaderStyle width="70px" />
                </telerik:GridBoundColumn>
                
                
                
                <telerik:GridBoundColumn DataField="Branch" HeaderText="Branch" 
                    SortExpression="Branch" UniqueName="Branch" FilterControlWidth="40px"
                    CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Center" Width="50px" />
                <HeaderStyle width="50px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="OrderNo" HeaderText="OrderNo" Display="false" 
                    SortExpression="OrderNo" UniqueName="OrderNo" >
                </telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    
    <telerik:RadWindowManager  ID="Singleton" Skin="Silk" Width="1050" Height="600"
        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
    </telerik:RadWindowManager>
    
    
    <asp:SqlDataSource ID="SqlDS_NewOrders" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        SelectCommand="SELECT aOrder_Header.EnterDate, aOrder_Header.Totalprice AS OrderValue, LEFT (Customer.CustName, 30) AS CustName, SalesRep.Name AS SalesRep, aOrder_Header.OrderNumber, aOrder_Header.TransType, aBranches.branchno2 AS Branch, aOrder_Header.ShipToName, MarginPct, OrderNo
        FROM aOrder_Header INNER JOIN SalesRep ON aOrder_Header.OutsideSlsrep = SalesRep.SlsRepId INNER JOIN aBranches ON aOrder_Header.Whse = aBranches.branchno LEFT OUTER JOIN Customer ON aOrder_Header.CustId = Customer.CustId 
        WHERE (aOrder_Header.TotalPrice &gt; 100) AND (aOrder_Header.Status = 'Active')
        ORDER BY aOrder_Header.EnterDate DESC, aOrder_Header.TotalOrderAmount DESC">
    </asp:SqlDataSource>

</div>

</telerik:RadAjaxPanel>
</asp:Content>

