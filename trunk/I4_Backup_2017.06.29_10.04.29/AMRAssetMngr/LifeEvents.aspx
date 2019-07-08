<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/AMRAssetMngr.master" AutoEventWireup="false" CodeFile="LifeEvents.aspx.vb" Inherits="AMRAssetMngr_RetireUnRetire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    
    
    <%--<script  type="text/javascript">

        function ShowAssetDetail(sender, args)
        {
            var ID = args.getDataKeyValue("ID");
            var wnd = window.radopen("../AMRAssetMngr/ActionUpdateAssetDetails.aspx?ID=" + ID, null);

            //Get the clicked row
            var index = args.get_itemIndexHierarchical();
            var item = args.get_tableView().get_dataItems()[index];
            var rowElement = item.get_element();

            //Get coordinates of the row and reposition the window relative to it
            var bounds = $telerik.getBounds(rowElement);
            wnd.moveTo(bounds.x + 60 + index * 10, bounds.y - 400);
            
        }
    </script>
    --%>

    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function OpenPositionedWindow(oButton, url, windowName) {
            var oWnd = window.radopen(url, windowName);
        }
        function openRadRuRWindow(ID) {
            var oWnd = radopen("ActionRetireUnRetire.aspx?ID=" + ID, "RuRDialog");
            oWnd.center();
        }
        function openRadNewWindow() {
            var oWnd = radopen("ActionCreateAsset.aspx", "NewDialog");
            oWnd.center();
        }
        function openEditDetailsWindow(ID) {
            var oWnd = radopen("ActionUpdateAssetDetails.aspx?ID=" + ID, "EditDetailsDialog");
            oWnd.center();
        }
        
     </script>
   </telerik:RadCodeBlock>


<h1>AMR Assets | Asset Life Events</h1>

<div id="divNewAsset" style="width:900px;height:100px;padding: 5px 2px 10px 5px;">
<h6>New Asset</h6>    
    <p>All new Assets must be approved by Frank Fenton.  </p><br />
    <input id="Button1" type="button" onclick="openRadNewWindow(); return false;" value="Create New Asset" style="width:200px; text-align:center;" />
    
</div> 

