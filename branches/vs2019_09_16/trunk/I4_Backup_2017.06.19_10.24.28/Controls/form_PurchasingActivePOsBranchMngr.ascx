<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_PurchasingActivePOsBranchMngr.ascx.vb" Inherits="Controls_form_PurchasingActivePOsBranchMngr" %>


<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
        
            <telerik:AjaxSetting AjaxControlID="fVendorName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fVendorName" />
                    <telerik:AjaxUpdatedControl ControlID="grdPO" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="fProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fProdID" />
                    <telerik:AjaxUpdatedControl ControlID="grdPO" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fDescription">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fDescription" />
                    <telerik:AjaxUpdatedControl ControlID="grdPO" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="hVendorName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdPOHeaders" LoadingPanelID="RadAjaxLoadingPanel1"/>
                                       
                </UpdatedControls> 
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="grdPOHeaders">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hVendorName" />
                    <telerik:AjaxUpdatedControl ControlID="grdPOLines" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

 <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
 </telerik:RadAjaxLoadingPanel>
 
 <div style="margin:10px;">
 <div style="width:100%;">
    
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="MetroTouch" SelectedIndex="0" >
            <Tabs>
                <telerik:RadTab runat="server" PageViewID="Headers" Selected="True" Text="Headers"></telerik:RadTab>
                <telerik:RadTab runat="server" PageViewID="Lines" Text="Lines"></telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
 </div>
    <div>
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1750px" >
            <telerik:RadPageView ID="Headers" runat="server" Selected="true">
                <div style="width:1800px; margin:10px;">
                     <div style="width:1800px; Margin:0px 0px 0px 0px;">
                        
                            <div style="height:40px;">
                                <div style="width:205px; float:left;">
                                    <telerik:RadTextBox ID="hVendorName" runat="server" Label="Vendor:" Width="190px" LabelWidth="70px" LabelCssClass="myLabelCssMedium" MaxLength="50" AutoPostBack="true" Font-Size="Medium"></telerik:RadTextBox>
                                </div>
                                                            
                                
                            </div>
                            <div>
                              <div style="height:300px; width:1750px;">
                                 <telerik:RadGrid ID="grdPOHeaders" Width="1200px" runat="server" Height="300px"  AllowPaging="True" PageSize="50" AllowSorting="True" CellSpacing="0" 
                                            DataSourceID="SqlDS_grdPOHeaders" DataKeyNames="PONumber" GridLines="None"  >
                    
                                        <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                            <Selecting AllowRowSelect="true" />
                                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                            <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                        </ClientSettings>


                                     <MasterTableView AutoGenerateColumns="False" DataKeyNames="PONumber" DataSourceID="SqlDS_grdPOHeaders" Width="1200px" >
                                         <Columns>
                                 
                                             <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate">
                                                <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                                <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                             <telerik:GridBoundColumn DataField="DueDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Due" SortExpression="DueDate" UniqueName="DueDate">
                                                <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                                <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn> 
                                             
                                            
                                             <telerik:GridBoundColumn DataField="VendorName" HeaderText="Vendor" ReadOnly="True" SortExpression="VendorName" UniqueName="VendorName">
                                                <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                             <telerik:GridBoundColumn DataField="PONumber" HeaderText="PO" ReadOnly="True" SortExpression="PONumber" UniqueName="PONumber">
                                                <HeaderStyle HorizontalAlign="Left" Width="80px" />
                                                <ItemStyle HorizontalAlign="Left" Width="80px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                             <telerik:GridBoundColumn DataField="TotalLineAmount" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="PO Value" SortExpression="TotalLineAmount" 
                                                 UniqueName="TotalLineAmount">
                                                <HeaderStyle HorizontalAlign="Left" Width="70px" />
                                                <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>

                                             <telerik:GridBoundColumn DataField="ShipToName" HeaderText="Ship To" ReadOnly="True" SortExpression="ShipToName" UniqueName="ShipToName">
                                                <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                             <telerik:GridBoundColumn DataField="CreatedBy" HeaderText="Created By" ReadOnly="True" SortExpression="CreatedBy" UniqueName="CreateBy">
                                                <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                                <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                 
                                             
                                             <telerik:GridBoundColumn DataField="Stage" HeaderText="Stage" SortExpression="Stage" UniqueName="Stage">
                                                <HeaderStyle HorizontalAlign="Left" Width="85px" />
                                                <ItemStyle HorizontalAlign="Left" Width="85px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                             <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                                                <HeaderStyle HorizontalAlign="Left" Width="40px" />
                                                <ItemStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                             <telerik:GridBoundColumn DataField="ComboName" HeaderText="Branch" ReadOnly="True" SortExpression="ComboName" UniqueName="ComboName">
                                                <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                                <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                            
                                                
                                             
                                         </Columns>
                         
                                         <PagerStyle PageSizeControlType="RadComboBox" />
                                     </MasterTableView>
                     
                                 </telerik:RadGrid> 
                 
                                 <asp:SqlDataSource ID="SqlDS_grdPOHeaders" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspPurchasingPOHeaderActiveBranchMngr" SelectCommandType="StoredProcedure">
                                     <SelectParameters>
                                        <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="whseID1" Type="String" />
                                        <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="whseID2" Type="String" />
                                        <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="whseID3" Type="String" />
                                        <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="whseID4" Type="String" />
                                        <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="whseID5" Type="String" />
                                        <asp:ControlParameter ControlID="hVendorName" DefaultValue="%" Name="VendorName"  PropertyName="Text" />
                                        
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                              </div>
                            </div>
                            <div>
                                <div style="width:1750px; Margin:10px 0px 5px 0px; float:left;">
                                     <h5 style="width:1600px; height:25px;">
                                        <asp:Label ID="lblgrdOrderHeadersSelected" runat="server" Text="Line Items"></asp:Label>
                                     </h5>
                         
                                 <telerik:RadGrid ID="grdPOLines" runat="server" Width="1200px" Height="300px" CellSpacing="0" 
                                     DataSourceID="SqlDS_grdPOLines" GridLines="None" PageSize="50" AllowPaging="True"    >

                                     <ClientSettings>
                                         <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                 
                                     </ClientSettings>
                             
                                     <MasterTableView AllowSorting="True"  AutoGenerateColumns="False" DataSourceID="SqlDS_grdPOLines" Width="1200px" 
                                        EnableNoRecordsTemplate="true" NoMasterRecordsText="Select a PO above to see details here." >
                                          <NoRecordsTemplate>
                                            <p style=" font-size:medium; color: #4c68a2">Select an order above to see the details here.</p>
                                          </NoRecordsTemplate>

                                         <Columns>
                                     
                                             <telerik:GridBoundColumn DataField="LineNo" DataType="System.Int32" SortExpression="LineNo" UniqueName="LineNo">
                                                <HeaderStyle Width="20px" />
                                                <ItemStyle Width="20px" HorizontalAlign="Right" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                             <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                                 <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                                 <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                             <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                                 <HeaderStyle HorizontalAlign="Left" Width="350px" />
                                                 <ItemStyle HorizontalAlign="Left" Width="350px" />
                                             </telerik:GridBoundColumn>
                                             <telerik:GridBoundColumn DataField="Price" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Price" SortExpression="Price" 
                                                 UniqueName="Price">
                                                 <HeaderStyle HorizontalAlign="Left" Width="70px" />
                                                 <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                             
                                     
                                     
                                             <telerik:GridBoundColumn DataField="NetAmt" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Net" SortExpression="NetAmt" 
                                                 UniqueName="NetAmt">
                                                 <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                                 <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                     
                                             <telerik:GridBoundColumn DataField="QtyOrdered" DataFormatString="{0:n1}" DataType="System.Decimal" HeaderText="Qty Ord" SortExpression="QtyOrdered" 
                                                 UniqueName="QtyOrdered">
                                                 <HeaderStyle HorizontalAlign="Left" Width="70px" />
                                                 <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                                             </telerik:GridBoundColumn>
                                                                                 
                                     
                                         </Columns>
                                
                                         <PagerStyle PageSizeControlType="RadComboBox" />
                             
                               
                             
                             
                                     </MasterTableView>
                                     <%--<PagerStyle PageSizeControlType="RadComboBox" />--%>
                                                 
                                 </telerik:RadGrid>
                                 <asp:SqlDataSource ID="SqlDS_grdPOLines" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspPurchasingActivePOLines" SelectCommandType="StoredProcedure">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="grdPOHeaders" Name="PONumber" PropertyName="SelectedValue" Type="String" DefaultValue="0" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                                </div>
                            
                            </div>
                     </div>

                </div>
            </telerik:RadPageView>
            <telerik:RadPageView ID="Lines" runat="server" >
                <div style="width:1800px; margin:10px;">

   
                                <div style="width:1800px; Margin:0px 0px 0px 0px;">
                        
                                            <div style="height:40px;">
                                                <div style="width:205px; float:left;">
                                                    <telerik:RadTextBox ID="fVendorName" runat="server" Label="Vendor:" Width="190px" LabelWidth="70px" LabelCssClass="myLabelCssMedium" MaxLength="50" AutoPostBack="true" Font-Size="Medium"></telerik:RadTextBox>
                                                </div>
                                                            
                                                <div style="width:275px; float:left;">
                                                    <telerik:RadTextBox ID="fProdID" runat="server" Label="ProdID:" Width="260px" LabelWidth="70px" LabelCssClass="myLabelCssMedium" AutoPostBack="true" MaxLength="20" Font-Size="Medium"></telerik:RadTextBox>
                                                </div>
                                                <div style="width:325px; float:left;">
                                                    <telerik:RadTextBox ID="fDescription" runat="server" Label="Desc.:" Width="310px" LabelWidth="60px" LabelCssClass="myLabelCssMedium" AutoPostBack="true" MaxLength="20" Font-Size="Medium"></telerik:RadTextBox>
                                                </div>
                                            </div>
                           
                                        <div style="height:650px; width:1800px;">
                                            <telerik:RadGrid ID="grdPO" Width="1800px" runat="server" Height="500px"  AllowPaging="True" PageSize="75" AllowSorting="True" CellSpacing="0" 
                                                    DataSourceID="SqlDS_grdPO" GridLines="None"  >
                    
                                                <ClientSettings AllowColumnsReorder="False" ReorderColumnsOnClient="False" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false"  >
                                                    <Selecting AllowRowSelect="false" />
                                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                                </ClientSettings>


                                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdPO" Width="1800px" >
                                                    <Columns>

                                                            <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate">
                                                            <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                                            <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn> 
                                                            <telerik:GridBoundColumn DataField="DueDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Due" SortExpression="DueDate" UniqueName="DueDate">
                                                            <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                                            <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn> 
                                                            <telerik:GridBoundColumn DataField="VendorName" HeaderText="Vendor" ReadOnly="True" SortExpression="VendorName" UniqueName="VendorName">
                                                            <HeaderStyle HorizontalAlign="Left" Width="150px" />
                                                            <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>
                                     
                                                            <telerik:GridBoundColumn DataField="PONumber" HeaderText="PO" ReadOnly="True" SortExpression="PONumber" UniqueName="OrderNumber">
                                                            <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                                            <ItemStyle HorizontalAlign="Left" Width="60px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="LineNo" HeaderText="Line" ReadOnly="True" SortExpression="LineNo" UniqueName="LineNo">
                                                            <HeaderStyle HorizontalAlign="Left" Width="20px" />
                                                            <ItemStyle HorizontalAlign="Center" Width="20px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                                                            <HeaderStyle HorizontalAlign="Left" Width="35px" />
                                                            <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>
                                     
                                 
                                                            <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                                                <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                                                <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" Wrap="False" />
                                                            </telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                                                            <HeaderStyle HorizontalAlign="Left" Width="250px" />
                                                            <ItemStyle HorizontalAlign="Left" Width="250px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>
                                 

                                                            <telerik:GridBoundColumn DataField="QtyOrdered" DataFormatString="{0:n1}" DataType="System.Decimal" HeaderText="Qty Ord" SortExpression="QtyOrdered" 
                                                                UniqueName="QtyOrdered">
                                                                <HeaderStyle HorizontalAlign="Left" Width="45px" />
                                                                <ItemStyle HorizontalAlign="Right" Width="45px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>
                                    
                                                            <telerik:GridBoundColumn DataField="Price" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Price" SortExpression="Price" 
                                                                    UniqueName="Price">
                                                                <HeaderStyle HorizontalAlign="Left" Width="45px" />
                                                                <ItemStyle HorizontalAlign="Right" Width="45px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>

                                                            <telerik:GridBoundColumn DataField="NetAmt" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Value" SortExpression="NetAmt" 
                                                                UniqueName="NetAmt">
                                                            <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                                            <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="Stage" HeaderText="Stage" SortExpression="Stage" UniqueName="Stage">
                                                            <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                                            <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="OperInit" HeaderText="Init" SortExpression="OperInit" UniqueName="OperInit">
                                                            <HeaderStyle HorizontalAlign="Left" Width="35px" />
                                                            <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" />
                                                            </telerik:GridBoundColumn>
                                 
                                     
                                                    </Columns>
                         
                                                    <PagerStyle PageSizeControlType="RadComboBox" />
                                                </MasterTableView>
                     
                                            </telerik:RadGrid> 
                 
                                            <asp:SqlDataSource ID="SqlDS_grdPO" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspPurchasingPOsActiveBranchMngr" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="whseID1" Type="String" />
                                                    <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="whseID2" Type="String" />
                                                    <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="whseID3" Type="String" />
                                                    <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="whseID4" Type="String" />
                                                    <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="whseID5" Type="String" />                               
                                                    <asp:ControlParameter ControlID="fVendorName" DefaultValue="%" Name="VendorName"  PropertyName="Text" />
                                                    <asp:ControlParameter ControlID="fDescription" DefaultValue="0" Name="Description"  PropertyName="Text" />
                                                    <asp:ControlParameter ControlID="fProdID" DefaultValue="0" Name="ProdID"  PropertyName="Text" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                      
                      
                         
                           
                            
                                </div>
            

                </div>
            </telerik:RadPageView>
        </telerik:RadMultiPage>
    </div>
 </div>