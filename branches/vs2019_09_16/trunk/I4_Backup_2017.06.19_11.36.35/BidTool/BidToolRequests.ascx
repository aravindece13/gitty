<%@ Control Language="VB" AutoEventWireup="false" CodeFile="BidToolRequests.ascx.vb" Inherits="BidTool_BidToolRequests" %>


<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="1300" MinDisplayTime="10" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel2" Runat="server" IsSticky="false" InitialDelayTime="3300" MinDisplayTime="10" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="btnSearchService">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdserviceSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="grdserviceSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelServiceAction" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lnkInforContractPricing"  />
                        <telerik:AjaxUpdatedControl ControlID="newStatus"  />
                    </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnUpdateStatus">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdserviceSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelServiceAction" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lnkInforContractPricing"  />
                        <telerik:AjaxUpdatedControl ControlID="newStatus"  />
                    </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>


</telerik:RadAjaxManagerProxy>


<div id="divBody" style="width:1800px; margin:10px;">
    <div style="width:1500px; height:475px;  margin:5px 0px 10px 0px; border:2px solid #4c68a2;">
    
        <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">    
            Service Request Search
        </div>
    
    <div style="width:1200px; height:25px;  margin:5px 0px 10px 10px; ">
        
        <div style="width:220px; float:left; vertical-align:middle;">
            <telerik:RadTextBox ID="searchCustName" runat="server" Label="Customer: " MaxLength="40" Width="200px" LabelWidth="80px" LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div> 
        
        <div style="width:220px; float:left; vertical-align:middle;">
            <telerik:RadTextBox ID="searchProjectName" runat="server" Label="Project: " MaxLength="40" Width="200px" LabelWidth="70px" LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div> 
        <div style="width:220px; float:left; vertical-align:middle;">
            <telerik:RadTextBox ID="searchQuoteName" runat="server" Label="Quote Name: " MaxLength="40" Width="200px" LabelWidth="100px" LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div> 
        <div style="width:220px; float:left; vertical-align:middle;">
            <telerik:RadTextBox ID="searchSalesRep" runat="server" Label="Sales Rep: " MaxLength="40" Width="200px" LabelWidth="80px" LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div> 
        <div style="float:left; vertical-align:top; width:120px; margin: 3px 0px 3px 20px;">
            <telerik:RadButton ID="btnSearchService" runat="server"  Text="Search" Width="100px" Skin="Office2010Blue" ButtonType="SkinnedButton" AutoPostBack="True">
            </telerik:RadButton>
        </div>
    </div>
    <div style="width:1200px; height:25px; margin:0px 0px 10px 10px;">
        <div style="width:170px; float:left; vertical-align:middle; margin-right:20px;">
            <telerik:RadComboBox ID="searchStatus" Width="120px"  runat="server" Label="Status: " LabelCssClass="myLabelCss" >
                            
                <Items>
                    <telerik:RadComboBoxItem runat="server" Text="All" Value="%"  />
                    <telerik:RadComboBoxItem runat="server" Text="Open" Value="Open" Selected="true"/>
                    <telerik:RadComboBoxItem runat="server" Text="Closed" Value="Closed" />
                    <telerik:RadComboBoxItem runat="server" Text="Cancelled" Value="Cancelled" />
                    <telerik:RadComboBoxItem runat="server" Text="No Request" Value="No Request" />
                    
                </Items>
            </telerik:RadComboBox>
        </div>
        <div style="width:190px; float:left; vertical-align:middle; margin-right:20px;">
            <telerik:RadComboBox ID="searchService" Width="120px"  runat="server" Label="Service: " LabelCssClass="myLabelCss" >
                            
                <Items>
                    <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true" />
                    <telerik:RadComboBoxItem runat="server" Text="Contract Pricing" Value="Contract Pricing" />
                    <telerik:RadComboBoxItem runat="server" Text="No Request" Value="No Request" />
                  
                </Items>
            </telerik:RadComboBox>
        </div>
        <div style="width:300px; float:left; vertical-align:middle;">
            <telerik:RadTextBox ID="searchRequestedBy" runat="server" Label="Requestor: " MaxLength="40" Width="275px" LabelWidth="80px" LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div> 

        <div style="width:300px; float:left; vertical-align:middle;">
            <telerik:RadTextBox ID="searchCompletedBy" runat="server" Label="Completed By: " MaxLength="40" Width="275px" LabelWidth="100px" LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div>
    </div>
    


    <div style="width:1500px; height:350px; margin:0px 0px 10px 0px;">
        <telerik:RadGrid ID="grdserviceSearch" runat="server" Width="1495px" Height="350px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_serviceSearch"
                            GridLines="None" PageSize="30">
            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                <Selecting AllowRowSelect="true" />
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />

            </ClientSettings>
            <PagerStyle AlwaysVisible ="true" />

            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_serviceSearch" CommandItemDisplay="Top" Width="1200px" DataKeyNames="QuoteID, QuoteServiceID" ClientDataKeyNames="QuoteID,QuoteServiceID">
                <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />

                         
                <Columns>
                    <%--<telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../BidTool/Bid.aspx?QuoteID={0}" DataNavigateUrlFields="QuoteID" Text="Go" UniqueName="column">
                        <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                        <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" ForeColor="CornflowerBlue" />
                    </telerik:GridHyperLinkColumn>--%>
                    <telerik:GridBoundColumn DataField="Requested" DataType="System.DateTime" HeaderText="Requested" SortExpression="Requested" UniqueName="Requested" >
                        <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                        <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="Completed" DataType="System.DateTime" HeaderText="Completed" SortExpression="Completed" UniqueName="Completed" DataFormatString="{0: MM/dd/yy}" >
                        <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                        <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>

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
                    
                    <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project Name" SortExpression="ProjectName" UniqueName="ProjectName">
                        <HeaderStyle Width="250px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                        <ItemStyle Width="250px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipToID" SortExpression="ShipToID" UniqueName="ShipToID">
                        <HeaderStyle Width="90px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                        <ItemStyle Width="90px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="QuoteName" HeaderText="Quote Name" SortExpression="QuoteName" UniqueName="QuoteName">
                        <HeaderStyle Width="225px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                        <ItemStyle Width="225px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                    
                  
                    <telerik:GridBoundColumn DataField="RequestedBy" HeaderText="Requested By" SortExpression="RequestedBy" UniqueName="RequestedBy">
                        <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                        <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                                  

                    <telerik:GridBoundColumn DataField="QuoteID" DataType="System.Int64" HeaderText="QuoteID" SortExpression="QuoteID" UniqueName="QuoteID" Visible="true">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="JobID" DataType="System.Int64" HeaderText="JobID" SortExpression="JobID" UniqueName="JobID" Visible="False">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QuoteServiceID" DataType="System.Int64" HeaderText="QuoteServiceID" SortExpression="QuoteServiceID" UniqueName="QuoteServiceID" Visible="True">
                    </telerik:GridBoundColumn>             
                                  
                </Columns>
                            
              
            </MasterTableView>
            
                        
        </telerik:RadGrid>

        <asp:SqlDataSource ID="SqlDS_serviceSearch" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspQuoteServiceListing" SelectCommandType="StoredProcedure">
            <SelectParameters>
                
                <asp:ControlParameter Name="Status" ControlID="searchStatus" PropertyName="SelectedValue" DefaultValue="Open" Type="String" />
                <asp:ControlParameter Name="RequestedBy" ControlID="searchRequestedBy" DefaultValue="%" Type="String" />
                <asp:ControlParameter Name="SalesRep" ControlID="searchSalesRep" DefaultValue="%" Type="String" />
                <asp:ControlParameter Name="CustName" ControlID="searchCustName" DefaultValue="%" Type="String" />
                <asp:ControlParameter Name="ProjectName" ControlID="searchProjectName" DefaultValue="%" Type="String" />
                <asp:ControlParameter Name="CompletedBy" ControlID="searchCompletedBy" DefaultValue="%" Type="String" />
                <asp:ControlParameter Name="QuoteName" ControlID="searchQuoteName" DefaultValue="%" Type="String" />
                <asp:ControlParameter Name="Service" ControlID="searchService" PropertyName="SelectedValue" DefaultValue="%" Type="String" />
                
                                
