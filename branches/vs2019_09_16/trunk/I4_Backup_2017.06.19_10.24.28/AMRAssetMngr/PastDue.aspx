<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/AMRAssetMngr.master" AutoEventWireup="false" CodeFile="PastDue.aspx.vb" Inherits="AMRAssetMngr_PastDue" %>

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



    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
    </telerik:RadAjaxManagerProxy>


<div id="divBody" style="padding: 5px 2px 2px 5px; height:650px;width:1000px;">
<h6>Past Due Assets</h6>

    <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" 
        Height="600px" Width="1000px"  
        DataSourceID="SqlDS_PastDue" GridLines="None">
        
        <ClientSettings>
            <Resizing AllowColumnResize="true" />
            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="true" />
            <Selecting AllowRowSelect="true" />
        
        </ClientSettings>
        
        <MasterTableView AutoGenerateColumns="False" DataKeyNames="ID" ClientDataKeyNames="ID" DataSourceID="SqlDS_PastDue" 
            CommandItemDisplay="Top" CommandItemSettings-ShowAddNewRecordButton="false" >
            <Columns>
               <telerik:GridTemplateColumn 
                            UniqueName="TemplateReturnColumn">
                            <ItemTemplate>
                                <a href="#" onclick="openRadReturnWindow('<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">Return</a>
                            </ItemTemplate>
               <HeaderStyle Width="60px" />
               <ItemStyle Width="60px" />
               </telerik:GridTemplateColumn>
               
               <telerik:GridTemplateColumn ItemStyle-Width="40px" HeaderStyle-Width="40px"
                            UniqueName="TemplateUpdateReturnColumn">
                            <ItemTemplate>
                                <a href="#" onclick="openRadUpdateReturnWindow('<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">Update</a>
                            </ItemTemplate>
                <HeaderStyle Width="60px" />
                <ItemStyle Width="60px" />
                </telerik:GridTemplateColumn>
                
                <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" HeaderText="ID" 
                    ReadOnly="True" SortExpression="ID" UniqueName="ID" Display="false">
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="type" HeaderText="type" 
                    SortExpression="type" UniqueName="type" Display="false">
                </telerik:GridBoundColumn>
                
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

                <telerik:GridBoundColumn DataField="assettag" HeaderText="Asset"  
                    SortExpression="assettag" UniqueName="assettag">
                <HeaderStyle Width="70px" />
                <ItemStyle Width="70px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="cursponsor" HeaderText="Sponsor"  
                    SortExpression="cursponsor" UniqueName="cursponsor">
                <HeaderStyle Width="90px" />
                <ItemStyle Width="90px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="curuser" HeaderText="User"  
                    SortExpression="curuser" UniqueName="curuser">
                <HeaderStyle Width="130px" />
                <ItemStyle Width="130px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="outdt" DataType="System.DateTime"  
                    HeaderText="Out" SortExpression="outdt" UniqueName="outdt" DataFormatString="{0:MM/dd/yy}">
                <HeaderStyle Width="60px" />
                <ItemStyle Width="60px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="duedt" DataType="System.DateTime" 
                    HeaderText="Due" SortExpression="duedt" UniqueName="duedt" DataFormatString="{0:MM/dd/yy}">
                <HeaderStyle Width="60px" />
                <ItemStyle Width="60px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="OrderNo" HeaderText="Order" 
                    SortExpression="OrderNo" UniqueName="OrderNo">
                <HeaderStyle Width="90px" />
                <ItemStyle Width="90px" />
                </telerik:GridBoundColumn>
                
                <telerik:GridBoundColumn DataField="serialno" HeaderText="S/N"  
                    SortExpression="serialno" UniqueName="serialno">
                <HeaderStyle Width="100px" />
                <ItemStyle Width="100px" />
                </telerik:GridBoundColumn>
            </Columns>
        <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

        <RowIndicatorColumn>
        <HeaderStyle Width="20px"></HeaderStyle>
        </RowIndicatorColumn>

        <ExpandCollapseColumn>
        <HeaderStyle Width="20px"></HeaderStyle>
        </ExpandCollapseColumn>
        </MasterTableView>
        <ClientSettings>
            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
        </ClientSettings>
    </telerik:RadGrid>


    <asp:SqlDataSource ID="SqlDS_PastDue" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        SelectCommand="SELECT [ID], [type], [name], [description], [serialno], [cursponsor], [curuser], [outdt], [duedt], [OrderNo],[Assettag] 
            FROM [aAsset] 
            WHERE ([status] = @status) AND([duedt] < GetDate()) ORDER BY [duedt] ">
        <SelectParameters>
            <asp:Parameter DefaultValue="In Use" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</div>


<telerik:RadWindowManager ID="RadWindowManager1" runat="server" Skin="Silk">
                <Windows>
                    
                    <telerik:RadWindow ID="ReturnDialog" runat="server" Title="Asset Return" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                    <telerik:RadWindow ID="UpdateReturnDialog" runat="server" Title="Update Asset Return Date" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                        
                </Windows>
         </telerik:RadWindowManager>

</asp:Content>

