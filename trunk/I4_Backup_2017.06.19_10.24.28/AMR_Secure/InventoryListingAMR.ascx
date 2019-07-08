<%@ Control Language="VB" AutoEventWireup="false" CodeFile="InventoryListingAMR.ascx.vb" Inherits="AMR_Secure_InventoryListingAMR" %>





<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="sProductType">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="sProductType" />
                    <telerik:AjaxUpdatedControl ControlID="grdInventoryListing" LoadingPanelID="RadAjaxLoadingPanel1" />                  
                </UpdatedControls>    
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="sQtyOnOrder">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="sQtyOnOrder" />
                    <telerik:AjaxUpdatedControl ControlID="grdInventoryListing" LoadingPanelID="RadAjaxLoadingPanel1" />                  
                </UpdatedControls>    
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="sQtyReservd">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="sQtyReservd" />
                    <telerik:AjaxUpdatedControl ControlID="grdInventoryListing" LoadingPanelID="RadAjaxLoadingPanel1" />                  
                </UpdatedControls>    
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="sProductLine">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="sProductLine" />
                    <telerik:AjaxUpdatedControl ControlID="grdInventoryListing" LoadingPanelID="RadAjaxLoadingPanel1" />                  
                </UpdatedControls>    
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="sBranch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="sBranch" />
                    <telerik:AjaxUpdatedControl ControlID="grdInventoryListing" LoadingPanelID="RadAjaxLoadingPanel1" />                  
                </UpdatedControls>    
            </telerik:AjaxSetting>

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

 <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
 </telerik:RadAjaxLoadingPanel>

