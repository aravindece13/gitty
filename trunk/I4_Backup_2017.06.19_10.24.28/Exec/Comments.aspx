<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="Comments.aspx.vb" Inherits="Exec_Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
   

    
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">
            function ShowCustomerCommentForm(sender, eventArgs) {
                window.radopen("ActionAddCustomerComment.aspx?custid=" + eventArgs.getDataKeyValue("PartnerID"), "CustomerCommentDialog");
            }

            function ShowVendorCommentForm(sender, eventArgs) {
                window.radopen("ActionAddVendorComment.aspx?vendid=" + eventArgs.getDataKeyValue("PartnerID"), "CustomerCommentDialog");
            }
            
         </script>
   </telerik:RadCodeBlock>
    
<h1>Executive | Customer & Vendor Comments</h1>
   
   <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
    </telerik:RadAjaxLoadingPanel>

   
   
    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_Vendors" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_Customers" LoadingPanelID="" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
        
    </telerik:RadAjaxManagerProxy>    
 
 
    
 
 
 
 
 
 <div id="Comments" style="padding:2px 5px 2px 5px; width:1000px; height:500px;">   
     <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="Web20">
        <Tabs>
            <telerik:RadTab runat="server" Text="Customers" PageViewID="Customers" Selected="true"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Vendors" PageViewID="Vendors" Selected="false"></telerik:RadTab>
            
        </Tabs>
    </telerik:RadTabStrip>

    <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="550px" Width="1000px" BorderColor="Silver" BorderWidth="1px" >
         
         <telerik:RadPageView ID="Vendors" runat="server" Selected="false">
                
                
             <telerik:RadGrid ID="RadGrid2" runat="server" DataSourceID="SqlDS_Vendors" AllowFilteringByColumn="True" Width="1000px" height="550px" 
                 AllowPaging="True" PageSize="25" AllowSorting="True"
                 GridLines="None" >
                 
                 <ClientSettings Selecting-AllowRowSelect="true" 
                        EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                        <ClientEvents OnRowDblClick="ShowVendorCommentForm" />
                     <Scrolling AllowScroll="true" UseStaticHeaders="true" SaveScrollPosition="true" />
                 </ClientSettings>
                 
                 <GroupingSettings CaseSensitive="false" />
                 
                 <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_Vendors" 
                    CommandItemDisplay="Top" CommandItemSettings-ShowRefreshButton="true" CommandItemSettings-ShowAddNewRecordButton="false" 
                    ClientDataKeyNames="PartnerID" DataKeyNames="PartnerID">
                     
                     <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" />   
                     <ItemStyle VerticalAlign="Top" />
                     
                     <Columns>
                         <telerik:GridBoundColumn DataField="PartnerID" HeaderText="PartnerID" 
                             SortExpression="PartnerID" UniqueName="PartnerID" Display="false" >
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="VendorName" HeaderText="Vendor" 
                             SortExpression="VendorName" UniqueName="VendorName"
                             ShowFilterIcon="false" FilterControlWidth="100px" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="150px" />
                             <ItemStyle Width="150px" VerticalAlign="Top" />
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="Comment" HeaderText="Comment" 
                             SortExpression="Comment" UniqueName="Comment"
                             ShowFilterIcon="false" FilterControlWidth="100px" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="450px" />
                             <ItemStyle Width="450px" VerticalAlign="Top" />   
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="Author" HeaderText="Author" 
                             SortExpression="Author" UniqueName="Author"
                             ShowFilterIcon="false" FilterControlWidth="75px" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="100px" />
                             <ItemStyle Width="100px" VerticalAlign="Top" /> 
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="CommentDate" DataType="System.DateTime" 
                             HeaderText="Date" SortExpression="CommentDate" UniqueName="CommentDate" DataFormatString="{0:MM/dd/yy}"
                             ShowFilterIcon="true" FilterControlWidth="60px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="100px" />
                             <ItemStyle Width="100px" VerticalAlign="Top" /> 
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="DisplayLevel" HeaderText="Display To" 
                             SortExpression="DisplayLevel" UniqueName="DisplayLevel" 
                             ShowFilterIcon="false" FilterControlWidth="50px" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="75px" />
                             <ItemStyle Width="75px" VerticalAlign="Top" />
                         </telerik:GridBoundColumn>
                         
                     </Columns>
                 </MasterTableView>
             </telerik:RadGrid>       
                          
                
                
             <asp:SqlDataSource ID="SqlDS_Vendors" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                 SelectCommand="SELECT aComments.PartnerID, aComments.DisplayLevel, aComments.Comment, aComments.Author, aComments.CommentDate, Vendor.Name AS VendorName FROM aComments INNER JOIN Vendor ON aComments.PartnerID = Vendor.VendId WHERE (aComments.Type = @Type) AND (aComments.Hide = @Hide) ORDER BY aComments.CommentDate DESC">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="Vendor" Name="Type" Type="String" />
                     <asp:Parameter DefaultValue="No" Name="Hide" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
                          
                
                
          </telerik:RadPageView> 
         
         
         <telerik:RadPageView ID="Customers" runat="server" Selected="true">
             <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" Width="1000px" height="550px" 
                 AllowPaging="True" PageSize="25" AllowSorting="True" DataSourceID="SqlDS_Customers" GridLines="None" >
                 
                 <GroupingSettings CaseSensitive="false" />
                 
                 <ClientSettings Selecting-AllowRowSelect="true" 
                        EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                    <ClientEvents OnRowDblClick="ShowCustomerCommentForm" />
                    <Scrolling AllowScroll="true" UseStaticHeaders="true" SaveScrollPosition="true" />
                 </ClientSettings>
                 
                 
                 <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_Customers" 
                    CommandItemDisplay="Top" CommandItemSettings-ShowRefreshButton="true" CommandItemSettings-ShowAddNewRecordButton="false" 
                    ClientDataKeyNames="PartnerID" DataKeyNames="PartnerID">
                 
                
                 <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" />   
                 <ItemStyle VerticalAlign="Top" />
                     
                     <Columns>
                         <telerik:GridBoundColumn DataField="PartnerID" HeaderText="PartnerID" 
                             SortExpression="PartnerID" UniqueName="PartnerID" Display="false" >
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" 
                             SortExpression="CustName" UniqueName="CustName" 
                             ShowFilterIcon="false" FilterControlWidth="100px" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="150px" />
                             <ItemStyle Width="150px" VerticalAlign="Top" />
                             
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="SalesRep" HeaderText="Sales Rep" 
                             SortExpression="SalesRep" UniqueName="SalesRep"
                             ShowFilterIcon="false" FilterControlWidth="60px" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="75px" />
                             <ItemStyle Width="75px" VerticalAlign="Top" />
                         </telerik:GridBoundColumn>
                 
                         <telerik:GridBoundColumn DataField="Comment" HeaderText="Comment" 
                             SortExpression="Comment" UniqueName="Comment"
                             ShowFilterIcon="false" FilterControlWidth="100px" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="350px" />
                             <ItemStyle Width="350px" VerticalAlign="Top" />   
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="Author" HeaderText="Author" 
                             SortExpression="Author" UniqueName="Author"
                             ShowFilterIcon="false" FilterControlWidth="75px" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="100px" />
                             <ItemStyle Width="100px" VerticalAlign="Top" /> 
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="CommentDate" DataType="System.DateTime" 
                             HeaderText="Date" SortExpression="CommentDate" UniqueName="CommentDate" DataFormatString="{0:MM/dd/yy}"
                             ShowFilterIcon="true" FilterControlWidth="50px" CurrentFilterFunction="GreaterThan" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="75px" />
                             <ItemStyle Width="75px" VerticalAlign="Top" /> 
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="DisplayLevel" HeaderText="Display To" 
                             SortExpression="DisplayLevel" UniqueName="DisplayLevel" 
                             ShowFilterIcon="false" FilterControlWidth="50px" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                             <HeaderStyle Width="75px" />
                             <ItemStyle Width="75px" VerticalAlign="Top" />
                         </telerik:GridBoundColumn>
                         
                     </Columns>
                 </MasterTableView>
                 <ClientSettings>
                     <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                 </ClientSettings>
             </telerik:RadGrid>
             
             
             <asp:SqlDataSource ID="SqlDS_Customers" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                 SelectCommand="SELECT aComments.PartnerID, aComments.DisplayLevel, aComments.Comment, aComments.Author, aComments.CommentDate, aCustomer.CustName, SalesRep.Name AS SalesRep FROM SalesRep INNER JOIN aCustomer ON SalesRep.SlsRepId = aCustomer.OutsideSlsrep INNER JOIN aComments ON aCustomer.CustId = aComments.PartnerID WHERE (aComments.Type = @Type) AND (aComments.Hide = @Hide) ORDER BY aComments.CommentDate DESC">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="Customer" Name="Type" Type="String" />
                     <asp:Parameter DefaultValue="No" Name="Hide" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
             
             
         </telerik:RadPageView>
         
   
       </telerik:RadMultiPage>
    </div>
    
        <telerik:RadWindowManager ID="Singleton" Skin="Silk" Width="1050" Height="550"
                        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
            <Windows>
                    
                    <telerik:RadWindow ID="CustomerCommentDialog" runat="server" Title="Add Comment" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                    <telerik:RadWindow ID="VendorCommentDialog" runat="server" Title="Add Comment" Height="400px"
                        Width="600px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
                    
            </Windows> 
              
                    
        </telerik:RadWindowManager>  

    
</asp:Content>

