<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchMngr.master" AutoEventWireup="false" CodeFile="Orders.aspx.vb" Inherits="BranchMngr_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
            <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" />
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="grdOrderHeaders">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblgrdOrderHeadersSelected" />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1" />  
                    <telerik:AjaxUpdatedControl ControlID="grdOrderLines" LoadingPanelID="RadAjaxLoadingPanel1" />                  
                </UpdatedControls>    
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="hCustName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hCustName" />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hJobName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hJobName" />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hSalesRep">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hSalesRep" />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hShipToID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hShipToID" />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hCustPO">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hCustPO" />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hTransType">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hTransType" />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hStage">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hStage" />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="hTotalOrderAmountMinimum">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="hTotalOrderAmountMinimum" />
                    <telerik:AjaxUpdatedControl ControlID="grdOrderHeaders" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
           

            <telerik:AjaxSetting AjaxControlID="grdLines">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblgrdLinesSelected" />
                    <telerik:AjaxUpdatedControl ControlID="grdLines" LoadingPanelID="RadAjaxLoadingPanel1" />  
                    <telerik:AjaxUpdatedControl ControlID="grdLinesLines" LoadingPanelID="RadAjaxLoadingPanel1" />                  
                </UpdatedControls>    
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lCustName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lCustName" />
                    <telerik:AjaxUpdatedControl ControlID="grdLines" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lJobName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lJobName" />
                    <telerik:AjaxUpdatedControl ControlID="grdLines" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lSalesRep">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lSalesRep" />
                    <telerik:AjaxUpdatedControl ControlID="grdLines" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lShipToID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lShipToID" />
                    <telerik:AjaxUpdatedControl ControlID="grdLines" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lProdID" />
                    <telerik:AjaxUpdatedControl ControlID="grdLines" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lTotalLineAmountMinimum">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lTotalLineAmountMinimum" />
                    <telerik:AjaxUpdatedControl ControlID="grdLines" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

 <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
 </telerik:RadAjaxLoadingPanel>

