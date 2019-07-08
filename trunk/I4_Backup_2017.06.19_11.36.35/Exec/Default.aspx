<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Exec_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

  <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script  type="text/javascript">

            function ShowOrderDetail(sender, args) {
                var OrderNumber = args.getDataKeyValue("OrderNumber");
                var wnd = window.radopen("\OrdersActiveDetail.aspx?OrderNumber=" + OrderNumber, null);

                //Get the clicked row
                var index = args.get_itemIndexHierarchical();
                var item = args.get_tableView().get_dataItems()[index];
                var rowElement = item.get_element();

                //Get coordinates of the row and reposition the window relative to it
                var bounds = $telerik.getBounds(rowElement);
                wnd.moveTo(bounds.x + 120 + index * 10, bounds.y - 400);
            }
        </script>
  </telerik:RadCodeBlock>

<h1>Executive | Home</h1>

<div style="width:1800px; margin:10px;">
    <div style="width:1800px; margin:10px; float:left;">
        <div style="width:100%; margin: 0px 0px 10px 0px;">
            <div style="width:400px; height:25px; padding:9px 0px 0px 6px; font-size:Medium; font-weight:bold; background-color: #4c68a2; color:White;">
                Premium Customers
            </div>
        </div>
        <div style="width:1750px; height:315px;">
           <telerik:RadGrid ID="grdCustomerTop50" runat="server" AllowPaging="false" AllowSorting="True" DataSourceID="SqlDS_grdCustomerTop50" 
                GridLines="None" Width="1100px" Height="300px" CellSpacing="0" >
            
                <GroupingSettings CaseSensitive="false" />

                <ClientSettings AllowColumnsReorder="False" ReorderColumnsOnClient="false" EnablePostBackOnRowClick="False" AllowKeyboardNavigation="false" >
                    <Selecting AllowRowSelect="True" />
                    <%--<KeyboardNavigationSettings AllowSubmitOnEnter="True" AllowActiveRowCycle="true" SaveChangesKey="S" CancelChangesKey="C" EnableKeyboardShortcuts="true" />--%>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                    
                </ClientSettings>

                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdCustomerTop50" PageSize="50" DataKeyNames="CustId" ClientDataKeyNames="CustId"  >

                    <Columns>
                        <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName" >
                            <HeaderStyle VerticalAlign="Bottom" Width="250px" />
                            <ItemStyle VerticalAlign="Top" Width="250px" HorizontalAlign="Left" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" SortExpression="SalesName" UniqueName="SalesName" ReadOnly="True"   >
                            <HeaderStyle VerticalAlign="Bottom" Width="175px" />
                            <ItemStyle VerticalAlign="Top" Width="175px" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="SalesYTD" DataType="System.Decimal" HeaderText="Sales YTD" SortExpression="SalesYTD" UniqueName="SalesYTD" DataFormatString="{0:c0}">
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="OrderBalance" HeaderText="Order Balance" SortExpression="OrderBalance" UniqueName="OrderBalance" DataFormatString="{0:c0}" DataType="System.Decimal" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        
                        <telerik:GridBoundColumn DataField="MarginYTD" DataType="System.Decimal" HeaderText="Margin YTD" SortExpression="MarginYTD" UniqueName="MarginYTD" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TotalBalance1to5" DataType="System.Decimal" HeaderText="Total Balance" SortExpression="TotalBalance1to5" UniqueName="TotalBalance1to5" DataFormatString="{0:c0}">
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                       <%-- <telerik:GridBoundColumn DataField="P4P5Pct" DataType="System.Decimal" HeaderText="91+ %" SortExpression="P4P5Pct" UniqueName="P4P5Pct" 
                             DataFormatString="{0:N1}%" 
                            FilterControlWidth="25px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    
                            <HeaderStyle VerticalAlign="Bottom" Width="65px" />
                            <ItemStyle VerticalAlign="Top" Width="65px" HorizontalAlign="Center" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>--%>
                        
                      
                       <%-- <telerik:GridBoundColumn DataField="ServiceChargeBalance" DataType="System.Decimal" HeaderText="Srv Charge Bal" SortExpression="ServiceChargeBalance" UniqueName="ServiceChargeBalance" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>--%>
                       <%-- <telerik:GridBoundColumn DataField="ServiceChargeYTD" DataType="System.Decimal" HeaderText="Serv Charge YTD" SortExpression="ServiceChargeYTD" UniqueName="ServiceChargeYTD" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="LastSaleDate" DataType="System.DateTime" HeaderText="Last Sale" SortExpression="LastSaleDate" UniqueName="LastSaleDate"  DataFormatString="{0:MM/dd/yy}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="75px" />
                            <ItemStyle VerticalAlign="Top" Width="75px" HorizontalAlign="Center" Font-Size="Small" />
 
                        </telerik:GridBoundColumn>--%>
                        <telerik:GridBoundColumn DataField="LastPayDate" DataType="System.DateTime" HeaderText="Last Pay" SortExpression="LastPayDate" UniqueName="LastPayDate"  DataFormatString="{0:MM/dd/yy}">
                            <HeaderStyle VerticalAlign="Bottom" Width="75px" />
                            <ItemStyle VerticalAlign="Top" Width="75px" HorizontalAlign="Center" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <%--<telerik:GridBoundColumn DataField="LastPaymentamount" DataType="System.Decimal" HeaderText="Last Pay Amt" SortExpression="LastPaymentamount" UniqueName="LastPaymentamount" DataFormatString="{0:c0}">
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="UnappliedCashBalance" DataType="System.Decimal" HeaderText="Unapplied Cash" SortExpression="UnappliedCashBalance" UniqueName="UnappliedCashBalance" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="BorrowBaseIneligible" DataType="System.Decimal" HeaderText="Base Ineligible" SortExpression="BorrowBaseIneligible" UniqueName="BorrowBaseIneligible" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>--%>
                        
                        <%--<telerik:GridBoundColumn DataField="Branch" Display="false" HeaderText="Branch" SortExpression="Branch" UniqueName="Branch" 
                            FilterControlWidth="30px" CurrentFilterFunction="EqualTo" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="130px" />
                            <ItemStyle VerticalAlign="Top" Width="130px" Font-Size="Small" />
 
                        </telerik:GridBoundColumn>--%>
                       
                        <telerik:GridBoundColumn DataField="CustID" Visible="false" HeaderText="CustID" SortExpression="CustID" UniqueName="CustID" ReadOnly="True" >
                
                        </telerik:GridBoundColumn>
                    </Columns>
                   <%-- <PagerStyle Font-Bold="False" Font-Italic="False" Font-Overline="False"  Font-Strikeout="False" Font-Underline="False" Wrap="True" />
                    <HeaderStyle VerticalAlign="Bottom" Font-Bold="False" Font-Italic="False" Font-Overline="False"  Font-Strikeout="False" Font-Underline="False" Wrap="True" />--%>
                </MasterTableView>
       

                <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>

               
            </telerik:RadGrid>

    
            <asp:SqlDataSource ID="SqlDS_grdCustomerTop50" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                SelectCommand="uspCustomerListTop50" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="Job" DefaultValue="Exec" Type="String"  />
                    <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="WhseID1" Type="String" />
                    <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="WhseID2" Type="String" />
                    <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="WhseID3" Type="String" />
                    <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="WhseID4" Type="String" />
                    <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="WhseID5" Type="String" />
                    <asp:CookieParameter CookieName="SalesID1" DefaultValue="0" Name="SalesID1" Type="String" />
                    <asp:CookieParameter CookieName="SalesID2" DefaultValue="0" Name="SalesID2" Type="String" />
                    <asp:CookieParameter CookieName="SalesID3" DefaultValue="0" Name="SalesID3" Type="String" />
                    <asp:CookieParameter CookieName="SalesID4" DefaultValue="0" Name="SalesID4" Type="String" />
                    <asp:CookieParameter CookieName="SalesID5" DefaultValue="0" Name="SalesID5" Type="String" />
                    <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="State1" Type="String" />
                    <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="State2" Type="String" />
                    <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="State3" Type="String" />
                    <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="State4" Type="String" />
                    <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="State5" Type="String" />
                    <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="State6" Type="String" />
                    <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="State7" Type="String" />
                    <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="State8" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    
    <div style="width:1800px; margin:10px; float:left;">
        <div style="width:100%; margin: 0px 0px 10px 0px;">
            <div style="width:400px; height:25px; padding:9px 0px 0px 6px; font-size:Medium; font-weight:bold; background-color: #4c68a2; color:White;">
                90 Day Accounts
            </div>
        </div>
        <div style="width:1750px; height:265px;">
           <telerik:RadGrid ID="grd90Day" runat="server" AllowPaging="false" AllowSorting="True" DataSourceID="SqlDS_grd90Day" 
                GridLines="None" Width="1100px" Height="250px" CellSpacing="0" >
            
                <GroupingSettings CaseSensitive="false" />

                <ClientSettings AllowColumnsReorder="False" ReorderColumnsOnClient="false" EnablePostBackOnRowClick="False" AllowKeyboardNavigation="false" >
                    <Selecting AllowRowSelect="True" />
                    <%--<KeyboardNavigationSettings AllowSubmitOnEnter="True" AllowActiveRowCycle="true" SaveChangesKey="S" CancelChangesKey="C" EnableKeyboardShortcuts="true" />--%>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                    
                </ClientSettings>

                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grd90Day" PageSize="50" DataKeyNames="CustId" ClientDataKeyNames="CustId"  >

                    <Columns>
                        <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName" >
                            <HeaderStyle VerticalAlign="Bottom" Width="250px" />
                            <ItemStyle VerticalAlign="Top" Width="250px" HorizontalAlign="Left" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" SortExpression="SalesName" UniqueName="SalesName" ReadOnly="True"   >
                            <HeaderStyle VerticalAlign="Bottom" Width="175px" />
                            <ItemStyle VerticalAlign="Top" Width="175px" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="LastPayDate" DataType="System.DateTime" HeaderText="Last Pay" SortExpression="LastPayDate" UniqueName="LastPayDate"  DataFormatString="{0:MM/dd/yy}">
                            <HeaderStyle VerticalAlign="Bottom" Width="75px" />
                            <ItemStyle VerticalAlign="Top" Width="75px" HorizontalAlign="Center" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="OrderBalance" HeaderText="Order Balance" SortExpression="OrderBalance" UniqueName="OrderBalance" DataFormatString="{0:c0}" DataType="System.Decimal" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TotalBalance1to3" DataType="System.Decimal" HeaderText="0 - 90" SortExpression="TotalBalance1to3" UniqueName="TotalBalance1to3" DataFormatString="{0:c0}">
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="TotalBalance4to5" DataType="System.Decimal" HeaderText="91+" SortExpression="TotalBalance4to5" UniqueName="TotalBalance4to5" DataFormatString="{0:c0}">
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="P4P5Pct" DataType="System.Decimal" HeaderText="91+ %" SortExpression="P4P5Pct" UniqueName="P4P5Pct" DataFormatString="{0:N1}%" >
                    
                            <HeaderStyle VerticalAlign="Bottom" Width="65px" />
                            <ItemStyle VerticalAlign="Top" Width="65px" HorizontalAlign="Center" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="ServiceChargeBalance" DataType="System.Decimal" HeaderText="Srv Charge Bal" SortExpression="ServiceChargeBalance" UniqueName="ServiceChargeBalance" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>

                        <%--<telerik:GridBoundColumn DataField="SalesYTD" DataType="System.Decimal" HeaderText="Sales YTD" SortExpression="SalesYTD" UniqueName="SalesYTD" DataFormatString="{0:c0}">
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>--%>
                        
                        
                        <%--<telerik:GridBoundColumn DataField="MarginYTD" DataType="System.Decimal" HeaderText="Margin YTD" SortExpression="MarginYTD" UniqueName="MarginYTD" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>--%>
                        
                       
                        
                      
                       
                       <%-- <telerik:GridBoundColumn DataField="ServiceChargeYTD" DataType="System.Decimal" HeaderText="Serv Charge YTD" SortExpression="ServiceChargeYTD" UniqueName="ServiceChargeYTD" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="LastSaleDate" DataType="System.DateTime" HeaderText="Last Sale" SortExpression="LastSaleDate" UniqueName="LastSaleDate"  DataFormatString="{0:MM/dd/yy}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="75px" />
                            <ItemStyle VerticalAlign="Top" Width="75px" HorizontalAlign="Center" Font-Size="Small" />
 
                        </telerik:GridBoundColumn>--%>
                        
                        <%--<telerik:GridBoundColumn DataField="LastPaymentamount" DataType="System.Decimal" HeaderText="Last Pay Amt" SortExpression="LastPaymentamount" UniqueName="LastPaymentamount" DataFormatString="{0:c0}">
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="UnappliedCashBalance" DataType="System.Decimal" HeaderText="Unapplied Cash" SortExpression="UnappliedCashBalance" UniqueName="UnappliedCashBalance" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                        </telerik:GridBoundColumn>--%>
                        <%--<telerik:GridBoundColumn DataField="BorrowBaseIneligible" DataType="System.Decimal" HeaderText="Base Ineligible" SortExpression="BorrowBaseIneligible" UniqueName="BorrowBaseIneligible" DataFormatString="{0:c0}" >
                            <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                            <ItemStyle VerticalAlign="Top" Width="80px" HorizontalAlign="Right" Font-Size="Small" />
                
                        </telerik:GridBoundColumn>--%>
                        
                        <%--<telerik:GridBoundColumn DataField="Branch" Display="false" HeaderText="Branch" SortExpression="Branch" UniqueName="Branch" 
                            FilterControlWidth="30px" CurrentFilterFunction="EqualTo" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                            <HeaderStyle VerticalAlign="Bottom" Width="130px" />
                            <ItemStyle VerticalAlign="Top" Width="130px" Font-Size="Small" />
 
                        </telerik:GridBoundColumn>--%>
                       
                        <telerik:GridBoundColumn DataField="CustID" Visible="false" HeaderText="CustID" SortExpression="CustID" UniqueName="CustID" ReadOnly="True" >
                
                        </telerik:GridBoundColumn>
                    </Columns>
                   <%-- <PagerStyle Font-Bold="False" Font-Italic="False" Font-Overline="False"  Font-Strikeout="False" Font-Underline="False" Wrap="True" />
                    <HeaderStyle VerticalAlign="Bottom" Font-Bold="False" Font-Italic="False" Font-Overline="False"  Font-Strikeout="False" Font-Underline="False" Wrap="True" />--%>
                </MasterTableView>
       

                <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>

               
            </telerik:RadGrid>

    
            <asp:SqlDataSource ID="SqlDS_grd90Day" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                SelectCommand="uspCustomerList90Day" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="Job" DefaultValue="Exec" Type="String"  />
                    <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="WhseID1" Type="String" />
                    <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="WhseID2" Type="String" />
                    <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="WhseID3" Type="String" />
                    <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="WhseID4" Type="String" />
                    <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="WhseID5" Type="String" />
                    <asp:CookieParameter CookieName="SalesID1" DefaultValue="0" Name="SalesID1" Type="String" />
                    <asp:CookieParameter CookieName="SalesID2" DefaultValue="0" Name="SalesID2" Type="String" />
                    <asp:CookieParameter CookieName="SalesID3" DefaultValue="0" Name="SalesID3" Type="String" />
                    <asp:CookieParameter CookieName="SalesID4" DefaultValue="0" Name="SalesID4" Type="String" />
                    <asp:CookieParameter CookieName="SalesID5" DefaultValue="0" Name="SalesID5" Type="String" />
                    <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="State1" Type="String" />
                    <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="State2" Type="String" />
                    <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="State3" Type="String" />
                    <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="State4" Type="String" />
                    <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="State5" Type="String" />
                    <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="State6" Type="String" />
                    <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="State7" Type="String" />
                    <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="State8" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <div style="width:1800px; margin:10px; float:left;">
        <div style="width:100%; margin: 0px 0px 10px 0px;">
            <div style="width:400px; height:25px; padding:9px 0px 0px 6px; font-size:Medium; font-weight:bold; background-color: #4c68a2; color:White;">
                New High Value Orders
            </div>
        </div>
        <div style="width:100%;">
            <telerik:RadGrid ID="grdOrderHeaders" Width="1100px" runat="server" Height="300px"  AllowPaging="True" PageSize="15" AllowSorting="True" CellSpacing="0" 
                DataSourceID="SqlDS_grdOrderHeaders" DataKeyNames="OrderNumber" GridLines="None"  >
                    
                <ClientSettings AllowColumnsReorder="true" ReorderColumnsOnClient="True" Selecting-AllowRowSelect="true" EnableRowHoverStyle="true">
                            <ClientEvents OnRowSelected="ShowOrderDetail" />
                            <Scrolling AllowScroll="true" UseStaticHeaders="true" />
                            <Resizing AllowColumnResize="true" AllowRowResize="True" />
                </ClientSettings>


                    <MasterTableView AutoGenerateColumns="False" ClientDataKeyNames="OrderNumber" DataKeyNames="OrderNumber" DataSourceID="SqlDS_grdOrderHeaders" >
                        <Columns>
                                 
                            <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate">
                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="100px" />
                                <ItemStyle HorizontalAlign="Right" Width="100px" VerticalAlign="Top" />
                            </telerik:GridBoundColumn> 
                            <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" ReadOnly="True" SortExpression="CustName" UniqueName="CustName">
                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="200px" />
                                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="OrderMaterialValue" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Material Value" SortExpression="OrderMaterialValue" 
                                UniqueName="OrderMaterialValue">
                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="90px" />
                                <ItemStyle HorizontalAlign="Right" Width="90px" VerticalAlign="Top" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Margin" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Margin" SortExpression="Margin" UniqueName="Margin">
                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="70px" />
                                <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" DataFormatString="{0:P1}" HeaderText="Mgn %" ReadOnly="True" SortExpression="MarginPct" UniqueName="MarginPct">
                                <HeaderStyle Width="60px" VerticalAlign="Bottom" />
                                <ItemStyle Width="60px" HorizontalAlign="Right" VerticalAlign="Top" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" ReadOnly="True" SortExpression="OrderNumber" UniqueName="OrderNumber">
                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="80px" />
                                <ItemStyle HorizontalAlign="Left" Width="80px" VerticalAlign="Top" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="60px" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="60px"  />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" ReadOnly="True" SortExpression="SalesName" UniqueName="SalesName">
                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="200px" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="200px"  />
                            </telerik:GridBoundColumn>    
                        </Columns>
                         
                        <PagerStyle PageSizeControlType="RadComboBox" />
                    </MasterTableView>
                     
            </telerik:RadGrid> 
                 
                <asp:SqlDataSource ID="SqlDS_grdOrderHeaders" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspOrdersHeaderActiveGetAll" SelectCommandType="StoredProcedure">
                    <SelectParameters>       
                        <asp:Parameter DefaultValue="%" Name="CustName" />
                        <asp:Parameter DefaultValue="%" Name="JobName"  />
                        <asp:Parameter DefaultValue="%" Name="SalesName"  />
                        <asp:Parameter DefaultValue="%" Name="ShipToID"  />
                        <asp:Parameter DefaultValue="%" Name="TransType"  />
                        <asp:Parameter DefaultValue="%" Name="Stage" />
                        <asp:Parameter DefaultValue="1000" Name="TotalOrderAmountMinimum" />
                    </SelectParameters>
                </asp:SqlDataSource>
        </div>
    </div>
</div>


    <telerik:RadWindowManager ID="Singleton" Skin="MetroTouch" Width="1250" Height="550"
                        VisibleStatusbar="false" Behaviors="Close,Move" runat="server">
            <Windows>
                    
                    <telerik:RadWindow ID="NewDialog" runat="server" Title="Add Comment" Height="350px"
                        Width="1000px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
            </Windows> 
              
                    
    </telerik:RadWindowManager> 
    
</asp:Content>

