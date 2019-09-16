<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/AMR_Secure.master" AutoEventWireup="false" CodeFile="Orders.aspx.vb" Inherits="AMR_Secure_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>

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


    
  

                <div style="width:1700px; height:40px; Margin:0px 0px 0px 20px;">
                     <h1>Active Orders</h1>   
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
                 
                         <asp:SqlDataSource ID="SqlDS_grdLines" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspOrdersLinesActiveGetAMRWhseFilter" SelectCommandType="StoredProcedure">
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
 
</asp:Content>

