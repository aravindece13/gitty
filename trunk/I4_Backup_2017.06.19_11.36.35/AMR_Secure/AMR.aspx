<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/AMR_Secure.master" AutoEventWireup="false" CodeFile="AMR.aspx.vb" Inherits="AMR_Secure_AMR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>AMR | Account Tracking</h1>




<script  type="text/javascript">

    function ShowProjectDetail(sender, args) {
        var ProjectIndex = args.getDataKeyValue("ProjectIndex");
        var wnd = window.radopen("../AcctTracking/Project.aspx?ProjectIndex=" + ProjectIndex, null);

        //Get the clicked row
        var index = args.get_itemIndexHierarchical();
        var item = args.get_tableView().get_dataItems()[index];
        var rowElement = item.get_element();

        //Get coordinates of the row and reposition the window relative to it
        var bounds = $telerik.getBounds(rowElement);
        wnd.moveTo(bounds.x + 60 + index * 10, bounds.y - 400);

    }
    </script>

    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function OpenPositionedWindow(oButton, url, windowName) {
            var oWnd = window.radopen(url, windowName);
        }

        function openRadNewWindow(CUSTKEY) {

            var oWnd = radopen("../AcctTracking/Project_New.aspx?CUSTKEY=" + CUSTKEY, "NewDialog");
            oWnd.center();
        }

        
     </script>
   </telerik:RadCodeBlock>   





<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadGridCustSearch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridCustSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadMultipage2" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel3" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel4" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lblcustname" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblsalesperson" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lblregion" LoadingPanelID="" />
                    <telerik:AjaxUpdatedControl ControlID="lbltier" LoadingPanelID="" />
                     
                </UpdatedControls>
               
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="RadGridAllCustNotes">
                 <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridAllCustNotes" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            
            <telerik:AjaxSetting AjaxControlID="btnCustUpdate1">
                 <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridCustSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel2" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnCustUpdate2">
                 <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnAddCustNote">
                 <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="RadGridCustNotes" LoadingPanelID="RadAjaxLoadingPanel1" />
                   <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel3" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="RadLV_ProjectComments">
                <UpdatedControls>    
                    <telerik:AjaxUpdatedControl ControlID="RadLV_ProjectComments" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <%--<telerik:AjaxUpdatedControl ControlID="ListViewPanel1" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                </UpdatedControls>
            </telerik:AjaxSetting>
         
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
    </telerik:RadAjaxLoadingPanel>

  <div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:995px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="2"  Width="800px">
        <Tabs>
            <telerik:RadTab runat="server" Text="Customers" PageViewID="Customers" Selected="true"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Recent Customer Comments" PageViewID="CustComments" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Recent Project Comments" PageViewID="ProjectComments" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Add Customer" PageViewID="AddCustomer"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Reports" PageViewID="Reports"></telerik:RadTab>
        </Tabs>
    </telerik:RadTabStrip>
  </div>
    
