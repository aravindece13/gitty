<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Details_Cost.aspx.vb" Inherits="BidTool_Details_Cost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    
    <asp:HiddenField ID="hdnJobID" runat="server" />
    <asp:HiddenField ID="hdnTakeOffID" runat="server" />
    <asp:HiddenField ID="hdnProdID" runat="server" />
    <asp:HiddenField ID="hdnCustID" runat="server" />

    
    <div style="width:850px; margin:10px;">
        <div style="width:680px; background-color:Orange; color:White; font-size:medium; font-weight:bold; padding:5px;">
            <asp:Label ID="lblProduct" runat="server"></asp:Label>
        </div>
        <div style="width:680px; margin:5px 0px 5px 0px;">
            <div style="width:200px;float:left; margin-right:20px; font-size:medium; font-weight:bold;">
                 <asp:Label ID="lblProjectCost" runat="server"></asp:Label>
            </div>
            <div style="width:450px;float:left;">
                <div style="width:130px;float:left; margin-right:20px; font-size:medium; font-weight:bold;">
                    Cost Comments:
                </div>
                <div style="width:300px;float:left; font-size:small; ">
                    <asp:Label ID="lblProjectCostComment" runat="server" Width="230px" Height="60px"></asp:Label>
                </div>
                
            </div>
                   
        </div>
        
         <div style="width:300px; float:Left; ">
                <div style="width:270px; margin:5px 10px 5px 10px; float:Left;"> 
                    <div style="font-size:small; width:250px; font-weight:bold; background-color:Gray; color:White; height:15px; padding:5px; ">
                        Today's Costs
                    </div>
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:100px;float:left; font-weight:bold; font-size:small;">BidTool Cost:</div>
                        <div style="width:130px;float: left;font-size:small;">
                            <asp:Label ID="lblPricingBidToolCost" runat="server" Width="50px" CssClass="myLabelCss">
                            </asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:100px;float:left; font-weight:bold; font-size:small;">Avg. Cost:</div>
                        <div style="width:130px;float: left;font-size:small;">
                            <asp:Label ID="lblPricingAvgCost" runat="server" CssClass="myLabelCss"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:100px;float:left; font-weight:bold; font-size:small;">Last Cost: </div>
                        <div style="width:130px;float: left; font-size:small;">
                            <asp:Label ID="lblPricingLastCost" runat="server" CssClass="myLabelCss"></asp:Label>
                        </div>
                    </div>
            
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:100px;float:left; font-weight:bold; font-size:small;">Repl. Cost: </div>
                        <div style="width:130px;float: left;font-size:small;">
                            <asp:Label ID="lblPricingReplCost" runat="server" CssClass="myLabelCss"></asp:Label>
                        </div>
                    </div>
            
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:100px;float:left; font-weight:bold; font-size:small;">Add-On: </div>
                        <div style="width:130px;float: left;font-size:small;">
                            <asp:Label ID="lblPricingAddOnCost" runat="server" CssClass="myLabelCss"></asp:Label>
                        </div>
                    </div>
                </div> 
                          

      
                           
                <div style="width:180px;margin:5px 10px 5px 10px; float:Left;">   
                    <div style="font-size:small; width:250px; font-weight:bold; background-color:Gray; color:White; height:15px; padding:5px; ">
                        Inventory
                    </div>
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:90px;float:left; font-weight:bold; font-size:small;">Status:</div>
                        <div style="width:70px;float: left;font-size:small;">
                            <asp:Label ID="lblPricingStatus" runat="server" Width="50px" CssClass="myLabelCss" ></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:90px;float:left; font-weight:bold; font-size:small;">Months Inv.:</div>
                        <div style="width:70px;float: left;font-size:small;">
                            <asp:Label ID="lblPricingMonthsInv" runat="server" Width="50px" CssClass="myLabelCss"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:90px;float:left; font-weight:bold; font-size:small;">Available: </div>
                        <div style="width:90px;float: left; font-size:small;">
                            <asp:Label ID="lblPricingQtyAvail" runat="server" CssClass="myLabelCss"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:90px;float:left; font-weight:bold; font-size:small;">On Hand:</div>
                        <div style="width:70px;float: left;font-size:small;">
                            <asp:Label ID="lblPricingQtyOnHand" runat="server" CssClass="myLabelCss"></asp:Label>
                        </div>
                    </div>
                    <div style="width:100%; float:left; margin-top:7px;">
                        <div style="width:90px;float:left; font-weight:bold; font-size:small;">On Order: </div>
                        <div style="width:70px;float: left;font-size:small;">
                            <asp:Label ID="lblPricingQtyOnOrder" runat="server" CssClass="myLabelCss"></asp:Label>
                        </div>
                    </div>                            
                </div>
         </div>
         
         <div style="width:360px; float:left;">
           <div style="width:360px; margin-bottom:10px;" >
               <div style="font-size:small; width:250px; font-weight:bold; background-color:Gray; color:White; height:15px; padding:5px; ">
                   Recent Orders
               </div>
           </div>
            <telerik:RadGrid ID="grdPastOrders" runat="server" Width="360px" Height="300px" AllowSorting="True" DataSourceID="SqlDS_grdPastOrders" GroupPanelPosition="Top" 
                 ResolvedRenderMode="Classic">
                <ClientSettings>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                </ClientSettings>
                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdPastOrders">
                    <Columns>
                        <telerik:GridBoundColumn DataField="InvoiceDate" HeaderText="Invoiced" ReadOnly="True" SortExpression="InvoiceDate" UniqueName="InvoiceDate">
                            <HeaderStyle width="80px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            <ItemStyle Width="80px" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Transtype" SortExpression="Transtype" UniqueName="Transtype">
                            <HeaderStyle width="40px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Price" DataType="System.Decimal" HeaderText="Price" DataFormatString="{0:C2}"
                            SortExpression="Price" UniqueName="Price">
                            <HeaderStyle width="60px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyShip" DataType="System.Decimal" HeaderText="Qty Ship" DataFormatString="{0:N0}"
                            SortExpression="QtyShip" UniqueName="QtyShip">
                            <HeaderStyle width="70px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="OrderNumber" SortExpression="OrderNumber" UniqueName="OrderNumber">
                            <HeaderStyle width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status">
                        </telerik:GridBoundColumn>--%>
                       
                        <%--<telerik:GridBoundColumn DataField="EnterDate" HeaderText="Entered" ReadOnly="True" SortExpression="EnterDate" UniqueName="EnterDate">
                        </telerik:GridBoundColumn>--%>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
             <asp:SqlDataSource ID="SqlDS_grdPastOrders" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="SELECT Top 10 OrderNumber, Status, Price, QtyShip, Transtype,
	                        CASE WHEN InvoiceDate IS Null THEN '' ELSE CONVERT(nvarchar(15),CAST(InvoiceDate AS date),111) END AS InvoiceDate, 
	                        CASE WHEN EnterDate IS Null THEN '' ELSE CONVERT(nvarchar(15),CAST(EnterDate AS date),111) END AS EnterDate 
                        FROM         Orders_Line_All
                        WHERE     (ProdID = @ProdID) AND (CustID = @CustID)
                        ORDER BY EnterDate DESC, InvoiceDate DESC">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="hdnProdID" Name="ProdID" PropertyName="Value" />
                     <asp:ControlParameter ControlID="hdnCustID" Name="CustID" PropertyName="Value" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </div>
    </div>
            
                       
</asp:Content>

