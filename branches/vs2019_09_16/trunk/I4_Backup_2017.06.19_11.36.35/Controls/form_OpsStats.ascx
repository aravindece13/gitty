<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_OpsStats.ascx.vb" Inherits="Controls_form_OpsStats" %>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCCTrans" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="comboBoxCCTransDays">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCCTrans" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdCCTrans">
                <UpdatedControls>
                    <%--<telerik:AjaxUpdatedControl ControlID="grdCCTrans" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                    <telerik:AjaxUpdatedControl ControlID="grdCCHistory" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlCCNotes"  />
                    <telerik:AjaxUpdatedControl ControlID="lblWhseProduct"  />

                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadTabStripCC">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCCHistory" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrCCWhseID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCCSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdLastPOs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdLastOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdActiveOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fltrCCProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCCSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdLastPOs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdLastOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdActiveOrders" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="grdNewProducts">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdNewProducts" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdNewWhseProducts">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdNewWhseProducts" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>

</telerik:RadAjaxManagerProxy>


<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<asp:SqlDataSource ID="SqlDS_CycleCountTrans" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
    SelectCommand="uspCycleCountAdjustmentsGetAllBranches" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:ControlParameter Name="Days" ControlID="comboBoxCCTransDays" DefaultValue="4" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDS_CCHistory" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
    SelectCommand="uspCycleCountActivityGetByWhseProduct" SelectCommandType="StoredProcedure" >
    <SelectParameters>
        <asp:ControlParameter Name="WhseID" ControlID="grdCCTrans"  PropertyName="SelectedValues['WhseID']" Type="String" />
        <asp:ControlParameter Name="ProdID" ControlID="grdCCTrans"  PropertyName="SelectedValues['ProdID']" Type="String" />
        <%--<asp:Parameter Name="WhseID" DefaultValue="1" />
        <asp:Parameter Name="ProdID" DefaultValue="18L0845" />--%>
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDS_grdCCSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
    SelectCommand="uspCycleCountActivityGetByWhseProduct" SelectCommandType="StoredProcedure" >
    <SelectParameters>
        <%--<asp:ControlParameter Name="WhseID" ControlID="fltrCCWhseID"  PropertyName="SelectedValue['branchno']" Type="String" />
        <asp:ControlParameter Name="ProdID" ControlID="fltrCCProdID"  PropertyName="SelectedValue['ProdID']" Type="String" DefaultValue="9999" />--%>
        <asp:Parameter Name="WhseID" />
        <asp:Parameter Name="ProdID" />
    </SelectParameters>
</asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDS_NewProducts" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
    SelectCommand="uspOps_NewProductsGet" SelectCommandType="StoredProcedure">
</asp:SqlDataSource>


<asp:SqlDataSource ID="SqlDS_NewWhseProducts" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
    SelectCommand="uspOps_NewWarehouseProductsGet" SelectCommandType="StoredProcedure">
</asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDS_ArizonaWarehouseProductSetups" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
    SelectCommand="uspOps_ArizonaPWTaxSetupGet" SelectCommandType="StoredProcedure">
