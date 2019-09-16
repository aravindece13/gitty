<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/AMRAssetMngr.master" AutoEventWireup="false" CodeFile="BigBoard.aspx.vb" Inherits="AMRAssetMngr_Default" %>






<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    
  <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function OpenPositionedWindow(oButton, url, windowName) {
            var oWnd = window.radopen(url, windowName);
        }
        function openRadCheckOutWindow(ID) {
            var oWnd = radopen("ActionCheckOut.aspx?ID=" + ID, "CheckOutDialog");
            oWnd.center();
        }
        function openRadReturnWindow(ID) {
            var oWnd = radopen("ActionReturn.aspx?ID=" + ID, "ReturnDialog");
            oWnd.center();
        }
        function openRadUpdateReturnWindow(ID) {
            var oWnd = radopen("ActionUpdateReturn.aspx?ID=" + ID, "UpdateReturnDialog");
            oWnd.center();
        }
        
     </script>
   </telerik:RadCodeBlock>
   
  
  
  
   
   <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server" >
       <AjaxSettings>
           <telerik:AjaxSetting AjaxControlID="RadGrid1">
               <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="RadGrid1" UpdatePanelHeight="" />
                   <telerik:AjaxUpdatedControl ControlID="SqlDS_AssetList" UpdatePanelHeight="" />
                   
                   <telerik:AjaxUpdatedControl ControlID="SqlDS_AssetDetails" UpdatePanelHeight="" />
                   
                   <telerik:AjaxUpdatedControl ControlID="DetailsView1" 
                       LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelHeight="" />
                   <telerik:AjaxUpdatedControl ControlID="LoanerHistory" LoadingPanelID="RadAjaxLoadingPanel1"  UpdatePanelHeight="" />
                   <telerik:AjaxUpdatedControl ControlID="SqlDS_LoanerHistory" UpdatePanelHeight="" />
               </UpdatedControls>
           </telerik:AjaxSetting>
           
       </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
   
   
   
   
   
   
   
   <h6>AMR Assets</h6>
    
    <div id="divBodyContent" style="width:1050px; ">
    <div id="divAssetSelection" style="padding: 2px 2px 2px 5px; width:1040px;height:290px;">
                
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" DataFieldID="type" 
            DataSourceID="SqlDS_AssetTypes" DataTextField="type" DataValueField="type" 
            Skin="Web20">
        </telerik:RadTabStrip>
        
        
        <asp:SqlDataSource ID="SqlDS_AssetTypes" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            SelectCommand="SELECT type 
                            FROM aAsset 
                            GROUP BY type 
                            ORDER BY type">
        </asp:SqlDataSource>
   
   
   
            
        <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
        </telerik:RadAjaxLoadingPanel>
   
   
         
   
   
        
 
        <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="SqlDS_AssetList" 
            ClientSettings-Resizing-AllowColumnResize="true" 
            GridLines="None" Height="250px" Width="1000px" AllowSorting="True" >
            
            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" FrozenColumnsCount="0">
                    </Scrolling>
                    <Selecting AllowRowSelect="true"  />
            </ClientSettings>
            
            <MasterTableView AutoGenerateColumns="False" ClientDataKeyNames="ID" DataKeyNames="ID" DataSourceID="SqlDS_AssetList" 
                CommandItemDisplay="Top" CommandItemSettings-ShowAddNewRecordButton="False" ItemStyle-VerticalAlign="Top" Width="1100" >
           
     

        
                <Columns>
                    <telerik:GridTemplateColumn 
                            UniqueName="TemplateCheckOutColumn"  >
                            <ItemTemplate>
                                <a style="font-size:xx-small; "  href="#" onclick="openRadCheckOutWindow('<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">CheckOut</a>
                            </ItemTemplate>
                    <HeaderStyle Width="55px" />
                    <ItemStyle Width="55px" />
                    </telerik:GridTemplateColumn>
                    
                    <telerik:GridTemplateColumn ItemStyle-Width="45px" HeaderStyle-Width="45px"
                            UniqueName="TemplateReturnColumn">
                            <ItemTemplate>
                                <a style="font-size:xx-small;"  href="#" onclick="openRadReturnWindow('<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">Return</a>
                            </ItemTemplate>
                    <HeaderStyle Width="45px" />
                    <ItemStyle Width="45px" />
                    </telerik:GridTemplateColumn>
                    
                    <telerik:GridTemplateColumn 
                            UniqueName="TemplateUpdateReturnColumn">
                            <ItemTemplate>
                                <a style="font-size:xx-small;"  href="#" onclick="openRadUpdateReturnWindow('<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">Update</a>
                            </ItemTemplate>
                    <HeaderStyle Width="45px" />
                    <ItemStyle Width="45px" />
                    </telerik:GridTemplateColumn>
                    
                    <telerik:GridBoundColumn DataField="name" HeaderText="Name" 
                        SortExpression="name" UniqueName="name">
                    <HeaderStyle Width="100px" />
                    <ItemStyle Width="100px" />
                    </telerik:GridBoundColumn>
                    
                    
                    <telerik:GridBoundColumn DataField="description" HeaderText="Description" 
                        SortExpression="description" UniqueName="description">
                    <HeaderStyle Width="180px" />
                    <ItemStyle Width="180px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="type" HeaderText="Type" 
                        SortExpression="type" UniqueName="type" Visible="false">
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="status" HeaderText="Status" 
                        SortExpression="status" UniqueName="status" Display="true">
                    <HeaderStyle Width="60px" />
                    <ItemStyle Width="60px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="assettag" HeaderText="Asset" 
                        SortExpression="assettag" UniqueName="assettag" Visible="true">
                    <HeaderStyle Width="60px" />
                    <ItemStyle Width="60px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="serialno" HeaderText="S/N" 
                        SortExpression="serialno" UniqueName="serialno" Visible="False">
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="cursponsor" HeaderText="Sponsor" 
                          SortExpression="cursponsor" UniqueName="cursponsor">
                    <HeaderStyle Width="90px" />
                    <ItemStyle Width="90px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="curuser" HeaderText="User"
                        SortExpression="curuser" UniqueName="curuser">
                    <HeaderStyle Width="135px" />
                    <ItemStyle Width="135px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="outdt" DataType="System.DateTime" 
                        HeaderText="Out" SortExpression="outdt" UniqueName="outdt" DataFormatString="{0:MM/dd/yy}" >
                    <HeaderStyle Width="60px" />
                    <ItemStyle Width="60px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="duedt" DataType="System.DateTime" 
                        HeaderText="Due" SortExpression="duedt" UniqueName="duedt" DataFormatString="{0:MM/dd/yy}" >
                    <HeaderStyle Width="60px" />
                    <ItemStyle Width="60px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="OrderNo" HeaderText="Order"
                        SortExpression="OrderNo" UniqueName="OrderNo" Display="true">
                    <HeaderStyle Width="90px" />
                    <ItemStyle Width="90px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" HeaderText="ID" 
                        ReadOnly="True" SortExpression="ID" UniqueName="ID" Display="false">
                    </telerik:GridBoundColumn>                
                </Columns>

                
<CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

                
            </MasterTableView>
            <ClientSettings EnablePostBackOnRowClick="true">
                <Selecting AllowRowSelect="true" />
            </ClientSettings>
        </telerik:RadGrid>
   
        <asp:SqlDataSource ID="SqlDS_AssetList" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            SelectCommand="SELECT name, description, type, cursponsor, curuser, outdt, duedt, ID, status, serialno, orderno, assettag FROM aAsset WHERE ((type = @type) and (status <> @status2))ORDER BY name" >
        
            <SelectParameters>
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="status2" Type="String" DefaultValue="Retired" />
            </SelectParameters>
        
        </asp:SqlDataSource>
        
        
        
        <telerik:RadWindowManager ID="RadWindowManager1" runat="server" Skin="Silk">
                <Windows>
                    <telerik:RadWindow ID="CheckOutDialog" runat="server" Title="Asset Check Out" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                    <telerik:RadWindow ID="ReturnDialog" runat="server" Title="Asset Return" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                    <telerik:RadWindow ID="UpdateReturnDialog" runat="server" Title="Update Asset Return Date" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                        
                </Windows>
         </telerik:RadWindowManager>
        
        
        
        
        
        
           
    </div>   
  
 <div id="divDetailsHistory" style="width:1000px; height:250px;">
     
 <div id="divDetailsView" style="float:left;padding: 2px 2px 2px 5px;width:300px;">
  <h6>Asset Details</h6>
        
            
           
        
           <asp:SqlDataSource ID="SqlDS_AssetDetails" runat="server" 
               ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
               SelectCommand="SELECT [type], [status], [name], [description], [serialno], [cursponsor], [curuser], [outdt], [duedt], [ID], [notes], [OrderNo],[AssetTag] 
               FROM [aAsset] WHERE ([ID] = @ID)">
               <SelectParameters>
                   <asp:ControlParameter ControlID="RadGrid1" Name="ID" 
                       PropertyName="SelectedValue" Type="Int32" DefaultValue="0" />
               </SelectParameters>
           </asp:SqlDataSource>
           
        <asp:SqlDataSource ID="SqlDS_CurrentHistoryRecord" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            SelectCommand="SELECT ID, MAX(RecordNo) AS CurrentRecordNo 
                            FROM aAsset_Hist 
                            GROUP BY ID 
                            WHERE ([ID] = @ID)">
                <SelectParameters>
                   <asp:ControlParameter ControlID="RadGrid1" Name="ID" 
                       PropertyName="SelectedValue" Type="Int32" DefaultValue="0" />
               </SelectParameters>
               
                
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDS_Current" runat="server"></asp:SqlDataSource>
           
           
           
          
           <asp:DetailsView ID="DetailsView1" runat="server" Height="200px" Width="300px" 
                DataSourceID="SqlDS_AssetDetails" AutoGenerateRows="False" 
               DataKeyNames="ID"  FieldHeaderStyle-Font-Bold="true" 
               
               EmptyDataText="Please select an asset above to see details, check out, check in, make a reservation or see loaner history."  >
           
           
               <FieldHeaderStyle Font-Bold="True" />
           
           
               <Fields>
                   <asp:BoundField DataField="status" HeaderText="Status:" SortExpression="status" />
                   <asp:BoundField DataField="name" HeaderText="Asset Name:" SortExpression="name" />
                   <asp:BoundField DataField="description" HeaderText="Description:" SortExpression="description" />
                   <asp:BoundField DataField="assettag" HeaderText="Asset Tag:" SortExpression="assettag" />
                   <asp:BoundField DataField="serialno" HeaderText="S/N:" SortExpression="serialno" />
                   <asp:BoundField DataField="cursponsor" HeaderText="Sponsor:" SortExpression="cursponsor" />
                   <asp:BoundField DataField="curuser" HeaderText="User:" SortExpression="curuser" />
                   <asp:BoundField DataField="outdt" HeaderText="Out:" SortExpression="outdt" DataFormatString="{0:MM/dd/yy}" />
                   <asp:BoundField DataField="duedt" HeaderText="Due:" SortExpression="duedt" DataFormatString="{0:MM/dd/yy}"/>
                   <asp:BoundField DataField="OrderNo" HeaderText="Current OE:" SortExpression="OrderNo" />
                   <asp:BoundField DataField="notes" HeaderText="Notes:" SortExpression="notes" />
                </Fields>
           </asp:DetailsView>
           
       </div> 
       <div id="divLoanerHistory" style="width:690px; float:right;">       
                <h6>Loaner History</h6>
                       
                    <telerik:RadGrid ID="LoanerHistory" runat="server" AllowSorting="True" ClientSettings-Resizing-AllowColumnResize="true" 
                      DataSourceID="SqlDS_LoanerHistory" GridLines="None" Width="700px" Height="280px" >
                      <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_LoanerHistory" Font-Size="X-Small" Width="1000px" ItemStyle-VerticalAlign="Top">
                          <Columns>
                              <telerik:GridBoundColumn DataField="curuser" HeaderText="User" HeaderStyle-Width="120px" ItemStyle-Width="120px" 
                                  SortExpression="curuser" UniqueName="curuser">
                              </telerik:GridBoundColumn>
                              <telerik:GridBoundColumn DataField="OrderNo" HeaderText="Order" HeaderStyle-Width="70px" ItemStyle-Width="70px"
                                  SortExpression="OrderNo" UniqueName="OrderNo">
                              </telerik:GridBoundColumn>
                              <telerik:GridBoundColumn DataField="cursponsor" HeaderText="Sponsor" HeaderStyle-Width="75px" ItemStyle-Width="75px" 
                                  SortExpression="cursponsor" UniqueName="cursponsor">
                              </telerik:GridBoundColumn>
                              <telerik:GridBoundColumn DataField="Action" HeaderText="Action" HeaderStyle-Width="75px" ItemStyle-Width="75px"
                                  SortExpression="Action" UniqueName="Action">
                              </telerik:GridBoundColumn> 
                              <telerik:GridBoundColumn DataField="OutDt" DataType="System.DateTime" HeaderStyle-Width="60px" ItemStyle-Width="60px"
                                  HeaderText="Out" SortExpression="OutDt" UniqueName="OutDt" DataFormatString="{0:MM/dd/yy}" >
                              </telerik:GridBoundColumn>
                              <telerik:GridBoundColumn DataField="DueDt" DataType="System.DateTime" HeaderStyle-Width="60px" ItemStyle-Width="60px"
                                  HeaderText="Due" SortExpression="DueDt" UniqueName="DueDt" DataFormatString="{0:MM/dd/yy}">
                              </telerik:GridBoundColumn>
                 
                              <telerik:GridBoundColumn DataField="Note" HeaderText="Note" HeaderStyle-Width="150px" ItemStyle-Width="150px"
                                  SortExpression="Note" UniqueName="Note">
                              </telerik:GridBoundColumn>
                              <telerik:GridBoundColumn DataField="UpdateBy" HeaderText="Update By" HeaderStyle-Width="120px" ItemStyle-Width="120px"
                                  SortExpression="UpdateBy" UniqueName="UpdateBy">
                              </telerik:GridBoundColumn>
                              <telerik:GridBoundColumn DataField="timestmp" DataType="System.DateTime" DataFormatString="{0:G}" HeaderStyle-Width="140px" ItemStyle-Width="140px"
                                  HeaderText="Action Date" SortExpression="timestmp" UniqueName="timestmp">
                              </telerik:GridBoundColumn>
                          </Columns>
                          
                          
                      </MasterTableView>
                      <ClientSettings>
                          <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                      </ClientSettings>
                  </telerik:RadGrid>
                  
                    <asp:SqlDataSource ID="SqlDS_LoanerHistory" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT [curuser], [cursponsor], [status], [OutDt], [DueDt], [UpdateBy], [timestmp], [Note], [Action], [OrderNO] 
                                    FROM [aAsset_Hist] 
                                    WHERE ([ID] = @ID) ORDER BY [timestmp] Desc, [Outdt] Desc">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="RadGrid1" Name="ID" DefaultValue="0" 
                              PropertyName="SelectedValue" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>    
        
        </div>
  </div>
           
           
      
       
       
       
       
       
     
   
   
     





</div>

        




</asp:Content>

