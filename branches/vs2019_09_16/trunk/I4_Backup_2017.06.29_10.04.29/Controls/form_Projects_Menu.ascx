<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_Projects_Menu.ascx.vb" Inherits="Controls_form_Projects_Menu" %>

 <%--Menu Maintenance Datasources--%>
    <asp:SqlDataSource ID="SqlDS_ContractorMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
          <SelectParameters>
            <asp:Parameter DefaultValue="Contractor" Name="Type" Type="String" />
            <asp:Parameter Name="TypeStatus" DefaultValue="Active" Type="String" />
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
    
    <asp:SqlDataSource ID="SqlDS_DistributorMenu" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure" 
        InsertCommand="uspProjectMenusInsert" InsertCommandType="StoredProcedure" 
        UpdateCommand="uspProjectMenusUpdate" UpdateCommandType="StoredProcedure">
            <InsertParameters>
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="TypeStatus" Type="String" />
                <asp:Parameter Name="Label" Type="String" />
                <asp:Parameter Name="Value1" Type="String" />
                <asp:Parameter Name="Value2" Type="String" />
                <asp:Parameter Name="Seq" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="Distributor" Name="Type" Type="String" />
                <asp:Parameter Name="TypeStatus" DefaultValue="Active" Type="String" />
                <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="Region1" Type="String" />
                <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="Region2" Type="String" />
                <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="Region3" Type="String" />
                <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="Region4" Type="String" />
                <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="Region5" Type="String" />
                <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="Region6" Type="String" />
                <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="Region7" Type="String" />
                <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="Region8" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Menu_ID" Type="Int32" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="TypeStatus" Type="String" />
                <asp:Parameter Name="Label" Type="String" />
                <asp:Parameter Name="Value1" Type="String" />
                <asp:Parameter Name="Value2" Type="String" />
                <asp:Parameter Name="Seq" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDS_EstimatorMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Estimator" Name="Type" Type="String" />
            <asp:Parameter Name="TypeStatus" DefaultValue="Active" Type="String" />
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
    <asp:SqlDataSource ID="SqlDS_FlagMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Flag" Name="Type" Type="String" />
            <asp:Parameter Name="TypeStatus" DefaultValue="Active" Type="String" />
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
    <asp:SqlDataSource ID="SqlDS_SalesPersonMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="SalesPerson" Name="Type" Type="String" />
            <asp:Parameter Name="TypeStatus" DefaultValue="Active" Type="String" />
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
    
    <asp:SqlDataSource ID="SqlDS_StateList" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusBranchAndStateGet" SelectCommandType="StoredProcedure">
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
  
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
    </telerik:RadAjaxLoadingPanel>

    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>

            <telerik:AjaxSetting AjaxControlID="fltrBranch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdAssemblies" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnAddContractorToMenu">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdContractorList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnContractorMenuUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdContractorList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdContractorList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlContractorUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="uContractor" LoadingPanelID="" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnDistributorMenuUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdDistributorList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddDistributorToMenu">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdDistributorList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdDistributorList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlDistributorUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="uDistributor" LoadingPanelID="" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnDistrictMenuUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdDistrictList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddDistrictToMenu">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdDistrictList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdDistrictList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlDistrictUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="uDistrict" LoadingPanelID="" />
                </UpdatedControls>
            </telerik:AjaxSetting>


            <telerik:AjaxSetting AjaxControlID="btnEstimatorMenuUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdEstimatorList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddEstimatorToMenu">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdEstimatorList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdEstimatorList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlEstimatorUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="uEstimator" LoadingPanelID="" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnFlagMenuUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdFlagList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddFlagToMenu">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdFlagList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdFlagList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlFlagUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="uFlag" LoadingPanelID="" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnSalesPersonMenuUpdate">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSalesPersonList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAddSalesPersonToMenu">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSalesPersonList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdSalesPersonList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlSalesPersonUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="uSalesPerson" LoadingPanelID="" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnAddSalesPersonToMenu">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdSalesPersonList" LoadingPanelID="RadAjaxLoadingPanel1" />                
                </UpdatedControls>  
            </telerik:AjaxSetting>


        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>


     <div id="divBody" style="width:1300px;margin: 10px;">
        <div>
            <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Width="1000px" MultiPageID="RadMultiPage1" Skin="MetroTouch" SelectedIndex="0" >
                <Tabs>
                    <telerik:RadTab runat="server" Text="Assemblies" PageViewID="Assemblies" Selected="true" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Contractors" PageViewID="Contractors" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Distributors" PageViewID="Distributors" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Estimators" PageViewID="Estimators" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Flags" PageViewID="Flags" ></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Sales Person" PageViewID="SalesPerson" ></telerik:RadTab>
                </Tabs>
            </telerik:RadTabStrip>
        </div>
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1300px">
            
            <telerik:RadPageView ID="Assemblies" runat="server">
                <div style="width:1100px;float:left; margin:10px;">
                    <div style="width:200px; height:600px;float:left; margin-right:120px;">
                        <div style="width:200px; height:40px;float:left;">
                            <telerik:RadComboBox ID="fltrBranch" runat="server" Label="Branch:" AutoPostBack="true" 
                                DataSourceID="SqlDS_fltrBranch" DataTextField="comboname" DataValueField="branchno" LabelCssClass="myLabelCss">   
                            </telerik:RadComboBox> 
                            <asp:SqlDataSource ID="SqlDS_fltrBranch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspGetBranchesActiveOnly" SelectCommandType="StoredProcedure">
                            </asp:SqlDataSource>
                        </div>
                        <div style="width:200px; height:560px;float:left;">
                            <telerik:RadGrid ID="grdAssemblies" runat="server" Width="200px" Height="560px" CellSpacing="0" DataSourceID="SqlDS_grdAssemblies" GridLines="None">
                                
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                </ClientSettings>
                                
                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="AssemblyID" DataSourceID="SqlDS_grdAssemblies" width="200px">
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="AssemblyID" DataType="System.Int64" Display="False" HeaderText="AssemblyID" ReadOnly="True" SortExpression="AssemblyID" 
                                            UniqueName="AssemblyID">
                                        </telerik:GridBoundColumn>
                                        
                                        <telerik:GridBoundColumn DataField="AssemblyName" HeaderText="Assembly Name" SortExpression="AssemblyName" UniqueName="AssemblyName">
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>

                            <asp:SqlDataSource ID="SqlDS_grdAssemblies" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="SELECT AssemblyID, WhseID, AssemblyName FROM TakeOff_Assemblies WHERE (Status = N'Active') AND (WhseID = @WhseID) ORDER BY AssemblyName">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="fltrBranch" DefaultValue="1" Name="WhseID" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>
                    </div>
                    <div style="width:800px; height:600px;float:left;">
                        <div style="width:600px; height:100px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                             <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">                     
                                  Add Assembly
                             </div>
                             <div style="width:600px; height:75px;">
                             </div>

                        </div>

                        <div style="width:600px; height:100px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                             <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">                     
                                  Inactivate Assembly
                             </div>
                             <div style="width:600px; height:75px;">
                             </div>

                        </div>
                        <div style="width:600px; height:100px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">  
                             <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">                     
                                  Edit Assembly Name
                             </div>
                             <div style="width:600px; height:75px;">
                             </div>

                        </div>

                    </div>
                
               
                
                </div>
            
            
            
            
            </telerik:RadPageView>


            <telerik:RadPageView ID="Contractors" runat="server" >

                <div style="padding: 10px 0px 0px 0px; width: 1000px; height:500px;">   
                    <div style="float:left; width:400px;">
                        <telerik:RadGrid ID="grdContractorList" runat="server" AllowSorting="True"  Width="400px" Height="450px"
                            DataSourceID="SqlDS_ContractorMenu" GridLines="None" Skin="Sitefinity" OnSelectedIndexChanged="grdContractorList_SelectedIndexChanged">
                            
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                            </ClientSettings>
                            
                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_ContractorMenu" DataKeyNames="Menu_ID">
                                <RowIndicatorColumn>
                                <HeaderStyle Width="20px"></HeaderStyle>
                                </RowIndicatorColumn>

                                <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

                                <ExpandCollapseColumn>
                                <HeaderStyle Width="20px"></HeaderStyle>
                                </ExpandCollapseColumn>
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="Label" HeaderText="Contractor" SortExpression="Label" UniqueName="Label" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Value1" HeaderText="State" SortExpression="Value2" UniqueName="Value2" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                           
                                        <telerik:GridBoundColumn DataField="Seq" HeaderText="Sort Seq" SortExpression="Seq" UniqueName="Seq" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                            
                                        <telerik:GridBoundColumn DataField="TypeStatus" HeaderText="Status" SortExpression="TypeStatus" UniqueName="TypeStatus" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Value2" HeaderText="Value2" SortExpression="Value2" UniqueName="Value2" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Added" HeaderText="Added" SortExpression="Added" UniqueName="Added" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Modified" HeaderText="Modified" SortExpression="Modified" UniqueName="Modified" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Menu_ID" HeaderText="Menu_ID" SortExpression="Menu_ID" UniqueName="Menu_ID" Visible="false"></telerik:GridBoundColumn>
                                    </Columns>
                            </MasterTableView>
                            
                        </telerik:RadGrid>
                        <p>Sort Seq: 0-First 1-Top Priority 99-Normal Priority</p>
                    </div>  
                    <div id="divContractorUpdate" style="width:550px; height:500px; float:right; padding:0px 0px 0px 20px;">
                        <h5>Contractor Information Update</h5>
                        <asp:Panel ID="pnlContractorUpdate" runat="server">
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadTextBox ID="uContractor" runat="server" Label="Update Contractor:" Width="60%" MaxLength="25">
                                </telerik:RadTextBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">    
                                <telerik:RadComboBox ID="uContractorState" Label="State:" ToolTip="State in which the contractor should be assigned." Runat="server" Width="30%" 
                                        DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                                </telerik:RadComboBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadComboBox ID="uContractorSeq" runat="server" Label="Priority:" Width="30%">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                                        <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadComboBox ID="uContractorStatus" runat="server" Label="Status:" Width="30%">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                        <telerik:RadComboBoxItem runat="server" Text="Inactive" Value="Inactive" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <asp:HiddenField ID="uContractorModifiedDate" runat="server" />
                                <asp:HiddenField ID="uContractorModifiedBy" runat="server" />
                                <telerik:RadButton ID="btnContractorMenuUpdate" runat="server" Text="Update Contractor"  Skin="Silk"></telerik:RadButton>
                                <%--<asp:Button ID="btnContractorMenuUpdate" runat="server" Text="Update Contractor" Width="250px" />--%>
                            </div>
                        </asp:Panel>
                    </div>

                </div>
                <div id="divMenuNewContractor" style="padding: 15px 0px 0px 5px; width:1000px; height:40px; background-color:Silver; border-style: solid; border-width: 1px;">
                      
                        <telerik:RadTextBox ID="aContractor" runat="server" Label="New Contractor:" Width="350px" LabelWidth="125px" MaxLength="25">
                        </telerik:RadTextBox>
                        <telerik:RadComboBox ID="aContractorState" Label="State:" ToolTip="State in which the contractor should be assigned." Runat="server" Width="65px" 
                                    DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                        </telerik:RadComboBox>
                        <telerik:RadComboBox ID="aContractorSeq" Label="Display Priority:" Width="100px"  runat="server">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                                <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                            </Items>
                        </telerik:RadComboBox>
                      
                        <telerik:RadButton ID="btnAddContractorToMenu" runat="server" Text="Add Contractor"  Skin="Silk"></telerik:RadButton>
                        <%--<asp:Button ID="btnAddContractorToMenu" runat="server" Text="Add Contractor" Width="200px" />--%>
                      
                </div>
            </telerik:RadPageView>

            <telerik:RadPageView ID="Distributors" runat="server" >
                <div style="padding: 10px 0px 0px 0px; width: 1000px; height:500px;">   
                    <div style="float:left; width:400px;">
                        <telerik:RadGrid ID="grdDistributorList" runat="server" AllowSorting="True"  Width="400px" Height="450px"
                            DataSourceID="SqlDS_DistributorMenu" GridLines="None" Skin="Sitefinity" OnSelectedIndexChanged="grdDistributorList_SelectedIndexChanged">
                            
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                            </ClientSettings>
                            
                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_DistributorMenu" DataKeyNames="Menu_ID">
                                <RowIndicatorColumn>
                                <HeaderStyle Width="20px"></HeaderStyle>
                                </RowIndicatorColumn>

                                <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

                                <ExpandCollapseColumn>
                                <HeaderStyle Width="20px"></HeaderStyle>
                                </ExpandCollapseColumn>
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="Label" HeaderText="Distributor" SortExpression="Label" UniqueName="Label" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Value1" HeaderText="State" SortExpression="Value2" UniqueName="Value2" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                           
                                        <telerik:GridBoundColumn DataField="Seq" HeaderText="Sort Seq" SortExpression="Seq" UniqueName="Seq" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                            
                                        <telerik:GridBoundColumn DataField="TypeStatus" HeaderText="Status" SortExpression="TypeStatus" UniqueName="TypeStatus" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Value2" HeaderText="Value2" SortExpression="Value2" UniqueName="Value2" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Added" HeaderText="Added" SortExpression="Added" UniqueName="Added" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Modified" HeaderText="Modified" SortExpression="Modified" UniqueName="Modified" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Menu_ID" HeaderText="Menu_ID" SortExpression="Menu_ID" UniqueName="Menu_ID" Visible="false"></telerik:GridBoundColumn>
                                    </Columns>
                            </MasterTableView>
                            
                        </telerik:RadGrid>
                        <p>Sort Seq: 0-First 1-Top Priority 99-Normal Priority</p>
                    </div>  
                    <div id="div1" style="width:550px; height:500px; float:right;">
                        <h5>Distributor Information Update</h5>
                        <asp:Panel ID="pnlDistributorUpdate" runat="server">
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadTextBox ID="uDistributor" runat="server" Label="Update Distributor:" Width="60%" MaxLength="25">
                                </telerik:RadTextBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">    
                                <telerik:RadComboBox ID="uDistributorState" Label="State:" ToolTip="State in which the distributor should be assigned." Runat="server" Width="30%" 
                                        DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                                </telerik:RadComboBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadComboBox ID="uDistributorSeq" runat="server" Label="Priority:" Width="30%">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                                        <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadComboBox ID="uDistributorStatus" runat="server" Label="Status:" Width="30%">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                        <telerik:RadComboBoxItem runat="server" Text="Inactive" Value="Inactive" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <asp:HiddenField ID="uDistributorModifiedDate" runat="server" />
                                <asp:HiddenField ID="uDistributorModifiedBy" runat="server" />
                                <telerik:RadButton ID="btnDistributorMenuUpdate" runat="server" Text="Update Distributor"  Skin="Silk"></telerik:RadButton>
                                <%--<asp:Button ID="btnDistributorMenuUpdate" runat="server" Text="Update Distributor" Width="250px" />--%>
                            </div>
                        </asp:Panel>
                    </div>

                </div>
                <div id="div2" style="padding: 15px 0px 0px 5px; width:1000px; height:40px; background-color:Silver; border-style: solid; border-width: 1px;">
                      
                        <telerik:RadTextBox ID="aDistributor" runat="server" Label="New Distributor:" LabelWidth="125px" Width="350px" MaxLength="25">
                        </telerik:RadTextBox>
                        <telerik:RadComboBox ID="aDistributorState" Label="State:" ToolTip="State in which the distributor should be assigned." Runat="server" Width="65px" 
                                    DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                        </telerik:RadComboBox>
                        <telerik:RadComboBox ID="aDistributorSeq" Label="Display Priority:" Width="100px"  runat="server">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                                <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                            </Items>
                        </telerik:RadComboBox>
                      
                        <telerik:RadButton ID="btnAddDistributorToMenu" runat="server" Text="Add Distributor"  Skin="Silk"></telerik:RadButton>
                        <%--<asp:Button ID="btnAddDistributorToMenu" runat="server" Text="Add Distributor" Width="200px" />--%>
                      
                </div>
            </telerik:RadPageView>

            <telerik:RadPageView ID="Estimators" runat="server" >

                <div style="padding: 10px 0px 0px 0px; width: 1000px; height:500px;">   
                    <div style="float:left; width:400px;">
                        <telerik:RadGrid ID="grdEstimatorList" runat="server" AllowSorting="True"  Width="400px" Height="450px"
                            DataSourceID="SqlDS_EstimatorMenu" GridLines="None" Skin="Sitefinity" OnSelectedIndexChanged="grdEstimatorList_SelectedIndexChanged">
                            
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                            </ClientSettings>
                            
                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_EstimatorMenu" DataKeyNames="Menu_ID">
                                <RowIndicatorColumn>
                                <HeaderStyle Width="20px"></HeaderStyle>
                                </RowIndicatorColumn>

                                <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

                                <ExpandCollapseColumn>
                                <HeaderStyle Width="20px"></HeaderStyle>
                                </ExpandCollapseColumn>
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="Label" HeaderText="Estimator" SortExpression="Label" UniqueName="Label" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Value1" HeaderText="State" SortExpression="Value2" UniqueName="Value2" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                           
                                        <telerik:GridBoundColumn DataField="Seq" HeaderText="Sort Seq" SortExpression="Seq" UniqueName="Seq" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                            
                                        <telerik:GridBoundColumn DataField="TypeStatus" HeaderText="Status" SortExpression="TypeStatus" UniqueName="TypeStatus" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Value2" HeaderText="Value2" SortExpression="Value2" UniqueName="Value2" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Added" HeaderText="Added" SortExpression="Added" UniqueName="Added" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Modified" HeaderText="Modified" SortExpression="Modified" UniqueName="Modified" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Menu_ID" HeaderText="Menu_ID" SortExpression="Menu_ID" UniqueName="Menu_ID" Visible="false"></telerik:GridBoundColumn>
                                    </Columns>
                            </MasterTableView>
                            
                        </telerik:RadGrid>
                        <p>Sort Seq: 0-First 1-Top Priority 99-Normal Priority</p>
                    </div>  
                    <div id="div5" style="width:550px; height:500px; float:right;">
                        <h5>Estimator Information Update</h5>
                        <asp:Panel ID="pnlEstimatorUpdate" runat="server">
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadTextBox ID="uEstimator" runat="server" Label="Update Estimator:" Width="60%" MaxLength="25">
                                </telerik:RadTextBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">    
                                <telerik:RadComboBox ID="uEstimatorState" Label="State:" ToolTip="State in which the estimator should be assigned." Runat="server" Width="30%" 
                                        DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                                </telerik:RadComboBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadComboBox ID="uEstimatorSeq" runat="server" Label="Priority:" Width="30%">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                                        <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadComboBox ID="uEstimatorStatus" runat="server" Label="Status:" Width="30%">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                        <telerik:RadComboBoxItem runat="server" Text="Inactive" Value="Inactive" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <asp:HiddenField ID="uEstimatorModified" runat="server" />
                                <asp:HiddenField ID="uEstimatorModifiedBy" runat="server" />
                                <telerik:RadButton ID="btnEstimatorMenuUpdate" runat="server" Text="Update Estimator"  Skin="Silk"></telerik:RadButton>
                                <%--<asp:Button ID="btnEstimatorMenuUpdate" runat="server" Text="Update Estimator" Width="250px" />--%>
                            </div>
                        </asp:Panel>
                    </div>

                </div>
                <div id="div6" style="padding: 15px 0px 0px 5px; width:1000px; height:40px; background-color:Silver; border-style: solid; border-width: 1px;">
                      
                        <telerik:RadTextBox ID="aEstimator" runat="server" Label="New Estimator:" Width="350px" LabelWidth="125px" MaxLength="25">
                        </telerik:RadTextBox>
                        <telerik:RadComboBox ID="aEstimatorState" Label="State:" ToolTip="State in which the estimator should be assigned." Runat="server" Width="65px" 
                                    DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                        </telerik:RadComboBox>
                        <telerik:RadComboBox ID="aEstimatorSeq" Label="Display Priority:" Width="100px"  runat="server">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                                <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                            </Items>
                        </telerik:RadComboBox>
                      
                        <telerik:RadButton ID="btnAddEstimatorToMenu" runat="server" Text="Add Estimator"  Skin="Silk"></telerik:RadButton>
                        <%--<asp:Button ID="btnAddEstimatorToMenu" runat="server" Text="Add Estimator" Width="200px" />--%>
                      
                </div>
        </telerik:RadPageView>

            <telerik:RadPageView ID="Flags" runat="server" >
            <div style="padding: 10px 0px 0px 0px; width: 1000px; height:500px;">   
                <div style="float:left; width:400px;">
                    <telerik:RadGrid ID="grdFlagList" runat="server" AllowSorting="True"  Width="400px" Height="450px"
                        DataSourceID="SqlDS_FlagMenu" GridLines="None" Skin="Sitefinity" OnSelectedIndexChanged="grdFlagList_SelectedIndexChanged">
                            
                        <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                <Selecting AllowRowSelect="true" />
                                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                        </ClientSettings>
                            
                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_FlagMenu" DataKeyNames="Menu_ID">
                            <RowIndicatorColumn>
                            <HeaderStyle Width="20px"></HeaderStyle>
                            </RowIndicatorColumn>

                            <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

                            <ExpandCollapseColumn>
                            <HeaderStyle Width="20px"></HeaderStyle>
                            </ExpandCollapseColumn>
                                <Columns>
                                    <telerik:GridBoundColumn DataField="Label" HeaderText="Flag" SortExpression="Label" UniqueName="Label" ShowSortIcon="true">
                                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Value1" HeaderText="State" SortExpression="Value2" UniqueName="Value2" ShowSortIcon="true">
                                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                    </telerik:GridBoundColumn>
                                           
                                    <telerik:GridBoundColumn DataField="Seq" HeaderText="Sort Seq" SortExpression="Seq" UniqueName="Seq" ShowSortIcon="true">
                                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                    </telerik:GridBoundColumn>
                                            
                                    <telerik:GridBoundColumn DataField="TypeStatus" HeaderText="Status" SortExpression="TypeStatus" UniqueName="TypeStatus" ShowSortIcon="true">
                                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Value2" HeaderText="Value2" SortExpression="Value2" UniqueName="Value2" Visible="false"></telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Added" HeaderText="Added" SortExpression="Added" UniqueName="Added" Visible="false"></telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Modified" HeaderText="Modified" SortExpression="Modified" UniqueName="Modified" Visible="false"></telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Menu_ID" HeaderText="Menu_ID" SortExpression="Menu_ID" UniqueName="Menu_ID" Visible="false"></telerik:GridBoundColumn>
                                </Columns>
                        </MasterTableView>
                            
                    </telerik:RadGrid>
                    <p>Sort Seq: 0-First 1-Top Priority 99-Normal Priority</p>
                </div>  
                <div id="div7" style="width:550px; height:500px; float:right;">
                    <h5>Flag Information Update</h5>
                    <asp:Panel ID="pnlFlagUpdate" runat="server">
                        <div style="width:550px;padding:20px 0px 0px 10px;">
                            <telerik:RadTextBox ID="uFlag" runat="server" Label="Update Flag:" Width="60%" MaxLength="25">
                            </telerik:RadTextBox>
                        </div>
                        <div style="width:550px;padding:20px 0px 0px 10px;">    
                            <telerik:RadComboBox ID="uFlagState" Label="State:" ToolTip="State in which the flag should be assigned." Runat="server" Width="30%" 
                                    DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                            </telerik:RadComboBox>
                        </div>
                        <div style="width:550px;padding:20px 0px 0px 10px;">
                            <telerik:RadComboBox ID="uFlagSeq" runat="server" Label="Priority:" Width="30%">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                                    <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                                </Items>
                            </telerik:RadComboBox>
                        </div>
                        <div style="width:550px;padding:20px 0px 0px 10px;">
                            <telerik:RadComboBox ID="uFlagStatus" runat="server" Label="Status:" Width="30%">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                    <telerik:RadComboBoxItem runat="server" Text="Inactive" Value="Inactive" />
                                </Items>
                            </telerik:RadComboBox>
                        </div>
                            
                        <div style="width:550px;padding:20px 0px 0px 10px;">
                            <asp:HiddenField ID="uFlagModified" runat="server" />
                            <asp:HiddenField ID="uFlagModifiedBy" runat="server" />
                            <telerik:RadButton ID="btnFlagMenuUpdate" runat="server" Text="Update Flag"  Skin="Silk"></telerik:RadButton>
                            <%--<asp:Button ID="btnFlagMenuUpdate" runat="server" Text="Update Flag" Width="250px" />--%>
                        </div>
                    </asp:Panel>
                </div>

            </div>
            <div id="div8" style="padding: 15px 0px 0px 5px; width:1000px; height:40px; background-color:Silver; border-style: solid; border-width: 1px;">
                      
                    <telerik:RadTextBox ID="aFlag" runat="server" Label="New Flag:" Width="350px"  LabelWidth="125px" MaxLength="25">
                    </telerik:RadTextBox>
                    <telerik:RadComboBox ID="aFlagState" Label="State:" ToolTip="State in which the flag should be assigned." Runat="server" Width="65px" 
                                DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                    </telerik:RadComboBox>
                    <telerik:RadComboBox ID="aFlagSeq" Label="Display Priority:" Width="100px"  runat="server">
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                            <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                        </Items>
                    </telerik:RadComboBox>
                      
                    <telerik:RadButton ID="btnAddFlagToMenu" runat="server" Text="Add Flag"  Skin="Silk"></telerik:RadButton>
                    <%--<asp:Button ID="btnAddFlagToMenu" runat="server" Text="Add Flag" Width="200px" />--%>
                      
            </div>
        </telerik:RadPageView>

            <telerik:RadPageView ID="SalesPerson" runat="server" >
                <div style="padding: 10px 0px 0px 0px; width: 1000px; height:500px;">   
                    <div style="float:left; width:400px;">
                        <telerik:RadGrid ID="grdSalesPersonList" runat="server" AllowSorting="True"  Width="400px" Height="450px"
                            DataSourceID="SqlDS_SalesPersonMenu" GridLines="None" Skin="Sitefinity" OnSelectedIndexChanged="grdSalesPersonList_SelectedIndexChanged">
                            
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                    <Selecting AllowRowSelect="true" />
                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                            </ClientSettings>
                            
                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_SalesPersonMenu" DataKeyNames="Menu_ID">
                                <RowIndicatorColumn>
                                <HeaderStyle Width="20px"></HeaderStyle>
                                </RowIndicatorColumn>

                                <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

                                <ExpandCollapseColumn>
                                <HeaderStyle Width="20px"></HeaderStyle>
                                </ExpandCollapseColumn>
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="Label" HeaderText="Sales Person" SortExpression="Label" UniqueName="Label" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Value1" HeaderText="State" SortExpression="Value2" UniqueName="Value2" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                           
                                        <telerik:GridBoundColumn DataField="Seq" HeaderText="Sort Seq" SortExpression="Seq" UniqueName="Seq" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                            
                                        <telerik:GridBoundColumn DataField="TypeStatus" HeaderText="Status" SortExpression="TypeStatus" UniqueName="TypeStatus" ShowSortIcon="true">
                                            <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Value2" HeaderText="Value2" SortExpression="Value2" UniqueName="Value2" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Added" HeaderText="Added" SortExpression="Added" UniqueName="Added" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Modified" HeaderText="Modified" SortExpression="Modified" UniqueName="Modified" Visible="false"></telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Menu_ID" HeaderText="Menu_ID" SortExpression="Menu_ID" UniqueName="Menu_ID" Visible="false"></telerik:GridBoundColumn>
                                    </Columns>
                            </MasterTableView>
                            
                        </telerik:RadGrid>
                        <p>Sort Seq: 0-First 1-Top Priority 99-Normal Priority</p>
                    </div>  
                    <div id="div9" style="width:550px; height:500px; float:right;">
                        <h5>Sales Person Information Update</h5>
                        <asp:Panel ID="pnlSalesPersonUpdate" runat="server">
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadTextBox ID="uSalesPerson" runat="server" Label="Update Sales Person:" Width="60%" MaxLength="25">
                                </telerik:RadTextBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">    
                                <telerik:RadComboBox ID="uSalesPersonState" Label="State:" ToolTip="State in which the sales person should be assigned." Runat="server" Width="30%" 
                                        DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                                </telerik:RadComboBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadComboBox ID="uSalesPersonSeq" runat="server" Label="Priority:" Width="30%">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                                        <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <telerik:RadComboBox ID="uSalesPersonStatus" runat="server" Label="Status:" Width="30%">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                        <telerik:RadComboBoxItem runat="server" Text="Inactive" Value="Inactive" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            
                            <div style="width:550px;padding:20px 0px 0px 10px;">
                                <asp:HiddenField ID="uSalesPersonModified" runat="server" />
                                <asp:HiddenField ID="uSalesPersonModifiedBy" runat="server" />
                                <telerik:RadButton ID="btnSalesPersonMenuUpdate" runat="server" Text="Update Sales Person"  Skin="Silk"></telerik:RadButton>
                                <%--<asp:Button ID="btnSalesPersonMenuUpdate" runat="server" Text="Update Sales Person" Width="250px" />--%>
                            </div>
                        </asp:Panel>
                    </div>

                </div>
                <div id="div10" style="padding: 15px 0px 0px 5px; width:1000px; height:40px; background-color:Silver; border-style: solid; border-width: 1px;">
                      
                        <telerik:RadTextBox ID="aSalesPerson" runat="server" Label="New Sales Person:" Width="350px"  LabelWidth="125px" MaxLength="25">
                        </telerik:RadTextBox>
                        <telerik:RadComboBox ID="aSalesPersonState" Label="State:" ToolTip="State in which the Sales Person should be assigned." Runat="server" Width="65px" 
                                    DataSourceID="SqlDS_StateList" DataTextField="State" DataValueField="State">
                        </telerik:RadComboBox>
                        <telerik:RadComboBox ID="aSalesPersonSeq" Label="Display Priority:" Width="100px"  runat="server">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Normal" Value="99" Selected="true" />
                                <telerik:RadComboBoxItem runat="server" Text="Top" Value="1" />
                            </Items>
                        </telerik:RadComboBox>
                      
                        <telerik:RadButton ID="btnAddSalesPersonToMenu" runat="server" Text="Add Sales Person"  Skin="Silk"></telerik:RadButton>
                        <%--<asp:Button ID="btnAddSalesPersonToMenu" runat="server" Text="Add Sales Person" Width="200px" />--%>
                      
                </div>
</telerik:RadPageView>

        </telerik:RadMultiPage>




        </div>