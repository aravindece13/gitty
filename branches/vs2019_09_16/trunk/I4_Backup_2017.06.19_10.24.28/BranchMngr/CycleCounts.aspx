<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchMngr.master" AutoEventWireup="false" CodeFile="CycleCounts.aspx.vb" Inherits="BranchMngr_CycleCounts" %>


<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.2.14.1204, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Branch Manager | Cycle Counts</h1>



<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="grdTransactions">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTransactions" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdProductCounts" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdLastAdjustments" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdLastOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdLastPOs" LoadingPanelID="RadAjaxLoadingPanel1" />
                         
                </UpdatedControls>
               
            </telerik:AjaxSetting>


                
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>



<div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:995px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server"  
        MultiPageID="RadMultiPage1" SelectedIndex="2"  Width="800px" Skin="MetroTouch" >
        <Tabs>
            <%--<telerik:RadTab runat="server" Text="Stats" PageViewID="Stats" ></telerik:RadTab>--%>
            <%--<telerik:RadTab runat="server" Text="Counting" PageViewID="Counting" ></telerik:RadTab>--%>
            <telerik:RadTab runat="server" Text="Inventory Adjustments" PageViewID="InvAdjustments" Selected="true"></telerik:RadTab>
           <%-- <telerik:RadTab runat="server" Text="Cycle Dates" PageViewID="CycleDates"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Reports" PageViewID="Reports"></telerik:RadTab>--%>
        </Tabs>
    </telerik:RadTabStrip>
  </div>
    