<div id="divStatus" style="width:1050px;height:100px;padding: 5px 2px 10px 5px;">
<h6>Status Change | Retire / UnRetire an Asset</h6>    
    <p>In order to Retire or UnRetire an asset, the asset must not be in 'In Use' status.</p>
        
    <div id="divAssetStatusChange" style="padding: 2px 2px 2px 5px; width:1050px;height:400px;">

    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700" Transparency="0" >
        </telerik:RadAjaxLoadingPanel>
    
    
    <telerik:RadGrid ID="RadGrid1" runat="server" 
            DataSourceID="SqlDS_AssetLife" GridLines="Horizontal" AllowSorting="True" 
            ClientSettings-Scrolling-AllowScroll="true" Height="400px" Width="1000px" 
            ItemStyle-VerticalAlign="Top" >
            
          
            <ClientSettings Selecting-AllowRowSelect="false" 
                    EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" 
                    FrozenColumnsCount="0" />
                   
            </ClientSettings>


            <MasterTableView AutoGenerateColumns="False" ClientDataKeyNames="ID" DataKeyNames="ID"
                        DataSourceID="SqlDS_AssetLife" CommandItemDisplay="Top" CommandItemSettings-ShowAddNewRecordButton="false">
                <Columns>
                    
                    <telerik:GridTemplateColumn ItemStyle-Width="75px" HeaderStyle-Width="75px"
                            UniqueName="TemplateRuRColumn"  >
                            <ItemTemplate>
                                <a style="font-size:xx-small; " href="#" onclick="openRadRuRWindow('<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">Retire/UnRetire</a>
                            </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn ItemStyle-Width="75px" HeaderStyle-Width="75px"
                            UniqueName="EditDetailsColumn"  >
                            <ItemTemplate>
                                <a style="font-size:xx-small; " href="#" onclick="openEditDetailsWindow('<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">Edit Details</a>
                            </ItemTemplate>
                    </telerik:GridTemplateColumn>
                        
                    <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" HeaderText="ID" 
                        ReadOnly="True" SortExpression="ID" UniqueName="ID" Visible="False">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn  DataField="Assetclass" HeaderText="Assetclass" 
                        SortExpression="Assetclass" UniqueName="Assetclass" Visible="False" 
                        DefaultInsertValue="Meter" Display="False">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="type" HeaderText="Type" 
                        SortExpression="type" UniqueName="type">
                        <HeaderStyle Width="60px" Font-Size="X-Small" ></HeaderStyle>
                        <ItemStyle Width="60px" Font-Size="X-Small" ></ItemStyle>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="name" HeaderText="Location"
                        SortExpression="name" UniqueName="name">
                        <HeaderStyle Width="120px" Font-Size="X-Small" ></HeaderStyle>
                        <ItemStyle Width="120px" Font-Size="X-Small" ></ItemStyle>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="description" HeaderText="Description" 
                        SortExpression="description" UniqueName="description">
                        <HeaderStyle Width="120px" Font-Size="X-Small" ></HeaderStyle>
                        <ItemStyle Width="120px" Font-Size="X-Small" ></ItemStyle>
                    </telerik:GridBoundColumn>
              
                    <telerik:GridBoundColumn DataField="serialno" HeaderText="S/N" 
                        SortExpression="serialno" UniqueName="serialno">
                        <HeaderStyle Width="60px" Font-Size="X-Small" ></HeaderStyle>
                        <ItemStyle Width="60px" Font-Size="X-Small" ></ItemStyle>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="assettag" HeaderText="Asset #" 
                        SortExpression="assettag" UniqueName="assettag">
                        <HeaderStyle Width="60px" Font-Size="X-Small" ></HeaderStyle>
                        <ItemStyle Width="60px" Font-Size="X-Small" ></ItemStyle>
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="notes" HeaderText="Notes" 
                        SortExpression="notes" UniqueName="notes">
                        <HeaderStyle Width="200px" Font-Size="X-Small" ></HeaderStyle>
                        <ItemStyle Width="200px" Font-Size="X-Small" ></ItemStyle>
                    </telerik:GridBoundColumn>
                    
                    
                    <telerik:GridBoundColumn DataField="status" HeaderText="Status" 
                        SortExpression="status" UniqueName="status">
                        <HeaderStyle Width="80px" Font-Size="X-Small" ></HeaderStyle>
                        <ItemStyle Width="80px" Font-Size="X-Small" ></ItemStyle>
                    </telerik:GridBoundColumn>
                    
                </Columns>
 

            </MasterTableView>
            
    </telerik:RadGrid>

        <asp:SqlDataSource ID="SqlDS_AssetLife" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            
            SelectCommand="SELECT [ID], [Assetclass], [type], [status], [name], [description], [serialno],[assettag], [notes] 
                FROM [aAsset] 
                WHERE ([status] = @status) OR ([status] = @status2)
                ORDER BY [name]" >
            <SelectParameters>
                <asp:Parameter DefaultValue="Available" Name="status" Type="String" />
                <asp:Parameter DefaultValue="Retired" Name="status2" Type="String" />
            </SelectParameters>
            
        </asp:SqlDataSource>

        

</div>

        <telerik:RadWindowManager ID="RadWindowManager1" runat="server" Skin="Silk">
                <Windows>
                    <telerik:RadWindow ID="RuRDialog" runat="server" Title="Retire/UnRetire Asset" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                    <telerik:RadWindow ID="NewDialog" runat="server" Title="Create Meter Asset" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                    <telerik:RadWindow ID="EditDetailsDialog" runat="server" Title="Edit Asset Details" Height="500px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                    
                        
                </Windows>
         </telerik:RadWindowManager>




    </div>
    

</asp:Content>

