<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="AP.aspx.vb" Inherits="Exec_AP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
<h1>Executive | Vendors</h1>


<div style="padding:5px 2px 2px 5px; width:1000px; height:600px;">


    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid4" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="btnAddComment" LoadingPanelID="" />
                    
                    
                    
                </UpdatedControls>
            </telerik:AjaxSetting>
                      
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>


    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
    </telerik:RadAjaxLoadingPanel>



    <script  type="text/javascript">

        function ShowPODetail(sender, args)
        {
            var PONumber = args.getDataKeyValue("PONumber");
            var wnd = window.radopen("POsActiveDetail.aspx?PONumber=" + PONumber, null);

            //Get the clicked row
            var index = args.get_itemIndexHierarchical();
            var item = args.get_tableView().get_dataItems()[index];
            var rowElement = item.get_element();

            //Get coordinates of the row and reposition the window relative to it
            var bounds = $telerik.getBounds(rowElement);
            wnd.moveTo(bounds.x + 120 + index * 10, bounds.y -400);
        }
    </script>

    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function OpenPositionedWindow(oButton, url, windowName) {
            var oWnd = window.radopen(url, windowName);
        }
        
        function openRadNewWindow(VendID) {
           
            var oWnd = radopen("ActionAddVendorComment.aspx?VendID=" + VendID, "NewDialog");
            oWnd.center();
        }

        
     </script>
   </telerik:RadCodeBlock>
  
    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" 
        AllowPaging="True" AllowSorting="True" DataSourceID="SqlDS_VendorList" 
        GridLines="None" Width="1000px" Height="315px" >
            
        <GroupingSettings CaseSensitive="false" />

        <ClientSettings Selecting-AllowRowSelect="true" 
                EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
        </ClientSettings>
        
        
        <MasterTableView AutoGenerateColumns="False" 
            DataKeyNames="VendID" ClientDataKeyNames="VendID" 
            DataSourceID="SqlDS_VendorList" PageSize="25"  Width="1100px"  AllowFilteringByColumn="true" >
        
        <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>
        
   
        <ItemStyle VerticalAlign="Top" />
        <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true"  />
        

            <Columns>
                <telerik:GridBoundColumn DataField="VendID" HeaderText="VendID" 
                    SortExpression="VendID" UniqueName="VendID" Display="false">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="VendName" HeaderText="Vendor" 
                    SortExpression="VendName" UniqueName="VendName" 
                    FilterControlWidth="130px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="160px" />
                    <ItemStyle  Width="160px" HorizontalAlign="Left" VerticalAlign="Top" Font-Size="X-Small" />
         
                </telerik:GridBoundColumn>
                
                <telerik:GridHyperLinkColumn DataTextFormatString="Profile" UniqueName="PrintProfile" 
                        HeaderText="" Target="_blank" ShowFilterIcon="false" AllowFiltering="false"  
                        DataTextField="VendID"
                        DataNavigateUrlFields="VendID" 
                        DataNavigateUrlFormatString="../Reports/Purchasing/Vendor_Profile.aspx?PartnerID={0}">
                     <HeaderStyle Width="50px" />
                     <ItemStyle  HorizontalAlign="Left" Width="50px" Font-Size="X-Small" />
                     </telerik:GridHyperLinkColumn>
                
                <telerik:GridBoundColumn DataField="OrderBal" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Order Balance" SortExpression="OrderBal" 
                    UniqueName="OrderBal" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle  Width="80px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="InvYTD" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Invoiced YTD" SortExpression="InvYTD" 
                    UniqueName="InvYTD" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle  Width="80px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="InvLstYR" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Last Year" ReadOnly="True" 
                    SortExpression="InvLstYR" UniqueName="InvLstYR" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle  Width="80px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Currentbal" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Current Due" ReadOnly="True" 
                    SortExpression="Currentbal" UniqueName="Currentbal" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle  Width="80px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="LastInvDate" 
                    DataFormatString="{0:MM/dd/yy}" DataType="System.DateTime" 
                    HeaderText="Last Sale" SortExpression="LastInvDate" UniqueName="LastInvDate" 
                    FilterControlWidth="40px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="75px" />
                    <ItemStyle  Width="75px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="DiscTakenYTD" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Discount YTD" SortExpression="DiscTakenYTD" 
                    UniqueName="DiscTakenYTD" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle  Width="80px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="DiscTakenLstYR" DataFormatString="{0:c0}" 
                    DataType="System.Decimal" HeaderText="Disc Lst YR" 
                    SortExpression="DiscTakenLstYR" UniqueName="DiscTakenLstYR" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="80px" />
                    <ItemStyle  Width="80px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="LastPurchDate" DataFormatString="{0:MM/dd/yy}" 
                    DataType="System.Decimal" HeaderText="Last Purch" 
                    SortExpression="LastPurchDate" UniqueName="LastPurchDate" 
                    FilterControlWidth="45px" CurrentFilterFunction="GreaterThanOrEqualTo" ShowFilterIcon="true" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="75px" />
                    <ItemStyle  Width="75px" HorizontalAlign="Right" VerticalAlign="Top" Font-Size="X-Small" />
                </telerik:GridBoundColumn>
                
                
                <telerik:GridBoundColumn DataField="TermsType" HeaderText="Terms" 
                    SortExpression="TermsType" UniqueName="TermsType" 
                    FilterControlWidth="30px" CurrentFilterFunction="Contains" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                    <HeaderStyle Width="40px" />
                    <ItemStyle  Width="40px" Font-Size="X-Small"  />
                </telerik:GridBoundColumn>
                
            </Columns>
            <PagerStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" Wrap="True" />
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" Wrap="True" />
        </MasterTableView>
        <ClientSettings>
            <Selecting AllowRowSelect="True" />
        </ClientSettings>
    </telerik:RadGrid>

  
    <asp:SqlDataSource ID="SqlDS_VendorList" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        SelectCommand="SELECT Vendor.VendID, Vendor.Name AS VendName, Vendor.OrderBal, Vendor.InvYTD, 
        Vendor.InvLstYR, Vendor.Currentbal, Vendor.LastInvDate, Vendor.DiscTakenYTD, 
        Vendor.DiscTakenLstYR, Vendor.LastPurchDate, Vendor.Termstype  
        FROM Vendor 
        ORDER BY Vendor.OrderBal DESC" >
    </asp:SqlDataSource>

    
    <div id="details" style="padding:10px 0px 2px 0px; border:single 1px blue;">
    
    
        
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="Web20">
        <Tabs>
            <telerik:RadTab runat="server" Text="Open POs" PageViewID="OpenOrders" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Comments" PageViewID="Comments" Selected="true"></telerik:RadTab>
            
        </Tabs>
    </telerik:RadTabStrip>

    <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="240px" Width="1000px" >
         <telerik:RadPageView ID="OpenOrders" runat="server" Selected="false" >
            
            
             <telerik:RadGrid ID="RadGrid2" runat="server" DataSourceID="SqlDS_OpenPOs" 
                 GridLines="None" AllowSorting="true" Width="550px" Height="210px" >
                 
                 <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" >
                    <ClientEvents OnRowSelected="ShowPODetail" />
                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="true" />
                 </ClientSettings>
                 
                 <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_OpenPOs" 
                        DataKeyNames="PONumber" ClientDataKeyNames="PONumber" >
                    
                     <CommandItemSettings ExportToPdfText="Export to Pdf" />
                   
                    <ItemStyle  VerticalAlign="Top" />
                    <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true"  /> 
                   
                     <Columns>
                         <telerik:GridBoundColumn DataField="PONumber" HeaderText="PO" 
                             SortExpression="PONumber" UniqueName="PONumber">
                         <HeaderStyle Width="55px" Font-Size="X-Small" />
                         <ItemStyle  Width="55px" HorizontalAlign="Right" Font-Size="X-Small" />    
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="TransactionType" 
                             HeaderText="Type" SortExpression="TransactionType" 
                             UniqueName="TransactionType">
                         <HeaderStyle Width="40px" Font-Size="X-Small" />
                         <ItemStyle  Width="40px" HorizontalAlign="Center" Font-Size="X-Small" />   
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="EnterDate" DataType="System.DateTime" 
                             HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate" DataFormatString="{0:MM/dd/yy}">
                         <HeaderStyle Width="55px" Font-Size="X-Small" />
                         <ItemStyle  Width="55px" HorizontalAlign="Right" Font-Size="X-Small" />   
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="DueDate" DataType="System.DateTime" 
                             HeaderText="Due" SortExpression="DueDate" UniqueName="DueDate" DataFormatString="{0:MM/dd/yy}">
                         <HeaderStyle Width="55px" Font-Size="X-Small" />
                         <ItemStyle  Width="55px" HorizontalAlign="Right"  Font-Size="X-Small" />   
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="RushFlg" 
                             HeaderText="Rush" SortExpression="RushFlg" 
                             UniqueName="RushFlg">
                         <HeaderStyle Width="40px" Font-Size="X-Small" />
                         <ItemStyle  Width="40px" HorizontalAlign="Center"  Font-Size="X-Small" />   
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="TotalLineAmt" DataType="System.Decimal" 
                             HeaderText="Total" SortExpression="TotalLineAmt" 
                             UniqueName="TotalLineAmt" DataFormatString="{0:C2}">
                         <HeaderStyle Width="55px" Font-Size="X-Small" />
                         <ItemStyle  Width="55px" HorizontalAlign="Right" Font-Size="X-Small" />   
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="Lines" DataType="System.Int32" 
                             HeaderText="Lines" SortExpression="Lines" UniqueName="Lines">
                         <HeaderStyle Width="40px" Font-Size="X-Small" />
                         <ItemStyle  Width="40px" HorizontalAlign="Right" Font-Size="X-Small" />   
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="comboname" HeaderText="Branch" 
                             SortExpression="comboname" UniqueName="comboname">
                         <HeaderStyle Width="110px" Font-Size="X-Small" />
                         <ItemStyle  Width="110px" HorizontalAlign="Left" Font-Size="X-Small" />   
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="TiedOrderNumber" 
                             HeaderText="Tie" SortExpression="TiedOrderNumber" 
                             UniqueName="TiedOrderNumber">
                         <HeaderStyle Width="50px" Font-Size="X-Small" />
                         <ItemStyle  Width="50px" HorizontalAlign="Right" Font-Size="X-Small" />   
                         </telerik:GridBoundColumn>
                     </Columns>
                 </MasterTableView>
             </telerik:RadGrid>
                 
                
             <asp:SqlDataSource ID="SqlDS_OpenPOs" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                 SelectCommand="SELECT PO_Header_Closed.PONumber, PO_Header_Closed.TransactionType, PO_Header_Closed.EnterDate, PO_Header_Closed.DueDate, PO_Header_Closed.TotalLineAmt, PO_Header_Closed.NumberOfLines AS Lines, PO_Header_Closed.RushFlg, aBranches.comboname, PO_Header_Closed.TiedOrderNumber FROM PO_Header_Closed INNER JOIN aBranches ON PO_Header_Closed.WhseId = aBranches.branchno WHERE (PO_Header_Closed.VendId = @VendId) AND (PO_Header_Closed.SXUser1 = @SXUser1) ORDER BY PO_Header_Closed.EnterDate DESC, PO_Header_Closed.TotalLineAmt DESC">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadGrid1" DefaultValue="0" Name="VendId" 
                         PropertyName="SelectedValue" Type="String" />
                     <asp:Parameter DefaultValue="Open" Name="SXUser1" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
           
                 
                
             
                 
                
          </telerik:RadPageView>
          
          <telerik:RadPageView ID="Comments" runat="server" Selected="true">
             <telerik:RadGrid ID="RadGrid4" runat="server" AllowSorting="True" 
                 AutoGenerateColumns="False" DataSourceID="SqlDS_Comments" GridLines="None" 
                 Width="1000px" Height="190px"  >
                 
                 <MasterTableView DataSourceID="SqlDS_Comments" DataKeyNames="PartnerId" ClientDataKeyNames="PartnerId" 
                    CommandItemDisplay="Top" CommandItemSettings-ShowRefreshButton="true" CommandItemSettings-ShowAddNewRecordButton="false">
                     <CommandItemSettings ExportToPdfText="Export to Pdf" />
                     
                     <ItemStyle  VerticalAlign="Top" />
                     <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left"  Font-Bold="true" />
                     
                     <Columns>
                         <telerik:GridBoundColumn DataField="Comment" HeaderText="Comment" 
                             SortExpression="Comment" UniqueName="Comment" HeaderStyle-Width="600px" ItemStyle-Width="600px" ItemStyle-Font-Size="X-Small">
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="Author" HeaderText="Author" 
                             SortExpression="Author" UniqueName="Author" HeaderStyle-Width="150px" ItemStyle-Width="150px" ItemStyle-Font-Size="X-Small">
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="CommentDate" HeaderText="Date" 
                             SortExpression="CommentDate" UniqueName="CommentDate" 
                             DataType="System.DateTime" HeaderStyle-Width="150px" ItemStyle-Width="150px" ItemStyle-Font-Size="X-Small" DataFormatString="{0:MM/dd/yy}">
                         </telerik:GridBoundColumn>
                     </Columns>
                 </MasterTableView>
                 <ClientSettings>
                     <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                 </ClientSettings>
             </telerik:RadGrid>
             <asp:SqlDataSource ID="SqlDS_Comments" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                 
                 SelectCommand="SELECT [PartnerID], [Comment], [Author], [CommentDate] FROM [aComments] 
                        WHERE (([PartnerID] = @VendID) AND ([Type] = @Type) AND ([Hide] = @Hide)) 
                        ORDER BY [CommentDate] DESC">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="RadGrid1" Name="VendID" 
                         PropertyName="SelectedValue" Type="String" />
                     <asp:Parameter DefaultValue="Vendor" Name="Type" Type="String" />
                     <asp:Parameter DefaultValue="No" Name="Hide" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
            <br />

             <asp:Button ID="btnAddComment" OnClientClick="" runat="server" Text="Add Comment" />
         </telerik:RadPageView>
         
            
         
        
          
   
       </telerik:RadMultiPage>
       
       <telerik:RadWindowManager ID="Singleton" Skin="Silk" Width="1050" Height="550"
                        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
            <Windows>
                    
                    <telerik:RadWindow ID="NewDialog" runat="server" Title="Add Comment" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
            </Windows> 
              
                    
       </telerik:RadWindowManager>   
      
       </div>
      </div>
</asp:Content>

