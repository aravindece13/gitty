<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Operations_Secure.master" AutoEventWireup="false" CodeFile="test.aspx.vb" Inherits="Operations_Secure_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<asp:SqlDataSource ID="SqlDS_CycleCountTrans" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
    SelectCommand="uspCycleCountAdjustmentsGetAllBranches" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:ControlParameter Name="Days" ControlID="comboBoxCCTransDays" DefaultValue="2" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDS_CCHistory" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
    SelectCommand="uspCycleCountActivityGetByWhseProduct" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <%--<asp:ControlParameter ControlID="grdCCTrans" Name="ProdID" PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="grdCCTrans" Name="WhseID" PropertyName="SelectedValue" Type="String"  />--%>
        <asp:Parameter Name="ProdID" DefaultValue="18L0845" Type="String" />
        <asp:Parameter Name="WhseID" DefaultValue="1" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDS_CountActivity" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
    SelectCommand="uspCycleCountActivityGetAllBranches" 
    SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:Parameter DefaultValue="90" Name="DaysBack" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>



<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCCTrans" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="comboBoxCCTransDays">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCCTrans" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdCCTrans">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCCTrans" LoadingPanelID="RadAjaxLoadingPanel1" />
                   <%-- <telerik:AjaxUpdatedControl ControlID="grdCCHist" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                    

                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadTabStripCC">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCCHistory" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>

</telerik:RadAjaxManagerProxy>




 <div id="divBody" style="width:1700px;height:750px;padding: 0px 0px 0px 10px;">





