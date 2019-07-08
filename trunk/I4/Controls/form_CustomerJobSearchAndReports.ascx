<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_CustomerJobSearchAndReports.ascx.vb" Inherits="Controls_form_CustomerJobSearchAndReports" %>


 <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
 </telerik:RadAjaxLoadingPanel>

 <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
            <telerik:AjaxSetting AjaxControlID="searchCustomer">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdJobs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="sJobName">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdJobs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="sShipToID">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdJobs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="sSalesRep">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdJobs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <%--<telerik:AjaxSetting AjaxControlID="sQuoteName">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdJobs" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>         
            </telerik:AjaxSetting>--%>


            <telerik:AjaxSetting AjaxControlID="mCustomerSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="mCustID"  />
                        <telerik:AjaxUpdatedControl ControlID="mShipToID1" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="mShipToID2" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="mShipToID3" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="mShipToID4" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="mShipToID5" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST1" />
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST2" />
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST3" />
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST4" />
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST5" />

                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="mShipToID1">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="lnkMultiQty"  />
                        <telerik:AjaxUpdatedControl ControlID="lnkMultiNets"  />
                        <telerik:AjaxUpdatedControl ControlID="lnkMultiContracts"  />
                        <telerik:AjaxUpdatedControl ControlID="lnkMultiPricing"  />
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST1"  />
     
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="mShipToID2">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST2"  />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="mShipToID3">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST3"  />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="mShipToID4">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST4"  />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="mShipToID5">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="lnkQuoteST5"  />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkMultiQty">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="lnkMultiQty"  />
                         <telerik:AjaxUpdatedControl ControlID="lblTest1" />
                        <telerik:AjaxUpdatedControl ControlID="lblTest2" />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkMultiNets">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="lnkMultiNets"  />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkMultiQty">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="lnkMultiQty"  />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkMultiContracts">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="lnkMultiContracts"  />
                    </UpdatedControls>         
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<div id="divBody" style="width:1500px;height:800px; margin: 0px 0px 0px 10px;">
   <div style="width:1200px; float:left; margin:20px 0px 20px 20px; font-size:medium;">
        <div>
            The following reporting system was designed to help with job management and job completion analysis.  Quote pricing and quantities are included provided the CustomerID and ShipToID are correctly identified in the quote. 
        </div>
        <div style="font-size:medium; width:1000px;">
             <br />The data contained in the reports is refreshed overnight, including Quote/ShipTo assignments. 
        </div>
   </div>
   
   <div style="width:1800px;float:left; margin-bottom:20px;">
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="MetroTouch" AutoPostBack="false" CausesValidation="false" Width="600px" >
            <Tabs>    
                <telerik:RadTab runat="server" Text="Single ShipTo" PageViewID="Single" Selected="true" Width="300px"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Multiple ShipTo" PageViewID="Multi" width="300px"></telerik:RadTab>
            
            </Tabs>
        </telerik:RadTabStrip>
   </div>
    

    <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1800px" >
        <telerik:RadPageView ID="Single" runat="server" Selected="true">
            <div style="width:1500px; height:20px;float:left; margin:10px 0px 20px 10px;">
                <div style="width:330px; float:left;">      
                    <telerik:RadSearchBox ID="searchCustomer" runat="server" Label="Customer:" Width="300px" LabelCssClass="myLabelCssMedium"
                            DataSourceID="SqlDS_CustomerSearch" DataTextField="CustName" DataKeyNames="CustID, CustName"
                            DataValueField="CustID" EmptyMessage="No matches." ShowSearchButton="false"  >
                               
                    </telerik:RadSearchBox>
                            
                    <asp:HiddenField ID="sCustID" runat="server" />

                    <asp:SqlDataSource ID="SqlDS_CustomerSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="SELECT Customers.CustID, Customers.CustName FROM Customers WHERE (Customers.Status = 'Active')">         
                    </asp:SqlDataSource>
                        
                                    
                </div> 
                <div style="width:200px; float:left;">
                    <div style="width:90px; float:left; ">
                        <asp:Label ID="Label1" runat="server" Text="Job Name:" CssClass="myLabelCssMedium"></asp:Label>
                    </div>
                    <div style="width:100px; float:left;">
                        <telerik:RadTextBox ID="sJobName" runat="server" AutoPostBack="true" Width="100px" MaxLength="10" ></telerik:RadTextBox>
                    </div>
                </div> 
                <div style="width:180px; float:left;">
                    <div style="width:70px; float:left; ">
                        <asp:Label ID="Label3" runat="server" Text="Ship To:" CssClass="myLabelCssMedium"></asp:Label>
                    </div>
                    <div style="width:60px; float:left;">
                        <telerik:RadTextBox ID="sShipToID" runat="server" AutoPostBack="true" MaxLength="10" Width="60px" ></telerik:RadTextBox>
                    </div>
                </div>
        
                <div style="width:210px; float:left;">
                    <div style="width:90px; float:left; ">
                        <asp:Label ID="Label2" runat="server" Text="Sales Rep:" CssClass="myLabelCssMedium"></asp:Label>
                    </div>
                    <div style="width:100px; float:left;">
                        <telerik:RadTextBox ID="sSalesRep" runat="server" AutoPostBack="true" Width="100px" MaxLength="20" ></telerik:RadTextBox>
                    </div>
                </div>
                <%--<div style="width:240px; float:left;">
                    <div style="width:120px; float:left; ">
                        <asp:Label ID="Label4" runat="server" Text="Quote Name:" CssClass="myLabelCssMedium"></asp:Label>
                    </div>
                    <div style="width:100px; float:left;">
                        <telerik:RadTextBox ID="sQuoteName" runat="server" AutoPostBack="true" Width="100px" MaxLength="20" ></telerik:RadTextBox>
                    </div>
                </div>--%>
            </div>

            <div style="width:1800px; float:left; margin:10px 0px 20px 10px;">

                <telerik:RadGrid ID="grdJobs" runat="server" Width="1400px" Height="500px" PageSize="50" ShowGroupPanel="false"
                    AllowPaging="True" AllowSorting="True" DataSourceID="SqlDS_grdJobs" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
            
                    <ClientSettings>
                        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                    </ClientSettings>
            
                    <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdJobs" DataKeyNames="CustID,ShipToID,QuoteID">
                
                        <ColumnGroups>
                            <telerik:GridColumnGroup HeaderText="Reports" Name="Reports" HeaderStyle-HorizontalAlign="Center">
                            </telerik:GridColumnGroup>
                
                        </ColumnGroups>
                
                
                
                        <Columns>
                            <telerik:GridBoundColumn DataField="CustID" HeaderText="CustID" SortExpression="CustID" UniqueName="CustID" Visible="false">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="SalesRepID" HeaderText="SalesRepID" SortExpression="SalesRepID" UniqueName="SalesRepID" Visible="false">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                <HeaderStyle Width="210px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="210px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="JobName" HeaderText="Job Name" SortExpression="JobName" UniqueName="JobName">
                                <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipToID" SortExpression="ShipToID" UniqueName="ShipToID">
                                <HeaderStyle Width="65px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="65px" VerticalAlign="Top" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>
                    
                            <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" SortExpression="SalesName" UniqueName="SalesName">
                                <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="false" />
                            </telerik:GridBoundColumn>

                            <telerik:GridHyperLinkColumn HeaderText="Quote" AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../BidTool/Bid.aspx?QuoteID={0}" DataNavigateUrlFields="QuoteID" DataTextField="QuoteName" UniqueName="column">
                                <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" ForeColor="CornflowerBlue" Wrap="false" />
                            </telerik:GridHyperLinkColumn>

                    
                    
                            <%--<telerik:GridBoundColumn DataField="StartDate" HeaderText="Start" ReadOnly="True" SortExpression="StartDate" UniqueName="StartDate">
                                <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Center" />
                            </telerik:GridBoundColumn>--%>
                            <telerik:GridHyperLinkColumn HeaderText="" Text="Qty (PDF)" AllowSorting="False" Target="_Blank" 
                                DataNavigateUrlFormatString="../Reports2/CustomerJobs_JobStatus_Qty.aspx?CustID={0}&ShipToID={1}" DataNavigateUrlFields="CustID,ShipToID" UniqueName="column" >
                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" ForeColor="CornflowerBlue" />
                            </telerik:GridHyperLinkColumn>

                            <telerik:GridHyperLinkColumn HeaderText="" Text="Nets (PDF)" AllowSorting="False" Target="_Blank" 
                                DataNavigateUrlFormatString="../Reports2/CustomerJobs_JobStatus_Nets.aspx?CustID={0}&ShipToID={1}" DataNavigateUrlFields="CustID,ShipToID" UniqueName="column" >
                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" ForeColor="CornflowerBlue" />
                            </telerik:GridHyperLinkColumn>
                            <telerik:GridHyperLinkColumn HeaderText="" Text="Nets (Excel)" AllowSorting="False" Target="_Blank" 
                                DataNavigateUrlFormatString="../Reports2/CustomerJobs_JobStatus_Nets_Excel.aspx?CustID={0}&ShipToID={1}" DataNavigateUrlFields="CustID,ShipToID" UniqueName="column" >
                                <HeaderStyle Width="80px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="80px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" ForeColor="CornflowerBlue" />
                            </telerik:GridHyperLinkColumn>
                            <telerik:GridHyperLinkColumn HeaderText="" Text="Contracts" AllowSorting="False" Target="_Blank" 
                                DataNavigateUrlFormatString="../Reports2/Pricing_ContractPricing_Job.aspx?CustID={0}&ShipToID={1}" DataNavigateUrlFields="CustID,ShipToID" UniqueName="column" >
                                <HeaderStyle Width="80px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="80px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" ForeColor="CornflowerBlue" />
                            </telerik:GridHyperLinkColumn>
                            <telerik:GridHyperLinkColumn HeaderText="" Text="Pricing Hist." AllowSorting="False" Target="_Blank" 
                                DataNavigateUrlFormatString="../Reports2/CustomerJobs_JobStatus_Pricing.aspx?CustID={0}&ShipToID1={1}&ShipToID2=0&ShipToID3=0&ShipToID4=0&ShipToID5=0" DataNavigateUrlFields="CustID,ShipToID" UniqueName="column" >
                                <HeaderStyle Width="80px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="80px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" ForeColor="CornflowerBlue" />
                            </telerik:GridHyperLinkColumn>
                    
                            <%--<telerik:GridBoundColumn DataField="NetsExcel" HeaderText="NetsExcel" ReadOnly="True" SortExpression="NetsExcel" UniqueName="NetsExcel">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="PricingReview" HeaderText="PricingReview" ReadOnly="True" SortExpression="PricingReview" UniqueName="PricingReview">
                            </telerik:GridBoundColumn>--%>
                    
                            <telerik:GridBoundColumn DataField="QuoteID" DataType="System.Int64" HeaderText="QuoteID" ReadOnly="True" SortExpression="QuoteID" UniqueName="QuoteID" Visible="false">
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>

                <asp:SqlDataSource ID="SqlDS_grdJobs" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspCustomerJobSearch" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:CookieParameter CookieName="Region1" Name="Region1" Type="String" />
                        <asp:CookieParameter CookieName="Region2" Name="Region2" Type="String" />
                        <asp:CookieParameter CookieName="Region3" Name="Region3" Type="String" />
                        <asp:CookieParameter CookieName="Region4" Name="Region4" Type="String" />
                        <asp:CookieParameter CookieName="Region5" Name="Region5" Type="String" />
                        <asp:CookieParameter CookieName="Region6" Name="Region6" Type="String" />
                        <asp:CookieParameter CookieName="Region7" Name="Region7" Type="String" />
                        <asp:CookieParameter CookieName="Region8" Name="Region8" Type="String" />
                        <asp:Parameter Name="CustID" Type="String" />
                        <asp:Parameter Name="ShipToID" Type="String" />
                        <asp:Parameter Name="JobName" Type="String" />
                        <asp:Parameter Name="SalesName" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
    
        </telerik:RadPageView>
        <telerik:RadPageView ID="Multi" runat="server" >
            <div style="width:1500px; height:120px;float:left; margin:10px 0px 20px 10px;">
                <div style="font-size:medium; width:1000px; margin-bottom:20px;">
                    Use this page if you have a Job with multiple ShipTo ID's.  Select the customer, and then up to five ShipTo's that belong to that customer. 
                </div>
                
                <div style="width:675px; height:20px;float:left; margin:10px 0px 20px 10px;">
                    <div style="width:575px; height:35px; float:left;">      
                        <telerik:RadSearchBox ID="mCustomerSearch" runat="server" Label="Customer:" Width="300px" LabelCssClass="myLabelCssMedium"
                                DataSourceID="SqlDS_CustomerSearch2" DataTextField="CustName" DataKeyNames="CustID, CustName"
                                DataValueField="CustID" EmptyMessage="No matches." ShowSearchButton="false" >
                               
                        </telerik:RadSearchBox>
                            
                        <asp:HiddenField ID="mCustID" runat="server" />

                        <asp:SqlDataSource ID="SqlDS_CustomerSearch2" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT Customers.CustID, Customers.CustName FROM Customers WHERE (Customers.Status = 'Active')">         
                        </asp:SqlDataSource>
                        
                                    
                    </div>
                    
                    <div style="width:575px; height:35px; float:left;">
                         <div style="width:90px; float:left; ">
                            <asp:Label ID="Label4" runat="server" Text="Ship To:" CssClass="myLabelCssMedium"></asp:Label>
                         </div>
                         
                         <div style="width:320px; float:left;">   
                            <telerik:RadComboBox ID="mShipToID1" runat="server" AutoPostBack="true" Width="300px" DataSourceID="SqlDS_mShipToID" DataTextField="JobName" DataValueField="ShipToID" ResolvedRenderMode="Classic" AppendDataBoundItems="true">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="0" Selected="true" />
                                </Items>
                        
                            </telerik:RadComboBox>
                            <asp:SqlDataSource ID="SqlDS_mShipToID" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="SELECT ShipToID, JobName
                                                    FROM   Customers_Job
                                                    WHERE  (CustID = @CustID) AND YEAR(StartDate) &gt;= (YEAR(GETDATE())-2)
                                                    ORDER BY ShipToID">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="0" Name="CustID" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                         </div>
                         <div style="width:150px; float:left; padding:3px;"> 
                             <asp:HyperLink ID="lnkQuoteST1" runat="server" Target="_blank"></asp:HyperLink>
                             <asp:Label ID="lblTest1" runat="server"></asp:Label>
                         </div>
                    </div>
                    <div style="width:575px; height:35px; float:left;">
                        <div style="width:90px; float:left; ">
                            <asp:Label ID="Label5" runat="server" Text="Ship To:" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                         
                        <div style="width:320px; float:left;"> 
                            <telerik:RadComboBox ID="mShipToID2" runat="server" AutoPostBack="true" Width="300px" DataSourceID="SqlDS_mShipToID" DataTextField="JobName" DataValueField="ShipToID" ResolvedRenderMode="Classic" AppendDataBoundItems="true" >
                                 <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="0" Selected="true" />
                                </Items>
                        
                            </telerik:RadComboBox>
                        </div>
                         <div style="width:150px; float:left; padding:3px;"> 
                             <asp:HyperLink ID="lnkQuoteST2" runat="server" Target="_blank"></asp:HyperLink>
                             <asp:Label ID="lblTest2" runat="server"></asp:Label>
                         </div>
                    </div>
                    <div style="width:575px; height:35px; float:left;">
                        <div style="width:90px; float:left; ">
                            <asp:Label ID="Label6" runat="server" Text="Ship To:" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                         
                        <div style="width:320px; float:left;"> 
                            <telerik:RadComboBox ID="mShipToID3" runat="server" AutoPostBack="true" Width="300px" DataSourceID="SqlDS_mShipToID" DataTextField="JobName" DataValueField="ShipToID" ResolvedRenderMode="Classic" AppendDataBoundItems="true">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="0" Selected="true" />
                                </Items>
                        
                            </telerik:RadComboBox>
                        </div>
                         <div style="width:150px; float:left; padding:3px;"> 
                             <asp:HyperLink ID="lnkQuoteST3" runat="server" Target="_blank"></asp:HyperLink>
                         </div>
                    </div>
                    <div style="width:575px; height:35px; float:left;">
                        <div style="width:90px; float:left; ">
                            <asp:Label ID="Label7" runat="server" Text="Ship To:" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                         
                        <div style="width:320px; float:left;"> 
                            <telerik:RadComboBox ID="mShipToID4" runat="server" AutoPostBack="true" Width="300px" DataSourceID="SqlDS_mShipToID" DataTextField="JobName" DataValueField="ShipToID" ResolvedRenderMode="Classic" AppendDataBoundItems="true">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="0" Selected="true" />
                                </Items>
                        
                            </telerik:RadComboBox>
                        </div>
                         <div style="width:150px; float:left; padding:3px;"> 
                             <asp:HyperLink ID="lnkQuoteST4" runat="server" Target="_blank"></asp:HyperLink>
                         </div>
                    </div>
                    <div style="width:575px; height:35px; float:left;">
                        <div style="width:90px; float:left; ">
                            <asp:Label ID="Label8" runat="server" Text="Ship To:" CssClass="myLabelCssMedium"></asp:Label>
                        </div>
                         
                        <div style="width:320px; float:left;"> 
                            <telerik:RadComboBox ID="mShipToID5" runat="server" AutoPostBack="true" Width="300px" DataSourceID="SqlDS_mShipToID" DataTextField="JobName" DataValueField="ShipToID" ResolvedRenderMode="Classic" AppendDataBoundItems="true">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="0" Selected="true" />
                                </Items>
                        
                            </telerik:RadComboBox>
                        </div>
                         <div style="width:150px; float:left; padding:3px;"> 
                             <asp:HyperLink ID="lnkQuoteST5" runat="server" Target="_blank"></asp:HyperLink>
                         </div>
                    </div>
                </div>
                <div style="width:250px; float:left;">
                
                    <div style="width:500px; height:50px; float:left; margin-top:50px;">
                       <telerik:RadButton ID="lnkMultiQty" AutoPostBack="true" ButtonType="LinkButton" runat="server" width="200px" font-size="Small" Text="Quantities" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>
                    </div>
                    <div style="width:250px; height:50px; float:left;">
                        <telerik:RadButton ID="lnkMultiNets" ButtonType="LinkButton" runat="server" width="200px" font-size="Small" Text="Nets" Skin="BlackMetroTouch"  Target="_blank" OnClick="lnkMultiNets_Click"></telerik:RadButton>
                    </div>
                    <div style="width:250px; height:50px; float:left;">
                        <telerik:RadButton ID="lnkMultiContracts" ButtonType="LinkButton" runat="server" width="200px" font-size="Small" Text="Contracts" Skin="BlackMetroTouch" Target="_blank" OnClick="lnkMultiNets_Click"></telerik:RadButton>
                    </div>
                    <div style="width:250px; height:50px; float:left;">
                        <telerik:RadButton ID="lnkMultiPricing" ButtonType="LinkButton" runat="server" width="200px" font-size="Small" Text="Pricing History" Skin="BlackMetroTouch" Target="_blank" OnClick="lnkMultiNets_Click"></telerik:RadButton>
                    </div>
                </div>

            </div>
        </telerik:RadPageView>

    </telerik:RadMultiPage>







</div>