<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="570px" Width="1000px" >
    
 <%-- <telerik:RadPageView ID="Stats" runat="server" Selected="true" >         
                
    
  
  </telerik:RadPageView>--%>

  <%--<telerik:RadPageView ID="Counting" runat="server" >         
                
     <div id="divCounting" style="padding:0px 5px 5px 15px;float:left;width:995px;"> Counting
     
     
     
     
     
     </div>
  
  </telerik:RadPageView>--%>

  <telerik:RadPageView ID="InvAdjustments" runat="server" Selected="true" >         
                
     <div id="divInvAdjustments" style="float:left; width:1650px;"> 
        <div style="width:820px; height:650px; float:left;" >
           <telerik:RadGrid ID="grdTransactions" runat="server" DataSourceID="SqlDS_Transactions" AllowFilteringByColumn="True" AllowSorting="True" Height="850px" Width="800px"
                AutoGenerateColumns="False" PageSize="100" AllowPaging="true"  GridLines="None" ShowFooter="false" DataKeyNames="WhseID, Prodid" >
 
                <GroupingSettings CaseSensitive="false" />
 
                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                   <Resizing AllowColumnResize="true" />
                   <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="true" />
                   <Selecting AllowRowSelect="True"></Selecting>
                </ClientSettings>
                <PagerStyle AlwaysVisible="true" HorizontalAlign="Left" Position="Bottom" />
    
                <MasterTableView  DataSourceID="SqlDS_Transactions" DataKeyNames="WhseID,Prodid"  >
                    
    
                    <Columns>
                        <telerik:GridBoundColumn DataField="PostDate" DataType="System.DateTime" 
                            HeaderText="Posted" SortExpression="PostDate" UniqueName="PostDate" DataFormatString="{0:MM/dd/yy}" FilterControlWidth="55px" >
                            <HeaderStyle Width="65px" Font-Bold="true" />
                            <ItemStyle Width="65px" HorizontalAlign="Left" VerticalAlign="Top" />
                        </telerik:GridBoundColumn>
        
                        <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" ReadOnly="True" FilterControlWidth="20px">
                            <HeaderStyle Width="50px" Font-Bold="true" />
                            <ItemStyle Width="50px" HorizontalAlign="Left" VerticalAlign="Top" />
                        </telerik:GridBoundColumn>
        
                        <telerik:GridBoundColumn DataField="Prodid" HeaderText="Prodid" SortExpression="Prodid" UniqueName="Prodid" ReadOnly="True" FilterControlWidth="55px">
                            <HeaderStyle Width="90px" Font-Bold="true" />
                            <ItemStyle Width="90px" HorizontalAlign="Left" VerticalAlign="Top" />
                        </telerik:GridBoundColumn>
        
                        <telerik:GridBoundColumn DataField="Refer" HeaderText="Reference" SortExpression="Refer" UniqueName="Refer" FilterControlWidth="65px">
                            <HeaderStyle Width="125px" Font-Bold="true" />
                            <ItemStyle Width="125px" HorizontalAlign="Left" VerticalAlign="Top"  />
                        </telerik:GridBoundColumn>
        
                        <telerik:GridBoundColumn DataField="Operator" HeaderText="Oper" SortExpression="Operator" UniqueName="Operator" FilterControlWidth="35px">
                        <HeaderStyle Width="80px" Font-Bold="true" />
                        <ItemStyle Width="80px" HorizontalAlign="Left" VerticalAlign="Top" />
                        </telerik:GridBoundColumn>
        
                        <telerik:GridBoundColumn DataField="QtyAdjusted" DataType="System.Double" HeaderText="Qty Adj" 
                            SortExpression="QtyAdjusted" UniqueName="QtyAdjusted" FilterControlWidth="30px">
                        <HeaderStyle Width="60px" Font-Bold="true" />
                        <ItemStyle Width="60px" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
        
                        <telerik:GridBoundColumn DataField="Cost_Unit" DataType="System.Double" 
                            HeaderText="Cost/Unit" SortExpression="Cost_Unit" UniqueName="Cost_Unit" DataFormatString="{0:c2}" FilterControlWidth="45px" >
                            <HeaderStyle Width="90px" Font-Bold="true" />
                            <ItemStyle Width="90px" HorizontalAlign="Right" VerticalAlign="Top"/>
                        </telerik:GridBoundColumn>
        
                        <telerik:GridBoundColumn DataField="InvAdjust" DataType="System.Double" HeaderText="Inv Adj" ReadOnly="True" 
                            SortExpression="InvAdjust" UniqueName="InvAdjust" DataFormatString="{0:c2}" FilterControlWidth="35px">
                            <HeaderStyle Width="90px" Font-Bold="true" />
                            <ItemStyle Width="90px" HorizontalAlign="Right" VerticalAlign="Top" />
                        </telerik:GridBoundColumn>
        
                        <telerik:GridBoundColumn DataField="JournalNo" DataType="System.Int32" 
                            HeaderText="Journal" SortExpression="JournalNo" UniqueName="JournalNo" FilterControlWidth="45px">
                            <HeaderStyle Width="90px" Font-Bold="true" />
                            <ItemStyle Width="90px" HorizontalAlign="Left" VerticalAlign="Top" />
                        </telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
        
            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDS_Transactions" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                        SelectCommand="uspCycleCountTransactionsGetByWhse" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="DaysBack" Type="Int16" DefaultValue="1000" />
                    <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="whseID1" Type="String" />
                    <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="whseID2" Type="String" />
                    <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="whseID3" Type="String" />
                    <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="whseID4" Type="String" />
                    <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="whseID5" Type="String" />
                    <asp:CookieParameter CookieName="Whse6" DefaultValue="0" Name="whseID6" Type="String" />
                    <asp:CookieParameter CookieName="Whse7" DefaultValue="0" Name="whseID7" Type="String" />
                    <asp:CookieParameter CookieName="Whse8" DefaultValue="0" Name="whseID8" Type="String" />
                    <asp:CookieParameter CookieName="Whse9" DefaultValue="0" Name="whseID9" Type="String" />
                    <asp:CookieParameter CookieName="Whse10" DefaultValue="0" Name="whseID10" Type="String" />

                </SelectParameters>
    
                   
            </asp:SqlDataSource>
               
        </div>
        <div style="width:780px; height:900px; float:left;" >

            <div style="width:660px; height:220px; float:left;">
           
                <div style="width:100%; float:left; padding:3px; margin: 0px 0px 10px 0px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                    Last 10 Counts
                </div>
                <telerik:RadGrid ID="grdProductCounts" runat="server" DataSourceID="SqlDS_grdProductCounts" AllowSorting="True" Height="180px" Width="640px"
                    AutoGenerateColumns="False" AllowPaging="false" GridLines="None" ShowFooter="false" >
 
      
                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="false" >
                       <Resizing AllowColumnResize="true" />
                       <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="true" />
                       <Selecting AllowRowSelect="True"></Selecting>
                    </ClientSettings>
                        
                    <MasterTableView DataSourceID="SqlDS_grdProductCounts"  >
                        <ColumnGroups>
                            
                            <telerik:GridColumnGroup HeaderText="Quantities At Time of Count" Name="QtyGroup" HeaderStyle-HorizontalAlign="Center" />
                            <telerik:GridColumnGroup HeaderText="Last" Name="DateGroup" HeaderStyle-HorizontalAlign="Center" />
                            
                        </ColumnGroups>
    
                       <Columns>
                        <telerik:GridBoundColumn DataField="CycleCountDate" DataType="System.DateTime" 
                            HeaderText="Counted" UniqueName="CycleCountDate" DataFormatString="{0:MM/dd/yy}" >
                            <HeaderStyle Width="65px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="65px" HorizontalAlign="Left" Wrap="false" />
                        </telerik:GridBoundColumn>
        
                        
        
                        <telerik:GridBoundColumn DataField="QtyAvailable" DataType="System.Double" HeaderText="Avail" UniqueName="QtyAvailable" DataFormatString="{0:N0}" ColumnGroupName="QtyGroup">
                            <HeaderStyle Width="50px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="50px" HorizontalAlign="Right" Wrap="false" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyOnHand" DataType="System.Double" HeaderText="OH" UniqueName="QtyOnHand" DataFormatString="{0:N0}" ColumnGroupName="QtyGroup" HeaderTooltip="On Hand">
                            <HeaderStyle Width="50px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="50px" HorizontalAlign="Right" Wrap="false" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyOnOrder" DataType="System.Double" HeaderText="OO" UniqueName="QtyOnOrder" DataFormatString="{0:N0}" ColumnGroupName="QtyGroup" HeaderTooltip="On Order">
                            <HeaderStyle Width="50px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="50px" HorizontalAlign="Right" Wrap="false" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyCommitted" DataType="System.Double" HeaderText="Commit" UniqueName="QtyCommitted" DataFormatString="{0:N0}" ColumnGroupName="QtyGroup" HeaderTooltip="Committed">
                            <HeaderStyle Width="50px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="50px" HorizontalAlign="Right" Wrap="false" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyReceived" DataType="System.Double" HeaderText="Rcvd" UniqueName="QtyReceived" DataFormatString="{0:N0}" ColumnGroupName="QtyGroup" HeaderTooltip="Received">
                            <HeaderStyle Width="50px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="50px" HorizontalAlign="Right" Wrap="false" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyReserved" DataType="System.Double" HeaderText="Rsrvd" UniqueName="QtyReserved" DataFormatString="{0:N0}" ColumnGroupName="QtyGroup" HeaderTooltip="Reserved">
                            <HeaderStyle Width="50px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="50px" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyUnavailable" DataType="System.Double" HeaderText="Unavail" UniqueName="QtyUnavailable" DataFormatString="{0:N0}" ColumnGroupName="QtyGroup" HeaderTooltip="Unavailable">
                            <HeaderStyle Width="50px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="50px" HorizontalAlign="Right" Wrap="false" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyBackOrder" DataType="System.Double" HeaderText="BO" UniqueName="QtyBackOrder" DataFormatString="{0:N0}" ColumnGroupName="QtyGroup" HeaderTooltip="Back Order">
                            <HeaderStyle Width="50px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="50px" HorizontalAlign="Right" Wrap="false" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ReceiptDate" DataType="System.DateTime" 
                            HeaderText="Receipt" UniqueName="ReceiptDate" DataFormatString="{0:MM/dd/yy}" ColumnGroupName="DateGroup" >
                            <HeaderStyle Width="65px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="65px" HorizontalAlign="Left" Wrap="false" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="InvoiceDate" DataType="System.DateTime" 
                            HeaderText="Invoice" UniqueName="InvoiceDate" DataFormatString="{0:MM/dd/yy}" ColumnGroupName="DateGroup" >
                            <HeaderStyle Width="65px" Font-Bold="true" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                            <ItemStyle Width="65px" HorizontalAlign="Left" Wrap="false" />
                        </telerik:GridBoundColumn>
                        
                        
                    </Columns>
                    </MasterTableView>
        
                </telerik:RadGrid>
               <asp:SqlDataSource ID="SqlDS_grdProductCounts" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                        SelectCommand="uspCycleCountProductCounts" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                       <asp:Parameter Name="WhseID" Type="String" DefaultValue="0" />
                       <asp:Parameter Name="Prodid" Type="String" DefaultValue="0"  />
            
                    </SelectParameters>
    
    
                </asp:SqlDataSource>

       
        </div>



            <div style="width:660px; height:220px; float:left;">
           
                <div style="width:100%; float:left; padding:3px; margin: 0px 0px 10px 0px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                    Last 10 Adjustments
                </div>
                <telerik:RadGrid ID="grdLastAdjustments" runat="server" DataSourceID="SqlDS_grdLastAdjustments" AllowSorting="True" Height="180px" Width="640px"
                    AutoGenerateColumns="False" AllowPaging="false" GridLines="None" ShowFooter="false" >
 
      
                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="false" >
                       <Resizing AllowColumnResize="true" />
                       <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="true" />
                       <Selecting AllowRowSelect="True"></Selecting>
                    </ClientSettings>
                        
                    <MasterTableView DataSourceID="SqlDS_grdLastAdjustments"  >
       
    
                       <Columns>
                        <telerik:GridBoundColumn DataField="PostDate" DataType="System.DateTime" 
                            HeaderText="Posted" SortExpression="PostDate" UniqueName="PostDate" DataFormatString="{0:MM/dd/yy}" FilterControlWidth="55px" >
                            <HeaderStyle Width="65px" Font-Bold="true" />
                            <ItemStyle Width="65px" HorizontalAlign="Left" Wrap="false" />
                        </telerik:GridBoundColumn>
        
                               
                        <telerik:GridBoundColumn DataField="Refer" HeaderText="Reference" SortExpression="Refer" UniqueName="Refer" FilterControlWidth="65px">
                            <HeaderStyle Width="300px" Font-Bold="true" />
                            <ItemStyle Width="300px" HorizontalAlign="Left" Wrap="false"  />
                        </telerik:GridBoundColumn>
                        
                        <telerik:GridBoundColumn DataField="QtyAdjusted" DataType="System.Double" HeaderText="Qty Adj" 
                            SortExpression="QtyAdjusted" UniqueName="QtyAdjusted" FilterControlWidth="30px">
                            <HeaderStyle Width="60px" Font-Bold="true" />
                            <ItemStyle Width="60px" HorizontalAlign="Right" Wrap="false" />
                        </telerik:GridBoundColumn>
                        
                        <telerik:GridBoundColumn DataField="Operator" HeaderText="Oper" SortExpression="Operator" UniqueName="Operator" FilterControlWidth="35px">
                            <HeaderStyle Width="60px" Font-Bold="true" />
                            <ItemStyle Width="60px" HorizontalAlign="Left" Wrap="false" />
                        </telerik:GridBoundColumn>
        
                       
        
                        <%--<telerik:GridBoundColumn DataField="Cost_Unit" DataType="System.Double" 
                            HeaderText="Cost/Unit" SortExpression="Cost_Unit" UniqueName="Cost_Unit" DataFormatString="{0:c2}" FilterControlWidth="45px" >
                            <HeaderStyle Width="90px" Font-Bold="true" />
                            <ItemStyle Width="90px" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>--%>
        
                        <%--<telerik:GridBoundColumn DataField="InvAdjust" DataType="System.Double" HeaderText="Inv Adj" ReadOnly="True" 
                            SortExpression="InvAdjust" UniqueName="InvAdjust" DataFormatString="{0:c2}" FilterControlWidth="35px">
                            <HeaderStyle Width="90px" Font-Bold="true" />
                            <ItemStyle Width="90px" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>--%>
        
                        <telerik:GridBoundColumn DataField="JournalNo" DataType="System.Int32" 
                            HeaderText="Journal" SortExpression="JournalNo" UniqueName="JournalNo" FilterControlWidth="45px">
                            <HeaderStyle Width="90px" Font-Bold="true" />
                            <ItemStyle Width="90px" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                    </Columns>
                    </MasterTableView>
        
                </telerik:RadGrid>
               <asp:SqlDataSource ID="SqlDS_grdLastAdjustments" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                        SelectCommand="uspCycleCountAdjustmentsGetByWhseProduct" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                       <asp:Parameter Name="WhseID" Type="String" DefaultValue="0" />
                       <asp:Parameter Name="Prodid" Type="String" DefaultValue="0"  />
            
                    </SelectParameters>
    
    
                </asp:SqlDataSource>

       
        </div>




            <div style="width:660px; height:220px; float:left;">
                <div style="width:100%; float:left; padding:3px; margin: 0px 0px 10px 0px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                        Prior Orders
                </div>
            
         
                <telerik:RadGrid ID="grdLastOrders" runat="server" DataSourceID="SqlDS_grdLastOrders" AllowSorting="True" Height="180px" Width="640px"
                    AutoGenerateColumns="False" AllowPaging="false" GridLines="None" ShowFooter="false" >
 
      
                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="false" >
                       <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="true" />
                       <Selecting AllowRowSelect="True"></Selecting>
                    </ClientSettings>
                        
                    <MasterTableView DataSourceID="SqlDS_grdLastOrders"  >
                       
    
                       <Columns>
                        <telerik:GridBoundColumn DataField="PickedDate" DataType="System.DateTime" 
                            HeaderText="Picked" UniqueName="PickedDate" DataFormatString="{0:MM/dd/yy}" >
                            <HeaderStyle Width="65px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="65px" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
        
                        <telerik:GridBoundColumn DataField="PickedTime" HeaderText="Pick Time" SortExpression="PickedTime" UniqueName="PickedTime" >
                            <HeaderStyle Width="75px" Font-Bold="true" />
                            <ItemStyle Width="7px" HorizontalAlign="Left"  />
                        </telerik:GridBoundColumn>
            
                        <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" SortExpression="OrderNumber" UniqueName="OrderNumber" >
                            <HeaderStyle Width="80px" Font-Bold="true" />
                            <ItemStyle Width="80px" HorizontalAlign="Left"  />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TransType" HeaderText="" SortExpression="TransType" UniqueName="TransType" >
                            <HeaderStyle Width="40px" Font-Bold="true" />
                            <ItemStyle Width="40px" HorizontalAlign="Center"  />
                        </telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="QtyOrd" DataType="System.Double" HeaderText="Qty Ord" DataFormatString="{0:N0}"
                            SortExpression="QtyOrd" UniqueName="QtyOrd" >
                            <HeaderStyle Width="60px" Font-Bold="true" />
                            <ItemStyle Width="60px" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyShip" DataType="System.Double" HeaderText="Qty Ship" DataFormatString="{0:N0}"
                            SortExpression="QtyShip" UniqueName="QtyShip" >
                            <HeaderStyle Width="60px" Font-Bold="true" />
                            <ItemStyle Width="60px" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
                        
                        <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName" >
                            <HeaderStyle Width="225px" Font-Bold="true" />
                            <ItemStyle Width="225px" HorizontalAlign="Left"  />
                        </telerik:GridBoundColumn>
                       
                        
                        
                    </Columns>
                    </MasterTableView>
        
                </telerik:RadGrid>

                <asp:SqlDataSource ID="SqlDS_grdLastOrders" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                 SelectCommand="SELECT Orders_Line_All.WhseID, Orders_Line_All.ProdID, Orders_Header_All.OrderNumber, Orders_Header_All.TransType, Orders_Header_All.PickedDate, 
                                Orders_Header_All.PickedTime, Customers.CustName, Orders_Line_All.QtyOrd, Orders_Line_All.QtyShip, Orders_Line_All.QtyReturn, 
                                Orders_Line_All.Flag_ShipQtyOverride
                                FROM  Orders_Header_All INNER JOIN
                                                Orders_Line_All ON Orders_Header_All.OrderNumber = Orders_Line_All.OrderNumber INNER JOIN
                                                Customers ON Orders_Header_All.CustID = Customers.CustID
                                WHERE Orders_Line_All.WhseID = @WhseID AND Orders_Line_All.ProdID = @Prodid
                                ORDER BY Orders_Header_All.PickedDate DESC, Orders_Header_All.PickedTime DESC" 
                                SelectCommandType="Text">
                    <SelectParameters>
                       <asp:Parameter Name="WhseID" Type="String" DefaultValue="0" />
                       <asp:Parameter Name="Prodid" Type="String" DefaultValue="0"  />
            
                    </SelectParameters>
    
    
                </asp:SqlDataSource>

         </div>


             <div style="width:660px; height:220px; float:left;">
                <div style="width:100%; float:left; padding:3px; margin: 0px 0px 10px 0px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                        Prior PO's
                </div>
            
         
                <telerik:RadGrid ID="grdLastPOs" runat="server" DataSourceID="SqlDS_grdLastPOs" AllowSorting="True" Height="180px" Width="640px"
                    AutoGenerateColumns="False" AllowPaging="false" GridLines="None" ShowFooter="false" >
 
      
                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="false" >
                       <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="true" />
                       <Selecting AllowRowSelect="True"></Selecting>
                    </ClientSettings>
                        
                    <MasterTableView DataSourceID="SqlDS_grdLastPOs"  >
                        
    
                       <Columns>
                        <telerik:GridBoundColumn DataField="ReceiptDate" DataType="System.DateTime" 
                            HeaderText="Receipt" UniqueName="ReceiptDate" DataFormatString="{0:MM/dd/yy}" >
                            <HeaderStyle Width="65px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Center" />
                            <ItemStyle Width="65px" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                        
                                    
                        <telerik:GridBoundColumn DataField="PONumber" HeaderText="PO" SortExpression="PONumber" UniqueName="PONumber" >
                            <HeaderStyle Width="80px" Font-Bold="true" />
                            <ItemStyle Width="80px" HorizontalAlign="Left"  />
                        </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="LineNo" DataType="System.Double" HeaderText="Line" DataFormatString="{0:N0}"
                            SortExpression="LineNo" UniqueName="LineNo" >
                            <HeaderStyle Width="40px" Font-Bold="true" />
                            <ItemStyle Width="40px" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TransType" HeaderText="" SortExpression="TransType" UniqueName="TransType" >
                            <HeaderStyle Width="40px" Font-Bold="true" />
                            <ItemStyle Width="40px" HorizontalAlign="Center"  />
                        </telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="QtyReceived" DataType="System.Double" HeaderText="Qty Rcvd" DataFormatString="{0:N0}"
                            SortExpression="QtyReceived" UniqueName="QtyReceived" >
                            <HeaderStyle Width="60px" Font-Bold="true" />
                            <ItemStyle Width="60px" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QtyOrdered" DataType="System.Double" HeaderText="Qty Ord" DataFormatString="{0:N0}"
                            SortExpression="QtyOrdered" UniqueName="QtyOrdered" >
                            <HeaderStyle Width="60px" Font-Bold="true" />
                            <ItemStyle Width="60px" HorizontalAlign="Right" />
                        </telerik:GridBoundColumn>
                        
                        <telerik:GridBoundColumn DataField="VendID" HeaderText="VendID" SortExpression="VendID" UniqueName="VendID" >
                            <HeaderStyle Width="60px" Font-Bold="true" />
                            <ItemStyle Width="60px" HorizontalAlign="Left"  />
                        </telerik:GridBoundColumn>
                       
                        
                        
                    </Columns>
                    </MasterTableView>
        
                </telerik:RadGrid>

            <asp:SqlDataSource ID="SqlDS_grdLastPOs" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                 SelectCommand="SELECT  PO_Header_All.ReceiptDate, PO_Line_All.PONumber, PO_Line_All.[LineNo], PO_Line_All.TransType, PO_Line_All.QtyReceived, PO_Line_All.QtyOrdered, 
                                    PO_Line_All.StockQtyReceived, PO_Line_All.VendID
                                FROM PO_Line_All INNER JOIN PO_Header_All ON PO_Line_All.PONumber = PO_Header_All.PONumber
					            WHERE PO_Line_All.WhseID = @WhseID AND PO_Line_All.ProdID = @ProdID
                                ORDER BY PO_Header_All.ReceiptDate DESC, PO_Line_All.PONumber" 
                                SelectCommandType="Text">
                    <SelectParameters>
                       <asp:Parameter Name="WhseID" Type="String" DefaultValue="0" />
                       <asp:Parameter Name="Prodid" Type="String" DefaultValue="0"  />
            
                    </SelectParameters>
    
    
                </asp:SqlDataSource>

         </div>

         </div>





     
     </div>
  
  </telerik:RadPageView>  

 


</telerik:RadMultiPage>




</asp:Content>

