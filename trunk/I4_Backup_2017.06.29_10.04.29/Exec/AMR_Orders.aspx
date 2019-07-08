<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="AMR_Orders.aspx.vb" Inherits="Exec_AMR_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Executive | Active AMR/Meter Orders</h1>
  
  <script  type="text/javascript">

      function ShowOrderDetail(sender, args) {
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


<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
            <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" />
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="RadGrid2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="oType">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="oType" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="oCustName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="oCustName" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="oProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="oProdID" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="oDesc">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="oDesc" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="oMinValue">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="oMinValue" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="oMargin">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="oMargin" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="oOrder">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="oOrder" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
  
            <telerik:AjaxSetting AjaxControlID="ListBoxCustomers">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid_OrderDetail" LoadingPanelID="RadAjaxLoadingPanel1" />                   
                </UpdatedControls>    
            </telerik:AjaxSetting>

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
    </telerik:RadAjaxLoadingPanel>

  <div id="divTabStrip1" style="padding:5px 5px 0px 10px;float:left;width:1000px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server"  
        MultiPageID="RadMultiPage1"  AutoPostBack="true" >
        <Tabs>
            
            <telerik:RadTab runat="server" Text="Lines" PageViewID="Lines" Selected="true"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="By Customer" PageViewID="ByCustomer" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="New BackOrders" PageViewID="NewBackOrder" ></telerik:RadTab>
            
        </Tabs>
    </telerik:RadTabStrip>
  </div>



<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="570px" Width="1000px">

    
    <telerik:RadPageView ID="Lines" runat="server" Selected="true" >
    
        <div id="divLines" style="padding:0px 5px 5px 10px;float:left;width:995px;">
     
          <div style="width:950px;padding: 5px 0px 5px 15px; ">                  
  
       <asp:Table ID="TblLinesFilters" runat="server" Width="900px">
            <asp:TableRow>
                <asp:TableCell Width="75px">
                      <telerik:RadComboBox ID="oType" runat="server"  Label="Type" Width="50px" AutoPostBack="true">
                             <Items>   
                                <telerik:RadComboBoxItem runat="server" Text="All" Value="%" />
                                <telerik:RadComboBoxItem runat="server" Text="SO" Value="SO" />   
                                <telerik:RadComboBoxItem runat="server" Text="DO" Value="DO" />   
                                <telerik:RadComboBoxItem runat="server" Text="RM" Value="RM" />
                                <telerik:RadComboBoxItem runat="server" Text="CR" Value="CR" /> 
                            </Items>
                        </telerik:RadComboBox>    
                </asp:TableCell>
                <asp:TableCell Width="160px">
                        <telerik:RadTextBox ID="oCustName" runat="server" Label="Customer" Width="150px" AutoPostBack="true"></telerik:RadTextBox>
                </asp:TableCell>
                <asp:TableCell Width="130px">
                        <telerik:RadTextBox ID="oProdID" runat="server" Label="Product" Width="120px" AutoPostBack="true"></telerik:RadTextBox>
                </asp:TableCell>
                <asp:TableCell Width="130px">
                        <telerik:RadTextBox ID="oDesc" runat="server" Label="Desc" Width="120px" AutoPostBack="true"></telerik:RadTextBox>
                </asp:TableCell>
                <asp:TableCell Width="130px">
                        <telerik:RadTextBox ID="oOrder" runat="server" Label="Order" Width="120px" AutoPostBack="true"></telerik:RadTextBox>
                </asp:TableCell>
                <asp:TableCell Width="65px">
                     <telerik:RadComboBox ID="oMargin" runat="server"  Label="Margin" Width="55px" AutoPostBack="true">
                          <Items>   
                            <telerik:RadComboBoxItem runat="server" Text="All" Value="1000" Selected="true" />
                            <telerik:RadComboBoxItem runat="server" Text="< 3%" Value="0.03" />
                            <telerik:RadComboBoxItem runat="server" Text="< 7%" Value="0.07" />   
                            <telerik:RadComboBoxItem runat="server" Text="< 10%" Value="0.10" />   
                            <telerik:RadComboBoxItem runat="server" Text="< 15%" Value="0.15" /> 
                          </Items>
                    </telerik:RadComboBox>  
                </asp:TableCell>
                <asp:TableCell Width="90px">
                    <telerik:RadComboBox ID="oMinValue" runat="server"  Label="Minimum Value" Width="80px" AutoPostBack="true">
                          <Items>   
                            <telerik:RadComboBoxItem runat="server" Text="$100" Value="100" Selected="true" />
                            <telerik:RadComboBoxItem runat="server" Text="$0" Value="0" />   
                            <telerik:RadComboBoxItem runat="server" Text="$1,000" Value="1000" />   
                            <telerik:RadComboBoxItem runat="server" Text="$5,000" Value="5000" />
                            <telerik:RadComboBoxItem runat="server" Text="$10,000" Value="10000" /> 
                          </Items>
                    </telerik:RadComboBox>   
                </asp:TableCell>
                
            </asp:TableRow>
       </asp:Table>
  
  
   </div>
    
     
    <telerik:RadGrid ID="RadGrid2" runat="server" DataSourceID="SqlDS_NewOrderLines"
        AllowPaging="True" AllowSorting="True" GridLines="Horizontal" Height="500px"  ItemStyle-Wrap="false" > 
    
    <GroupingSettings CaseSensitive="false" />

    <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
        <Selecting AllowRowSelect="True" />
        <ClientEvents OnRowSelected="ShowOrderDetail" />
        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="true" />
    </ClientSettings>

        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_NewOrderLines" 
            DataKeyNames="OrderNumber" ClientDataKeyNames="OrderNumber" 
            PageSize="50"  Width="1400px">

        
        <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" />
        <ItemStyle VerticalAlign="Top" />

          
            <CommandItemSettings ExportToPdfText="Export to Pdf" />
           
            <Columns>
                               
                <telerik:GridBoundColumn DataField="EnterDate" DataType="System.DateTime" 
                    HeaderText="Ordered" SortExpression="EnterDate" UniqueName="EnterDate" 
                    DataFormatString="{0:MM/dd/yy}">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="50px" Font-Size="X-Small" />
                <HeaderStyle width="50px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="NetAmount" 
                    HeaderText="Value" SortExpression="NetAmount"  UniqueName="NetAmount" DataFormatString="{0:c2}">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="50px" Font-Size="X-Small" />
                <HeaderStyle width="50px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Price" 
                    HeaderText="Price" SortExpression="Price"  UniqueName="Price" DataFormatString="{0:c2}">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="45px" Font-Size="X-Small" />
                <HeaderStyle width="45px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="MarginPct" HeaderText="Mrgn %" UniqueName="MarginPct"
                    DataType="System.Double" DataFormatString="{0:f1}">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="45px" Font-Size="X-Small" />
                <HeaderStyle width="45px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Margin" 
                    HeaderText="Margin" SortExpression="Margin"  UniqueName="Margin" DataFormatString="{0:c2}">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="45px" Font-Size="X-Small" />
                <HeaderStyle width="45px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                

                <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" 
                    SortExpression="TransType" UniqueName="TransType" >
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="30px" Font-Size="X-Small" />
                <HeaderStyle width="30px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" 
                    ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID"  >
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="100px" Font-Size="X-Small"  Wrap="false"  />
                <HeaderStyle width="100px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="Description" HeaderText="Description" 
                    ReadOnly="True" SortExpression="Description" UniqueName="Description" >
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="255px" Font-Size="X-Small"  Wrap="false"  />
                <HeaderStyle width="255px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" 
                    ReadOnly="True" SortExpression="CustName" UniqueName="CustName"  >
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="150px" Font-Size="X-Small" Wrap="false" />
                <HeaderStyle width="150px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <%--<telerik:GridBoundColumn DataField="JobName" HeaderText="Job Name" 
                    SortExpression="JobName" UniqueName="JobName" >
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="130px" Font-Size="X-Small" Wrap="false"  />
                <HeaderStyle width="130px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>--%>
                <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" 
                    SortExpression="OrderNumber" UniqueName="OrderNumber" >
                <ItemStyle HorizontalAlign="right" VerticalAlign="Top" Width="50px" Font-Size="X-Small" />
                <HeaderStyle width="50px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="LineNum" HeaderText="Line" 
                    SortExpression="LineNum" UniqueName="LineNum" >
                <ItemStyle HorizontalAlign="right" VerticalAlign="Top" Width="30px" Font-Size="X-Small" />
                <HeaderStyle width="30px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="QtyOrd" HeaderText="Ord" 
                    SortExpression="QtyOrd" UniqueName="QtyOrd" DataFormatString="{0:N0}" >
                <ItemStyle HorizontalAlign="right" VerticalAlign="Top" Width="30px" Font-Size="X-Small" />
                <HeaderStyle width="30px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="QtyShip" HeaderText="Ship" 
                    SortExpression="QtyShip" UniqueName="QtyShip" DataFormatString="{0:N0}" >
                <ItemStyle HorizontalAlign="right" VerticalAlign="Top" Width="30px" Font-Size="X-Small" />
                <HeaderStyle width="30px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="PriceOverrideFlag" 
                        HeaderText="P/O"  ReadOnly="True" SortExpression="PriceOverrideFlag" UniqueName="PriceOverrideFlag" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="30px" Font-Size="X-Small" />
                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" Width="30px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="CostOverrideFlag" 
                        HeaderText="C/O" ReadOnly="True" 
                        SortExpression="CostOverrideFlag" UniqueName="CostOverrideFlag" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="30px" Font-Size="X-Small" />
                        <HeaderStyle HorizontalAlign="Left" Width="30px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
    
                
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    
    
    
    
     <asp:SqlDataSource ID="SqlDS_NewOrderLines" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        SelectCommand="SELECT aOrder_Line.OrderNumber, aOrder_Line.LineNum, aOrder_Line.ProdID, aOrder_Line.TransType, 
        CASE WHEN aProduct.Description IS NULL THEN NS_Description ELSE aProduct.Description END AS Description, 
        aOrder_Line.Price, aOrder_Line.ProductCost, aOrder_Line.MarginPct, aOrder_Line.Margin, CASE WHEN [PriceOverrideFlag] = - 1 THEN 'Y' ELSE '' END AS PriceOverrideFlag, CASE WHEN [CostOverrideFlag] = - 1 THEN 'Y' ELSE '' END AS CostOverrideFlag, 
        aOrder_Line.Unit, aOrder_Line.QtyOrd, aOrder_Line.QtyShip, LEFT (aCustomer.CustName, 20) AS CustName, aOrder_Line.EnterDate, 
        aOrder_Line.Price * aOrder_Line.QtyOrd AS Netamount, aBranches.Region 
        FROM aOrder_Line INNER JOIN aCustomer ON aOrder_Line.CustID = aCustomer.CustId INNER JOIN aBranches ON aOrder_Line.Whse = aBranches.branchno LEFT OUTER JOIN Shipto ON aOrder_Line.CustID = Shipto.CustId 
        AND aOrder_Line.Cono = Shipto.Cono AND aOrder_Line.ShipTo = Shipto.ShipToId LEFT OUTER JOIN aProduct ON aOrder_Line.ProdID = aProduct.ProdID 
        WHERE (aOrder_Line.Status = 'Active') AND (aOrder_Line.ProdID LIKE '7%')   
            AND (aOrder_Line.NetAmount &gt; @oMinValue2) 
            AND (aOrder_Line.Status = 'Active')
            AND (aCustomer.CustName LIKE '%' + @oCustName2 + '%')
            AND (aOrder_Line.OrderNumber LIKE '%' + @oOrder2 + '%')
            AND (aOrder_Line.ProdID LIKE '%' + @oProdID2 + '%')
            AND (Description LIKE '%' + @oDesc2 + '%')
            AND (aOrder_Line.Transtype Like @oType2)
            AND (aOrder_Line.MarginPct &lt; @oMargin2)
           
        ORDER BY aOrder_Line.EnterDate DESC, aOrder_Line.NetAmount DESC">
        <SelectParameters>
           
            <asp:ControlParameter ControlID="oType" DefaultValue="%" Name="oType2"  PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="oCustName" DefaultValue="%" Name="oCustName2"  PropertyName="Text" />
            <asp:ControlParameter ControlID="oProdID" DefaultValue="%" Name="oProdID2"  PropertyName="Text" />
            <asp:ControlParameter ControlID="oDesc" DefaultValue="%" Name="oDesc2"  PropertyName="Text" />
            <asp:ControlParameter ControlID="oOrder" DefaultValue="%" Name="oOrder2"  PropertyName="Text" />
            <asp:ControlParameter ControlID="oMargin" DefaultValue="1000" Name="oMargin2"  PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="oMinValue" DefaultValue="0" Name="oMinValue2"  PropertyName="SelectedValue" />
         </SelectParameters>
        
    
    </asp:SqlDataSource>
        
     
     
     
        </div>
 
    </telerik:RadPageView>
 
 
    <telerik:RadPageView ID="ByCustomer" runat="server" >
    
        <div id="divByCustomer" style="padding:5px 5px 5px 10px;width:995px;">
        
        <h6>Select Customer To See Open Lines </h6>
        <div style="float:left;">
        <telerik:RadGrid ID="ListBoxCustomers" runat="server" DataSourceID="SqlDS_OrderBacklogCustList" 
                GridLines="Horizontal" Height="522px" Width="175px" >
                
                <GroupingSettings CaseSensitive="false" />
                
                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" />

                    <Selecting AllowRowSelect="True"></Selecting>
                </ClientSettings>
                
                <MasterTableView DataSourceID="SqlDS_OrderBacklogCustList" DataKeyNames="CustID" ClientDataKeyNames="CustID" AutoGenerateColumns="False">
                    
                    <HeaderStyle Font-Size="X-Small" VerticalAlign="Bottom" />
                    
          
                    <Columns>
                        <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" DataType="System.String" SortExpression="CustName" UniqueName="CustName">
                            <ItemStyle Font-Size="X-Small" VerticalAlign="Bottom" Wrap="false" />
                        </telerik:GridBoundColumn>   
                    </Columns>
              
                </MasterTableView>
                           
            
                    
            </telerik:RadGrid>
    
    
  
        <asp:SqlDataSource ID="SqlDS_OrderBacklogCustList" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
      
                SelectCommand="SELECT LEFT (Customer.CustName, 20) AS CustName, aOrder_Line.CustID, COUNT(aOrder_Line.OrderNumber) AS OrderCnt 
                FROM aOrder_Line INNER JOIN Customer ON aOrder_Line.CustID = Customer.CustId INNER JOIN aBranches ON aOrder_Line.Whse = aBranches.branchno 
                WHERE (aOrder_Line.Status = 'Active') AND (aOrder_Line.ProdID LIKE '7%') AND (aOrder_Line.TransType &lt;&gt; '%QU%') 
                GROUP BY Customer.CustName, aOrder_Line.CustID 
                ORDER BY CustName">
                      
            
        </asp:SqlDataSource>
        </div>
    
        <div id="divOrderBacklogDetail" style="float:right; width:750px;height:550px; padding: 0px 0px 0px 0px;">
       
        <telerik:RadGrid ID="RadGrid_OrderDetail" runat="server" 
                DataSourceID="SqlDS_OrderDetail" Height="530px" 
                Width="735px" AllowPaging="false" AllowSorting="True"  GridLines="Horizontal">
                
                <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                    <ClientEvents OnRowSelected="ShowOrderDetail" />
                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="true" />
                </ClientSettings>
                
                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_OrderDetail"  Width="725px" DataKeyNames="OrderNumber, OrderNo" ClientDataKeyNames="OrderNumber, OrderNo">
                    <RowIndicatorColumn>
                        <HeaderStyle HorizontalAlign="Left" />
                    </RowIndicatorColumn>

                    <NoRecordsTemplate>
                        Select an order above to see order details.
                    </NoRecordsTemplate>
                    <Columns>
                        <telerik:GridBoundColumn DataField="OrderNo" HeaderText="OrderNo" Display="false" 
                            SortExpression="OrderNo" UniqueName="OrderNo" >
                        </telerik:GridBoundColumn>
                        
                        <%--<telerik:GridBoundColumn DataField="LineNum" DataType="System.Int32" 
                            HeaderText="Line" SortExpression="LineNum" UniqueName="LineNum">
                            <ItemStyle HorizontalAlign="Right" Width="30px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="30px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="ProdId" 
                            HeaderText="Product" SortExpression="ProdId" UniqueName="ProdId" >
                            <ItemStyle HorizontalAlign="Left" Width="85px" VerticalAlign="Top" Font-Size="X-Small" Wrap="false" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom"  Width="85px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Description" 
                            HeaderText="Description" SortExpression="Description" UniqueName="Description">
                            <ItemStyle HorizontalAlign="Left" Width="205px" VerticalAlign="Top" Font-Size="X-Small" Wrap="false"/>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="205px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyOrd" DataType="System.Decimal" 
                            HeaderText="Ord" SortExpression="QtyOrd" UniqueName="QtyOrd" DataFormatString="{0:n2}">
                            <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="50px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyShip" DataType="System.Decimal" 
                            HeaderText="Ship" SortExpression="QtyShip" UniqueName="QtyShip" DataFormatString="{0:n2}">
                            <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="50px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>
                        
                        <telerik:GridBoundColumn DataField="Price" DataType="System.Decimal" 
                            HeaderText="Price" SortExpression="Price" UniqueName="Price" DataFormatString="{0:c2}"
                            ItemStyle-HorizontalAlign="Right" ItemStyle-VerticalAlign="Top" >
                            <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="50px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" 
                            DefaultInsertValue="" HeaderText="Mrgn %" SortExpression="MarginPct" UniqueName="MarginPct" DataFormatString="{0:n2}" >
                            <ItemStyle HorizontalAlign="Right" Width="60px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="60px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ProductCost" DataType="System.Decimal" HeaderStyle-Font-Size="X-Small" 
                            DefaultInsertValue="" HeaderText="Cost" SortExpression="ProductCost" UniqueName="ProductCost" Display="false">
                            <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="50px" Font-Size="X-Small" />
                            
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="PriceOverrideFlag" 
                            HeaderText="P/O"  
                            ReadOnly="True" SortExpression="PriceOverrideFlag" 
                            UniqueName="PriceOverrideFlag">
                            <ItemStyle HorizontalAlign="Center" Width="30px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="30px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CostOverrideFlag" 
                            HeaderText="C/O" ReadOnly="True" 
                            SortExpression="CostOverrideFlag" UniqueName="CostOverrideFlag">
                            <ItemStyle HorizontalAlign="Center" Width="30px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="30px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="OrderNumber" 
                            HeaderText="Order" SortExpression="OrderNumber" UniqueName="OrderNumber" >
                            <ItemStyle HorizontalAlign="Right" Width="60px" VerticalAlign="Top" Font-Size="X-Small" />
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="60px" Font-Size="X-Small" />
                        </telerik:GridBoundColumn>
                    </Columns>
                    <PagerStyle VerticalAlign="Bottom" />
                </MasterTableView>
                <ClientSettings EnablePostBackOnRowClick="False">
                    <Selecting AllowRowSelect="True" EnableDragToSelectRows="False" />
                    <Scrolling AllowScroll="true" UseStaticHeaders="true"  />
                </ClientSettings>
            </telerik:RadGrid>
        
        <asp:SqlDataSource ID="SqlDS_OrderDetail" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            
            
            
            SelectCommand="SELECT aOrder_Line.OrderNumber, aOrder_Line.OrderNo, aOrder_Line.LineNum, aOrder_Line.ProdID, aOrder_Line.TransType, 
         CASE WHEN aProduct.Description IS NULL THEN NS_Description ELSE aProduct.Description END AS Description, 
         aOrder_Line.Price, aOrder_Line.ProductCost, aOrder_Line.MarginPct, aOrder_Line.Margin, 
         CASE WHEN [PriceOverrideFlag] = - 1 THEN 'Y' ELSE '' END AS PriceOverrideFlag, 
         CASE WHEN [CostOverrideFlag] = - 1 THEN 'Y' ELSE '' END AS CostOverrideFlag, aOrder_Line.Unit, 
         aOrder_Line.QtyOrd, aOrder_Line.QtyShip, 
         aOrder_Line.EnterDate,aOrder_Line.Price*aOrder_Line.QtyOrd AS Netamount 
         FROM aOrder_Line INNER JOIN aCustomer ON aOrder_Line.CustID = aCustomer.CustId LEFT OUTER JOIN Shipto ON aOrder_Line.CustID = Shipto.CustId AND aOrder_Line.Cono = Shipto.Cono AND aOrder_Line.ShipTo = Shipto.ShipToId LEFT OUTER JOIN aProduct ON aOrder_Line.ProdID = aProduct.ProdID 
         WHERE aOrder_Line.Custid= @Custid AND aOrder_Line.Prodid LIKE '7%' AND aOrder_Line.Status='Active'
         ORDER BY aOrder_Line.EnterDate DESC, aOrder_Line.NetAmount">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListBoxCustomers" Name="CustId" 
                    PropertyName="SelectedValue" Type="String" DefaultValue="50" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        </div>
      </div>
    
 
  </telerik:RadPageView>
 
    <telerik:RadPageView ID="NewBackOrder" runat="server">
        <div id="divNewBackog" style="padding:5px 5px 5px 10px;float:left;width:995px;">
        
          
    <telerik:RadGrid ID="RadGrid3" runat="server" DataSourceID="SqlDS_NewBackOrders"
        AllowPaging="True" AllowSorting="True" AllowFilteringByColumn="false"  
        GridLines="Horizontal" Width="950px" Height="540px"  > 
    
    <GroupingSettings CaseSensitive="false" />

    <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
        <ClientEvents OnRowSelected="ShowOrderDetail" />
        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="true" />
    </ClientSettings>

        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_NewBackOrders" 
            DataKeyNames="OrderNumber, OrderNo" ClientDataKeyNames="OrderNumber, OrderNo" 
            PageSize="50"  Width="950px" GridLines="Horizontal">

        
        <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" />
        <ItemStyle VerticalAlign="Top" />

                  
            <Columns>
                <telerik:GridBoundColumn DataField="OrderNo" HeaderText="OrderNo" Display="false" 
                    SortExpression="OrderNo" UniqueName="OrderNo" >
                </telerik:GridBoundColumn>      
                         
                <telerik:GridBoundColumn DataField="CreatedDate" DataType="System.DateTime" 
                    HeaderText="Created" SortExpression="CreatedDate" UniqueName="CreatedDate" 
                    DataFormatString="{0:MM/dd/yy}" >
                <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" Font-Size="X-Small" />
                <HeaderStyle width="40px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" 
                    SortExpression="OrderNumber" UniqueName="OrderNumber">
                <ItemStyle HorizontalAlign="right" Width="50px" VerticalAlign="Top" Font-Size="X-Small" />
                <HeaderStyle width="50px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" 
                    SortExpression="ProdID" UniqueName="ProdID">
                <ItemStyle HorizontalAlign="left" Width="75px" VerticalAlign="Top" Font-Size="X-Small" />
                <HeaderStyle width="50px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="OrderValue" 
                    HeaderText="Value" SortExpression="OrderValue"  UniqueName="OrderValue" DataFormatString="{0:c2}">
                <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" Font-Size="X-Small" />
                <HeaderStyle width="50px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <%--<telerik:GridBoundColumn DataField="MarginPct" HeaderText="Mrgn %" UniqueName="MarginPct"
                    CurrentFilterFunction="LessThanOrEqualTo" AutoPostBackOnFilter="true" ShowFilterIcon="true"  
                    FilterControlWidth="30px"
                    DataType="System.Double" DataFormatString="{0:f1}">
                <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" Font-Size="X-Small" />
                <HeaderStyle width="40px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                --%>
                <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" 
                    SortExpression="TransType" UniqueName="TransType" >
                <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" Font-Size="X-Small" />
                <HeaderStyle width="35px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                
                <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" 
                    ReadOnly="True" SortExpression="CustName" UniqueName="CustName">
                <ItemStyle HorizontalAlign="Left" Width="160px" VerticalAlign="Top" Font-Size="X-Small" Wrap="false" />
                <HeaderStyle width="160px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="SalesRep" HeaderText="Sales Rep" 
                    SortExpression="SalesRep" UniqueName="SalesRep">
                <ItemStyle HorizontalAlign="Left" Width="160px" VerticalAlign="Top" Font-Size="X-Small" />
                <HeaderStyle width="160px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                <%--<telerik:GridBoundColumn DataField="ShipToName" HeaderText="Job Name" 
                    SortExpression="ShipToName" UniqueName="ShipToName">
                <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" Font-Size="X-Small" />
                <HeaderStyle width="150px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                --%>
                
                
                
                
                <%--<telerik:GridBoundColumn DataField="Branch" HeaderText="Branch" 
                    SortExpression="Branch" UniqueName="Branch" FilterControlWidth="40px"
                    CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                <ItemStyle HorizontalAlign="Center" Width="50px" Font-Size="X-Small" />
                <HeaderStyle width="50px" Font-Size="X-Small" />
                </telerik:GridBoundColumn>--%>
                
                
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
    
    
    
    
    <asp:SqlDataSource ID="SqlDS_NewBackOrders" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        
        SelectCommand="SELECT aOrder_Header.EnterDate, aOrder_Header.CreatedDate, aOrder_Header.TotalPrice AS OrderValue, 
            LEFT (Customer.CustName, 30) AS CustName, SalesRep.Name AS SalesRep, aOrder_Header.OrderNumber, aOrder_Header.TransType, 
            aBranches.branchno2 AS Branch, aOrder_Header.ShipToName, aOrder_Header.MarginPct, aOrder_Header.OrderNo, aOrder_Line.ProdID 
            FROM aOrder_Header INNER JOIN SalesRep ON aOrder_Header.OutsideSlsRep = SalesRep.SlsRepId INNER JOIN aBranches ON aOrder_Header.Whse = aBranches.branchno INNER JOIN aOrder_Line ON aOrder_Header.OrderNumber = aOrder_Line.OrderNumber LEFT OUTER JOIN Customer ON aOrder_Header.CustID = Customer.CustId 
            WHERE (aOrder_Header.Status = 'Active') 
                AND (aOrder_Header.OrderSuf &gt; 0) 
                AND (aOrder_Header.CreatedDate &gt; GETDATE() - 14) 
                AND (aOrder_Line.ProdID LIKE N'7%') 
                
            ORDER BY aOrder_Header.CreatedDate DESC, aOrder_Header.TotalOrderAmount DESC">
               
    
    </asp:SqlDataSource>


        
        </div>
    </telerik:RadPageView>
 
 
 </telerik:RadMultiPage>  
 
    <telerik:RadWindowManager  ID="Singleton" Skin="Silk" Width="1050" Height="600"
        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
    </telerik:RadWindowManager>
 

</asp:Content>

