<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_ICSW.ascx.vb" Inherits="Controls_form_ICSW" %>



<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>

            <%--grdICSW filter controls--%>
           <telerik:AjaxSetting AjaxControlID="fltrWhseID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting> 
           <telerik:AjaxSetting AjaxControlID="fltrProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting>  
           <telerik:AjaxSetting AjaxControlID="fltrDesc">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="fltrStatus1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting> 
           <telerik:AjaxSetting AjaxControlID="fltrStatus2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="fltrStatus3">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
            </telerik:AjaxSetting>  
           <telerik:AjaxSetting AjaxControlID="fltrVendorName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="fltrQtyBO">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting> 
           <telerik:AjaxSetting AjaxControlID="fltrQtyOnOrder">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting> 
           <telerik:AjaxSetting AjaxControlID="fltrMonthsInventory">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
            </telerik:AjaxSetting>  
           <telerik:AjaxSetting AjaxControlID="fltrMonthsInventory2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="fltrProdCatID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting> 
           <telerik:AjaxSetting AjaxControlID="fltrState1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting> 
           <telerik:AjaxSetting AjaxControlID="fltrState2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting> 
           <telerik:AjaxSetting AjaxControlID="fltrState2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting> 
           <telerik:AjaxSetting AjaxControlID="fltrState3">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
            </telerik:AjaxSetting>  
           <telerik:AjaxSetting AjaxControlID="fltrState4">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="fltrState5">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting> 
           <telerik:AjaxSetting AjaxControlID="fltrState6">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdICSW" LoadingPanelID="RadAjaxLoadingPanel1" />                                         
                </UpdatedControls>
           </telerik:AjaxSetting>
           
           <telerik:AjaxSetting AjaxControlID="grdICSW">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblProductInReview" LoadingPanelID="RadAjaxLoadingPanel1" />  
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdLines" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdPOs" LoadingPanelID="RadAjaxLoadingPanel1" />                                       
                </UpdatedControls>
           </telerik:AjaxSetting>

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<div style="width:1500px; margin:20px;">
    <div style="width:1500px; float:left; height:25px; margin-bottom:10px;">
        <div style="width:250px; float:left;"> 
            <telerik:RadComboBox ID="fltrWhseID" runat="server" Width="150px" DropDownWidth="150px" AutoPostBack="true" 
                DataSourceID="SqlDS_fltrBranch" AppendDataBoundItems="true"
                ResolvedRenderMode="Classic" DataTextField="comboname" DataValueField="branchno" Label="Branch:" LabelCssClass="myLabelCss">
                    <Items>
                        <telerik:RadComboBoxItem Text="All" Value="%" />
                    </Items>
            </telerik:RadComboBox>
            <asp:SqlDataSource ID="SqlDS_fltrBranch" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspGetBranchesActiveOnly" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </div>
        
        <div style="width:220px; float:left;">    
            <telerik:RadTextBox ID="fltrProdID" runat="server" Width="180px"  AutoPostBack="true" Label="ProdID:" LabelWidth="50px" ToolTip="Product number contains..."
                LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div>
        <div style="width:220px; float:left;">    
            <telerik:RadTextBox ID="fltrDesc" runat="server" Width="180px" LabelWidth="50px" AutoPostBack="true" Label="Desc:" ToolTip="Description contains..."
                LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div>
        <div style="width:300px; float:left;"> 
            <telerik:RadComboBox ID="fltrProdCatID" runat="server" Width="220px" DropDownWidth="220px" AutoPostBack="true" 
                DataSourceID="SqlDS_fltrProdCatID" AppendDataBoundItems="true"
                ResolvedRenderMode="Classic" DataTextField="EnhancedDesc" DataValueField="ProdCatID" Label="Category:" LabelCssClass="myLabelCss">
                    <Items>
                        <telerik:RadComboBoxItem Text="All" Value="%" />
                    </Items>
            </telerik:RadComboBox>
            <asp:SqlDataSource ID="SqlDS_fltrProdCatID" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProductCategoriesGetAll" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </div>
        <div style="width:220px; float:left;">    
            <telerik:RadTextBox ID="fltrVendorName" runat="server" Width="180px" LabelWidth="60px" AutoPostBack="true" Label="Vendor:" ToolTip="Vendor name contains..."
                LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div>
    
    </div>
    <div style="width:1500px; float:left; height:25px; margin-bottom:10px;">
        <div style="width:220px; float:left;">
            <telerik:RadComboBox ID="fltrMonthsInventory" runat="server" Width="70px" DropDownWidth="70px" AutoPostBack="true" 
                    ResolvedRenderMode="Classic" Label="Months Inv. GT:" LabelCssClass="myLabelCss" ToolTip="Months inventory Greater Than..">
                    <Items>
                        <telerik:RadComboBoxItem Text="All" Value="-1" />
                        <telerik:RadComboBoxItem Text="> 3" Value="3" />
                        <telerik:RadComboBoxItem Text="> 6" Value="6" />
                        <telerik:RadComboBoxItem Text="> 9" Value="9" />
                    </Items>
            </telerik:RadComboBox>
        </div>
        <div style="width:220px; float:left;">
            <telerik:RadComboBox ID="fltrMonthsInventory2" runat="server" Width="70px" DropDownWidth="70px" AutoPostBack="true" 
                    ResolvedRenderMode="Classic" Label="Months Inv. LT:" LabelCssClass="myLabelCss" ToolTip="Months inventory Less Than..">
                    <Items>
                        <telerik:RadComboBoxItem Text="All" Value="9999" />
                        <telerik:RadComboBoxItem Text="< 3" Value="3" />
                        <telerik:RadComboBoxItem Text="< 6" Value="6" />
                        <telerik:RadComboBoxItem Text="< 9" Value="9" />
                    </Items>
            </telerik:RadComboBox>
        </div>
        <div style="width:70px; float:left;">
            <asp:CheckBox ID="fltrStatus1" Text="Stock" Checked="true" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        <div style="width:70px; float:left;">
            <asp:CheckBox ID="fltrStatus2" Text="OAN" Checked="true" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        <div style="width:70px; float:left;">
            <asp:CheckBox ID="fltrStatus3" Text="DNR" Checked="false" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        <div style="width:150px; float:left;">
            <asp:CheckBox ID="fltrQtyBO" Text="On Back Order" Checked="false" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        <div style="width:150px; float:left;">
            <asp:CheckBox ID="fltrQtyOnOrder" Text="On Order" Checked="false" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        
        
        <div style="width:60px; float:left;">
            <asp:CheckBox ID="fltrState1" Text="AZ" Checked="true" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        <div style="width:60px; float:left;">
            <asp:CheckBox ID="fltrState2" Text="CO" Checked="true" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        <div style="width:60px; float:left;">
            <asp:CheckBox ID="fltrState3" Text="MT" Checked="true" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        <div style="width:60px; float:left;">
            <asp:CheckBox ID="fltrState4" Text="NV" Checked="true" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        <div style="width:60px; float:left;">
            <asp:CheckBox ID="fltrState5" Text="TX" Checked="true" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
        <div style="width:60px; float:left;">
            <asp:CheckBox ID="fltrState6" Text="WY" Checked="true" runat="server" CssClass="myLabelCssXSmall" AutoPostBack="true"  />
        </div>
    </div>

    <div style="width:1500px; float:left; height:350px; margin-bottom:10px;">
        <telerik:RadGrid ID="grdICSW" runat="server" Width="1500px" Height="350px" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDS_grdICSW"  ResolvedRenderMode="Classic">
            
            <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="True" >
                <Selecting AllowRowSelect="True" />
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>

            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdICSW" PageSize="30" DataKeyNames="ProdID, WhseID" Width="1700px" >
                <Columns>
                    <telerik:GridBoundColumn DataField="Branch" HeaderText="Branch" SortExpression="Branch" UniqueName="Branch">
                        <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                        <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                        <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                        <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                        <HeaderStyle Width="250px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                        <ItemStyle Width="250px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Status" HeaderText="St." SortExpression="Status" UniqueName="Status">
                        <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                        <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="MonthsInventory" DataType="System.Decimal" HeaderText="Months Inv." SortExpression="MonthsInventory" UniqueName="MonthsInventory" DataFormatString="{0:n1}">
                         <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyAvailable" DataType="System.Decimal" HeaderText="Avail." ReadOnly="True" SortExpression="QtyAvailable" UniqueName="QtyAvailable" DataFormatString="{0:n0}">
                         <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyOnOrder" DataType="System.Decimal" HeaderText="On Order" SortExpression="QtyOnOrder" UniqueName="QtyOnOrder" DataFormatString="{0:n0}">
                         <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyOnHand" DataType="System.Decimal" HeaderText="On Hand" SortExpression="QtyOnHand" UniqueName="QtyOnHand" DataFormatString="{0:n0}">
                         <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyReservd" DataType="System.Decimal" HeaderText="Reservd" SortExpression="QtyReservd" UniqueName="QtyReservd" DataFormatString="{0:n0}">
                        <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                        <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyCommit" DataType="System.Decimal" HeaderText="Commit" SortExpression="QtyCommit" UniqueName="QtyCommit" DataFormatString="{0:n0}">
                         <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="QtyBO" DataType="System.Decimal" HeaderText="Back Ord" SortExpression="QtyBO" UniqueName="QtyBO" DataFormatString="{0:n0}">
                         <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="UsageRate" DataType="System.Decimal" HeaderText="Usage Rate" SortExpression="UsageRate" UniqueName="UsageRate" DataFormatString="{0:n1}">
                         <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Rank_Whse" HeaderText="Rank" SortExpression="Rank_Whse" UniqueName="Rank_Whse">
                         <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    <%--<telerik:GridBoundColumn DataField="BidToolCost" DataType="System.Decimal" HeaderText="BidTool Cost" SortExpression="BidToolCost" UniqueName="BidToolCost" DataFormatString="{0:c1}">
                    
                    </telerik:GridBoundColumn>--%>
                    
                    <telerik:GridBoundColumn DataField="InventoryValue" DataType="System.Decimal" HeaderText="Inventory" SortExpression="InventoryValue" UniqueName="InventoryValue" DataFormatString="{0:c0}">
                         <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="AvailableInventoryValue" DataType="System.Decimal" HeaderText="Avail. Inventory" SortExpression="AvailableInventoryValue" UniqueName="AvailableInventoryValue" DataFormatString="{0:c0}">
                         <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ReservedInventoryValue" DataType="System.Decimal" HeaderText="Reserved Inventory" SortExpression="ReservedInventoryValue"  UniqueName="ReservedInventoryValue" DataFormatString="{0:c0}">
                         <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="CommitInventoryValue" DataType="System.Decimal" HeaderText="Commit Inventory" SortExpression="CommitInventoryValue" UniqueName="CommitInventoryValue" DataFormatString="{0:c0}">
                         <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                   
                    <telerik:GridBoundColumn DataField="VendorName" HeaderText="Vendor" SortExpression="VendorName" UniqueName="VendorName">
                         <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ARPWhseID" HeaderText="ARP WhseID" SortExpression="ARPWhseID" UniqueName="ARPWhseID">
                         <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    

                    <telerik:GridBoundColumn DataField="Vendproduct" HeaderText="Vend Prod" SortExpression="Vendproduct" UniqueName="Vendproduct">
                         <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ReplMulti" DataType="System.Decimal" HeaderText="RM" ReadOnly="True" SortExpression="ReplMulti" UniqueName="ReplMulti" DataFormatString="{0:n3}">
                        <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                        <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="StdMulti" DataType="System.Decimal" HeaderText="SM" ReadOnly="True" SortExpression="StdMulti" UniqueName="StdMulti" DataFormatString="{0:n3}">
                        <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                        <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ReplCostDate" HeaderText="RC" ReadOnly="True" SortExpression="ReplCostDate" UniqueName="ReplCostDate">
                        <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                        <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="LastInvoiceDate" HeaderText="Last Invoice" ReadOnly="True" SortExpression="LastInvoiceDate" UniqueName="LastInvoiceDate">
                        <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                        <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="LastReceiptDate" HeaderText="Last Receipt" ReadOnly="True" SortExpression="LastReceiptDate" UniqueName="LastReceiptDate">
                        <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                        <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="true">
                         <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                         <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    
                   
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
        <asp:SqlDataSource ID="SqlDS_grdICSW" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="uspProductSearchFilterableBasic" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="ProdID" Type="String" DefaultValue="%" />
                <asp:Parameter Name="Status1" Type="String" DefaultValue="S" />
                <asp:Parameter Name="Status2" Type="String" DefaultValue="O" />
                <asp:Parameter Name="Status3" Type="String" DefaultValue="zz" />
                <asp:Parameter Name="VendorName" Type="String" DefaultValue="%" />
                <asp:Parameter Name="Description" Type="String" DefaultValue="%" />
                <asp:Parameter Name="QtyBO" Type="Int32" DefaultValue="-1" />
                <asp:Parameter Name="QtyOnOrder" Type="Int32" DefaultValue="-1" />
                <asp:Parameter Name="MonthsInventory" Type="Decimal" DefaultValue="-1" />
                <asp:Parameter Name="MonthsInventory2" Type="Decimal" DefaultValue="99999" />
                <asp:Parameter Name="ProdCatID" Type="String" DefaultValue="%" />
                <asp:Parameter Name="WhseID" Type="String" DefaultValue="%" />
                <asp:Parameter Name="State1" Type="String" DefaultValue="AZ" />
                <asp:Parameter Name="State2" Type="String" DefaultValue="CO" />
                <asp:Parameter Name="State3" Type="String" DefaultValue="MT" />
                <asp:Parameter Name="State4" Type="String" DefaultValue="NV" />
                <asp:Parameter Name="State5" Type="String" DefaultValue="TX" />
                <asp:Parameter Name="State6" Type="String" DefaultValue="WY" />
               
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div style="width:1500px; font-size:medium; font-weight:bold; color:#4c68a2; padding:10px 0px 10px 0px;">
            <asp:Label ID="lblProductInReview" runat="server"></asp:Label>
    </div>
    <div style="width:1500px; float:left; ">
        <telerik:RadTabStrip ID="RadTabStrip2" runat="server" Skin="Metro" MultiPageID="RadMultiPage1"  ResolvedRenderMode="Classic" Width="1500px" >
           <Tabs>
                    <telerik:RadTab runat="server" Text="Costs" PageViewID="Costs" Selected="true"></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Quantities" PageViewID="Quantities" ></telerik:RadTab> 
                    <telerik:RadTab runat="server" Text="Open Orders" PageViewID="OpenOrders" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="PO's" PageViewID="OpenPOs" ></telerik:RadTab>
                    
           </Tabs>                    
        </telerik:RadTabStrip>
        
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" >               
            
                <telerik:RadPageView ID="Costs" runat="server" Width="550px" Height="450px" Selected="true">
                    <telerik:RadGrid ID="grdCosts" runat="server" Width="1500px" Height="450px" DataSourceID="SqlDS_grdICSWDetails" GroupPanelPosition="Top" 
                        ResolvedRenderMode="Classic" AllowSorting="True">
                        <ClientSettings>
                            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                        </ClientSettings>
                        <MasterTableView DataSourceID="SqlDS_grdICSWDetails" AutoGenerateColumns="False">
                            <Columns>
                                
                               <%-- <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                    <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>--%>
                                <telerik:GridBoundColumn DataField="BranchName" HeaderText="Branch" SortExpression="BranchName" UniqueName="BranchName">
                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                
                                <telerik:GridBoundColumn DataField="Status" HeaderText="S" SortExpression="Status" UniqueName="Status" HeaderTooltip="Status">
                                    <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="AvgCost" DataType="System.Decimal" HeaderText="Avg" SortExpression="AvgCost" UniqueName="AvgCost" DataFormatString="{0:c2}">
                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LastCost" DataType="System.Decimal" HeaderText="Last" SortExpression="LastCost" UniqueName="LastCost" DataFormatString="{0:c2}">
                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="AddonCost" DataType="System.Decimal" HeaderText="Addon" SortExpression="AddonCost" UniqueName="AddonCost" DataFormatString="{0:c2}">
                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ReplCost" DataType="System.Decimal" HeaderText="Repl" SortExpression="ReplCost" UniqueName="ReplCost" DataFormatString="{0:c2}">
                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="BidToolCost" DataType="System.Decimal" HeaderText="BidTool" SortExpression="BidToolCost" UniqueName="BidToolCost" DataFormatString="{0:c2}">
                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="StndCost" DataType="System.Decimal" HeaderText="Stnd" SortExpression="StndCost" UniqueName="StndCost" DataFormatString="{0:c2}">
                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ListPrice" DataType="System.Decimal" HeaderText="List" SortExpression="ListPrice" UniqueName="ListPrice" DataFormatString="{0:c2}">
                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                
                                <telerik:GridBoundColumn DataField="RM" DataType="System.Decimal" HeaderText="RM" SortExpression="RM" UniqueName="RM" DataFormatString="{0:n2}" HeaderTooltip="Replacement Multiplier">
                                    <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="SM" DataType="System.Decimal" HeaderText="SM" SortExpression="SM" UniqueName="SM" DataFormatString="{0:n2}" HeaderTooltip="Standard Multiplier">
                                    <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LastM" DataType="System.Decimal" HeaderText="LM" SortExpression="LM" UniqueName="LM" DataFormatString="{0:n2}" HeaderTooltip="Last Multiplier">
                                    <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ReplCostDate" HeaderText="RC Date" SortExpression="ReplCostDate" UniqueName="ReplCostDate" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LastInvoiceDate" HeaderText="Invoice" SortExpression="LastInvoiceDate" UniqueName="LastInvoiceDate">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LastReceiptDate" HeaderText="Receipt" SortExpression="LastReceiptDate" UniqueName="LastReceiptDate">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="VendProduct" HeaderText="Vendor Product" SortExpression="VendProduct" UniqueName="VendProduct">
                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="VendorName" HeaderText="Vendor" SortExpression="VendorName" UniqueName="VendorName">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="MonthsInventory" DataType="System.Decimal" HeaderText="Months Inv" SortExpression="MonthsInventory" UniqueName="MonthsInventory" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="UsageRate" DataType="System.Decimal" HeaderText="Usage" SortExpression="UsageRate" UniqueName="UsageRate" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyAvailable" DataType="System.Decimal" HeaderText="Avail" ReadOnly="True" SortExpression="QtyAvailable" UniqueName="QtyAvailable" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyOnOrder" DataType="System.Decimal" HeaderText="On Order" SortExpression="QtyOnOrder" UniqueName="QtyOnOrder" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyOnHand" DataType="System.Decimal" HeaderText="On Hand" SortExpression="QtyOnHand" UniqueName="QtyOnHand" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyReservd" DataType="System.Decimal" HeaderText="Reservd" SortExpression="QtyReservd" UniqueName="QtyReservd" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyCommit" DataType="System.Decimal" HeaderText="Commit" SortExpression="QtyCommit" UniqueName="QtyCommit" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyUnavail" DataType="System.Decimal" HeaderText="Unavail" SortExpression="QtyUnavail" UniqueName="QtyUnavail" DataFormatString="{0:n1}">
                                     <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                     <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyBO" DataType="System.Decimal" HeaderText="BO" SortExpression="QtyBO" UniqueName="QtyBO" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>

                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>

                    <asp:SqlDataSource ID="SqlDS_grdICSWDetails" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                        SelectCommand="uspProductWarehouseAllBranches" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="grdICSW" DefaultValue="0" Name="ProdID" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </telerik:RadPageView>
                
                <telerik:RadPageView ID="OpenOrders" runat="server" Width="1500px" Height="450px">
                    <telerik:RadGrid ID="grdLines" Width="1500px" runat="server" Height="400px"  AllowPaging="True" PageSize="50" AllowSorting="True" CellSpacing="0" 
                                    DataSourceID="SqlDS_grdLines" DataKeyNames="OrderNumber" GridLines="None"  >
                    
                            <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                <Selecting AllowRowSelect="true" />
                                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                <Resizing AllowColumnResize="true" AllowRowResize="True" />
                            </ClientSettings>

                             <MasterTableView AutoGenerateColumns="False" DataKeyNames="OrderNumber" DataSourceID="SqlDS_grdLines" Width="1800px" >
                                <Columns>
                                 
                                     <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate">
                                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                        <ItemStyle HorizontalAlign="Right" Width="60px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn> 
                                 
                                     <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                        <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                        <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                                        <HeaderStyle HorizontalAlign="Left" Width="250px" />
                                        <ItemStyle HorizontalAlign="Left" Width="250px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                 

                                     <telerik:GridBoundColumn DataField="QtyOrd" DataFormatString="{0:n1}" DataType="System.Decimal" HeaderText="Qty Ord" SortExpression="QtyOrd" 
                                         UniqueName="QtyOrd">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="StkQtyShip" DataFormatString="{0:n1}" DataType="System.Decimal" HeaderText="Qty Ship" SortExpression="StkQtyShip" 
                                         UniqueName="StkQtyShip">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Price" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Price" SortExpression="Price" 
                                         UniqueName="Price">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="MarginPct" DataFormatString="{0:p1}" DataType="System.Decimal" HeaderText="Margin %" SortExpression="MarginPct" 
                                         UniqueName="MarginPct">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>

                                     <telerik:GridBoundColumn DataField="NetAmount" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Value" SortExpression="NetAmount" 
                                         UniqueName="NetAmount">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                  
                                 
                                     <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" ReadOnly="True" SortExpression="CustName" UniqueName="CustName">
                                        <HeaderStyle HorizontalAlign="Left" Width="150px" />
                                        <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="JobName" HeaderText="Job Name" ReadOnly="True" SortExpression="JobName" UniqueName="JobName">
                                        <HeaderStyle HorizontalAlign="Left" Width="140px" />
                                        <ItemStyle HorizontalAlign="Left" Width="140px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" ReadOnly="True" SortExpression="SalesName" UniqueName="SalesName">
                                        <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                        <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                 
                                     <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" ReadOnly="True" SortExpression="OrderNumber" UniqueName="OrderNumber">
                                        <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                        <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipTo" SortExpression="ShipToID" UniqueName="ShipToID">
                                        <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                        <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>

                                     <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                                        <HeaderStyle HorizontalAlign="Left" Width="35px" />
                                        <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="ReviewMargin" HeaderText="Mrgn%" SortExpression="ReviewMargin" UniqueName="ReviewMargin" >
                                              <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                              <ItemStyle Width="50px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ReviewPrice" HeaderText="Price" SortExpression="ReviewPrice" UniqueName="ReviewPrice" >
                                        <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                        <ItemStyle Width="50px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>

                                 
                                </Columns>
                         
                                 <PagerStyle PageSizeControlType="RadComboBox" />
                             </MasterTableView>
                     
                    </telerik:RadGrid>
                     <asp:SqlDataSource ID="SqlDS_grdLines" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspOrdersLinesActiveGetAllWhseFilter" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                <asp:Parameter Name="ProdID" DefaultValue="0" Type="String" />
                                <asp:Parameter Name="whseID1" DefaultValue="0" Type="String" />
                                <asp:Parameter Name="whseID2" DefaultValue="0" Type="String" />
                                <asp:Parameter Name="whseID3" DefaultValue="0" Type="String" />
                                <asp:Parameter Name="whseID4" DefaultValue="0" Type="String" />
                                <asp:Parameter Name="whseID5"  DefaultValue="0" Type="String" />                               
                                <asp:Parameter Name="CustName" DefaultValue="%" Type="String" />
                                <asp:Parameter Name="JobName"  DefaultValue="%" Type="String" />
                                <asp:Parameter Name="SalesName" DefaultValue="%" Type="String" />
                                <asp:Parameter Name="TotalLineAmountMinimum" DefaultValue="0" />
                                <asp:Parameter Name="Description" DefaultValue="%" Type="String"/>
                             </SelectParameters>
                     </asp:SqlDataSource>
                
                
                </telerik:RadPageView>
                <telerik:RadPageView ID="OpenPOs" runat="server" Width="1500px" Height="450px" >
                    <telerik:RadGrid ID="grdPOs" runat="server" Width="1300px" Height="450px" AllowSorting="true" AllowPaging="false" CellSpacing="0" GridLines="None">
                        
                        <ClientSettings>
                            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                        </ClientSettings>
                        <MasterTableView DataSourceID="SqlDS_grdPOs" AutoGenerateColumns="False">
                            <Columns>
                                
                               <%-- <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                    <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>--%>
                                <telerik:GridBoundColumn DataField="BranchName" HeaderText="Branch" SortExpression="BranchName" UniqueName="BranchName">
                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                
                                <telerik:GridBoundColumn DataField="PONumber" HeaderText="PO" SortExpression="PONumber" UniqueName="PONumber" >
                                    <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LineNo" HeaderText="Line" SortExpression="LineNo" UniqueName="LineNo" >
                                    <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType" >
                                    <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Stage" HeaderText="Stage" SortExpression="Stage" UniqueName="Stage" >
                                    <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="OperInit" HeaderText="Init" SortExpression="OperInit" UniqueName="OperInit" >
                                    <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Price" DataType="System.Decimal" HeaderText="Price" SortExpression="Price" UniqueName="Price" DataFormatString="{0:c2}">
                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>


                               
                                <telerik:GridBoundColumn DataField="QtyOrdered" DataType="System.Decimal" HeaderText="Ordered" ReadOnly="True" SortExpression="QtyOrdered" UniqueName="QtyOrdered" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyReceived" DataType="System.Decimal" HeaderText="Received" SortExpression="QtyReceived" UniqueName="QtyReceived" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="StockQtyReceived" DataType="System.Decimal" HeaderText="Stk Qty Rcv" SortExpression="StockQtyReceived" UniqueName="StockQtyReceived" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>

                                <telerik:GridBoundColumn DataField="EnterDate" HeaderText="Enter" SortExpression="EnterDate" UniqueName="EnterDate" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="TransDate" HeaderText="Trans" SortExpression="TransDate" UniqueName="TransDate">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="DueDate" HeaderText="Due" SortExpression="DueDate" UniqueName="DueDate">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ExpShipDate" HeaderText="Exp Ship" SortExpression="ExpShipDate" UniqueName="ExpShipDate" HeaderTooltip="Expected Ship Date">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>

                    <asp:SqlDataSource ID="SqlDS_grdPOs" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspPurchasingLinesLast" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                                <asp:Parameter Name="ProdID" DefaultValue="0" Type="String" />
                                <asp:Parameter Name="WhseID" DefaultValue="0" Type="String" />
                                
                        </SelectParameters>
                    </asp:SqlDataSource>
                
                </telerik:RadPageView>
                <telerik:RadPageView ID="Quantities" runat="server" Width="550px" Height="450px">
                    <telerik:RadGrid ID="grdQuantities" runat="server" Width="1500px" Height="450px" DataSourceID="SqlDS_grdICSWDetails" GroupPanelPosition="Top" 
                        ResolvedRenderMode="Classic" AllowSorting="True">
                        <ClientSettings>
                            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                        </ClientSettings>
                        <MasterTableView DataSourceID="SqlDS_grdICSWDetails" AutoGenerateColumns="False">
                            <Columns>
                                
                               <%-- <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                    <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>--%>
                                <telerik:GridBoundColumn DataField="BranchName" HeaderText="Branch" SortExpression="BranchName" UniqueName="BranchName">
                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                
                                <telerik:GridBoundColumn DataField="Status" HeaderText="S" SortExpression="Status" UniqueName="Status" HeaderTooltip="Status">
                                    <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="MonthsInventory" DataType="System.Decimal" HeaderText="Mo. Inv" SortExpression="MonthsInventory" UniqueName="MonthsInventory" DataFormatString="{0:n1}" HeaderTooltip="Months Inventory">
                                    <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="UsageRate" DataType="System.Decimal" HeaderText="Usage" SortExpression="UsageRate" UniqueName="UsageRate" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyAvailable" DataType="System.Decimal" HeaderText="Avail" ReadOnly="True" SortExpression="QtyAvailable" UniqueName="QtyAvailable" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyOnOrder" DataType="System.Decimal" HeaderText="On Order" SortExpression="QtyOnOrder" UniqueName="QtyOnOrder" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyOnHand" DataType="System.Decimal" HeaderText="On Hand" SortExpression="QtyOnHand" UniqueName="QtyOnHand" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyReservd" DataType="System.Decimal" HeaderText="Reservd" SortExpression="QtyReservd" UniqueName="QtyReservd" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyCommit" DataType="System.Decimal" HeaderText="Commit" SortExpression="QtyCommit" UniqueName="QtyCommit" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyUnavail" DataType="System.Decimal" HeaderText="Unavail" SortExpression="QtyUnavail" UniqueName="QtyUnavail" DataFormatString="{0:n1}">
                                     <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                     <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyBO" DataType="System.Decimal" HeaderText="BO" SortExpression="QtyBO" UniqueName="QtyBO" DataFormatString="{0:n1}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>

                                <telerik:GridBoundColumn DataField="VendProduct" HeaderText="Vendor Product" SortExpression="Vendproduct" UniqueName="Vendproduct">
                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="VendorName" HeaderText="Vendor" SortExpression="VendorName" UniqueName="VendorName">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LastInvoiceDate" HeaderText="Invoice" SortExpression="LastInvoiceDate" UniqueName="LastInvoiceDate">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="LastReceiptDate" HeaderText="Receipt" SortExpression="LastReceiptDate" UniqueName="LastReceiptDate">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                               
                                

                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>
                </telerik:RadPageView>
        </telerik:RadMultiPage>

    </div>
    <div style="width:1500px; float:left; height:350px; margin-bottom:10px;">

    </div>


    
    
    




</div>