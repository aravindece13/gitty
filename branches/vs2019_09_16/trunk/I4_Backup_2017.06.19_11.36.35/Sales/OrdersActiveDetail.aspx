<%@ Page Title="Order Detail" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="OrdersActiveDetail.aspx.vb" Inherits="Exec_OrderBacklogDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  
         
    
    <div id="divHeaderMaster" style="padding:2px 2px 5px 3px; width:1000px; height:100px;">
        
        <div id="divHeader1" style="padding: 2px 5px 2px 2px; float:left; width:300px;">
            <asp:Label ID="txtlbl1" Font-Bold="false" ForeColor="Gray" runat="server" Text="Order: "></asp:Label>
            <asp:Label ID="lblOrderNumber" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label13" Font-Bold="false" ForeColor="Gray" runat="server" Text="Sales Rep: "></asp:Label>
            <asp:Label ID="lblSalesRep" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label1" Font-Bold="false" ForeColor="Gray" runat="server" Text="Order Amount: "></asp:Label>
            <asp:Label ID="lblTotalOrderAmount" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label2" Font-Bold="false" ForeColor="Gray" runat="server" Text="Cost: "></asp:Label>
            <asp:Label ID="lblTotalCost" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label3" Font-Bold="false" ForeColor="Gray" runat="server" Text="Margin: "></asp:Label>
            <asp:Label ID="lblMargin" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMarginPct" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label4" Font-Bold="false" ForeColor="Gray" runat="server" Text="Approved By: "></asp:Label>
            <asp:Label ID="lblApprovalBy" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label15" Font-Bold="false" ForeColor="Gray" runat="server" Text="Approval Type: "></asp:Label>
            <asp:Label ID="lblApprovalType" runat="server" Text=""></asp:Label>
                    
        </div> 
        <div id="divHeader2" style="padding: 2px 5px 2px 2px; float:left;width:350px;">

            <asp:Label ID="Label6" Font-Bold="false" ForeColor="Gray" runat="server" Text="Customer: "></asp:Label>
            <asp:Label ID="lblCustName" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblCustID" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label7" Font-Bold="false" ForeColor="Gray" runat="server" Text="Job: "></asp:Label>
            <asp:Label ID="lblShipTo" runat="server" Text=""></asp:Label>
            <%--<asp:Label ID="lblShipToName" runat="server" Text=""></asp:Label><br />--%>
            <asp:Label ID="Label10" Font-Bold="false" ForeColor="Gray" runat="server" Text="Cust PO: "></asp:Label>
            <asp:Label ID="lblCustPO" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label14" Font-Bold="false" ForeColor="Gray" runat="server" Text="Ship Via: "></asp:Label>
            <asp:Label ID="ShipViaType" runat="server" Text=""></asp:Label>
        
        
        </div> 
        
        
        <div id="divHeader3" style="padding: 2px 5px 2px 2px; float:left;width:180px;">
            <asp:Label ID="Label5" Font-Bold="false" ForeColor="Gray" runat="server" Text="Trans Type: "></asp:Label>
            <asp:Label ID="lblTranstype" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label9" Font-Bold="false" ForeColor="Gray" runat="server" Text="Whse: "></asp:Label>
            <asp:Label ID="lblWhse" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label17" Font-Bold="false" ForeColor="Gray" runat="server" Text="Stage: "></asp:Label>
            <asp:Label ID="lblStageCode" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label8" Font-Bold="false" ForeColor="Gray" runat="server" Text="Entered: "></asp:Label>
            <asp:Label ID="lblEnterDate" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblTakenBy" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label11" Font-Bold="false" ForeColor="Gray" runat="server" Text="Picked: "></asp:Label>
            <asp:Label ID="lblPickDate" runat="server" Text=""></asp:Label>&nbsp;
            <asp:Label ID="lblPickTime" runat="server" Text=""></asp:Label>&nbsp;
            <asp:Label ID="lblPickBy" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label12" Font-Bold="false" ForeColor="Gray" runat="server" Text="Shipped: "></asp:Label>
            <asp:Label ID="lblShipDate" runat="server" Text=""></asp:Label>
        </div> 
        
        
              
        
    </div>

        <asp:SqlDataSource ID="SqlDS_OrderHeader" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="uspOrderHeaderRetrieveSpecific" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="OrderNumber" QueryStringField="OrderNumber" Type="String" />
                </SelectParameters>
         </asp:SqlDataSource>

    <div id="divDetailGrid" style="padding:5px 2px 5px 5px;">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" Height="375px" Width="1000px">
        <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="SqlDS_OrderBacklogDetail" GridLines="None" AllowSorting="True" Width="1100px" Height="300px">
            <ClientSettings>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" FrozenColumnsCount="3" />
                    <Resizing AllowColumnResize="true" />
            </ClientSettings>
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_OrderBacklogDetail" >
                
             <HeaderStyle VerticalAlign="Bottom" Font-Bold="true" />
             <ItemStyle VerticalAlign="Top" />   
                
                <Columns>
                    <telerik:GridBoundColumn DataField="Line" DataType="System.Int32" HeaderText="Line" SortExpression="Line" UniqueName="Line" >
                        <ItemStyle HorizontalAlign="Center" Width="30px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="30px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                        <ItemStyle HorizontalAlign="Left" Width="120px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="120px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                        <ItemStyle HorizontalAlign="Left" Width="270px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="270px" />
                    </telerik:GridBoundColumn>
                    
                   <telerik:GridBoundColumn DataField="QtyOrd" DataType="System.Decimal" HeaderText="Qty Ord" SortExpression="QtyOrd" UniqueName="QtyOrd" DataFormatString="{0:N0}">
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="40px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyShip" DataType="System.Decimal" HeaderText="Qty Ship" SortExpression="QtyShip" 
                        UniqueName="QtyShip" DataFormatString="{0:N0}">
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="40px" />
                    </telerik:GridBoundColumn> 
                    
                    <telerik:GridBoundColumn DataField="NetAmount" DataType="System.Decimal" HeaderText="Value" SortExpression="NetAmount" UniqueName="NetAmount" DataFormatString="{0:C2}" >
                        <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="70px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Price" DataType="System.Decimal" HeaderText="Price" SortExpression="Price" UniqueName="Price" DataFormatString="{0:C2}">
                        <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Cost" DataType="System.Decimal" HeaderText="Cost" SortExpression="Cost" UniqueName="Cost" DataFormatString="{0:C2}" >
                        <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" HeaderText="Mrg %" SortExpression="MarginPct" UniqueName="MarginPct" DataFormatString="{0:P1}">
                        <ItemStyle HorizontalAlign="Right" Width="60px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                    </telerik:GridBoundColumn>
                    <%--<telerik:GridBoundColumn DataField="Margin" DataType="System.Decimal" HeaderText="Margin" SortExpression="Margin" UniqueName="Margin"
                        DataFormatString="{0:C2}">
                         <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                         <HeaderStyle HorizontalAlign="Left" Width="70px" />
                    </telerik:GridBoundColumn>--%>
                    <telerik:GridBoundColumn DataField="PriceOverrideFlag" HeaderText="P/O"  ReadOnly="True" SortExpression="PriceOverrideFlag" UniqueName="PriceOverrideFlag" HeaderTooltip="Price Override">
                        <ItemStyle HorizontalAlign="Center" Width="30px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="30px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CostOverrideFlag" HeaderText="C/O" ReadOnly="True" SortExpression="CostOverrideFlag" UniqueName="CostOverrideFlag" HeaderTooltip="Cost Override">
                        <ItemStyle HorizontalAlign="Center" Width="30px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="30px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Unit" HeaderText="Unit" SortExpression="Unit" UniqueName="Unit">
                        <ItemStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                    </telerik:GridBoundColumn>
                    
                </Columns>
                
            </MasterTableView>
        </telerik:RadGrid>
    
        <asp:SqlDataSource ID="SqlDS_OrderBacklogDetail" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
             SelectCommand="uspOrdersLinesGetByOrder" SelectCommandType="StoredProcedure">          
            
            <SelectParameters>
                <asp:QueryStringParameter Name="OrderNumber" QueryStringField="OrderNumber" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </telerik:RadAjaxPanel>

    <telerik:RadWindowManager  ID="Singleton" Skin="Outlook" Width="1050" Height="600"
        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
    </telerik:RadWindowManager>
   
    </div>
</asp:Content>

