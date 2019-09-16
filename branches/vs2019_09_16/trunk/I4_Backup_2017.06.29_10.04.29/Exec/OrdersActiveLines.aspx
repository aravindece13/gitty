<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="OrdersActiveLines.aspx.vb" Inherits="Exec_OrdersNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Executive | Active Order Lines</h1>
  
  
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
        AllowPaging="True" AllowSorting="True" AllowFilteringByColumn="True"  
        GridLines="None" Width="1000px" Height="570px"  > 
    
    <GroupingSettings CaseSensitive="false" />

    <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
        <Selecting AllowRowSelect="True" />
        <ClientEvents OnRowSelected="ShowOrderDetail" />
        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="true" />
    </ClientSettings>

        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_NewOrders" 
            DataKeyNames="OrderNumber" ClientDataKeyNames="OrderNumber" 
            PageSize="25"  Width="2000px">

        
        <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" />
        <ItemStyle VerticalAlign="Top" />

        <ExpandCollapseColumn>
        <HeaderStyle Width="20px"></HeaderStyle>
        </ExpandCollapseColumn>
           
            <CommandItemSettings ExportToPdfText="Export to Pdf" />
           
            <Columns>
                               
                <telerik:GridBoundColumn DataField="EnterDate" DataType="System.DateTime" 
                    HeaderText="Ordered" SortExpression="EnterDate" UniqueName="EnterDate" 
                    DataFormatString="{0:MM/dd/yy}" 
                    FilterControlWidth="40px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Right" Width="75px" />
                <HeaderStyle width="50px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="NetAmount" 
                    HeaderText="Line Value" SortExpression="NetAmount"  UniqueName="NetAmount" DataFormatString="{0:c2}"
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Right" Width="55px" />
                <HeaderStyle width="55px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Price" 
                    HeaderText="Price" SortExpression="Price"  UniqueName="Price" DataFormatString="{0:c2}"
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Right" Width="55px" />
                <HeaderStyle width="55px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="MarginPct" HeaderText="Mrgn %" UniqueName="MarginPct"
                    CurrentFilterFunction="LessThanOrEqualTo" AutoPostBackOnFilter="true" ShowFilterIcon="true"  
                    FilterControlWidth="25px"
                    DataType="System.Double" DataFormatString="{0:f1}">
                <ItemStyle HorizontalAlign="Right" Width="40px" />
                <HeaderStyle width="40px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Margin" 
                    HeaderText="Margin" SortExpression="Margin"  UniqueName="Margin" DataFormatString="{0:c2}"
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Right" Width="55px" />
                <HeaderStyle width="55px" />
                </telerik:GridBoundColumn>
                

                <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" 
                    SortExpression="TransType" UniqueName="TransType" 
                    FilterControlWidth="30px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Left" Width="35px" />
                <HeaderStyle width="35px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" 
                    ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID"  FilterControlWidth="75px"
                    CurrentFilterFunction="StartsWith" ShowFilterIcon="True" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Left" Width="100px" />
                <HeaderStyle width="100px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="Description" HeaderText="Description" 
                    ReadOnly="True" SortExpression="Description" UniqueName="Description"  FilterControlWidth="150px"
                    CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Left" Width="300px" />
                <HeaderStyle width="300px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" 
                    ReadOnly="True" SortExpression="CustName" UniqueName="CustName"  FilterControlWidth="140px"
                    CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Left" Width="150px" />
                <HeaderStyle width="150px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="JobName" HeaderText="Job Name" 
                    SortExpression="JobName" UniqueName="JobName" FilterControlWidth="100px"
                    CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Left" Width="160px" />
                <HeaderStyle width="160px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" 
                    SortExpression="OrderNumber" UniqueName="OrderNumber" 
                    FilterControlWidth="55px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="right" Width="70px" />
                <HeaderStyle width="70px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="LineNum" HeaderText="Line" 
                    SortExpression="LineNum" UniqueName="LineNum" ShowFilterIcon="false" >
                <ItemStyle HorizontalAlign="right" Width="30px" />
                <HeaderStyle width="30px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="QtyOrd" HeaderText="Qty Ord" 
                    SortExpression="QtyOrd" UniqueName="QtyOrd" DataFormatString="{0:N0}" ShowFilterIcon="false" >
                <ItemStyle HorizontalAlign="right" Width="30px" />
                <HeaderStyle width="30px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="QtyShip" HeaderText="Qty Ship" 
                    SortExpression="QtyShip" UniqueName="QtyShip" DataFormatString="{0:N0}" ShowFilterIcon="false" >
                <ItemStyle HorizontalAlign="right" Width="30px" />
                <HeaderStyle width="30px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="PriceOverrideFlag" 
                        HeaderText="P/O"  
                        ReadOnly="True" SortExpression="PriceOverrideFlag" 
                        UniqueName="PriceOverrideFlag" 
                        FilterControlWidth="15px">
                        <ItemStyle HorizontalAlign="Center" Width="40px" />
                        <HeaderStyle HorizontalAlign="Left" Width="40px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="CostOverrideFlag" 
                        HeaderText="C/O" ReadOnly="True" 
                        SortExpression="CostOverrideFlag" UniqueName="CostOverrideFlag" 
                        FilterControlWidth="15px">
                        <ItemStyle HorizontalAlign="Center" Width="40px" />
                        <HeaderStyle HorizontalAlign="Left" Width="40px" />
                </telerik:GridBoundColumn>
                
                
                
                
                
                
                
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    
    <telerik:RadWindowManager  ID="Singleton" Skin="Silk" Width="1050" Height="600"
        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
    </telerik:RadWindowManager>
    
    
    <asp:SqlDataSource ID="SqlDS_NewOrders" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        
         SelectCommand="SELECT aOrder_Line.OrderNumber, aOrder_Line.LineNum, aOrder_Line.ProdID, aOrder_Line.TransType, 
         CASE WHEN aProduct.Description IS NULL THEN NS_Description ELSE aProduct.Description END AS Description, 
         aOrder_Line.NetAmount, aOrder_Line.Price, aOrder_Line.ProductCost, aOrder_Line.MarginPct, aOrder_Line.Margin, 
         CASE WHEN [PriceOverrideFlag] = - 1 THEN 'Y' ELSE '' END AS PriceOverrideFlag, 
         CASE WHEN [CostOverrideFlag] = - 1 THEN 'Y' ELSE '' END AS CostOverrideFlag, aOrder_Line.Unit, 
         aOrder_Line.QtyOrd, aOrder_Line.QtyShip, LEFT(aCustomer.CustName,25) AS CustName, LEFT(Shipto.CustName,25) AS JobName, 
         aOrder_Line.EnterDate 
         FROM aOrder_Line INNER JOIN aCustomer ON aOrder_Line.CustID = aCustomer.CustId LEFT OUTER JOIN Shipto ON aOrder_Line.CustID = Shipto.CustId AND aOrder_Line.Cono = Shipto.Cono AND aOrder_Line.ShipTo = Shipto.ShipToId LEFT OUTER JOIN aProduct ON aOrder_Line.ProdID = aProduct.ProdID 
         WHERE aOrder_Line.Status='Active'
         ORDER BY aOrder_Line.EnterDate DESC, aOrder_Line.NetAmount DESC">
    </asp:SqlDataSource>

</div>

</telerik:RadAjaxPanel>
</asp:Content>