<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="570px" Width="1000px">
    
  <telerik:RadPageView ID="Customers" runat="server" Selected="true">                              
     <div id="divCustSearch" style="padding:0px 5px 5px 5px;float:left;width:995px;">                                      
         
         <telerik:RadGrid ID="RadGridCustSearch" runat="server" Width="1000px" Height="200px" 
                     AllowFilteringByColumn="True" AllowPaging="True" PageSize="25" AllowSorting="True" 
                     DataSourceID="SqlDS_CustSearch" GridLines="None"  >
             
             <GroupingSettings CaseSensitive="false" />

            <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
            </ClientSettings>
             
             
             <MasterTableView AutoGenerateColumns="False" DataKeyNames="CUSTKEY, CustID" DataSourceID="SqlDS_CustSearch" >
                 <CommandItemSettings ExportToPdfText="Export to Pdf" />
                 
                <ItemStyle VerticalAlign="Top"   />
                <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" /> 
                 
                 <Columns>
                     <telerik:GridBoundColumn DataField="Region" HeaderText="Region" 
                         SortExpression="Region" UniqueName="Region" 
                         CurrentFilterFunction="Contains" FilterControlWidth="30px" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="50px" Font-Size="X-Small"  />
                     <ItemStyle HorizontalAlign="Left" Width="50px" Font-Size="X-Small"  />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="Slsrepname" HeaderText="Sales Rep" 
                         SortExpression="Slsrepname" UniqueName="Slsrepname" 
                         CurrentFilterFunction="Contains" FilterControlWidth="80px" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="100px" Font-Size="X-Small" />
                     <ItemStyle HorizontalAlign="Left" Font-Size="X-Small" Width="100px"  />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="Custname" HeaderText="Customer" 
                         SortExpression="Custname" UniqueName="Custname" 
                         CurrentFilterFunction="Contains" FilterControlWidth="120px" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="150px" Font-Size="X-Small"  />
                     <ItemStyle  HorizontalAlign="Left" Font-Size="X-Small" Width="150px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="Custid" HeaderText="Custid" 
                         SortExpression="Custid" UniqueName="Custid" Display="false">
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="Tier" HeaderText="Tier" 
                         SortExpression="Tier" UniqueName="Tier" 
                          FilterControlWidth="20px" CurrentFilterFunction="EqualTo" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="30px" Font-Size="X-Small" />
                     <ItemStyle HorizontalAlign="Left" Font-Size="X-Small" Width="30px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="CUSTKEY" DataType="System.Int32" 
                         HeaderText="CUSTKEY" ReadOnly="True" SortExpression="CUSTKEY" 
                         UniqueName="CUSTKEY" Display="false">
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridHyperLinkColumn DataTextFormatString="Sales" UniqueName="PrintSalesReport" 
                        HeaderText="" Target="_blank" ShowFilterIcon="false" AllowFiltering="false"  
                        DataTextField="CustID"
                        DataNavigateUrlFields="CustID" 
                        DataNavigateUrlFormatString="../AcctTracking/Sales_ReportViewer.aspx?CustID={0}">
                     <HeaderStyle Width="75px" Font-Size="X-Small" />
                     <ItemStyle  HorizontalAlign="Left" Font-Size="X-Small" Width="75px" />
                     </telerik:GridHyperLinkColumn>
                                      
                     <telerik:GridBoundColumn DataField="wFlexNet"  
                         HeaderText="FlexNet" SortExpression="wFlexNet" UniqueName="wFlexNet" 
                         FilterControlWidth="20px" ShowFilterIcon="false" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="60px" Font-Size="X-Small" />
                     <ItemStyle  HorizontalAlign="Left" Font-Size="X-Small" Width="60px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="wOmni"  
                         HeaderText="Omni" SortExpression="wOmni" UniqueName="wOmni" 
                         FilterControlWidth="20px" ShowFilterIcon="false" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="60px" Font-Size="X-Small" />
                     <ItemStyle HorizontalAlign="Left" Font-Size="X-Small" Width="60px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="wiPerl"  
                         HeaderText="iPerl" SortExpression="wiPerl" UniqueName="wiPerl" 
                         FilterControlWidth="20px" ShowFilterIcon="false" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="60px" Font-Size="X-Small" />
                     <ItemStyle  HorizontalAlign="Left" Font-Size="X-Small" Width="60px"  />
                     </telerik:GridBoundColumn>
                     
                                
                     <telerik:GridBoundColumn DataField="wVGB" 
                         HeaderText="VGB" SortExpression="wVGB" UniqueName="wVGB" 
                         FilterControlWidth="20px" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="60px" Font-Size="X-Small" />
                     <ItemStyle HorizontalAlign="Left" Font-Size="X-Small" Width="60px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="wRadio" 
                         HeaderText="Radio" SortExpression="wRadio" UniqueName="wRadio" 
                         FilterControlWidth="20px" ShowFilterIcon="false" CurrentFilterFunction="Contains" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="60px" Font-Size="X-Small" />
                     <ItemStyle HorizontalAlign="Left" Font-Size="X-Small" Width="60px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="wGas" 
                         HeaderText="Gas" SortExpression="wGas" UniqueName="wGas" 
                         FilterControlWidth="20px" ShowFilterIcon="false" AutoPostBackOnFilter="true" >
                     <HeaderStyle Width="60px" Font-Size="X-Small" />
                     <ItemStyle HorizontalAlign="Left" Font-Size="X-Small" Width="60px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="wElec" 
                         HeaderText="Elec" SortExpression="wElec" UniqueName="wElec" 
                         FilterControlWidth="20px" ShowFilterIcon="false" AutoPostBackOnFilter="true">
                     <HeaderStyle Width="60px" Font-Size="X-Small" />
                     <ItemStyle  HorizontalAlign="Left" Font-Size="X-Small" Width="60px" />
                     </telerik:GridBoundColumn>
                 </Columns>
             </MasterTableView>
             
         </telerik:RadGrid>
                                               
         <asp:SqlDataSource ID="SqlDS_CustSearch" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                  SelectCommand="SELECT [Region], [Slsrepname], [Custname], [Custid], [Tier], [CUSTKEY],  
                    wGas = CASE WHEN [wGas]= 1 THEN 'X' ELSE '' END, 
                    wElec = CASE WHEN [wElec] = 1 THEN 'X' ELSE '' END, 
                    wRadio = CASE WHEN [wRadio]  = 1 THEN 'X' ELSE '' END,                    
                    wVGB = CASE WHEN [wVGB] = 1 THEN 'X' ELSE '' END, 
                    wFlexNet = CASE WHEN [wFlexNet]  = 1 THEN 'X' ELSE '' END,
                    wOmni = CASE WHEN [wOmni]  = 1 THEN 'X' ELSE '' END,
                    wiPerl = CASE WHEN [wiPerl]  = 1 THEN 'X' ELSE '' END
                  FROM [aAcct_Customers] 
                  WHERE (Region = @Region1 OR Region = @Region2 OR Region = @Region3 OR Region = @Region4 OR Region = @Region5) 
                  ORDER BY [Tier], [Custname]">
                <SelectParameters>
                    <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="Region1" Type="String" />
                    <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="Region2" Type="String" />
                    <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="Region3" Type="String" />
                    <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="Region4" Type="String" />
                    <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="Region5" Type="String" />
                     <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="Region6" Type="String" />
                    <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="Region7" Type="String" />
                    <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="Region8" Type="String" />
                </SelectParameters>
         
         </asp:SqlDataSource>
    
     </div>
            
            
            
                                                   
    <div id="divCustomerDetails" style="padding: 5px 5px 5px 5px; height:30px; width:1000px; float:left;">
        
            
        <table id="tblCustDetailsHeader" style="width:100%;" runat="server">
            <tr valign="bottom" style="height:20px;">
                <td><asp:Label ID="lblCustname" runat="server" Width="350px" Font-Bold="true" /></td>
                <td><asp:Label ID="lblTier" runat="server" Width="100px" Font-Bold="true" /></td>
                <td><asp:Label ID="lblSalesPerson" runat="server" Width="175px" Font-Bold="true" /></td>
                <td><asp:Label ID="lblRegion" runat="server" Width="75px" Font-Bold="true" /></td>
                
            </tr>   
        </table>
           
         
    
    
    
    <telerik:RadTabStrip ID="RadTabStrip2" runat="server" MultiPageID="RadMultiPage2" SelectedIndex="0"  Width="1000px" >
        <Tabs>
            <telerik:RadTab runat="server" Text="Profile" PageViewID="CustProfile" Selected="True" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="People" PageViewID="People"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="General Notes" PageViewID="Notes" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Projects" PageViewID="Projects" ></telerik:RadTab>
            
        </Tabs>
    </telerik:RadTabStrip>
  
        <telerik:RadMultiPage ID="RadMultiPage2" runat="server" Height="300px" Width="1000px" SelectedIndex="0">
        
            <telerik:RadPageView ID="CustProfile" runat="server" Selected="true" BorderColor="SteelBlue" BorderWidth="1px" Height="300px" Width="1000px">

                <asp:HiddenField ID="hdnCUSTKEY" runat="server" />
             
             <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" >
             
             <div id="divUpdateCustBtn" style="padding:5px 5px 5px 600px;"> 
                <asp:Button ID="btnCustUpdate1" runat="server" Text="Update Customer Profile"  />
             </div>   
             
             <table style="width: 1000px;">
                <tr>
                    <td>
                        <telerik:RadTextBox ID="Custname" Label="Customer Name: " runat="server" Width="270px" MaxLength="60"></telerik:RadTextBox>
                    </td>
                    <td>
                        <telerik:RadTextBox ID="Custid" Label="Customer #: " runat="server" Width="150px" MaxLength="10"></telerik:RadTextBox>
                    </td>
                    <td>
                        <telerik:RadComboBox ID="Slsrepname" Label="Sales Rep: " runat="server" 
                             DataSourceID="SqlDS_slsreplist" DataValueField="label" DataTextField="label" 
                             Height="200px" Width="110px" ></telerik:RadComboBox>
                    </td>
                    <td>
                       <telerik:RadComboBox ID="Region" Label="Region: " runat="server" Enabled="true" 
                           DataSourceID="SqlDS_regionlist" DataValueField="label" DataTextField="label" 
                            Width="75px" ></telerik:RadComboBox>
                    </td>
                    <td>
                        <telerik:RadComboBox ID="Tier" runat="server" Width="125px" Label="Tier:"  >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="1-High Priority" Value="1" />
                                <telerik:RadComboBoxItem runat="server" Text="2-Normal Priority" Value="2" />
                                <telerik:RadComboBoxItem runat="server" Text="3-Developing" Value="3" />
                            </Items>
                        </telerik:RadComboBox>
                    </td>
             </tr>

            </table>
           <table style="width: 900px;">
            <tr>
                <td>
                    Selling Technolgy:
                </td>
                <td>
                    <asp:CheckBox ID="wFlexNet" Text="FlexNet"  runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="wVGB" Text="VGB" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="wRadio" Text="Radio" runat="server" />
                </td>
                
                <td>
                    <asp:CheckBox ID="wOmni" Text="Omni" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="wiPerl" Text="iPerl" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="wElec" Text="Electric" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="wGas" Text="Gas" runat="server" />
                </td>
                <td>
                    
                </td>
                <td>
                    
                </td>
                <td>
                    
                </td>
            </tr>
            
            <tr>
                <td>
                    Current Technolgy:
                </td>
                <td>
                    <asp:CheckBox ID="FixedBase" Text="FlexNet"  runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="Mapping" Text="VXU w/Map" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="VXU" Text="VXU" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="VGB" Text="VGB" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="Omni" Text="Omni" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="iPerl" Text="iPerl" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="Radio" Text="Radio" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="Touch" Text="TR" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="Direct" Text="DR" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="GasService" Text="Gas" runat="server" />
                </td>
                <td>
                    <asp:CheckBox ID="ElecService" Text="Electric" runat="server" />
                </td>
            </tr>
        </table> <br />
           <table style="width: 800px;">
                <tr>
                    <td>
                        <telerik:RadComboBox ID="CurrentSystem" Label="Current System: " runat="server" Enabled="true" 
                            DataSourceID="SqlDS_CurrentSystem" DataValueField="label" DataTextField="label" 
                            Width="100px" ></telerik:RadComboBox>
                    </td>
                    <td>
                        <telerik:RadTextBox ID="BillingSys" Label="Billing System: " runat="server" Width="200px" MaxLength="25"></telerik:RadTextBox>
                    </td>
                    <td>
                        
              
                    </td>
                </tr>
                <tr>
                    <td>
                     <telerik:RadComboBox ID="Competition" Label="Competition: " runat="server"  
                            DataSourceID="SqlDS_Competition" DataValueField="label" DataTextField="label" 
                            Width="150px" ></telerik:RadComboBox>
                    </td>
                    <td>
                        <telerik:RadComboBox ID="Hurdle" Label="Hurdle: " runat="server"  
                            DataSourceID="SqlDS_Hurdle" DataValueField="label" DataTextField="label" 
                            Width="150px" ></telerik:RadComboBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                
                
            </table>     <br />    
                
                    <asp:SqlDataSource ID="SqlDS_slsreplist" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT type, label, value, seq 
                      FROM aAcct_Menus 
                      WHERE type='SalesRep'
                      ORDER BY seq, label"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDS_regionlist" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT type, label, value, seq 
                      FROM aAcct_Menus 
                      WHERE type='Region'
                      ORDER BY seq, label"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDS_CurrentSystem" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT type, label, value, seq 
                      FROM aAcct_Menus 
                      WHERE type='CurrentSys'
                      ORDER BY seq, label"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDS_Competition" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT type, label, value, seq 
                      FROM aAcct_Menus 
                      WHERE type='Competitor'
                      ORDER BY seq, label"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDS_Hurdle" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT type, label, value, seq 
                      FROM aAcct_Menus 
                      WHERE type='Hurdle'
                      ORDER BY seq, label"></asp:SqlDataSource>
               
                <table style="width: 950px;">
                    <tr>
                        <td>
                            <b>Large Meters</b>
                        </td>
                        <td>
                            <telerik:RadComboBox ID="LrgMeterAge" Runat="server" Label="General Age: "  Width="100px">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                    <telerik:RadComboBoxItem runat="server" Text="0 - 5 Years" 
                                        Value="0 - 5 Years" />
                                    <telerik:RadComboBoxItem runat="server" Text="6 - 10 Years" 
                                        Value="6 - 10 Years" />
                                    <telerik:RadComboBoxItem runat="server" Text="11 + Years" Value="11 + Years" />
                                </Items>
                            </telerik:RadComboBox>
                            
                        </td>
                        <td>
                            <telerik:RadComboBox ID="LrgMeterMfr" Runat="server" Label="Manufacturer: " Width="100px" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                    <telerik:RadComboBoxItem runat="server" Text="Badger" Value="Badger" />
                                    <telerik:RadComboBoxItem runat="server" Text="Hersey" Value="Hersey" />
                                    <telerik:RadComboBoxItem runat="server" Text="Neptune" Value="Neptune" />
                                    <telerik:RadComboBoxItem runat="server" Text="Sensus" Value="Sensus" />
                                </Items>
                            </telerik:RadComboBox>
                        </td>
                        <td>
                            <telerik:RadComboBox ID="LrgMeterType" Runat="server" Label="Type: " Width="100px" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                    <telerik:RadComboBoxItem runat="server" Text="Compound" Value="Compound" />
                                    <telerik:RadComboBoxItem runat="server" Text="Turbo" Value="Turbo" />
                                    <telerik:RadComboBoxItem runat="server" Text="Mix" Value="Mix" />
                                </Items>
                            </telerik:RadComboBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td style="text-align:right;">Meter Counts:</td>
                        <td><telerik:RadNumericTextBox ID="LrgMeterCnt15to2"  
                                Label="1/2-2 in.:" runat="server" EnabledStyle-HorizontalAlign="Right" EnabledStyle-Width="100px" 
                                NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox></td>
                        <td><telerik:RadNumericTextBox ID="LrgMeterCnt3to6"  
                                Label="3 - 6 in.:" runat="server" EnabledStyle-HorizontalAlign="Right" EnabledStyle-Width="100px" 
                                NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox></td>
                        <td><telerik:RadNumericTextBox ID="LrgMeterCnt8Plus"  
                                Label="8 in. +:" runat="server" EnabledStyle-HorizontalAlign="Right" EnabledStyle-Width="100px" 
                                NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox></td>
                    </tr>
                    
                    <tr>
                        <td>
                            <b>Small Meters</b>
                        </td>
                        
                        <td>
                            <telerik:RadComboBox ID="SmlMeterAge" Runat="server" Label="General Age: " Width="100px" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                    <telerik:RadComboBoxItem runat="server" Text="0 - 5 Years" Value="0 - 5 Years" />
                                    <telerik:RadComboBoxItem runat="server" Text="6 - 10 Years" Value="6 - 10 Years" />
                                    <telerik:RadComboBoxItem runat="server" Text="11 + Years" Value="11 + Years" />
                                </Items>
                            </telerik:RadComboBox>
                            
                        </td>
                        <td>
                            <telerik:RadComboBox ID="SmlMeterMfr" Runat="server" Label="Manufacturer: " Width="100px" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                    <telerik:RadComboBoxItem runat="server" Text="Badger" Value="Badger" />
                                    <telerik:RadComboBoxItem runat="server" Text="Hersey" Value="Hersey" />
                                    <telerik:RadComboBoxItem runat="server" Text="Neptune" Value="Neptune" />
                                    <telerik:RadComboBoxItem runat="server" Text="Sensus" Value="Sensus" />
                                </Items>
                            </telerik:RadComboBox>
                        </td>
                        <td>
                            <telerik:RadComboBox ID="SmlMeterType" Runat="server" Label="Type: " Width="100px" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                    <telerik:RadComboBoxItem runat="server" Text="PD" Value="PD" />
                                    <telerik:RadComboBoxItem runat="server" Text="Mag" Value="Mag" />
                                    
                                </Items>
                            </telerik:RadComboBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">Meter Counts:</td>
                        <td><telerik:RadNumericTextBox ID="SmlMeterCnt" 
                                Label="All Sizes: " runat="server" EnabledStyle-HorizontalAlign="Right" EnabledStyle-Width="100px" 
                                NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>  
                </telerik:RadAjaxPanel>
                
             
            </telerik:RadPageView>
            
                    
            <telerik:RadPageView ID="People" runat="server" Selected="false" BorderColor="SteelBlue" BorderWidth="1px" Height="300px" Width="1000px">
              
              <div id="divCustPeople" style="padding:10px 5px 5px 5px;float:left;width:995px;" >
              
                <div id="divUpdateProfilePeople" style="padding:5px 5px 5px 600px;"> 
                    <asp:Button ID="btnCustUpdate2" runat="server" Text="Update Customer Contacts"  />
                </div>
              
              
              <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" >
                  <table style="width: 700px;">
                      <tr>
                          <td style="font-weight:bold; font-size:smaller;">Primary:</td>
                          <td>
                              <telerik:RadTextBox ID="DecMaker" Label="" Width="175px" MaxLength="25" runat="server"></telerik:RadTextBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Contact:</td>
                          <td>
                              <telerik:RadTextBox ID="Contact2" Label="" Width="175px" MaxLength="25" runat="server"></telerik:RadTextBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Contact:</td>
                          <td>
                              <telerik:RadTextBox ID="Contact3" Label="" Width="175px" MaxLength="25" runat="server"></telerik:RadTextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="font-weight:bold; font-size:smaller;">Position:</td>
                          <td>
                              <telerik:RadComboBox ID="DecMakPosition" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Position" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Position:</td>
                          <td>
                              <telerik:RadComboBox ID="Position2" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Position" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Position:</td>
                          <td>
                              <telerik:RadComboBox ID="Position3" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Position" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="font-weight:bold; font-size:smaller;">Attitude:</td>
                          <td>
                              <telerik:RadComboBox ID="DecMakAttitude" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Attitude" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Attitude:</td>
                          <td>
                              <telerik:RadComboBox ID="Attitude2" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Attitude" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Attitude:</td>
                          <td>
                              <telerik:RadComboBox ID="Attitude3" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Attitude" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                      </tr>
                      <tr>
                            <td>&nbsp;</td><td></td><td></td>
                      </tr>
                      
                      <tr>
                          <td style="font-weight:bold; font-size:smaller;">Contact:</td>
                          <td>
                              <telerik:RadTextBox ID="Contact4" Label="" Width="175px" MaxLength="25" runat="server"></telerik:RadTextBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Contact:</td>
                          <td>
                              <telerik:RadTextBox ID="Contact5" Label="" Width="175px" MaxLength="25" runat="server"></telerik:RadTextBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Contact:</td>
                          <td>
                              <telerik:RadTextBox ID="Contact6" Label="" Width="175px" MaxLength="25" runat="server"></telerik:RadTextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="font-weight:bold; font-size:smaller;">Position:</td>
                          <td>
                              <telerik:RadComboBox ID="Position4" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Position" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Position:</td>
                          <td>
                              <telerik:RadComboBox ID="Position5" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Position" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Position:</td>
                          <td>
                              <telerik:RadComboBox ID="Position6" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Position" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="font-weight:bold; font-size:smaller;">Attitude:</td>
                          <td>
                              <telerik:RadComboBox ID="Attitude4" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Attitude" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Attitude:</td>
                          <td>
                              <telerik:RadComboBox ID="Attitude5" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Attitude" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                          <td style="font-weight:bold; font-size:smaller;">Attitude:</td>
                          <td>
                              <telerik:RadComboBox ID="Attitude6" Label="" runat="server" Enabled="true" 
                                DataSourceID="SqlDS_Attitude" DataValueField="label" DataTextField="label" 
                                Width="130px"  Height="100px"></telerik:RadComboBox>
                          </td>
                      </tr>
                  </table>
              </telerik:RadAjaxPanel>
              
              <asp:SqlDataSource ID="SqlDS_Position" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT type, label, value, seq 
                      FROM aAcct_Menus 
                      WHERE type='Position'
                      ORDER BY seq, label"></asp:SqlDataSource>
              <asp:SqlDataSource ID="SqlDS_Attitude" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT type, label, value, seq 
                      FROM aAcct_Menus 
                      WHERE type='Attitude'
                      ORDER BY seq, label"></asp:SqlDataSource>
              
              
              </div> 
              
            </telerik:RadPageView>
            <telerik:RadPageView ID="Notes" runat="server" Selected="false" BorderColor="SteelBlue" BorderWidth="1px" Height="300px" Width="1000px">
             <div id="divCustNotes" style="padding:0px 5px 5px 0px;float:left;width:995px;">
            
            <telerik:RadAjaxPanel ID="RadAjaxPanel3" runat="server" >
                <telerik:RadGrid ID="RadGridCustNotes" runat="server" Width="995px" Height="150px" 
                         AllowFilteringByColumn="false" AllowPaging="True" PageSize="25" AllowSorting="True" 
                         DataSourceID="SqlDS_CustNotes" GridLines="None" >
                 
                 <GroupingSettings CaseSensitive="false" />

                <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                </ClientSettings>
                 
                 
                 <MasterTableView AutoGenerateColumns="False" DataKeyNames="CUSTKEY" DataSourceID="SqlDS_CustNotes">
                     <CommandItemSettings ExportToPdfText="Export to Pdf" />
                     
                    <ItemStyle VerticalAlign="Top" />
                    <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" /> 
                     
                     <Columns>
                         <telerik:GridBoundColumn DataField="AcctNote" HeaderText="Note" 
                             SortExpression="AcctNote" UniqueName="AcctNote" >
                         <HeaderStyle Width="600px" />
                         <ItemStyle HorizontalAlign="Left" Width="400px" Wrap="true"  />
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="Author" HeaderText="Author" 
                             SortExpression="Author" UniqueName="Author">
                         <HeaderStyle Width="100px" />
                         <ItemStyle HorizontalAlign="Left" Width="75px" />
                         </telerik:GridBoundColumn>
                         
                         <telerik:GridBoundColumn DataField="NoteDate" HeaderText="Entered" 
                             SortExpression="NoteDate" UniqueName="NoteDate" DataFormatString="{0:MM/dd/yyyy}">
                         <HeaderStyle Width="100px" />
                         <ItemStyle HorizontalAlign="Center" Width="75px" />
                         
                         </telerik:GridBoundColumn>
                         <telerik:GridBoundColumn DataField="CUSTKEY" DataType="System.Int32" 
                             HeaderText="CUSTKEY" ReadOnly="True" SortExpression="CUSTKEY" 
                             UniqueName="CUSTKEY" Display="false">
                         </telerik:GridBoundColumn>
                         
                     </Columns>
                 </MasterTableView>
                 
             </telerik:RadGrid>
          
            </telerik:RadAjaxPanel>
                                               
         <asp:SqlDataSource ID="SqlDS_CustNotes" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                  SelectCommand="SELECT CUSTKEY, AcctNote, NoteDate, Author
                  FROM aAcct_Notes
                  WHERE CUSTKEY=@CUSTKEY
                  ORDER BY NoteDate Desc">
                  <SelectParameters>
                     <asp:ControlParameter ControlID="RadGridCustSearch" Name="CUSTKEY" 
                         PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>
                 
         </asp:SqlDataSource>      
             <div style="padding:10px 5px 5px 0px;width:990px;height:90px;">
                  
             
             
             
             <telerik:RadTextBox ID="AcctNote" runat="server" Label="New Comment: " 
                  Width="800px" Height="75px" 
                 Wrap="true" TextMode="MultiLine"></telerik:RadTextBox>
             
             
             
                </div> 
                <div style="padding:5px 5px 5px 2px;width:990px;">
                     <asp:HiddenField ID="Author" runat="server" />
                     <asp:HiddenField ID="NoteDate" runat="server" />
                     <asp:Button ID="btnAddCustNote" runat="server" Text="Add New Comment" />
                    
                </div> 
                 
                 
                 
         
             
             </div>
               
             
            </telerik:RadPageView>


            
            <telerik:RadPageView ID="Projects" runat="server" Selected="false" BorderColor="SteelBlue" BorderWidth="1px" Height="300px" Width="1000px">
              <div style="padding:10px 5px 5px 0px;width:990px;">  
                
              <div style="padding:5px 5px 5px 5px;">
              
               <telerik:RadAjaxPanel ID="RadAjaxPanel4" runat="server">
              <telerik:RadGrid ID="RadGridCustProjects" runat="server"
                    Width="975px" Height="200px" 
                     AllowFilteringByColumn="false" AllowPaging="True" PageSize="5" AllowSorting="True" 
                     DataSourceID="SqlDS_CustProjects" GridLines="None" >
             
             <GroupingSettings CaseSensitive="false" />

            <ClientSettings Selecting-AllowRowSelect="true" 
                    EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" 
                    FrozenColumnsCount="0" />
                    <ClientEvents OnRowSelected="ShowProjectDetail" />
            </ClientSettings>
             
             
             <MasterTableView AutoGenerateColumns="False" DataKeyNames="CUSTKEY,ProjectIndex" ClientDataKeyNames="CUSTKEY,ProjectIndex"
                 DataSourceID="SqlDS_CustProjects" 
                 CommandItemDisplay="Top" CommandItemSettings-ShowRefreshButton="true" CommandItemSettings-ShowAddNewRecordButton="false">
                 <CommandItemSettings ExportToPdfText="Export to Pdf" />
                 
                <ItemStyle VerticalAlign="Top" />
                <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" /> 
                 
                 <Columns> 
                     <telerik:GridBoundColumn DataField="CUSTKEY" DataType="System.Int32" 
                         HeaderText="CUSTKEY" ReadOnly="True" SortExpression="CUSTKEY" 
                         UniqueName="CUSTKEY" Display="false">
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="ProjectIndex" DataType="System.Int32" 
                         HeaderText="ProjectIndex" ReadOnly="True" SortExpression="ProjectIndex" 
                         UniqueName="ProjectIndex" Display="false">
                     </telerik:GridBoundColumn>
                    
                     <telerik:GridBoundColumn DataField="Status" HeaderText="Status" 
                         SortExpression="Status" UniqueName="Status">
                     <HeaderStyle Width="75px" />
                     <ItemStyle HorizontalAlign="Left" Width="75px" />
                     </telerik:GridBoundColumn>
                     
                     
                     <telerik:GridBoundColumn DataField="Product" HeaderText="Product" 
                         SortExpression="Product" UniqueName="Product">
                     <HeaderStyle Width="75px" />
                     <ItemStyle HorizontalAlign="Left" Width="75px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="Desc1" HeaderText="Description" 
                         SortExpression="Desc1" UniqueName="Desc1">
                     <HeaderStyle Width="245px" />
                     <ItemStyle HorizontalAlign="Left" Width="245px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="SaleEst" HeaderText="Sale Est." 
                         SortExpression="SaleEst" UniqueName="SaleEst" DataFormatString="{0:C0}">
                     <HeaderStyle Width="75px" />
                     <ItemStyle HorizontalAlign="Right" Width="75px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="Completion" HeaderText="Completion" 
                         SortExpression="Completion" UniqueName="Completion" >
                     <HeaderStyle Width="100px" />
                     <ItemStyle HorizontalAlign="Left" Width="100px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridHyperLinkColumn DataTextFormatString="Print" UniqueName="PrintProject" 
                        HeaderText="Notes" Target="_blank"  
                        DataTextField="ProjectIndex"
                        DataNavigateUrlFields="ProjectIndex" 
                        DataNavigateUrlFormatString="../AcctTracking/Project_ReportViewer.aspx?ProjectIndex={0}">
                     <HeaderStyle Width="75px" />
                     <ItemStyle HorizontalAlign="Left" Width="75px" />
                     </telerik:GridHyperLinkColumn>
                     
                     <telerik:GridBoundColumn DataField="ModifiedBy" HeaderText="Modified By" 
                         SortExpression="ModifiedBy" UniqueName="ModifiedBy">
                     <HeaderStyle Width="100px" />
                     <ItemStyle HorizontalAlign="Left" Width="100px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="ModifiedDate" HeaderText="Modified" 
                         SortExpression="ModifiedDate" UniqueName="ModifiedDate" DataFormatString="{0:MM/dd/yy}">
                     <HeaderStyle Width="75px" />
                     <ItemStyle HorizontalAlign="Left" Width="75px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="CreatedBy" HeaderText="Created By" 
                         SortExpression="CreatedBy" UniqueName="CreatedBy">
                     <HeaderStyle Width="100px" />
                     <ItemStyle HorizontalAlign="Left" Width="100px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="CreatedDate" HeaderText="Created" 
                         SortExpression="CreatedDate" UniqueName="CreatedDate" DataFormatString="{0:MM/dd/yy}">
                     <HeaderStyle Width="75px" />
                     <ItemStyle HorizontalAlign="Left" Width="75px" />
                     </telerik:GridBoundColumn>
                     
                 </Columns>
             </MasterTableView>
             <ClientSettings>
                 <Scrolling AllowScroll="True" UseStaticHeaders="True" />
             </ClientSettings>
         </telerik:RadGrid>
               </telerik:RadAjaxPanel>                                
         <asp:SqlDataSource ID="SqlDS_CustProjects" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                  SelectCommand="SELECT ProjectIndex,CUSTKEY,Product,Desc1,SaleEst,(Month + ' ' + Year) As Completion,Status,ModifiedDate,ModifiedBy,CreatedDate,CreatedBy
                  FROM aAcct_Customers_Projects
                  WHERE CUSTKEY=@CUSTKEY
                  ORDER BY Status,Product">
                  <SelectParameters>
                     <asp:ControlParameter ControlID="RadGridCustSearch" Name="CUSTKEY" 
                         PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>
                 
         </asp:SqlDataSource>
              </div>
              
              <div style="padding:5px 5px 5px 40px; width:600px;">
                    <asp:Button ID="btnAddProject" OnClientClick="" runat="server" Text="Add Project" />
              </div>
              
              </div>
            
            </telerik:RadPageView>
        
            
            
              
        </telerik:RadMultiPage>
       </div><!--End div for divCustomerDetails-->
     </telerik:RadPageView>
        
  <telerik:RadPageView ID="CustComments" runat="server" Selected="false">
           <div id="div1" style="padding:0px 5px 5px 5px;float:left;width:995px;">
                 <telerik:RadGrid ID="RadGridAllCustNotes" runat="server" Width="995px" 
                     Height="525px" AllowPaging="True" PageSize="25" AllowSorting="True" 
                     DataSourceID="SqlDS_AllCustNotes" GridLines="None" >
             
             <GroupingSettings CaseSensitive="false" />

            <ClientSettings Selecting-AllowRowSelect="true" 
                    EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" 
                    FrozenColumnsCount="0" />
                <Selecting AllowRowSelect="True" />
            </ClientSettings>
             
             
             <MasterTableView AutoGenerateColumns="False" DataKeyNames="CUSTKEY" 
                 DataSourceID="SqlDS_AllCustNotes">
                 <CommandItemSettings ExportToPdfText="Export to Pdf" />
                 
                <ItemStyle VerticalAlign="Top" />
                <HeaderStyle VerticalAlign="Bottom" HorizontalAlign="Left" Font-Bold="true" /> 
                 
                 <Columns>
                     <telerik:GridBoundColumn DataField="Slsrepname" HeaderText="Sales Rep" 
                         SortExpression="Slsrepname" UniqueName="Slsrepname">
                     <HeaderStyle Width="75px" />
                     <ItemStyle HorizontalAlign="Left" Width="75px" />
                     </telerik:GridBoundColumn>
                     <telerik:GridBoundColumn DataField="Custname" HeaderText="Customer" 
                         SortExpression="Custname" UniqueName="Custname">
                     <HeaderStyle Width="125px" />
                     <ItemStyle HorizontalAlign="Left" Width="125px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="AcctNote" HeaderText="Note" 
                         SortExpression="AcctNote" UniqueName="AcctNote">
                     <HeaderStyle Width="300px" />
                     <ItemStyle HorizontalAlign="Left" Width="300px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="Author" HeaderText="Author" 
                         SortExpression="Author" UniqueName="Author">
                     <HeaderStyle Width="100px" />
                     <ItemStyle HorizontalAlign="Left" Width="75px" />
                     </telerik:GridBoundColumn>
                     
                     <telerik:GridBoundColumn DataField="NoteDate" HeaderText="Entered" 
                         SortExpression="NoteDate" UniqueName="NoteDate" DataFormatString="{0:MM/dd/yyyy}">
                     <HeaderStyle Width="100px" />
                     <ItemStyle HorizontalAlign="Center" Width="75px" />
                     
                     </telerik:GridBoundColumn>
                     <telerik:GridBoundColumn DataField="CUSTKEY" DataType="System.Int32" 
                         HeaderText="CUSTKEY" ReadOnly="True" SortExpression="CUSTKEY" 
                         UniqueName="CUSTKEY" Display="false">
                     </telerik:GridBoundColumn>
                     
                 </Columns>
             </MasterTableView>
             <ClientSettings>
                 <Scrolling AllowScroll="True" UseStaticHeaders="True" />
             </ClientSettings>
         </telerik:RadGrid>
                                               
         <asp:SqlDataSource ID="SqlDS_AllCustNotes" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                  
                     SelectCommand="SELECT aAcct_Notes.CUSTKEY, aAcct_Notes.AcctNote, aAcct_Notes.NoteDate, aAcct_Notes.Author, aAcct_Customers.Custname, aAcct_Customers.Slsrepname 
                     FROM aAcct_Notes INNER JOIN aAcct_Customers ON aAcct_Notes.CUSTKEY = aAcct_Customers.CUSTKEY 
                    
                     ORDER BY aAcct_Notes.NoteDate DESC">
                <%--<SelectParameters>
                     WHERE (aAcct_Customers.Region = @Region1) OR (aAcct_Customers.Region = @Region2) OR (aAcct_Customers.Region = @Region3) OR (aAcct_Customers.Region = @Region4) OR (aAcct_Customers.Region = @Region5)
                    <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="Region1" Type="String" />
                    <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="Region2" Type="String" />
                    <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="Region3" Type="String" />
                    <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="Region4" Type="String" />
                    <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="Region5" Type="String" />
                </SelectParameters>--%>
                 
         </asp:SqlDataSource>      
         </div>
        </telerik:RadPageView>
        
  
  <telerik:RadPageView ID="ProjectComments" runat="server" Selected="false">
           <div id="div2" style="padding:5px 5px 5px 5px;float:left;width:995px;height:400px;">
         
         <telerik:RadListView ID="RadLV_ProjectComments" runat="server"  
             DataSourceID="SqlDS_ProjectComments" width="900px" 
              AllowPaging="true" ItemPlaceholderID="CommentsHolder" >
             
        <LayoutTemplate>
                <fieldset style="width: 875px;" id="FieldSet1">
                    <legend style="font-size:medium; color:Black;padding: 3px 0px 3px 3px;">Recent Project Comments</legend>
                    <asp:Panel ID="CommentsHolder" runat="server"  />
                    <table cellpadding="3" cellspacing="0" width="100%" style="clear: both;">
                        <tr>
                            <td>
                                <telerik:RadDataPager ID="RadDataPager1" runat="server" PagedControlID="RadLV_ProjectComments"
                                    PageSize="3">
                                    <Fields>
                                        <telerik:RadDataPagerButtonField FieldType="FirstPrev" />
                                        <telerik:RadDataPagerButtonField FieldType="Numeric" />
                                        <telerik:RadDataPagerButtonField FieldType="NextLast" />
                                        <telerik:RadDataPagerPageSizeField PageSizeText="Page size: " />
                                        <telerik:RadDataPagerGoToPageField CurrentPageText="Page: " TotalPageText="of" SubmitButtonText="Go"
                                            TextBoxWidth="15" />
                                        <telerik:RadDataPagerTemplatePageField>
                                            <PagerTemplate>
                                                <div style="float: right">
                                                    <b>Items
                                                        <asp:Label runat="server" ID="CurrentPageLabel" Text="<%# Container.Owner.StartRowIndex+1%>" />
                                                        to
                                                        <asp:Label runat="server" ID="TotalPagesLabel" Text="<%# IIF(Container.Owner.TotalRowCount > (Container.Owner.StartRowIndex+Container.Owner.PageSize), Container.Owner.StartRowIndex+Container.Owner.PageSize, Container.Owner.TotalRowCount) %>" />
                                                        of
                                                        <asp:Label runat="server" ID="TotalItemsLabel" Text="<%# Container.Owner.TotalRowCount%>" />
                                                        <br />
                                                    </b>
                                                </div>
                                            </PagerTemplate>
                                        </telerik:RadDataPagerTemplatePageField>
                                    </Fields>
                                </telerik:RadDataPager>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </LayoutTemplate>
      
        
        <ItemTemplate>
                      
            <div id="CommentHeadline" style="width:850px; font-weight:bold; color:Red;">
                <asp:Label ID="CommentLabel2" runat="server" Text='<%# Eval("Custname") %> ' /> - 
                <asp:Label ID="CommentLabel3" runat="server" Text='<%# Eval("Product") %> ' /> |  
                <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Slsrepname") %> ' /> |
                <asp:Label ID="CommentLabel4" runat="server" Text='<%# Eval("Task") %>' /> | Task Due:
                <asp:Label ID="CommentLabel5" runat="server" Text='<%# String.Format("{0:d}", Eval("DueDate")) %> ' />
            
            </div><br />
            
            <div id="CommentItem" style="width:800px; padding: 0px 0px 0px 15px;">
                <asp:Label ID="CommentContentLabel" runat="server" Text='<%# Eval("Comment") %>' />
            </div><br />
            

            <div id="CommentItemStats" style="width:800px; padding: 0px 0px 3px 10px;color:Blue;">
                   <asp:Label ID="lblAuthor1" runat="server" Text="Author: " Font-Bold="true" ></asp:Label>
                   <asp:Label ID="lblAuthor2" runat="server" Text='<%# Eval("Author") %>' ></asp:Label> &nbsp;
                   <asp:Label ID="lblCommentDate" runat="server" Text='<%# Eval("CommentDate") %>' ></asp:Label> &nbsp;
                   
            </div>
            <hr style="color:Blue; width:800px;" /> 
            
        </ItemTemplate>
        <EmptyDataTemplate>
            <div >
                <div>
                    There are no items to be displayed.</div>
            </div>
        </EmptyDataTemplate>
        
    </telerik:RadListView>
         
         
                 
                                               
         <asp:SqlDataSource ID="SqlDS_ProjectComments" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                  
                     SelectCommand="SELECT aAcct_Customers.Custname, aAcct_Customers.Slsrepname, aAcct_Customers_Projects.Product, aAcct_ProjectTasks.Description AS Task, 
                      aAcct_ProjectTasks.DueDate, aAcct_ProjectTaskNotes.Comment, aAcct_ProjectTaskNotes.CommentDate, aAcct_ProjectTaskNotes.Author
                      FROM aAcct_Customers INNER JOIN aAcct_Customers_Projects ON aAcct_Customers.CUSTKEY = aAcct_Customers_Projects.CUSTKEY INNER JOIN
                      aAcct_ProjectTasks ON aAcct_Customers_Projects.CUSTKEY = aAcct_ProjectTasks.CUSTKEY AND 
                      aAcct_Customers_Projects.ProjectIndex = aAcct_ProjectTasks.ProjectIndex INNER JOIN
                      aAcct_ProjectTaskNotes ON aAcct_ProjectTasks.CUSTKEY = aAcct_ProjectTaskNotes.CUSTKEY AND 
                      aAcct_ProjectTasks.TaskIndex = aAcct_ProjectTaskNotes.TaskIndex
                     
                     ORDER BY aAcct_ProjectTaskNotes.CommentDate DESC, aAcct_Customers.Custname, aAcct_Customers_Projects.Product">
                <%--<SelectParameters>
                    WHERE (aAcct_Customers.Region = @Region1) OR (aAcct_Customers.Region = @Region2) OR (aAcct_Customers.Region = @Region3) OR (aAcct_Customers.Region = @Region4) OR (aAcct_Customers.Region = @Region5)
                    <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="Region1" Type="String" />
                    <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="Region2" Type="String" />
                    <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="Region3" Type="String" />
                    <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="Region4" Type="String" />
                    <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="Region5" Type="String" />
                </SelectParameters>--%>
                 
         </asp:SqlDataSource>      
         </div>
   </telerik:RadPageView>
  
  
  
       
  <telerik:RadPageView ID="AddCustomer" runat="server" Selected="false">
     <div id="divAddCustomer" style="padding:0px 5px 5px 5px;float:left;width:995px;">
        <div id="divAddCustomerEntryForm" style="padding:10px 0px 5px 0px;float:left;width:995px;">
            <asp:Label ID="Label2" runat="server" Text="Add New Customer" ForeColor="SteelBlue" Font-Bold="true" Font-Size="Medium"></asp:Label>
            
            
            
            
            <div style="padding:5px 5px 5px 5px;width:600px;">    
               <table width="800px">
                <tr>
                    <td>Customer:</td>
                    <td><telerik:RadTextBox ID="newCustName" runat="server" Width="200px" MaxLength="60" ToolTip="Example: Castle Rock, City Of"></telerik:RadTextBox></td>
                    <td>Cust. No.:</td>
                    <td><telerik:RadTextBox ID="newCustID" runat="server" Width="100px" MaxLength="10"></telerik:RadTextBox></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Sales Person:</td>
                    <td><telerik:RadComboBox ID="newSlsrepname"  runat="server" 
                             DataSourceID="SqlDS_NewCustRepList" DataValueField="label" DataTextField="label" 
                             Height="150px" Width="125px" ></telerik:RadComboBox></td>
                    <td>Region:</td>
                    <td><telerik:RadComboBox ID="newRegion"  runat="server" DataSourceID="SqlDS_NewRegionList"  
                            Height="150px" Width="75px" DataValueField="label" DataTextField="label" ></telerik:RadComboBox></td>
                    <td>Tier:</td>
                    <td><telerik:RadComboBox ID="newTier" runat="server" Height="75px" Width="150px"   >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="1-High Priority" Value="1" />
                                <telerik:RadComboBoxItem runat="server" Text="2-Normal Priority" Value="2" />
                                <telerik:RadComboBoxItem runat="server" Text="3-Developing" Value="3" />
                            </Items>
                </telerik:RadComboBox></td>
                </tr>
                
               </table> 
               
                <%--Height="150px" Width="75px"--%>
                
            </div>
            
            
            <asp:HiddenField ID="newCreatedBy" runat="server" />
            <asp:HiddenField ID="newCreatedDate" runat="server" />
            
            
            
            <div id="divAddCustomerButton" style="padding:5px 5px 5px 5px;"> 
                <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer"  />
             </div> 
            
            <asp:SqlDataSource ID="SqlDS_NewCustRepList" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT type, label, value, seq 
                      FROM aAcct_Menus 
                      WHERE type='SalesRep'
                      ORDER BY seq, label"></asp:SqlDataSource>
                      
            <asp:SqlDataSource ID="SqlDS_NewRegionList" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                      SelectCommand="SELECT type, label, value, seq 
                      FROM aAcct_Menus 
                      WHERE type='Region'
                      ORDER BY seq, label"></asp:SqlDataSource>
        
        </div>
        <div id="divAddCustomerRecentlyEntered" style="padding:15px 0px 5px 0px;float:left;width:995px;">
            
            <asp:Label ID="Label3" runat="server" Text="Recently Added Customers" ForeColor="SteelBlue" Font-Bold="true" Font-Size="Medium"></asp:Label>
            
            
            <telerik:RadGrid ID="grdRecentlyAddedCustomers" runat="server" Width="950px" 
                Height="300px" AllowPaging="True" AllowSorting="True" 
                DataSourceID="SqlDS_NewCustomers" GridLines="None">
        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_NewCustomers">
        <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

            <Columns>
                <telerik:GridBoundColumn DataField="Custname" HeaderText="Customer" 
                    SortExpression="Custname" UniqueName="Custname">
                <HeaderStyle Width="275px" HorizontalAlign="Left" />
                <ItemStyle Width="275px" HorizontalAlign="Left" VerticalAlign="Top" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Custid" HeaderText="Cust #" 
                    SortExpression="Custid" UniqueName="Custid">
                <HeaderStyle Width="90px" HorizontalAlign="Left" />
                <ItemStyle Width="90px" HorizontalAlign="Left" VerticalAlign="Top" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Slsrepname" HeaderText="Sales Rep" 
                    SortExpression="Slsrepname" UniqueName="Slsrepname">
                <HeaderStyle Width="100px" HorizontalAlign="Left" />
                <ItemStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Top" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Region" HeaderText="Region" 
                    SortExpression="Region" UniqueName="Region">
                <HeaderStyle Width="60px" HorizontalAlign="Left" />
                <ItemStyle Width="60px" HorizontalAlign="Left" VerticalAlign="Top" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Tier" DataType="System.Int32" 
                    HeaderText="Tier" SortExpression="Tier" UniqueName="Tier">
                <HeaderStyle Width="40px" HorizontalAlign="Left" />
                <ItemStyle Width="40px" HorizontalAlign="Center" VerticalAlign="Top" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="CreatedDate" DataType="System.DateTime" 
                    HeaderText="Created" SortExpression="CreatedDate" UniqueName="CreatedDate" DataFormatString="{0:MM/dd/yy}">
                <HeaderStyle Width="75px" HorizontalAlign="Left" />
                <ItemStyle Width="75px" HorizontalAlign="Right" VerticalAlign="Top" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="CreatedBy" HeaderText="Created By" 
                    SortExpression="CreatedBy" UniqueName="CreatedBy">
                <HeaderStyle Width="150px" HorizontalAlign="Left" />
                <ItemStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Top" />
                </telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>
            <ClientSettings>
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>
        </telerik:RadGrid>

            <asp:SqlDataSource ID="SqlDS_NewCustomers" runat="server" 
                ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                SelectCommand="SELECT [Custname], [Custid], [CreatedDate], [CreatedBy], [Slsrepname], [Region], [Tier] FROM [aAcct_Customers] ORDER BY [CreatedDate] DESC, [Custname]">
            </asp:SqlDataSource>
                
        
        </div>
     
     </div>
  </telerik:RadPageView>


    <telerik:RadPageView ID="Reports" runat="server" Height="570px" Width="1000px">
       <div id="divReportsPageView" style="padding:15px 5px 5px 15px;float:left;width:995px;">
           <p style="font-size:large; color:Red;"><b>Click on the report title to run that report.</b></p>
           <asp:HyperLink ID="HyperLink1" Target="_blank" NavigateUrl="../Reports/AcctTrack/AcctTrack_RV_Overview_AMRSpecialist.aspx" runat="server">
           <h6>AMR/AMI Specialist Overview</h6></asp:HyperLink>
            <p>This report provides an overview of past sales history, future projections, and user activity in the Account Tracking application.</p>
            
            <asp:HyperLink ID="HyperLink3" Target="_blank" NavigateUrl="../Reports/AcctTrack/AcctTrack_RV_TaskMngment_AMRSpecialist.aspx" runat="server">
            <h6>Active Tasks</h6></asp:HyperLink>
            <p>This report provides a listing of all <b>Active</b> tasks in the sales process for your region.  To see a history of tasks, and associated commentary, please go to the individual customer reports.</p>
       
            <asp:HyperLink ID="HyperLink4" Target="_blank" NavigateUrl="../Reports/AcctTrack/AcctTrack_RV_Sales_AMRSpecialist.aspx" runat="server">
            <h6>Invoicing History</h6></asp:HyperLink>
            <p>The Invoicing History report presents historical sales information by product type and at the customer level.</p>
       
            <asp:HyperLink ID="HyperLink2" Target="_blank" NavigateUrl="../Reports/AcctTrack/AcctTrack_RV_Forecast_AMRSpecialist.aspx" runat="server">
            <h6>Forecasts</h6></asp:HyperLink>
            <p>The Forecasts report presents projected sales forecasts by product type and customer.  The forecasts are built using information provided in the Projects.</p>
       
            <asp:HyperLink ID="HyperLink5" Target="_blank" NavigateUrl="../Reports/AcctTrack/AcctTrack_RV_AppActivity_AMRSpecialist.aspx" runat="server">
            <h6>Account Tracking Application Activity</h6></asp:HyperLink>
            <p>The Account Tracking Application Activity Report details the activity within the Accounts and Projects.  This is a quick way to identify if an account is due for updating, or if notes or tasks
            have been added by someone other than yourself.</p>
       </div>
        
        
  </telerik:RadPageView>

</telerik:RadMultiPage>

 <telerik:RadWindowManager ID="Singleton" Skin="Silk" Width="950" Height="600"
                        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server">
    <Windows>
            <telerik:RadWindow ID="NewDialog" runat="server" Title="Add New Project" Height="350px"
                Width="600px" Left="75px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" />
    </Windows> 
      
            
</telerik:RadWindowManager>  










</asp:Content>