<%--            <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="State1" Type="String" />
                <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="State2" Type="String" />
                <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="State3" Type="String" />
                <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="State4" Type="String" />
                <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="State5" Type="String" />
                <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="State6" Type="String" />
                <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="State7" Type="String" />
                <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="State8" Type="String" />--%>
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
    </div>
    <div style="width:1500px; height:250px;  margin:5px 0px 10px 0px; border:2px solid #4c68a2;">
    
        <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">    
            Actions
        </div>
        <asp:Panel ID="RadAjaxPanelServiceAction" runat="server" Width="1500px" Height="150px">
        
        
            <div style="width:1400px; height:150px;  margin:5px 0px 10px 10px; ">
                <div style="width:1200px; ">
                    <div style="width:100%; Font-weight:bold; vertical-align:middle; ">
                        <div style="width:300px; margin: 6px; float:left;">
                            <div style="width:90px;float:left; ">
                                <asp:Label ID="Label1" runat="server" Text="Customer:" Width="80px" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="width:200px;float: left;font-size:small;">
                                <asp:Label ID="lblCustName" runat="server"></asp:Label>
                            </div>
                        </div>
                    
                        <div style="width:340px; margin: 6px; float:left;">
                            <div style="width:80px;float:left; ">
                                <asp:Label ID="Label2" runat="server" Text="Project:" Width="70px" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="width:250px;float: left;font-size:small;">
                                <asp:Label ID="lblProject" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div style="width:400px; margin: 6px; float:left;">
                            <div style="width:110px;float:left; ">
                                <asp:Label ID="Label3" runat="server" Text="Quote Name:" Width="100px" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="width:250px;float: left;font-size:small;">
                                <asp:Label ID="lblQuoteName" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div style="width:240px; margin: 6px;float:left;">
                            <div style="width:80px;float:left; ">
                                <asp:Label ID="Label4" runat="server" Text="Service:" Width="70px" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="width:150px;float: left;font-size:small;">
                                <asp:Label ID="lblService" runat="server"></asp:Label>
                            </div>
                        </div>
                    
                        <asp:HiddenField ID="hdnCompletedBy" runat="server" />
                        <asp:HiddenField ID="hdnShipToID" runat="server" />
                        <asp:HiddenField ID="hdnQuoteServiceID" runat="server" />
                        <asp:HiddenField ID="hdnRequestedEmail" runat="server" />
                        <asp:HiddenField ID="hdnCustName" runat="server" />
                        <asp:HiddenField ID="hdnProjectName" runat="server" />
                        <asp:HiddenField ID="hdnQuoteName" runat="server" />
                
                    </div> 
                    <div style="width:1200px; float:left; margin: 10px 0px 10px 0px; float:left; ">   
                        <div style="width:400px; float:left; margin:10px;">
                            <b style="font-size:medium; color:#4c68a2;">Contract Pricing Import</b><br />
                            1. Search for your quote above <br />
                            2. Select the correct quote. <br />
                            3. Download the contract import file by clicking the 'Contract Pricing File' button at right.<br />
                            4. Import file into SXe (GUI). <br />
                            5. Update the status at right. <br />
                            ** The requestor should enter the ShipToID and contract start/end dates on the SXe Services tab of the BidTool quote.
                        </div>

                        <div style="width:250px; float:left; margin:10px 0px 0px 30px;">
                                <telerik:RadButton ID="lnkInforContractPricing" ButtonType="LinkButton" runat="server" Width="200px" Skin="BlackMetroTouch"  Text="Contract Pricing File" Target="_blank"></telerik:RadButton>
                        </div>
                        
                        <div style="width:200px; float:left; vertical-align:middle; margin-right:20px; float:left;">
                            <telerik:RadComboBox ID="newStatus" Width="120px" runat="server" Label="Change Status:" LabelCssClass="myLabelCss" >
                            
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="Open" Value="Open" />
                                    <telerik:RadComboBoxItem runat="server" Text="Closed" Value="Closed" />
                                    <telerik:RadComboBoxItem runat="server" Text="Cancelled" Value="Cancelled" />
                                </Items>
                            </telerik:RadComboBox>
                        </div>

                        <div style="float:left; vertical-align:top; width:120px; float:left; margin: 3px 0px 3px 20px;">
                            <telerik:RadButton ID="btnUpdateStatus" runat="server"  Text="Update Status" Width="100px" Skin="Office2010Blue" AutoPostBack="true">
                            </telerik:RadButton>
                        </div>
                     
                    </div>
                </div>
            </div>
        </asp:Panel>
        
    </div>
</div>