<div style="width:1800px; margin:10px;">
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
                     <div style="width:1700px; height:40px; Margin:10px 0px 0px 0px;">
                        
                            <div style="height:30px;">
                                <div style="width:225px; float:left;"><telerik:RadTextBox ID="hCustName" runat="server" AutoPostBack="true" Label="Customer:" Width="200px" LabelWidth="90px" LabelCssClass="myLabelCssMedium" Font-Size="Medium" MaxLength="50" ></telerik:RadTextBox></div>
                                <div style="width:225px; float:left;"><telerik:RadTextBox ID="hJobName" runat="server" AutoPostBack="true" Label="Job Name:" Width="200px" LabelWidth="90px" LabelCssClass="myLabelCssMedium" Font-Size="Medium" MaxLength="50" ></telerik:RadTextBox></div>
                                <div style="width:110px; float:left;"><telerik:RadTextBox ID="hCustPO" runat="server" AutoPostBack="true" Label="PO:" Width="80px" LabelWidth="30px" LabelCssClass="myLabelCssMedium" Font-Size="Medium" MaxLength="20"></telerik:RadTextBox></div>
                                <div style="width:140px; float:left;"><telerik:RadTextBox ID="hShipToID" runat="server" AutoPostBack="true" Label="ShipTo:" Width="130px" LabelWidth="70px" LabelCssClass="myLabelCssMedium" Font-Size="Medium" MaxLength="10" ></telerik:RadTextBox></div>
                                <div style="width:225px; float:left;"><telerik:RadTextBox ID="hSalesRep" runat="server" AutoPostBack="true" Label="Sales Rep:" Width="210px" LabelWidth="100px" LabelCssClass="myLabelCssMedium" Font-Size="Medium" MaxLength="50"  ></telerik:RadTextBox></div>
                                <div style="width:230px; float:left;">
                                    <div style="width:100px; float:left; vertical-align:middle; ">
                                        <asp:Label ID="lblOrderMin" runat="server" Text="Min. Value:" CssClass="myLabelCssMedium"></asp:Label>
                                    </div>
                                    <div style="width:110px; float:left; ">
                                        <telerik:RadComboBox ID="hTotalOrderAmountMinimum" runat="server" Width="100px" CssClass="myLabelCssMedium" Font-Size="Medium"  AutoPostBack="true" >
                                            <Items>   
                                                <telerik:RadComboBoxItem runat="server" Text="All" Value="-1000000" Selected="true"/> 
                                                <telerik:RadComboBoxItem runat="server" Text="$100" Value="100" />
                                                <telerik:RadComboBoxItem runat="server" Text="$1,000" Value="1000" />   
                                                <telerik:RadComboBoxItem runat="server" Text="$5,000" Value="5000" />
                                                <telerik:RadComboBoxItem runat="server" Text="$10,000" Value="10000" /> 
                                                <telerik:RadComboBoxItem runat="server" Text="$15,000" Value="15000" />
                                                <telerik:RadComboBoxItem runat="server" Text="$25,000" Value="25000" />
                                                <telerik:RadComboBoxItem runat="server" Text="$50,000" Value="50000" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </div>
                                    
                                </div>
                                <div style="width:200px; float:left;">
                                    <div style="width:100px; float:left; vertical-align:middle; ">
                                        <asp:Label ID="Label1" runat="server" Text="Order Type:" CssClass="myLabelCssMedium"></asp:Label>
                                    </div>
                                    <div style="width:80px; float:left;">
                                        <telerik:RadComboBox ID="hTransType" runat="server" Width="80px" CssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true" >
                                            <Items>   
                                                <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true"/> 
                                                <telerik:RadComboBoxItem runat="server" Text="DO" Value="DO" />
                                                <telerik:RadComboBoxItem runat="server" Text="SO" Value="SO" />   
                                                <telerik:RadComboBoxItem runat="server" Text="RM" Value="RM" />
                                                <telerik:RadComboBoxItem runat="server" Text="CR" Value="CR" /> 
                                                
                                            </Items>
                                        </telerik:RadComboBox>
                                    </div>
                                    
                                </div>
                                <div style="width:200px; float:left;">
                                    <div style="width:50px; float:left; vertical-align:middle;  ">
                                        <asp:Label ID="Label2" runat="server" Text="Stage:" CssClass="myLabelCssMedium"></asp:Label>
                                    </div>
                                    <div style="width:100px; float:left; ">
                                        <telerik:RadComboBox ID="hStage" runat="server" Width="100px" CssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true" >
                                            <Items>   
                                                <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true"/> 
                                                <telerik:RadComboBoxItem runat="server" Text="0-Entered" Value="0-Entered" />
                                                <telerik:RadComboBoxItem runat="server" Text="1-Ordered" Value="1-Ordered" />
                                                <telerik:RadComboBoxItem runat="server" Text="2-Picked" Value="2-Picked" />
                                                <telerik:RadComboBoxItem runat="server" Text="3-Shipped" Value="3-Shipped" /> 
                                                
                                            </Items>
                                        </telerik:RadComboBox>
                                    </div>
                                    
                                </div>
                                
                                
                               <%-- <div style="width:220px; float:left;">
                                    <telerik:RadButton ID="btnSearchHeaders" runat="server" Text="Search" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                                </div>--%>
                            </div>
                           
                     </div>
                      <div style="height:300px; width:1750px;">
                         <telerik:RadGrid ID="grdOrderHeaders" Width="1600px" runat="server" Height="300px"  AllowPaging="True" PageSize="50" AllowSorting="True" CellSpacing="0" 
                                    DataSourceID="SqlDS_grdOrderHeaders" DataKeyNames="OrderNumber" GridLines="None"  >
                    
                                <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                </ClientSettings>


                             <MasterTableView AutoGenerateColumns="False" DataKeyNames="OrderNumber" DataSourceID="SqlDS_grdOrderHeaders" Width="1750px" >
                                 <Columns>
                                 
                                     <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate">
                                        <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                        <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn> 
                                     <telerik:GridBoundColumn DataField="OrderMaterialValue" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Material Value" SortExpression="OrderMaterialValue" 
                                         UniqueName="OrderMaterialValue">
                                        <HeaderStyle HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Margin" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Margin" SortExpression="Margin" UniqueName="Margin">
                                        <HeaderStyle HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" DataFormatString="{0:P1}" HeaderText="Mgn %" ReadOnly="True" SortExpression="MarginPct" UniqueName="MarginPct">
                                        <HeaderStyle Width="60px" VerticalAlign="Bottom" />
                                        <ItemStyle Width="60px" HorizontalAlign="Right" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" ReadOnly="True" SortExpression="CustName" UniqueName="CustName">
                                        <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                        <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="JobName" HeaderText="Job Name" ReadOnly="True" SortExpression="JobName" UniqueName="JobName">
                                        <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                        <ItemStyle HorizontalAlign="Left" Width="200px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" ReadOnly="True" SortExpression="SalesName" UniqueName="SalesName">
                                        <HeaderStyle HorizontalAlign="Left" Width="130px" />
                                        <ItemStyle HorizontalAlign="Left" Width="130px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                 
                                     <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" ReadOnly="True" SortExpression="OrderNumber" UniqueName="OrderNumber">
                                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                                        <ItemStyle HorizontalAlign="Left" Width="80px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Stage" HeaderText="Stage" SortExpression="Stage" UniqueName="Stage">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Left" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                                        <HeaderStyle HorizontalAlign="Left" Width="40px" />
                                        <ItemStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>

                                     <telerik:GridBoundColumn DataField="ShipViaType" HeaderText="Via" SortExpression="ShipViaType" UniqueName="ShipViaType">
                                        <HeaderStyle HorizontalAlign="Left" Width="40px" />
                                        <ItemStyle HorizontalAlign="Left" Width="40px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>

                                     <telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipTo" SortExpression="ShipToID" UniqueName="ShipToID">
                                        <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                        <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="CustPO" HeaderText="Cust PO" SortExpression="CustPO" UniqueName="CustPO">
                                        <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                        <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="PlacedBy" HeaderText="Placed" SortExpression="PlacedBy" UniqueName="PlacedBy">
                                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                        <ItemStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="PickInitials" HeaderText="Pick" SortExpression="PickInitials" UniqueName="PickInitials">
                                        <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                        <ItemStyle HorizontalAlign="Left" Width="50px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                 
                                     <telerik:GridBoundColumn DataField="ShipDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Shipped" SortExpression="ShipDate" UniqueName="ShipDate">
                                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                                        <ItemStyle HorizontalAlign="Right" Width="80px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="MarginReview" HeaderText="MR" SortExpression="MarginReview" UniqueName="MarginReview">
                                        <HeaderStyle HorizontalAlign="Left" Width="20px" />
                                        <ItemStyle HorizontalAlign="Right" Width="20px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                 </Columns>
                         
                                 <PagerStyle PageSizeControlType="RadComboBox" />
                             </MasterTableView>
                     
                         </telerik:RadGrid> 
                 
                         <asp:SqlDataSource ID="SqlDS_grdOrderHeaders" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspOrdersHeaderActiveGetAllWhseFilter" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="whseID1" Type="String" />
                                <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="whseID2" Type="String" />
                                <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="whseID3" Type="String" />
                                <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="whseID4" Type="String" />
                                <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="whseID5" Type="String" />
                                <asp:ControlParameter ControlID="hCustName" DefaultValue="%" Name="CustName"  PropertyName="Text" />
                                <asp:ControlParameter ControlID="hJobName" DefaultValue="%" Name="JobName"  PropertyName="Text" />
                                <asp:ControlParameter ControlID="hSalesRep" DefaultValue="%" Name="SalesName"  PropertyName="Text" />
                                <asp:ControlParameter ControlID="hShipToID" DefaultValue="%" Name="ShipToID"  PropertyName="Text" />
                                <asp:ControlParameter ControlID="hTransType" DefaultValue="%" Name="TransType"  PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="hStage" DefaultValue="%" Name="Stage"  PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="hTotalOrderAmountMinimum" DefaultValue="0" Name="TotalOrderAmountMinimum"  PropertyName="SelectedValue" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                      </div>
                    <div style="width:1750px; Margin:10px 0px 5px 0px; float:left;">
                         <h5 style="width:1600px; height:25px;">
                            <asp:Label ID="lblgrdOrderHeadersSelected" runat="server" Text="Label"></asp:Label>
                         </h5>
                         
                         <telerik:RadGrid ID="grdOrderLines" runat="server" Width="1600px" Height="300px" CellSpacing="0" 
                             DataSourceID="SqlDS_grdOrderLines" GridLines="None" PageSize="50" AllowPaging="True"    >

                             <ClientSettings>
                                 <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                 
                             </ClientSettings>
                             
                             <MasterTableView AllowSorting="True"  AutoGenerateColumns="False" DataSourceID="SqlDS_grdOrderLines" Width="1500px" 
                                EnableNoRecordsTemplate="true" NoMasterRecordsText="Select an Order above to see details here." >
                                  <NoRecordsTemplate>
                                    <p style=" font-size:medium; color: #4c68a2">Select an order above to see the details here.</p>
                                  </NoRecordsTemplate>

                                 <Columns>
                                     
                                     <telerik:GridBoundColumn DataField="Line" DataType="System.Int32" SortExpression="Line" UniqueName="Line">
                                        <HeaderStyle Width="20px" />
                                        <ItemStyle Width="20px" HorizontalAlign="Right" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" 
                                         SortExpression="ProdID" UniqueName="ProdID">
                                         <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                         <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Description" HeaderText="Description" 
                                         SortExpression="Description" UniqueName="Description">
                                         <HeaderStyle HorizontalAlign="Left" Width="350px" />
                                         <ItemStyle HorizontalAlign="Left" Width="350px" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Price" DataFormatString="{0:c2}" 
                                         DataType="System.Decimal" HeaderText="Price" SortExpression="Price" 
                                         UniqueName="Price">
                                         <HeaderStyle HorizontalAlign="Left" Width="70px" />
                                         <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Cost" DataFormatString="{0:c2}" Visible="true" 
                                         DataType="System.Decimal" HeaderText="Cost" SortExpression="Cost" UniqueName="Cost">
                                         <HeaderStyle HorizontalAlign="Left" Width="70px" />
                                         <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" DataFormatString="{0:P1}" HeaderText="Mgn %" ReadOnly="True" SortExpression="MarginPct" UniqueName="MarginPct">
                                                <HeaderStyle Width="60px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="60px" HorizontalAlign="Right" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     
                                     
                                     <telerik:GridBoundColumn DataField="NetOrdered" DataFormatString="{0:c2}" 
                                         DataType="System.Decimal" HeaderText="Net Sale" SortExpression="NetOrdered" 
                                         UniqueName="NetOrdered">
                                         <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                         <ItemStyle HorizontalAlign="Right" Width="75px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     
                                     <telerik:GridBoundColumn DataField="QtyOrd" DataFormatString="{0:n1}" 
                                         DataType="System.Decimal" HeaderText="Qty Ord" SortExpression="QtyOrd" 
                                         UniqueName="QtyOrd">
                                         <HeaderStyle HorizontalAlign="Left" Width="70px" />
                                         <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="QtyShip" DataFormatString="{0:n1}" 
                                         DataType="System.Decimal" HeaderText="Qty Ship" SortExpression="QtyShip" 
                                         UniqueName="QtyShip">
                                         <HeaderStyle HorizontalAlign="Left" Width="70px" />
                                         <ItemStyle HorizontalAlign="Right" Width="70px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="ReviewMargin" HeaderText="Mrgn% Flag" SortExpression="ReviewMargin" UniqueName="ReviewMargin" >
                                          <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                          <ItemStyle Width="50px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="ReviewPrice" HeaderText="Price Flag" SortExpression="ReviewPrice" UniqueName="ReviewPrice" >
                                          <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                          <ItemStyle Width="50px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     
                                 </Columns>
                                
                                 <PagerStyle PageSizeControlType="RadComboBox" />
                             
                               
                             
                             
                             </MasterTableView>
                             <%--<PagerStyle PageSizeControlType="RadComboBox" />--%>
                                                 
                         </telerik:RadGrid>
                         <asp:SqlDataSource ID="SqlDS_grdOrderLines" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspOrdersLinesGetByOrder" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="grdOrderHeaders" Name="OrderNumber" PropertyName="SelectedValue" Type="String" DefaultValue="0" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                    </div>
                    

            </telerik:RadPageView>
            <telerik:RadPageView ID="Lines" runat="server" Width="1300px" >
                <div style="width:1700px; height:40px; Margin:10px 0px 0px 0px;">
                        
                            <div style="height:40px;">
                                <div style="width:205px; float:left;">
                                    <telerik:RadTextBox ID="lCustName" runat="server" Label="Customer:" Width="190px" LabelWidth="90px" LabelCssClass="myLabelCssMedium" MaxLength="50" AutoPostBack="true" Font-Size="Medium"></telerik:RadTextBox>
                                </div>
                                <div style="width:205px; float:left;">
                                    <telerik:RadTextBox ID="lJobName" runat="server" Label="Job Name:" Width="190px" LabelWidth="90px" LabelCssClass="myLabelCssMedium" MaxLength="50" AutoPostBack="true" Font-Size="Medium"></telerik:RadTextBox>
                                </div>
                                <div style="width:200px; float:left;">
                                    <telerik:RadTextBox ID="lSalesRep" runat="server" Label="Sales Rep:" Width="190px" LabelWidth="90px" LabelCssClass="myLabelCssMedium" MaxLength="50" AutoPostBack="true" Font-Size="Medium"></telerik:RadTextBox>
                                </div>

                             
                                <div style="width:225px; float:left;">
                                    <telerik:RadTextBox ID="lProdID" runat="server" Label="ProdID:" Width="210px" LabelWidth="70px" LabelCssClass="myLabelCssMedium" AutoPostBack="true" MaxLength="20" Font-Size="Medium"></telerik:RadTextBox>
                                </div>
                                <div style="width:225px; float:left;">
                                    <telerik:RadTextBox ID="lDescription" runat="server" Label="Desc.:" Width="210px" LabelWidth="60px" LabelCssClass="myLabelCssMedium" AutoPostBack="true" MaxLength="20" Font-Size="Medium"></telerik:RadTextBox>
                                </div>
                                <div style="width:200px; float:left;">
                                    <telerik:RadComboBox ID="lTotalLineAmountMinimum" runat="server"  Label="Min. Value:" Width="80px" LabelCssClass="myLabelCssMedium"  AutoPostBack="true" Font-Size="Medium">
                                          <Items>   
                                            <telerik:RadComboBoxItem runat="server" Text="All Lines" Value="-999999" Selected="true"/> 
                                            <telerik:RadComboBoxItem runat="server" Text="$100" Value="100" />
                                            <telerik:RadComboBoxItem runat="server" Text="$1,000" Value="1000" />   
                                            <telerik:RadComboBoxItem runat="server" Text="$5,000" Value="5000" />
                                            <telerik:RadComboBoxItem runat="server" Text="$10,000" Value="10000" /> 
                                            <telerik:RadComboBoxItem runat="server" Text="$15,000" Value="15000" />
                                            <telerik:RadComboBoxItem runat="server" Text="$25,000" Value="25000" />
                                            <telerik:RadComboBoxItem runat="server" Text="$50,000" Value="50000" /> 
                                          </Items>
                                    </telerik:RadComboBox>

                                </div>

                                <%--<div style="width:80px; float:left;">
                                    <telerik:RadButton ID="btnSearchLines" runat="server" Text="Search" UseSubmitBehavior="false" Width="70px">
                                   </telerik:RadButton>
                                </div>--%>
                            </div>
                           
                      <div style="height:300px; width:1600px;">
                         <telerik:RadGrid ID="grdLines" Width="1600px" runat="server" Height="300px"  AllowPaging="True" PageSize="50" AllowSorting="True" CellSpacing="0" 
                                    DataSourceID="SqlDS_grdLines" DataKeyNames="OrderNumber" GridLines="None"  >
                    
                                <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                </ClientSettings>


                             <MasterTableView AutoGenerateColumns="False" DataKeyNames="OrderNumber" DataSourceID="SqlDS_grdLines" Width="1800px" >
                                <Columns>
                                 
                                     <telerik:GridBoundColumn DataField="EnterDate" DataFormatString="{0:MM/dd/yyyy}" DataType="System.DateTime" HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate">
                                        <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                        <ItemStyle HorizontalAlign="Right" Width="60px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn> 
                                 
                                     <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                        <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                        <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                                        <HeaderStyle HorizontalAlign="Left" Width="250px" />
                                        <ItemStyle HorizontalAlign="Left" Width="250px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                 

                                     <telerik:GridBoundColumn DataField="QtyOrd" DataFormatString="{0:n1}" DataType="System.Decimal" HeaderText="Qty Ord" SortExpression="QtyOrd" 
                                         UniqueName="QtyOrd">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="StkQtyShip" DataFormatString="{0:n1}" DataType="System.Decimal" HeaderText="Qty Ship" SortExpression="StkQtyShip" 
                                         UniqueName="StkQtyShip">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Price" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Price" SortExpression="Price" 
                                         UniqueName="Price">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="MarginPct" DataFormatString="{0:p1}" DataType="System.Decimal" HeaderText="Margin %" SortExpression="MarginPct" 
                                         UniqueName="MarginPct">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>

                                     <telerik:GridBoundColumn DataField="NetAmount" DataFormatString="{0:c2}" DataType="System.Decimal" HeaderText="Value" SortExpression="NetAmount" 
                                         UniqueName="NetAmount">
                                        <HeaderStyle HorizontalAlign="Left" Width="55px" />
                                        <ItemStyle HorizontalAlign="Right" Width="55px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                  
                                 
                                     <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" ReadOnly="True" SortExpression="CustName" UniqueName="CustName">
                                        <HeaderStyle HorizontalAlign="Left" Width="150px" />
                                        <ItemStyle HorizontalAlign="Left" Width="150px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="JobName" HeaderText="Job Name" ReadOnly="True" SortExpression="JobName" UniqueName="JobName">
                                        <HeaderStyle HorizontalAlign="Left" Width="140px" />
                                        <ItemStyle HorizontalAlign="Left" Width="140px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" ReadOnly="True" SortExpression="SalesName" UniqueName="SalesName">
                                        <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                        <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                 
                                     <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" ReadOnly="True" SortExpression="OrderNumber" UniqueName="OrderNumber">
                                        <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                        <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ShipToID" HeaderText="ShipTo" SortExpression="ShipToID" UniqueName="ShipToID">
                                        <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                        <ItemStyle HorizontalAlign="Left" Width="75px" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>

                                     <telerik:GridBoundColumn DataField="TransType" HeaderText="Type" SortExpression="TransType" UniqueName="TransType">
                                        <HeaderStyle HorizontalAlign="Left" Width="35px" />
                                        <ItemStyle HorizontalAlign="Left" Width="35px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="ReviewMargin" HeaderText="Mrgn%" SortExpression="ReviewMargin" UniqueName="ReviewMargin" >
                                              <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                              <ItemStyle Width="50px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="ReviewPrice" HeaderText="Price" SortExpression="ReviewPrice" UniqueName="ReviewPrice" >
                                        <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                        <ItemStyle Width="50px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                    </telerik:GridBoundColumn>

                                 
                                </Columns>
                         
                                 <PagerStyle PageSizeControlType="RadComboBox" />
                             </MasterTableView>
                     
                         </telerik:RadGrid> 
                 
                         <asp:SqlDataSource ID="SqlDS_grdLines" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspOrdersLinesActiveGetAllWhseFilter" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="whseID1" Type="String" />
                                <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="whseID2" Type="String" />
                                <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="whseID3" Type="String" />
                                <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="whseID4" Type="String" />
                                <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="whseID5" Type="String" />                               
                                <asp:ControlParameter ControlID="lCustName" DefaultValue="%" Name="CustName"  PropertyName="Text" />
                                <asp:ControlParameter ControlID="lJobName" DefaultValue="%" Name="JobName"  PropertyName="Text" />
                                <asp:ControlParameter ControlID="lSalesRep" DefaultValue="%" Name="SalesName"  PropertyName="Text" />
                                <asp:ControlParameter ControlID="lTotalLineAmountMinimum" DefaultValue="0" Name="TotalLineAmountMinimum"  PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="lProdID" DefaultValue="0" Name="ProdID"  PropertyName="Text" />
                                <asp:ControlParameter ControlID="lDescription" DefaultValue="0" Name="Description"  PropertyName="Text" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                      </div>
                      
                      
                    <div style="width:1600px; height:370px; Margin:10px 0px 5px 0px; float:left;">
                         <h5 style="height:25px; width:1600px;">
                            <asp:Label ID="lblgrdLinesSelected" runat="server" Text="Label"></asp:Label>
                         </h5>
                         <telerik:RadGrid ID="grdLinesLines" runat="server" Width="1600px" Height="320px" AllowSorting="True" CellSpacing="0" 
                             DataSourceID="SqlDS_LinesLines" GridLines="None" AllowPaging="false"   >

                             <ClientSettings>
                                 <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                             </ClientSettings>
                             
                             <MasterTableView AllowSorting="False" AutoGenerateColumns="False" DataSourceID="SqlDS_LinesLines" Width="1600px" EnableNoRecordsTemplate="true" NoMasterRecordsText="Select an Order above to see details here." >
                                  <NoRecordsTemplate>
                                    <p style=" font-size:medium; color: Navy">Select an order above to see the details here.</p>
                                  </NoRecordsTemplate>

                                 <Columns>
                                     <%-- <telerik:GridBoundColumn DataField="OrderNumber" HeaderText="Order" SortExpression="OrderNumber" UniqueName="OrderNumber">
                                        <HeaderStyle HorizontalAlign="Left" Width="75px" />
                                        <ItemStyle HorizontalAlign="Left" Width="75px" />
                                     </telerik:GridBoundColumn>--%>
                                     <telerik:GridBoundColumn DataField="Line" DataType="System.Int32" SortExpression="Line" UniqueName="Line">
                                        <HeaderStyle Width="20px" />
                                        <ItemStyle Width="20px" HorizontalAlign="Right" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" 
                                         SortExpression="ProdID" UniqueName="ProdID">
                                         <HeaderStyle HorizontalAlign="Left" Width="100px" />
                                         <ItemStyle HorizontalAlign="Left" Width="100px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Description" HeaderText="Description" 
                                         SortExpression="Description" UniqueName="Description">
                                         <HeaderStyle HorizontalAlign="Left" Width="325px" />
                                         <ItemStyle HorizontalAlign="Left" Width="325px" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Price" DataFormatString="{0:c2}" 
                                         DataType="System.Decimal" HeaderText="Price" SortExpression="Price" 
                                         UniqueName="Price">
                                         <HeaderStyle HorizontalAlign="Left" Width="50px" />
                                         <ItemStyle HorizontalAlign="Right" Width="50px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="Cost" DataFormatString="{0:c2}" Visible="false" 
                                         DataType="System.Decimal" HeaderText="Cost" SortExpression="Cost" 
                                         UniqueName="Cost">
                                         <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                         <ItemStyle HorizontalAlign="Right" Width="60px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Decimal" DataFormatString="{0:P1}" HeaderText="Mgn %" ReadOnly="True" SortExpression="MarginPct" UniqueName="MarginPct">
                                                <HeaderStyle Width="60px" VerticalAlign="Bottom" />
                                                <ItemStyle Width="60px" HorizontalAlign="Right" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="NetAmount" DataFormatString="{0:c2}" 
                                         DataType="System.Decimal" HeaderText="Net" SortExpression="NetAmount" 
                                         UniqueName="NetAmount">
                                         <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                         <ItemStyle HorizontalAlign="Right" Width="60px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="QtyOrd" DataFormatString="{0:n1}" 
                                         DataType="System.Decimal" HeaderText="Qty Ord" SortExpression="QtyOrd" 
                                         UniqueName="QtyOrd">
                                         <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                         <ItemStyle HorizontalAlign="Right" Width="60px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="QtyShip" DataFormatString="{0:n1}" 
                                         DataType="System.Decimal" HeaderText="Qty Ship" SortExpression="QtyShip" 
                                         UniqueName="QtyShip">
                                         <HeaderStyle HorizontalAlign="Left" Width="60px" />
                                         <ItemStyle HorizontalAlign="Right" Width="60px" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="ReviewMargin" HeaderText="Mrgn%" SortExpression="ReviewMargin" UniqueName="ReviewMargin" >
                                          <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                          <ItemStyle Width="50px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="ReviewPrice" HeaderText="Price" SortExpression="ReviewPrice" UniqueName="ReviewPrice" >
                                          <HeaderStyle Width="50px" VerticalAlign="Bottom" />
                                          <ItemStyle Width="50px" HorizontalAlign="Left" Font-Size="X-Small" VerticalAlign="Top" />
                                     </telerik:GridBoundColumn>
                                     
                                 </Columns>
                                
                                 <PagerStyle PageSizeControlType="RadComboBox" />
                             
                               
                             
                             
                             </MasterTableView>
                             <%--<PagerStyle PageSizeControlType="RadComboBox" />--%>
                                                 
                         </telerik:RadGrid>
                         <asp:SqlDataSource ID="SqlDS_LinesLines" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspOrdersLinesGetByOrder" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="grdLines" Name="OrderNumber" PropertyName="SelectedValue" Type="String" DefaultValue="0" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                    </div>     
                           
                            
                      </div>
            </telerik:RadPageView>
        </telerik:RadMultiPage>
    </div>
            

             
    
</div>

</asp:Content>

