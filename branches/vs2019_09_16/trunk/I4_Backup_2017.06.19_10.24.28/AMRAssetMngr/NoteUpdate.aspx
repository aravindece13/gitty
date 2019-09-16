<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/AMRAssetMngr.master" AutoEventWireup="false" CodeFile="NoteUpdate.aspx.vb" Inherits="AMRAssetMngr_NoteUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function OpenPositionedWindow(oButton, url, windowName) {
            var oWnd = window.radopen(url, windowName);
        }
        function openRadUpdateNoteWindow(ID) {
            var oWnd = radopen("ActionUpdateNote.aspx?ID=" + ID, "UpdateNoteDialog");
            oWnd.center();
        }

        
     </script>
   </telerik:RadCodeBlock>


    
<h1>AMR Assets | Update Asset Note</h1>


<div id="divStatus" style="width:1050px;height:100px;padding: 5px 2px 10px 5px;">
   
    <p>The note modified here belongs to the asset.  It is not the loaner note.</p>
    
    <div id="divAssetStatusChange" style="padding: 2px 2px 2px 5px; width:1050px;height:400px;">

    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700" Transparency="0" >
        </telerik:RadAjaxLoadingPanel>
    
    
    <telerik:RadGrid ID="RadGrid1" runat="server" 
            DataSourceID="SqlDS_AssetLife" GridLines="None" AllowSorting="True" 
            ClientSettings-Scrolling-AllowScroll="true" Width="1000px" Height="400px" 
            ItemStyle-VerticalAlign="Top" >
            
          <ClientSettings>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" FrozenColumnsCount="0">
                    </Scrolling>
                    <Selecting AllowRowSelect="true" />
            </ClientSettings>

            <MasterTableView AutoGenerateColumns="False" ClientDataKeyNames="ID" DataKeyNames="ID" ItemStyle-VerticalAlign="Top"
                        DataSourceID="SqlDS_AssetLife" CommandItemDisplay="Top" CommandItemSettings-ShowAddNewRecordButton="false">
                <Columns>
                    
                    <telerik:GridTemplateColumn 
                            UniqueName="TemplateUpdateNoteColumn"  >
                            <ItemTemplate>
                                <a href="#" style="font-size:xx-small;" onclick="openRadUpdateNoteWindow('<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">Update Note</a>
                            </ItemTemplate>
                    <HeaderStyle Width="80px" Font-Size="X-Small" />
                    <ItemStyle Width="80px" Font-Size="Small" />
                    </telerik:GridTemplateColumn>
                        
                    <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" HeaderText="ID" 
                        ReadOnly="True" SortExpression="ID" UniqueName="ID" Visible="False">
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn  DataField="Assetclass" HeaderText="Assetclass" 
                        SortExpression="Assetclass" UniqueName="Assetclass" Visible="False" 
                        DefaultInsertValue="Meter" Display="False" ItemStyle-Font-Size="X-Small">
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="type" HeaderText="Type" 
                        SortExpression="type" UniqueName="type">
                    <HeaderStyle Width="60px" Font-Size="X-Small"  ></HeaderStyle>
                    <ItemStyle Width="60px" Font-Size="X-Small"  ></ItemStyle>
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="name" HeaderText="Name"
                        SortExpression="name" UniqueName="name">
                        <HeaderStyle Width="120px" Font-Size="X-Small"  ></HeaderStyle>
                        <ItemStyle Width="120px" Font-Size="X-Small"  ></ItemStyle>
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="description" HeaderText="Description" 
                        SortExpression="description" UniqueName="description">
                        <HeaderStyle Width="120px" Font-Size="X-Small" ></HeaderStyle>
                        <ItemStyle Width="120px" Font-Size="X-Small" ></ItemStyle>
                    </telerik:GridBoundColumn>
              
                    <telerik:GridBoundColumn DataField="assettag" HeaderText="Asset" 
                        SortExpression="assettag" UniqueName="assettag">
                        <HeaderStyle Width="60px" Font-Size="X-Small" ></HeaderStyle>
                        <ItemStyle Width="60px" Font-Size="X-Small" ></ItemStyle>
                    </telerik:GridBoundColumn>
              
                    <telerik:GridBoundColumn DataField="serialno" HeaderText="S/N" 
                        SortExpression="serialno" UniqueName="serialno">
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
            <ClientSettings EnablePostBackOnRowClick="true">
                <Selecting AllowRowSelect="true" />
            </ClientSettings>
    </telerik:RadGrid>

        <asp:SqlDataSource ID="SqlDS_AssetLife" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            
            SelectCommand="SELECT [ID], [Assetclass], [type], [status], [name], [description], [serialno], [notes],[assettag] 
                FROM [aAsset] 
                ORDER BY [name]" >
           
        </asp:SqlDataSource>

   

</div>

        <telerik:RadWindowManager ID="RadWindowManager1" runat="server" Skin="Silk">
                <Windows>
                    <telerik:RadWindow ID="UpdateNoteDialog" runat="server" Title="Update Asset Note" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                    
                        
                </Windows>
         </telerik:RadWindowManager>




    </div>


</asp:Content>