<div style="padding:10px 0px 0px 5px;">  

        <div id="divCCTrans" style="padding:10px 0px 10px 0px;float:left; height:600px;width:100%; ">
        
        <div style="height:20px;width:950px; padding: 0px 0px 5px 0px; ">
            <telerik:RadComboBox runat="server" ID="comboBoxCCTransDays" Width="120px" Label="How many days back?: " AutoPostBack="true" >
               <Items>
                  <telerik:RadComboBoxItem runat="server" Text="1" Value="2" Selected="true" />
                  <telerik:RadComboBoxItem runat="server" Text="3" Value="4" />
                  <telerik:RadComboBoxItem runat="server" Text="14" Value="15"  />
                  <telerik:RadComboBoxItem runat="server" Text="30" Value="31" />
                  <telerik:RadComboBoxItem runat="server" Text="60" Value="61" />
               </Items>
             </telerik:RadComboBox>
        </div>
        

        <div style="width:1650px;height:575px; float:left">
        <telerik:RadGrid ID="grdCCTrans" runat="server" OnPreRender="grdCCTrans_PreRender" AutoGenerateColumns="false" AllowMultiRowSelection="false"
                AllowPaging="True" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_CycleCountTrans"       
                GridLines="None" PageSize="25" Width="1650px" Height="575px" ShowGroupPanel="true"  >
            <%--
            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                <Selecting AllowRowSelect="false" />
            </ClientSettings>--%>
            
            <MasterTableView DataSourceID="SqlDS_CycleCountTrans" DataKeyNames="WhseID,ProdID" Width="800px" GroupLoadMode="Server">
                 <Columns>
                    <telerik:GridBoundColumn DataField="comboname" Display="true" HeaderText="Branch" SortExpression="comboname" UniqueName="comboname">
                        <HeaderStyle Width="125px" />
                        <ItemStyle Width="125px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="False" DataType="System.String">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="PostDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Posted" SortExpression="PostDate" UniqueName="PostDate">
                        <HeaderStyle Width="60px" />
                        <ItemStyle Width="60px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="Prodid" UniqueName="ProdID" DataType="System.String">
                        <HeaderStyle Width="75px" />
                        <ItemStyle Width="75px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="QtyAdjusted" DataFormatString="{0:n0}" DataType="System.Double" HeaderText="Qty Adjust" SortExpression="QtyAdjusted" UniqueName="QtyAdjusted">
                        <HeaderStyle Width="60px" />
                        <ItemStyle Width="60px" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Refer" HeaderText="Reference" SortExpression="Refer" UniqueName="Refer">
                        <HeaderStyle Width="150px" />
                        <ItemStyle Width="150px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="NetAdjustment" DataFormatString="{0:c2}" DataType="System.Double" HeaderText="Net Adjust" ReadOnly="True" SortExpression="NetAdjustment" 
                        UniqueName="NetAdjustment">
                        <HeaderStyle Width="60px" />
                        <ItemStyle Width="60px" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Cost_Unit" DataFormatString="{0:c2}" DataType="System.Double" HeaderText="Cost / Unit" SortExpression="Cost_Unit" UniqueName="Cost_Unit">
                        <HeaderStyle Width="50px" />
                        <ItemStyle Width="50px" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="JournalNo" DataType="System.Int32" HeaderText="JournalNo" SortExpression="JournalNo" UniqueName="JournalNo">
                        <HeaderStyle Width="70px" />
                        <ItemStyle Width="70px" HorizontalAlign="Center" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Operator" HeaderText="Oper" SortExpression="Operator" UniqueName="Operator">
                        <HeaderStyle Width="50px" />
                        <ItemStyle Width="50px" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                </Columns>
                
                <NestedViewTemplate>
                  <asp:Panel runat="server" ID="InnerContainer" Visible="false" BackColor="Gray">
                  <div style="padding:20px 20px 20px 20px;"> 
                  <telerik:RadTabStrip ID="RadTabStripCC" runat="server" MultiPageID="RadMultiPageCC" SelectedIndex="0" Width="100%">
                      <Tabs>
                          <telerik:RadTab runat="server" PageViewID="Last10" Text="Last 10 Counts" ></telerik:RadTab>
                      </Tabs>
                  </telerik:RadTabStrip>


                    <telerik:RadMultiPage ID="RadMultiPageCC" runat="server" SelectedIndex="0" RenderSelectedPageOnly="false">
                        <telerik:RadPageView ID="Last10" runat="server">
                            <asp:Label ID="lblWhseID" runat="server" Text='<%# Eval("WhseID") %>' Visible="false"></asp:Label>
                            <asp:Label ID="lblProdID" runat="server" Text='<%# Eval("ProdID") %>' Visible="false"></asp:Label>
                            <telerik:RadGrid ID="grdCCHistory" runat="server" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_CCHistory" GridLines="None" Width="100%" Height="300px" ShowFooter="true">
                                <%--<ClientSettings>
                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                </ClientSettings>--%>
                               
                                <MasterTableView AutoGenerateColumns="False" ShowHeader="true" DataKeyNames="WhseID,ProdID" HierarchyLoadMode="ServerOnDemand">
                                    <DetailTables>
                                        <telerik:GridTableView AutoGenerateColumns="false" DataSourceID="SqlDS_CCHistory" Width="100%" >
                                            <ParentTableRelation>
                                                <telerik:GridRelationFields MasterKeyField="WhseID" DetailKeyField="WhseID" />
                                                <telerik:GridRelationFields MasterKeyField="ProdID" DetailKeyField="ProdID" />
                                            </ParentTableRelation>
                                        
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="WhseID" Display="False" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Prodid" Display="False" HeaderText="Prodid" SortExpression="Prodid" UniqueName="Prodid">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="CycleCountDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Count" SortExpression="CycleCountDate" UniqueName="CycleCountDate">
                                                    <ItemStyle HorizontalAlign="Left" Width="50px" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="LastReceiptDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Last Receipt" SortExpression="LastReceiptDate" UniqueName="LastReceiptDate">
                                                    <ItemStyle HorizontalAlign="Left"  Width="50px" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="LastInvoiceDate" DataFormatString="{0:d}" DataType="System.DateTime" HeaderText="Last Invoice" SortExpression="LastInvoiceDate" UniqueName="LastInvoiceDate">
                                                    <ItemStyle HorizontalAlign="Left"  Width="50px" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridNumericColumn DataField="QtyAdjusted" DataType="System.Double" HeaderText="Adjust" ReadOnly="True" SortExpression="QtyAdjusted" UniqueName="QtyAdjusted">
                                                    <ItemStyle HorizontalAlign="Right"  Width="35px" />
                                                </telerik:GridNumericColumn>
                                                <telerik:GridNumericColumn DataField="QtyOnHand" DataType="System.Double" HeaderText="On Hand" SortExpression="QtyOnHand" UniqueName="QtyOnHand">
                                                    <ItemStyle HorizontalAlign="Right"  Width="45px" />
                                                </telerik:GridNumericColumn>
                                                <telerik:GridNumericColumn DataField="QtyOnOrder" DataType="System.Double" HeaderText="On Order" SortExpression="QtyOnOrder" UniqueName="QtyOnOrder">
                                                    <ItemStyle HorizontalAlign="Right"  Width="45px" />
                                                </telerik:GridNumericColumn>
                                                <telerik:GridNumericColumn DataField="QtyUnavailable" DataType="System.Double" HeaderText="UnAvail" SortExpression="QtyUnavailable" UniqueName="QtyUnavailable">
                                                    <ItemStyle HorizontalAlign="Right"  Width="45px" />
                                                </telerik:GridNumericColumn>
                                                <telerik:GridNumericColumn DataField="QtyBackOrder" DataType="System.Double" HeaderText="BO" SortExpression="QtyBackOrder" UniqueName="QtyBackOrder">
                                                    <ItemStyle HorizontalAlign="Right"  Width="30px" />
                                                </telerik:GridNumericColumn>
                                                <telerik:GridNumericColumn DataField="QtyReserved" DataType="System.Double" HeaderText="Rsrvd" SortExpression="QtyReserved" UniqueName="QtyReserved">
                                                    <ItemStyle HorizontalAlign="Right"  Width="35px" />
                                                </telerik:GridNumericColumn>
                                                <telerik:GridNumericColumn DataField="QtyCommitted" DataType="System.Double" HeaderText="Commit" SortExpression="QtyCommitted" UniqueName="QtyCommitted">
                                                    <ItemStyle HorizontalAlign="Right"  Width="45px" />
                                                </telerik:GridNumericColumn>
                                                <telerik:GridNumericColumn DataField="QtyReceived" DataType="System.Double" Display="False" HeaderText="QtyReceived" SortExpression="QtyReceived" UniqueName="QtyReceived">
                                                    <ItemStyle HorizontalAlign="Right" />
                                                </telerik:GridNumericColumn>
                        
                                            </Columns>


                                        </telerik:GridTableView>
                                    </DetailTables>
                
                                    
                    
                                </MasterTableView>
                                
                        </telerik:RadGrid>
                
                        </telerik:RadPageView>
                
                    </telerik:RadMultiPage>
                    
                  </div>
                  </asp:Panel>
               
               </NestedViewTemplate>            
                                          
                
                
              
                           

            </MasterTableView>
           
                    
        </telerik:RadGrid>
        </div>
        
        </div>

</div>
   
</div>



</asp:Content>