</asp:SqlDataSource>



 <div id="divBody" style="width:1900px; Margin: 10px;">

    <div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:100%;">
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Width="1000px" Skin="MetroTouch">
            <Tabs>
                <telerik:RadTab runat="server" PageViewID="CCTrans" Text="Cycle Count Transactions" Selected="true">
                    <Tabs>
                         <telerik:RadTab runat="server" PageViewID="CCTrans" Text="Recent Counts" Selected="true"></telerik:RadTab>
                         <telerik:RadTab runat="server" PageViewID="CCSearch" Text="Search Counts"></telerik:RadTab>
                    </Tabs>
                </telerik:RadTab>
                <telerik:RadTab runat="server" PageViewID="NewProducts" Text="New Products"></telerik:RadTab>
                <telerik:RadTab runat="server" PageViewID="NewWhseProducts" Text="New Whse Products"></telerik:RadTab>
                <telerik:RadTab runat="server" PageViewID="NewAZTaxReview" Text="New Arizona Products Tax"></telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>


        <div style="padding:10px 0px 0px 5px;">  
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="100%">
                
    
            <telerik:RadPageView ID="CCTrans" runat="server" Selected="true" Width="100%">
    
                <div id="divCCTrans" style="padding:10px 0px 10px 0px;float:left; height:600px;width:100%; ">
        
                        <%--<h3 style="width:800px;">Cycle Count Transactions</h3>--%>
       
                        <div style="height:20px;width:1600px; padding: 10px 0px 15px 0px; ">
                            <telerik:RadComboBox runat="server" ID="comboBoxCCTransDays" Width="80px" Label="How many days back?: " AutoPostBack="true" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="1" Value="2"  />
                                    <telerik:RadComboBoxItem runat="server" Text="3" Value="4" Selected="true" />
                                    <telerik:RadComboBoxItem runat="server" Text="14" Value="15"  />
                                    <telerik:RadComboBoxItem runat="server" Text="30" Value="31" />
                                    <telerik:RadComboBoxItem runat="server" Text="60" Value="61" />
                                </Items>
                            </telerik:RadComboBox>
                        </div>
                        <div style="width:1600px;height:575px;float:">
                            <div style="width:800px;Height:575px;float:left;padding:0px 0px 0px 0px;">
                                 <telerik:RadGrid ID="grdCCTrans" runat="server" AutoGenerateColumns="false" AllowMultiRowSelection="false"
                                    AllowPaging="True" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_CycleCountTrans"       
                                    GridLines="None" PageSize="25" Width="800px" Height="575px"  >
                    
                                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                        <Selecting AllowRowSelect="true" />
                                    </ClientSettings>
                    
                                    <MasterTableView DataSourceID="SqlDS_CycleCountTrans" DataKeyNames="WhseID,ProdID,comboname" Width="900px"  >
                    
                                        <RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
                                            <HeaderStyle Width="20px"></HeaderStyle>
                                        </RowIndicatorColumn>
                                        <ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column" Visible="True"></ExpandCollapseColumn>
                    
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="comboname" Display="true" HeaderText="Branch" SortExpression="comboname" UniqueName="comboname"><HeaderStyle Width="90px" />
                                                <HeaderStyle Width="120px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="120px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="False" DataType="System.String">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="PostDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Posted" SortExpression="PostDate" UniqueName="PostDate">
                                                <HeaderStyle Width="60px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="60px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID" DataType="System.String">
                                                <HeaderStyle Width="150px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="150px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="QtyAdjusted" DataFormatString="{0:n0}" DataType="System.Double" HeaderText="Qty Adjust" SortExpression="QtyAdjusted" UniqueName="QtyAdjusted">
                                                <HeaderStyle Width="40px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="40px" HorizontalAlign="Right" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="Refer" HeaderText="Reference" SortExpression="Refer" UniqueName="Refer">
                                                <HeaderStyle Width="150px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="150px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="NetAdjustment" DataFormatString="{0:c2}" DataType="System.Double" HeaderText="Net Adjust" ReadOnly="True" SortExpression="NetAdjustment" 
                                                UniqueName="NetAdjustment">
                                                <HeaderStyle Width="60px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="60px" HorizontalAlign="Right" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="Cost_Unit" DataFormatString="{0:c2}" DataType="System.Double" HeaderText="Cost / Unit" SortExpression="Cost_Unit" UniqueName="Cost_Unit">
                                                <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="50px" HorizontalAlign="Right" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="JournalNo" DataType="System.Int32" HeaderText="JournalNo" SortExpression="JournalNo" UniqueName="JournalNo">
                                                <HeaderStyle Width="70px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="70px" HorizontalAlign="Center" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="Operator" HeaderText="Oper" SortExpression="Operator" UniqueName="Operator">
                                                <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="50px" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                        </Columns>
                                  </MasterTableView>
                                </telerik:RadGrid>
             
                            </div>
             
                             <div style="width:750px;Height:575px;float:left;padding:0px 0px 0px 20px; ">
                
                                    <h4 style="width:700px;">Related Information </h4>                   
                    
                                    <h5 style="width:700px;"><asp:Label ID="lblWhseProduct" runat="server"></asp:Label></h5>

                                    <h6 style="width:700px;">Last 10 Counts</h6>
                               <telerik:RadGrid ID="grdCCHistory" runat="server" Width="700px" CellSpacing="0" DataSourceID="SqlDS_CCHistory" GridLines="None">
                    
                                    <MasterTableView autogeneratecolumns="False" datasourceid="SqlDS_CCHistory">
                                        <CommandItemSettings ExportToPdfText="Export to PDF" />
                    
                                        <RowIndicatorColumn Visible="True">
                                            <HeaderStyle Width="20px" />
                                        </RowIndicatorColumn>
                    
                                        <ExpandCollapseColumn Visible="True">
                                            <HeaderStyle Width="20px" />
                                        </ExpandCollapseColumn>
                    
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="false"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="Prodid" HeaderText="Prodid" SortExpression="Prodid" UniqueName="Prodid" Visible="false"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="CycleCountDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Count" 
                                                SortExpression="CycleCountDate" UniqueName="CycleCountDate">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="LastReceiptDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Last Rcpt" SortExpression="LastReceiptDate" 
                                                UniqueName="LastReceiptDate">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="LastInvoiceDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Last Inv" SortExpression="LastInvoiceDate" 
                                                UniqueName="LastInvoiceDate">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="QtyAdjusted" DataType="System.Double" HeaderText="Adjust" ReadOnly="True" SortExpression="QtyAdjusted" UniqueName="QtyAdjusted">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="QtyOnHand" DataType="System.Double" HeaderText="On Hand" SortExpression="QtyOnHand" UniqueName="QtyOnHand">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="QtyOnOrder" DataType="System.Double" HeaderText="On Order" SortExpression="QtyOnOrder" UniqueName="QtyOnOrder">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="QtyBackOrder" DataType="System.Double" HeaderText="BO" SortExpression="QtyBackOrder" UniqueName="QtyBackOrder">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="QtyCommitted" DataType="System.Double" HeaderText="Commit" SortExpression="QtyCommitted" UniqueName="QtyCommitted">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="QtyReserved" DataType="System.Double" HeaderText="Rsrvd" SortExpression="QtyReserved" UniqueName="QtyReserved">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="QtyUnavailable" DataType="System.Double" HeaderText="Unavail" SortExpression="QtyUnavailable" UniqueName="QtyUnavailable">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="QtyReceived" DataType="System.Double" Display="False" HeaderText="Rcvd" SortExpression="QtyReceived" UniqueName="QtyReceived">
                                                <HeaderStyle VerticalAlign="Bottom" />
                                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                                            </telerik:GridBoundColumn>
                                       </Columns>

                                    </MasterTableView>
                               </telerik:RadGrid>
                                    <telerik:RadAjaxPanel ID="pnlCCNotes" runat="server" Height="100px" Width="575px">
                                        <p style="width:500px;"><sup>1</sup>Inventory adjustments <em>must</em> be completed on the same date as when the cycle count occurred.</p>
                                        <p style="width:500px;"><sup>2</sup>The 'Adjust' quantity displayed may not be correct if the inventory adjustments are not made on the same date as the cycle count.  </p>
                                        <p style="width:500px;"><sup>3</sup>The quantities to the right of 'Adjust' are all snapshots of warehouse product characteristics at the time of the cycle count. </p>
                                    </telerik:RadAjaxPanel> 
                             </div>
                        </div>
                </div>
            </telerik:RadPageView>
            <telerik:RadPageView ID="CCSearch" runat="server"  Width="1900px">
                <%--<h3 style="width:800px;">Cycle Count Search</h3>--%>
                <div style="margin:10px;float:left; width:100%; ">
                    <div style="width:70px; float:left; ">      
                        <asp:Label runat="server" Text="Branch: " Width="100px" CssClass="myLabelCssMedium"></asp:Label>
                    </div>
                    <div style="width:250px; float:left; ">    
                                      
                        <telerik:RadComboBox ID="fltrCCWhseID" Width="200px"  Runat="server" AutoPostBack="true" Font-Size="Medium" 
                                DataSourceID="SqlDS_Branch" DataTextField="comboname" DataValueField="branchno" AppendDataBoundItems="true"  >
                        
                            <Items>
                                <telerik:RadComboBoxItem Text="Select Warehouse" Value = "0" runat="server" /> 
                            </Items>
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_Branch" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspGetBranchesActiveOnlyLessCorporate" SelectCommandType="StoredProcedure">
        
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:70px; float:left; ">      
                        <asp:Label runat="server" Text="ProdID: " Width="100px" CssClass="myLabelCssMedium"></asp:Label>
                    </div>
                    <div style="width:550px; float:left; ">
                        <telerik:RadComboBox ID="fltrCCProdID" runat="server" Width="500px" LabelCssClass="myLabelCssMedium" Font-Size="Medium"
                            DataSourceID="SqlDS_fltrCCProdID" DataTextField="Description2" DataValueField="ProdID"                                         
                            Filter="StartsWith" EnableAutomaticLoadOnDemand="true" EmptyMessage="Type part of the ProdID to filter" AutoPostBack="true"  >
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_fltrCCProdID" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                           SelectCommand="uspProductSearchByProdID" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="WhseID" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
         <div style="margin:10px;float:left; width:100%; ">
                     <div style="width:100%;">
                         <div style="width:1000px; float:left; padding:3px; margin: 0px 0px 10px 0px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                            Cycle Counts
                         </div>   
                            
                     </div>
                     <div style="width:1050px; float:left;">
                            <telerik:RadGrid ID="grdCCSearch" runat="server" Width="1000px" Height="600px" AllowSorting="true" CellSpacing="0" 
                                DataSourceID="SqlDS_grdCCSearch" GridLines="None">
                                
                                <%--<ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                        <Selecting AllowRowSelect="true" />
                                </ClientSettings>--%>

                                <MasterTableView autogeneratecolumns="False" datasourceid="SqlDS_grdCCSearch" >
                                    <ColumnGroups>
                                        <telerik:GridColumnGroup HeaderText="Quantities At Time of Count" Name="QtyGroup" HeaderStyle-HorizontalAlign="Center" />
                                        <telerik:GridColumnGroup HeaderText="Last" Name="DateGroup" HeaderStyle-HorizontalAlign="Center" />
                                    </ColumnGroups>

                                                        
                                    <RowIndicatorColumn Visible="True">
                                        <HeaderStyle Width="20px" />
                                    </RowIndicatorColumn>
                    
                                    <ExpandCollapseColumn Visible="True">
                                        <HeaderStyle Width="20px" />
                                    </ExpandCollapseColumn>
                    
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="true">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Center" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Prodid" HeaderText="Prodid" SortExpression="Prodid" UniqueName="Prodid" Visible="true">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="CycleCountDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Count" 
                                            SortExpression="CycleCountDate" UniqueName="CycleCountDate">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="LastReceiptDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Receipt" SortExpression="LastReceiptDate" 
                                            UniqueName="LastReceiptDate" ColumnGroupName="DateGroup">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="LastInvoiceDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Invoice" SortExpression="LastInvoiceDate" 
                                            UniqueName="LastInvoiceDate" ColumnGroupName="DateGroup">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Refer" HeaderText="Reference" SortExpression="Refer" UniqueName="Refer">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                       
                                        <telerik:GridBoundColumn DataField="QtyAdjusted" DataType="System.Double" HeaderText="Adjust" ReadOnly="True" SortExpression="QtyAdjusted" UniqueName="QtyAdjusted">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="QtyOnHand" DataType="System.Double" HeaderText="On Hand" SortExpression="QtyOnHand" UniqueName="QtyOnHand" ColumnGroupName="QtyGroup">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="QtyOnOrder" DataType="System.Double" HeaderText="On Order" SortExpression="QtyOnOrder" UniqueName="QtyOnOrder" ColumnGroupName="QtyGroup">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="QtyBackOrder" DataType="System.Double" HeaderText="BO" SortExpression="QtyBackOrder" UniqueName="QtyBackOrder" ColumnGroupName="QtyGroup">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="QtyCommitted" DataType="System.Double" HeaderText="Commit" SortExpression="QtyCommitted" UniqueName="QtyCommitted" ColumnGroupName="QtyGroup">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="QtyReserved" DataType="System.Double" HeaderText="Rsrvd" SortExpression="QtyReserved" UniqueName="QtyReserved" ColumnGroupName="QtyGroup">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="QtyUnavailable" DataType="System.Double" HeaderText="Unavail" SortExpression="QtyUnavailable" UniqueName="QtyUnavailable" ColumnGroupName="QtyGroup">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="QtyReceived" DataType="System.Double" Display="False" HeaderText="Rcvd" SortExpression="QtyReceived" UniqueName="QtyReceived" ColumnGroupName="QtyGroup">
                                            <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" />
                                        </telerik:GridBoundColumn>
                            
                                    </Columns>

                                </MasterTableView>
                            </telerik:RadGrid>
                     </div>
                <div style="width:650px; float:left;">
                    <div style="width:650px; height:200px; float:left;">
                        <div style="width:640px; float:left; padding:3px; margin: 0px 0px 10px 0px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                            Active Orders
                        </div>

                            <telerik:RadGrid ID="grdActiveOrders" runat="server" DataSourceID="SqlDS_grdActiveOrders" AllowSorting="True" Height="150px" Width="640px"
                                AutoGenerateColumns="False" AllowPaging="True" GridLines="None" ShowFooter="false" PageSize="20" >
 
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="false" >
                                   <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="true" />
                                   <Selecting AllowRowSelect="True" />
                                </ClientSettings>
                        
                                <MasterTableView DataSourceID="SqlDS_grdActiveOrders"  >
                       
    
                                  <Columns>
                                    <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" SortExpression="OrderNumber" UniqueName="OrderNumber" >
                                        <HeaderStyle Width="80px" Font-Bold="true" />
                                        <ItemStyle Width="80px" HorizontalAlign="Left"  />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Stage" HeaderText="Stage" SortExpression="Stage" UniqueName="Stage" >
                                        <HeaderStyle Width="80px" Font-Bold="true" />
                                        <ItemStyle Width="80px" HorizontalAlign="Left"  />
                                    </telerik:GridBoundColumn>
                                    
                                    
                                    <telerik:GridBoundColumn DataField="PickedDate" DataType="System.DateTime" 
                                        HeaderText="Picked" UniqueName="PickedDate" DataFormatString="{0:MM/dd/yy}" >
                                        <HeaderStyle Width="50px" Font-Bold="true"  VerticalAlign="Bottom" HorizontalAlign="Left" />
                                        <ItemStyle Width="50px" HorizontalAlign="Left" />
                                    </telerik:GridBoundColumn>
        
                                    <telerik:GridBoundColumn DataField="PickedTime" HeaderText="Time" SortExpression="PickedTime" UniqueName="PickedTime" >
                                        <HeaderStyle Width="50px" Font-Bold="true" />
                                        <ItemStyle Width="50px" HorizontalAlign="Left"  />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="PickInitials" HeaderText="" SortExpression="PickInitials" UniqueName="PickedInitials" >
                                        <HeaderStyle Width="50px" Font-Bold="true" />
                                        <ItemStyle Width="50px" HorizontalAlign="Left"  />
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
                                    <telerik:GridBoundColumn DataField="StkQtyShip" DataType="System.Double" HeaderText="Qty Ship" DataFormatString="{0:N0}"
                                        SortExpression="StkQtyShip" UniqueName="StkQtyShip" >
                                        <HeaderStyle Width="60px" Font-Bold="true" />
                                        <ItemStyle Width="60px" HorizontalAlign="Right" />
                                    </telerik:GridBoundColumn>
                        
                                    <%--<telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName" >
                                        <HeaderStyle Width="225px" Font-Bold="true" />
                                        <ItemStyle Width="225px" HorizontalAlign="Left"  />
                                    </telerik:GridBoundColumn>--%>

                                  </Columns>
                                </MasterTableView>
        
                            </telerik:RadGrid>

                            <asp:SqlDataSource ID="SqlDS_grdActiveOrders" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspOrdersLinesActiveGetByProdIDWhseID" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                   <asp:Parameter Name="WhseID" Type="String" />
                                   <asp:Parameter Name="Prodid" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>



                    </div>
                    <div style="width:650px; height:200px; float:left;">
                        <div style="width:640px; float:left; padding:3px; margin: 0px 0px 10px 0px; height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                                Prior Orders
                        </div>
            
         
                        <telerik:RadGrid ID="grdLastOrders" runat="server" DataSourceID="SqlDS_grdLastOrders" AllowSorting="True" Height="150px" Width="640px"
                            AutoGenerateColumns="False" AllowPaging="True" GridLines="None" ShowFooter="false" PageSize="20" >
 
      
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="false" >
                               <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="true" />
                               <Selecting AllowRowSelect="True" />
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
                             SelectCommand="SELECT TOP(100) Orders_Line_All.WhseID, Orders_Line_All.ProdID, Orders_Header_All.OrderNumber, Orders_Header_All.TransType, Orders_Header_All.PickedDate, 
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
                    <div style="width:660px; height:200px; float:left;">
                        <div style="width:640px; float:left; padding:3px;height:20px; background-color: #4c68a2; color:White; font-size:Medium; font-weight:bold; vertical-align:middle; ">
                                Prior PO's
                        </div>

                                <telerik:RadGrid ID="grdLastPOs" runat="server" DataSourceID="SqlDS_grdLastPOs" AllowSorting="True" Height="150px" Width="640px"
                                            AutoGenerateColumns="False" AllowPaging="True" GridLines="None" ShowFooter="false" PageSize="20" >
 
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
                                         SelectCommand="SELECT TOP(100)  PO_Header_All.ReceiptDate, PO_Line_All.PONumber, PO_Line_All.[LineNo], PO_Line_All.TransType, PO_Line_All.QtyReceived, PO_Line_All.QtyOrdered, 
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
            <telerik:RadPageView ID="NewProducts" runat="server">
                <div id="divNewProducts" style="padding:10px 0px 10px 0px;float:left; height:600px;width:100%; ">
            
          
                        <h3 style="width:800px;">New Products (ICSP)</h3>
 
        
                      <telerik:RadGrid ID="grdNewProducts" runat="server" AllowPaging="True" AllowSorting="True" CellSpacing="0" 
                            DataSourceID="SqlDS_NewProducts" GridLines="None" Width="1400px" Height="575px">
                    
                            <ClientSettings>
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                            </ClientSettings>
                    
                            <MasterTableView AllowCustomPaging="True" AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDS_NewProducts" 
                                 PageSize="25" Width="1150px">

                                <Columns>
                                    <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:d}" 
                                        DataType="System.DateTime" HeaderText="Enter" SortExpression="EnterDate" UniqueName="EnterDate">
                                        <HeaderStyle VerticalAlign="Bottom" Width="60px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Right" Width="60px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Prodcat" HeaderText="Cat" SortExpression="Prodcat" UniqueName="Prodcat">
                                        <HeaderStyle VerticalAlign="Bottom" Width="30px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="30px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                        <HeaderStyle VerticalAlign="Bottom" Width="100px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="100px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                        <HeaderStyle VerticalAlign="Bottom" Width="250px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="250px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="UnitStock" HeaderText="Stock" SortExpression="UnitStock" UniqueName="UnitStock">
                                        <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="50px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Length" DataType="System.Decimal" HeaderText="Length" SortExpression="Length" UniqueName="Length">
                                        <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Right" Width="50px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="KitType" HeaderText="Kit Type" SortExpression="KitType" UniqueName="KitType">
                                        <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="50px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="KitRollType" HeaderText="Kit RollType" SortExpression="KitRollType" UniqueName="KitRollType">
                                        <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="50px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="PriceOnType" HeaderText="PriceOn Type" SortExpression="PriceOnType" UniqueName="PriceOnType">
                                        <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="50px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="OperInit" HeaderText="OperInit" SortExpression="OperInit" UniqueName="OperInit">
                                        <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="50px" />
                                    </telerik:GridBoundColumn>
                                </Columns>
                        
                            </MasterTableView>
                    
                        </telerik:RadGrid>
                 </div>
        
            </telerik:RadPageView>
    
            <telerik:RadPageView ID="NewWhseProducts" runat="server">
                <div id="divNewWhseProducts" style="padding:10px 0px 10px 0px;float:left; height:600px;width:100%; ">


                    <telerik:RadGrid ID="grdNewWhseProducts" runat="server" AllowPaging="True" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_NewWhseProducts" 
                            Width="1400px" Height="575px" GridLines="None">
                            <ClientSettings>
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                            </ClientSettings>
                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_NewWhseProducts" PageSize="25" Width="1500px" >
                                <CommandItemSettings ExportToPdfText="Export to PDF" />
                        
                                <Columns>
                                    <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:d}" 
                                        DataType="System.DateTime" HeaderText="Enter" SortExpression="EnterDate" UniqueName="EnterDate">
                                        <HeaderStyle VerticalAlign="Bottom" Width="40px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Right" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="BranchName" HeaderText="Branch" SortExpression="BranchName" UniqueName="BranchName">
                                        <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="80px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="StateFull" Display="False" HeaderText="StateFull" SortExpression="StateFull" UniqueName="StateFull" Visible="False">
                                        <HeaderStyle VerticalAlign="Bottom" Width="100px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="100px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="state" Display="False" HeaderText="state" SortExpression="state" UniqueName="state" Visible="False">
                                        <HeaderStyle VerticalAlign="Bottom" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="False">
                                        <HeaderStyle VerticalAlign="Bottom" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Prodcat" HeaderText="Prodcat" SortExpression="Prodcat" UniqueName="Prodcat">
                                        <HeaderStyle VerticalAlign="Bottom" Width="40px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                        <HeaderStyle VerticalAlign="Bottom" Width="75px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="75px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                        <HeaderStyle VerticalAlign="Bottom" Width="200px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="200px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="TaxType" HeaderText="TaxType" SortExpression="TaxType" UniqueName="TaxType">
                                        <HeaderStyle VerticalAlign="Bottom" Width="40px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="TaxableType" HeaderText="Taxable Type" SortExpression="TaxableType" UniqueName="TaxableType">
                                        <HeaderStyle VerticalAlign="Bottom" Width="40px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="NonTaxType" HeaderText="NonTax Type" SortExpression="NonTaxType" UniqueName="NonTaxType">
                                        <HeaderStyle VerticalAlign="Bottom" Width="40px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="VendID" HeaderText="VendID" SortExpression="VendID" UniqueName="VendID">
                                        <HeaderStyle VerticalAlign="Bottom" Width="30px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Right" Width="30px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="VendorName" HeaderText="Vendor" SortExpression="VendorName" UniqueName="VendorName">
                                        <HeaderStyle VerticalAlign="Bottom" Width="160px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="160px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ProdLine" HeaderText="Line Code" SortExpression="ProdLine" UniqueName="ProdLine">
                                        <HeaderStyle VerticalAlign="Bottom" Width="40px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="LineDescrip" HeaderText="Line" SortExpression="LineDescrip" UniqueName="LineDescrip">
                                        <HeaderStyle VerticalAlign="Bottom" Width="100px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Left" Width="100px" />
                                    </telerik:GridBoundColumn>
                                </Columns>
                       
                            </MasterTableView>
                    
                        </telerik:RadGrid>
                </div>
             </telerik:RadPageView>
    
            <telerik:RadPageView ID="NewAZTaxReview" runat="server">
                <div id="divNewAZTaxReview" style="padding:10px 0px 10px 0px;float:left; height:600px;width:100%; ">
           
                        <h3 style="width:800px;">New Arizona Warehouse Products - Tax Review (ICSW)</h3>
  
    
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowPaging="True" AllowSorting="True" CellSpacing="0" 
                             DataSourceID="SqlDS_ArizonaWarehouseProductSetups" GridLines="None" Height="575px" Width="1400px">
             
                             <ClientSettings>
                                 <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                             </ClientSettings>
            
            
                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_ArizonaWarehouseProductSetups" PageSize="25">
            
                            <CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

                                <Columns>
                                    <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:d}" 
                                        DataType="System.DateTime" HeaderText="Enter" SortExpression="EnterDate" UniqueName="EnterDate">
                                        <HeaderStyle Width="50px" />
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="50px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="BranchName" HeaderText="Branch" SortExpression="BranchName" UniqueName="BranchName">
                                        <HeaderStyle Width="80px" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="StateFull" Display="False" HeaderText="StateFull" SortExpression="StateFull" UniqueName="StateFull">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="WhseID" Display="False" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Prodcat" HeaderText="Cat" SortExpression="Prodcat" UniqueName="Prodcat">
                                        <HeaderStyle Width="30px" />
                                        <ItemStyle VerticalAlign="Middle" HorizontalAlign="Center" Width="30px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                        <HeaderStyle Width="100px" />
                                        <ItemStyle Width="100px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                        <HeaderStyle Width="230px" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="230px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="TaxType" HeaderText="Tax Type" SortExpression="TaxType" UniqueName="TaxType">
                                        <HeaderStyle Width="40px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Taxable" HeaderText="Taxable" ReadOnly="True" SortExpression="Taxable" UniqueName="Taxable">
                                        <HeaderStyle Width="40px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="NonTaxType" HeaderText="NonTax Type" SortExpression="NonTaxType" UniqueName="NonTaxType">
                                        <HeaderStyle Width="40px" />
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="VendID" HeaderText="VendID" SortExpression="VendID" UniqueName="VendID">
                                        <HeaderStyle Width="40px" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="40px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="VendorName" HeaderText="VendorName" SortExpression="VendorName" UniqueName="VendorName">
                                        <HeaderStyle Width="150px" />
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="150px" />
                                    </telerik:GridBoundColumn>
                                </Columns>

           
                                <HeaderStyle VerticalAlign="Bottom" />
                            </MasterTableView>

                    </telerik:RadGrid>
    
                </div>
    
            </telerik:RadPageView>

        </telerik:RadMultiPage>
        </div>
    </div>
         
</div>


