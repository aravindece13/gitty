<%@ Page Title="PO Detail" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="POsActiveDetail.aspx.vb" Inherits="Exec_OrderBacklogDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function OpenPositionedWindow(oButton, url, windowName) {
            var oWnd = window.radopen(url, windowName);
        }
        
        function openRadNewWindow(TiedOrderNumber) {
           
            var oWnd = radopen("OrdersActiveDetail.aspx?OrderNumber=" + TiedOrderNumber, "NewDialog");
            oWnd.center();
        }

        
     </script>
   </telerik:RadCodeBlock>
         
    
    <div id="divHeaderMaster" style="padding:2px 2px 5px 3px; width:1000px; height:80px; font-size:small;">
        
        <div id="divHeader1" style="padding: 2px 5px 2px 2px; float:left; width:300px;">
            <asp:Label ID="txtlbl1" Font-Bold="false" ForeColor="Gray" runat="server" Text="PO: "></asp:Label>
            <asp:Label ID="lblPONumber" runat="server" Text=""></asp:Label><br />
            
            <asp:Label ID="Label16" Font-Bold="false" ForeColor="Gray" runat="server" Text="Vendor: "></asp:Label>
            <asp:Label ID="lblVendName" runat="server" Text=""></asp:Label><br />
            
            <asp:Label ID="Label7" Font-Bold="false" ForeColor="Gray" runat="server" Text="Type: "></asp:Label>
            <asp:Label ID="lblTransType" runat="server" Text=""></asp:Label><br />
            
            <asp:Label ID="Label4" Font-Bold="false" ForeColor="Gray" runat="server" Text="Value: "></asp:Label>
            <asp:Label ID="lblTotalLineAmt" runat="server" Text=""></asp:Label><br />
            

                    
        </div> 
        <div id="divHeader2" style="padding: 2px 5px 2px 2px; float:left;width:350px;">

            <asp:Label ID="Label6" Font-Bold="false" ForeColor="Gray" runat="server" Text="Branch: "></asp:Label>
            <asp:Label ID="lblBranch" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label1" Font-Bold="false" ForeColor="Gray" runat="server" Text="Entered: "></asp:Label>
            <asp:Label ID="lblEnterdate" runat="server" Text=""></asp:Label><br />
            
            <asp:Label ID="Label2" Font-Bold="false" ForeColor="Gray" runat="server" Text="Due: "></asp:Label>
            <asp:Label ID="lblDueDate" runat="server" Text=""></asp:Label><br />
            
            <asp:Label ID="Label3" Font-Bold="false" ForeColor="Gray" runat="server" Text="Rush: "></asp:Label>
            <asp:Label ID="lblRushFlg" runat="server" Text=""></asp:Label><br />
           
        </div> 
        
        
        <telerik:RadWindowManager ID="RadWindowManager1" Skin="Silk" Width="1050" Height="550"
                        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
            <Windows>
                    
                    <telerik:RadWindow ID="NewDialog" runat="server" Title="Order Detail" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
            </Windows> 
              
                    
       </telerik:RadWindowManager>   
        
   
    </div>

        <asp:SqlDataSource ID="SqlDS_POHeader" runat="server" 
                ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            SelectCommand="SELECT PO_Header_Closed.PONumber, Vendor.Name AS VendName, Vendor.VendId, aBranches.comboname AS Branch, PO_Header_Closed.DueDate, PO_Header_Closed.EnterDate, PO_Header_Closed.TiedOrderNumber, PO_Header_Closed.RushFlg, PO_Header_Closed.TotalLineAmt, PO_Header_Closed.TransactionType 
            FROM PO_Header_Closed INNER JOIN Vendor ON PO_Header_Closed.VendId = Vendor.VendId INNER JOIN aBranches ON PO_Header_Closed.WhseId = aBranches.branchno
            WHERE (PO_Header_Closed.PONumber = @PONumber)">
            <SelectParameters>
                <asp:QueryStringParameter Name="PONumber" QueryStringField="PONumber" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>

    <div id="divDetailGrid" style="padding:5px 2px 5px 5px;">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" Height="400px" Width="825px">
        <telerik:RadGrid ID="RadGrid1" runat="server" 
            DataSourceID="SqlDS_PODetail" GridLines="None" AllowSorting="True">
            <ClientSettings>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" FrozenColumnsCount="3" />
                    <Resizing AllowColumnResize="true" />
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_PODetail" 
                      Width="800px">
                
             <HeaderStyle VerticalAlign="Bottom" Font-Bold="true" />
             <ItemStyle VerticalAlign="Top" />   
                
                <Columns>
                    <telerik:GridBoundColumn DataField="LineNum" DataType="System.Int32" 
                        HeaderText="Line" SortExpression="LineNum" UniqueName="LineNum" >
                        <ItemStyle HorizontalAlign="Center" Width="30px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="30px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" 
                        SortExpression="ProdID" UniqueName="ProdID">
                        <ItemStyle HorizontalAlign="Left" Width="90px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="90px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="ProdDesc" HeaderText="Description" 
                        ReadOnly="True" SortExpression="ProdDesc" UniqueName="ProdDesc">
                        <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="200px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="QtyOrdered" DataType="System.Decimal" 
                        HeaderText="Qty Ord" SortExpression="QtyOrdered" UniqueName="QtyOrdered" 
                        DataFormatString="{0:N0}">
                        <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="Price" DataType="System.Decimal" 
                        HeaderText="Price" SortExpression="Price" 
                        UniqueName="Price" DataFormatString="{0:C2}">
                        <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="NetAmount" DataType="System.Decimal" 
                        HeaderText="Net" SortExpression="NetAmount" 
                        UniqueName="NetAmount" DataFormatString="{0:C2}" >
                        <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                    </telerik:GridBoundColumn>
                                   
                    <telerik:GridBoundColumn DataField="CostOverrideFlag" 
                        HeaderText="C/O"  
                        ReadOnly="True" SortExpression="CostOverrideFlag" 
                        UniqueName="CostOverrideFlag">
                        <ItemStyle HorizontalAlign="Center" Width="30px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="30px" />
                    </telerik:GridBoundColumn>
                    
                </Columns>
                
            </MasterTableView>
        </telerik:RadGrid>
    
        <asp:SqlDataSource ID="SqlDS_PODetail" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                       
            SelectCommand="SELECT PO_Line_Closed.LineNum,PO_Line_Closed.ProdID, PO_Line_Closed.ProdDesc,PO_Line_Closed.NetAmount,PO_Line_Closed.Price,PO_Line_Closed.QtyOrdered 
            FROM PO_Line_Closed 
            WHERE (PO_Line_Closed.PONumber = @PONumber) 
            ORDER BY PO_Line_Closed.LineNum">
            <SelectParameters>
                <asp:QueryStringParameter Name="PONumber" QueryStringField="PONumber" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </telerik:RadAjaxPanel>

    
    <p style="font-weight:bold;">C/O: Cost Override</p>

    <telerik:RadWindowManager  ID="Singleton" Skin="Outlook" Width="1050" Height="600"
        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
    </telerik:RadWindowManager>
    
    </div>
</asp:Content>

