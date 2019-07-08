<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Operations_Secure.master" AutoEventWireup="false" CodeFile="QuoteService.aspx.vb" Inherits="Operations_Secure_QuoteService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



 <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
 </telerik:RadAjaxLoadingPanel>

 <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="btnSearchQuotes">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>

        </AjaxSettings>
 </telerik:RadAjaxManagerProxy>


<h1>Operations | 'Property Of' Inventory</h1>

<div id="divBody" style="width:1300px;height:900px; margin: 0px 0px 0px 10px;">
   <div style="width:1300px; height:50px; float:left; margin-left:20px;">
     <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Width="1000px" MultiPageID="RadMultiPage1" Skin="MetroTouch" >
            <Tabs>
                <telerik:RadTab runat="server" Text="Requested Service" Selected="true" PageViewID="Service" >
                </telerik:RadTab>
                <telerik:RadTab runat="server" Text="Search All Quotes" PageViewID="QuoteSearch" > 
                </telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
   </div>
   <div style="width:1300px; height:800px; float:left; margin-left:20px;">
    <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="800px" Width="1300px">
        <telerik:RadPageView ID="Service" runat="server" Width="1300px" >
            <div style="height:80px; width:1200px; margin:5px 10px 5px 10px; border:1.5px solid #639AFF;">
                    <div style="width:1300px; height:20px;float:left; margin:10px 0px 0px 0px;">
                        <div style="width:270px; float:left; vertical-align:middle;">
                            <telerik:RadTextBox ID="sProjectName" runat="server" Label="Project Name: " MaxLength="40" Width="250px" LabelWidth="100px">
                            </telerik:RadTextBox>
                        </div>
                    
                        <div style="width:300px; float:left; vertical-align:middle;">
                        
                             <telerik:RadComboBox ID="sStatus" Width="180px"  Runat="server" AutoPostBack="true" Label="Status: " >
                                <Items>
                                    <telerik:RadComboBoxItem Text="All" Value="%" />
                                    <telerik:RadComboBoxItem Text="Open" Value="Contract Pricing" />
                                    <telerik:RadComboBoxItem Text="Closed - Completed" Value="Closed - Completed" />
                                    <telerik:RadComboBoxItem Text="Closed - Cancelled" Value="Closed - Cancelled" />
                                </Items>
                             </telerik:RadComboBox>
                        </div>
                   
                        <div style="width:200px; float:left; vertical-align:middle;">
                            <telerik:RadComboBox ID="sService" Width="180px"  Runat="server" AutoPostBack="true" Label="Status: " >
                                <Items>
                                    <telerik:RadComboBoxItem Text="All" Value="%" />
                                    <telerik:RadComboBoxItem Text="Contract Pricing" Value="Contract Pricing" />
                                    <telerik:RadComboBoxItem Text="Quote and Contract" Value="Quote and Contract" />
                                    <telerik:RadComboBoxItem Text="Quote" Value="Quote" />
                                </Items>
                             </telerik:RadComboBox>
                        </div>

                        <div style="width:140px; float:left; vertical-align:middle;">
                             <telerik:RadButton ID="btnSearchService" runat="server" Text="Search" UseSubmitBehavior="false" Width="100px"></telerik:RadButton>
                        </div>

                    </div>
                    <div style="width:1300px; height:20px;float:left; margin:10px 0px 20px 0px;">
                        <div style="width:270px; float:left; vertical-align:middle;">
                            <telerik:RadTextBox ID="sCustName" runat="server" Label="Customer: " MaxLength="40" Width="250px" LabelWidth="100px">
                            </telerik:RadTextBox>
                        </div> 
                         <div style="width:270px; float:left; vertical-align:middle;">
                            <telerik:RadTextBox ID="sSalesRep" runat="server" Label="Sales Rep: " MaxLength="40" Width="250px" LabelWidth="50px">
                            </telerik:RadTextBox>
                        </div> 
                        <div style="width:270px; float:left; vertical-align:middle;">
                             <telerik:RadTextBox ID="sRequestedBy" runat="server" Label="Requested By: " MaxLength="40" Width="250px" LabelWidth="100px">
                            </telerik:RadTextBox>
                        </div>
                        <div style="width:270px; float:left; vertical-align:middle;">
                             <telerik:RadTextBox ID="sCompletedBy" runat="server" Label="Completed By: " MaxLength="40" Width="250px" LabelWidth="100px">
                            </telerik:RadTextBox>
                        </div>
                    </div>
                </div>
                <div style="width:1300px; height:500px;float:left;">
                    


                    <telerik:RadGrid ID="grdServices" runat="server" Width="1300px" Height="500px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_Services" 
                                    GridLines="None" PageSize="30">
                          <ClientSettings>
                              <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                          </ClientSettings>
                          <PagerStyle AlwaysVisible ="true" />

                          <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_Services" CommandItemDisplay="Top" Width="1400px">
                              <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                
                              <Columns>
                                  <telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../BidTool/Bid.aspx?QuoteID={0}" DataNavigateUrlFields="QuoteID" Text="Quote" UniqueName="column">
                                    <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" />
                                  </telerik:GridHyperLinkColumn>
                                   <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status">
                                    <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="Service" HeaderText="Service" SortExpression="Service" UniqueName="Service">
                                    <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                    <HeaderStyle Width="225px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="225px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="QuoteName" HeaderText="Quote Name" SortExpression="QuoteName" UniqueName="QuoteName">
                                    <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project Name" SortExpression="ProjectName" UniqueName="ProjectName">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="ProjectSubTitle" HeaderText="SubTitle" SortExpression="ProjectSubTitle" UniqueName="ProjectSubTitle">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipTo" SortExpression="ShipToID" UniqueName="ShipToID">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="StartDate" HeaderText="Start" SortExpression="StartDate" UniqueName="StartDate" DataType="System.DateTime" DataFormatString="{0:MM/dd/yy}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="EndDate" HeaderText="End" SortExpression="EndDate" UniqueName="EndDate" DataType="System.DateTime" DataFormatString="{0:MM/dd/yy}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="Requested" DataType="System.DateTime" HeaderText="Requested" SortExpression="Requested" UniqueName="Requested" DataFormatString="{0: MM/dd/yy}" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="Completed" DataType="System.DateTime" HeaderText="Completed" SortExpression="Completed" UniqueName="Completed" DataFormatString="{0: MM/dd/yy}" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>

                                  <telerik:GridBoundColumn DataField="SalesRep" HeaderText="Sales Rep" SortExpression="SalesRep" UniqueName="SalesRep">
                                    <HeaderStyle Width="170px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="170px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="RequestedBy" HeaderText="Requested By" SortExpression="RequestedBy" UniqueName="RequestedBy">
                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                   <telerik:GridBoundColumn DataField="CompletedBy" HeaderText="Completed By" SortExpression="CompletedBy" UniqueName="CompletedBy">
                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  
                                  
                                 <telerik:GridBoundColumn DataField="QuoteServiceID" DataType="System.Int64" HeaderText="QuoteServiceID" SortExpression="QuoteServiceID" UniqueName="QuoteServiceID" Visible="False">
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="QuoteID" DataType="System.Int64" HeaderText="QuoteID" SortExpression="QuoteID" UniqueName="QuoteID" Visible="False">
                                  </telerik:GridBoundColumn>
                                 
                                  
                              </Columns>
                            
                              <PagerStyle PageSizeControlType="RadComboBox" />
                          </MasterTableView>
                         
                        
                      </telerik:RadGrid>


                    <asp:SqlDataSource ID="SqlDS_Services" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspQuoteServiceListing" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                                <asp:ControlParameter Name="Status" ControlID="sStatus" DefaultValue="%" Type="String" PropertyName="SelectedValue" />
                                <asp:ControlParameter Name="ProjectName" ControlID="sProjectName" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="CustName" ControlID="sCustName" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="RequestedBy" ControlID="sRequestedBy" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="CompletedBy" ControlID="sCompletedBy" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="SalesRep" ControlID="sSalesRep" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="Service" ControlID="sService" DefaultValue="%" Type="String" PropertyName="SelectedValue" />

                          </SelectParameters>
                      </asp:SqlDataSource>

                </div>


        </telerik:RadPageView>
        <telerik:RadPageView ID="QuoteSearch" runat="server" Width="1300px" >
            <div style="height:80px; width:1200px; margin:5px 10px 5px 10px; border:1.5px solid #639AFF;">
                    <div style="width:1300px; height:20px;float:left; margin:10px 0px 0px 0px;">
                        <div style="width:270px; float:left; vertical-align:middle;">
                            <telerik:RadTextBox ID="searchQuProjectName" runat="server" Label="Project Name: " MaxLength="40" Width="250px" LabelWidth="100px">
                            </telerik:RadTextBox>
                        </div>
                    
                        <div style="width:300px; float:left; vertical-align:middle;">
                        
                             <telerik:RadComboBox ID="searchQuBranch" Width="180px"  Runat="server" AutoPostBack="true" Label="Branch: "
                                      DataSourceID="SqlDS_BranchesInRegions" DataTextField="comboname" DataValueField="comboname" AppendDataBoundItems="true" >
                                <Items>
                                    <telerik:RadComboBoxItem Text="All Branches" Value="%" />
                                </Items>
                             </telerik:RadComboBox>
                             <asp:SqlDataSource ID="SqlDS_BranchesInRegions" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                    SelectCommand="uspGetBranchesInRegions" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                       <asp:CookieParameter Name="Region1" CookieName="Region1" Type="String"  />
                                                        <asp:CookieParameter Name="Region2" CookieName="Region2" Type="String"  />
                                                        <asp:CookieParameter Name="Region3" CookieName="Region3" Type="String"  />
                                                        <asp:CookieParameter Name="Region4" CookieName="Region4" Type="String"  />
                                                        <asp:CookieParameter Name="Region5" CookieName="Region5" Type="String"  />
                                                        <asp:CookieParameter Name="Region6" CookieName="Region6" Type="String"  />
                                                        <asp:CookieParameter Name="Region7" CookieName="Region7" Type="String"  />
                                                        <asp:CookieParameter Name="Region8" CookieName="Region8" Type="String"  />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                        </div>
                   
                        <div style="width:200px; float:left; vertical-align:middle;">
                            
                        </div>

                        <div style="width:140px; float:left; vertical-align:middle;">
                             <telerik:RadButton ID="btnSearchQuotes" runat="server" Text="Search" UseSubmitBehavior="false" Width="100px"></telerik:RadButton>
                        </div>

                    </div>
                    <div style="width:1300px; height:20px;float:left; margin:10px 0px 20px 0px;">
                        <div style="width:270px; float:left; vertical-align:middle;">
                            <telerik:RadTextBox ID="searchQuCustomer" runat="server" Label="Customer: " MaxLength="40" Width="250px" LabelWidth="100px">
                            </telerik:RadTextBox>
                        </div> 
                         <div style="width:270px; float:left; vertical-align:middle;">
                            <telerik:RadTextBox ID="searchQuWorkCity" runat="server" Label="City: " MaxLength="40" Width="250px" LabelWidth="50px">
                            </telerik:RadTextBox>
                        </div> 
                        <div style="width:270px; float:left; vertical-align:middle;">
                             <telerik:RadTextBox ID="searchQuCreatedBy" runat="server" Label="Created By: " MaxLength="40" Width="250px" LabelWidth="100px">
                            </telerik:RadTextBox>
                        </div>
                    </div>
                </div>

                <div style="width:1300px; height:650px;float:left;">
                    


                    <telerik:RadGrid ID="grdQuoteSearch" runat="server" Width="1300px" Height="400px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_QuoteSearch" 
                                    GridLines="None" PageSize="30">
                          <ClientSettings>
                              <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                          </ClientSettings>
                          <PagerStyle AlwaysVisible ="true" />

                          <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_QuoteSearch" CommandItemDisplay="Top" Width="1400px">
                              <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                
                              <Columns>
                                  <telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../BidTool/Bid.aspx?QuoteID={0}" DataNavigateUrlFields="QuoteID" Text="Go" UniqueName="column">
                                    <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" />
                                  </telerik:GridHyperLinkColumn>
                                  
                                  <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                    <HeaderStyle Width="225px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="225px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="QuoteName" HeaderText="Quote Name" SortExpression="QuoteName" UniqueName="QuoteName">
                                    <HeaderStyle Width="125px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="125px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project Name" SortExpression="ProjectName" UniqueName="ProjectName">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="ProjectSubTitle" HeaderText="SubTitle" SortExpression="ProjectSubTitle" UniqueName="ProjectSubTitle">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="ExtendedPrice" HeaderText="Value" SortExpression="ExtendedPrice" UniqueName="ExtendedPrice" DataFormatString="{0:c0}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  
                                  <telerik:GridBoundColumn DataField="Created" DataType="System.DateTime" HeaderText="Created" SortExpression="Created" UniqueName="Created" DataFormatString="{0: MM/dd/yy}" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>

                                  <telerik:GridBoundColumn DataField="WorkCity" HeaderText="City" SortExpression="WorkCity" UniqueName="WorkCity">
                                    <HeaderStyle Width="170px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="170px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="CreatedBy" HeaderText="Created By" SortExpression="CreatedBy" UniqueName="CreatedBy">
                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  
                                  
                                 
                                  <telerik:GridBoundColumn DataField="QuoteID" DataType="System.Int64" HeaderText="QuoteID" SortExpression="QuoteID" UniqueName="QuoteID" Visible="False">
                                  </telerik:GridBoundColumn>
                                 
                                  
                              </Columns>
                            
                              <PagerStyle PageSizeControlType="RadComboBox" />
                          </MasterTableView>
                         
                        
                      </telerik:RadGrid>


                    <asp:SqlDataSource ID="SqlDS_QuoteSearch" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspQuoteSearchService" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                                <asp:ControlParameter Name="Branch" ControlID="searchQuBranch" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="ProjectName" ControlID="searchQuProjectName" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="CustName" ControlID="searchQuCustomer" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="CreatedBy" ControlID="searchQuCreatedBy" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="WorkCity" ControlID="searchQuWorkCity" DefaultValue="%" Type="String" />

                                <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="State1" Type="String" />
                                <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="State2" Type="String" />
                                <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="State3" Type="String" />
                                <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="State4" Type="String" />
                                <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="State5" Type="String" />
                                <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="State6" Type="String" />
                                <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="State7" Type="String" />
                                <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="State8" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>

                </div>
        </telerik:RadPageView>


    
    </telerik:RadMultiPage>
   </div>
</div>

</asp:Content>