<div style="width:1600px; margin:20px;">

    <div style="width:1600px; height:40px; float:left;">
        <div style="width:190px; float:left;">
            <div style="width:60px; float:left; vertical-align:middle; ">
                <asp:Label ID="Label1" runat="server" Text="Model:" CssClass="myLabelCssMedium"></asp:Label>
            </div>
            <div style="width:110px; float:left;">
                <telerik:RadComboBox ID="sProductType" runat="server" Width="100px" CssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true" >
                    <Items>   
                        <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true"/> 
                        <telerik:RadComboBoxItem runat="server" Text="iPerl" Value="iPerl" />
                        <telerik:RadComboBoxItem runat="server" Text="Omni" Value="Omni" />
                        <telerik:RadComboBoxItem runat="server" Text="SR" Value="SR " />
                        <telerik:RadComboBoxItem runat="server" Text="SRII" Value="SRII" /> 
                        <telerik:RadComboBoxItem runat="server" Text="SRH" Value="SRH" />
                        <telerik:RadComboBoxItem runat="server" Text="W120" Value="W120" />
                        <telerik:RadComboBoxItem runat="server" Text="W160" Value="W160" />
                        <telerik:RadComboBoxItem runat="server" Text="W350" Value="W350" />
                        <telerik:RadComboBoxItem runat="server" Text="W1000" Value="1000" />
                        <telerik:RadComboBoxItem runat="server" Text="W2000" Value="2000" />
                        <telerik:RadComboBoxItem runat="server" Text="W3500" Value="3500" />
                    </Items>
                </telerik:RadComboBox>
            </div>
        </div>
        <div style="width:220px; float:left;">
            <div style="width:120px; float:left; vertical-align:middle; ">
                <asp:Label ID="Label2" runat="server" Text="Product Line:" CssClass="myLabelCssMedium"></asp:Label>
            </div>
            <div style="width:80px; float:left;">
                <telerik:RadComboBox ID="sProdLine" runat="server" Width="80px" CssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true" >
                    <Items>   
                        <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true"/> 
                        <telerik:RadComboBoxItem runat="server" Text="Meters" Value="METER" />
                        <telerik:RadComboBoxItem runat="server" Text="Parts" Value="MP" />
                        <telerik:RadComboBoxItem runat="server" Text="AMR" Value="AMR" />
                        <telerik:RadComboBoxItem runat="server" Text="AMR Parts" Value="AMRP" /> 
                    </Items>
                </telerik:RadComboBox>
            </div>
        </div>
        <div style="width:270px; float:left;">
            <div style="width:120px; float:left; vertical-align:middle; ">
                <asp:Label ID="Label3" runat="server" Text="Qty On Order:" CssClass="myLabelCssMedium"></asp:Label>
            </div>
            <div style="width:130px; float:left;">
                <telerik:RadComboBox ID="sQtyOnOrder" runat="server" Width="130px" CssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true" >
                    <Items>   
                        <telerik:RadComboBoxItem runat="server" Text="All Products" Value="0" Selected="true"/> 
                        <telerik:RadComboBoxItem runat="server" Text="> = 1" Value="1" />
                        <telerik:RadComboBoxItem runat="server" Text=">= 10" Value="10" />
                        <telerik:RadComboBoxItem runat="server" Text=">= 50" Value="50" />
                        <telerik:RadComboBoxItem runat="server" Text=">= 100" Value="100" /> 
                    </Items>
                </telerik:RadComboBox>
            </div>
        </div>
        <div style="width:270px; float:left;">
            <div style="width:120px; float:left; vertical-align:middle; ">
                <asp:Label ID="Label4" runat="server" Text="Qty Reserved:" CssClass="myLabelCssMedium"></asp:Label>
            </div>
            <div style="width:130px; float:left;">
                <telerik:RadComboBox ID="sQtyReservd" runat="server" Width="130px" CssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true" >
                    <Items>   
                        <telerik:RadComboBoxItem runat="server" Text="All Products" Value="0" Selected="true"/> 
                        <telerik:RadComboBoxItem runat="server" Text="> = 1" Value="1" />
                        <telerik:RadComboBoxItem runat="server" Text=">= 10" Value="10" />
                        <telerik:RadComboBoxItem runat="server" Text=">= 50" Value="50" />
                        <telerik:RadComboBoxItem runat="server" Text=">= 100" Value="100" /> 
                    </Items>
                </telerik:RadComboBox>
            </div>
        </div>
        <div style="width:250px; float:left;">
            <div style="width:60px; float:left; vertical-align:middle; ">
                <asp:Label ID="Label5" runat="server" Text="Branch:" CssClass="myLabelCssMedium"></asp:Label>
            </div>
            <div style="width:180px; float:left;">
                <telerik:RadComboBox ID="sBranch" runat="server" Width="180px" 
                    CssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="True" 
                    AppendDataBoundItems="True" DataSourceID="SqlDS_BranchListing" 
                    DataTextField="comboname" DataValueField="comboname" 
                    ResolvedRenderMode="Classic" >
                    <Items>   
                        <telerik:RadComboBoxItem runat="server" Text="All Branches" Value="%" Selected="true"/> 
                        
                    </Items>
                </telerik:RadComboBox>
                <asp:SqlDataSource ID="SqlDS_BranchListing" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="uspGetBranchesActiveOnlyLessCorporate" 
                    SelectCommandType="StoredProcedure">
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    <div style="width:1600px; float:left;">
        <telerik:RadGrid ID="grdInventoryListing" runat="server" Width="1500px" Height="650px" DataSourceID="SqlDS_grdInventoryListing" 
             AllowPaging="True" PageSize="100" AllowSorting="True" ResolvedRenderMode="Classic">

            <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                <Selecting AllowRowSelect="false" />
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                <Resizing AllowColumnResize="true" AllowRowResize="True" />
            </ClientSettings>

            <MasterTableView DataSourceID="SqlDS_grdInventoryListing" AutoGenerateColumns="False" DataKeyNames="ProdID" Width="1600px">
                <Columns>
                    <telerik:GridBoundColumn DataField="ProdLine" HeaderText="Line" SortExpression="ProdLine" UniqueName="ProdLine">
                        <HeaderStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                        <HeaderStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                        <HeaderStyle HorizontalAlign="Left" Width="300px" VerticalAlign="Bottom"/>
                        <ItemStyle HorizontalAlign="Left" Width="300px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="BranchName" HeaderText="Branch" SortExpression="BranchName" UniqueName="BranchName">
                        <HeaderStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="Status" HeaderText="St" SortExpression="Status" UniqueName="Status">
                        <HeaderStyle HorizontalAlign="Left" Width="30px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Left" Width="30px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="UsageRate" DataType="System.Decimal" HeaderText="Usage" SortExpression="UsageRate" UniqueName="UsageRate" DataFormatString="{0:n1}">
                        <HeaderStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="MonthsInventory" DataType="System.Decimal" HeaderText="Mo. Inv." SortExpression="MonthsInventory" DataFormatString="{0:n1}"
                        UniqueName="MonthsInventory">
                        <HeaderStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyAvailable" DataType="System.Decimal" HeaderText="Avail." ReadOnly="True" SortExpression="QtyAvailable" UniqueName="QtyAvailable" DataFormatString="{0:n0}">
                        <HeaderStyle HorizontalAlign="Left" Width="40px"  VerticalAlign="Bottom"/>
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyOnOrder" DataType="System.Decimal" HeaderText="On Order" SortExpression="QtyOnOrder" UniqueName="QtyOnOrder" DataFormatString="{0:n0}">
                        <HeaderStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyOnHand" DataType="System.Decimal" HeaderText="On Hand" SortExpression="QtyOnHand" UniqueName="QtyOnHand" DataFormatString="{0:n0}">
                        <HeaderStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyReservd" DataType="System.Decimal" HeaderText="Reservd" SortExpression="QtyReservd" UniqueName="QtyReservd" DataFormatString="{0:n0}">
                        <HeaderStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Bottom"/>
                        <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyUnavail" DataType="System.Decimal" HeaderText="Unavail" SortExpression="QtyUnavail" UniqueName="QtyUnavail" DataFormatString="{0:n0}">
                        <HeaderStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="LastReceiptDate" HeaderText="Last Receipt" ReadOnly="True" SortExpression="LastReceiptDate" UniqueName="LastReceiptDate">
                        <HeaderStyle HorizontalAlign="Left" Width="70px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Left" Width="70px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="InventoryValue" DataType="System.Decimal" HeaderText="Inventory Value" DataFormatString="{0:c0}"
                        SortExpression="InventoryValue" UniqueName="InventoryValue">
                        <HeaderStyle HorizontalAlign="Left" Width="70px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="AvailableInventoryValue" DataType="System.Decimal" DataFormatString="{0:c0}"
                        HeaderText="Available Value" SortExpression="AvailableInventoryValue" 
                        UniqueName="AvailableInventoryValue">
                         <HeaderStyle HorizontalAlign="Left" Width="70px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ReservedInventoryValue" 
                        DataType="System.Decimal" HeaderText="Rsrvd Value" SortExpression="ReservedInventoryValue" DataFormatString="{0:c0}"
                        UniqueName="ReservedInventoryValue">
                         <HeaderStyle HorizontalAlign="Left" Width="70px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CommitInventoryValue" DataType="System.Decimal" DataFormatString="{0:c0}"
                        HeaderText="Commit Value" SortExpression="CommitInventoryValue" 
                        UniqueName="CommitInventoryValue">
                         <HeaderStyle HorizontalAlign="Left" Width="70px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Vendproduct" HeaderText="Vend Product" SortExpression="Vendproduct" UniqueName="Vendproduct">
                         <HeaderStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="OrderPoint" DataType="System.Decimal" HeaderText="Order Point" SortExpression="OrderPoint" UniqueName="OrderPoint" DataFormatString="{0:n0}">
                        <HeaderStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Bottom"/>
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="LinePoint" DataType="System.Decimal" HeaderText="Line Point" SortExpression="LinePoint" UniqueName="LinePoint" DataFormatString="{0:n0}">
                        <HeaderStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="LeadTimeAvg" DataType="System.Decimal" HeaderText="LeadTime Avg" SortExpression="LeadTimeAvg" UniqueName="LeadTimeAvg" DataFormatString="{0:n0}">
                        <HeaderStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Bottom" />
                        <ItemStyle HorizontalAlign="Right" Width="40px" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
        <asp:SqlDataSource ID="SqlDS_grdInventoryListing" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="uspInventoryListingAMR" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="sProductType" DefaultValue="%" Name="ProductType" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="sQtyOnOrder" DefaultValue="0" Name="QtyOnOrder" PropertyName="SelectedValue" Type="Decimal" />
                <asp:ControlParameter ControlID="sQtyReservd" DefaultValue="0" Name="QtyReservd" PropertyName="SelectedValue" Type="Decimal" />
                <asp:ControlParameter ControlID="sProdLine" DefaultValue="" Name="ProdLine" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="sBranch" DefaultValue="" Name="Branch" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</div>