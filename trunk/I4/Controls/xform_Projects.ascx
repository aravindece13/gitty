<%@ Control Language="VB" AutoEventWireup="false" CodeFile="xform_Projects.ascx.vb" Inherits="Controls_form_Projects" %>



<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
      <script type="text/javascript">
          function openWndwDetail(JobID) {
              var oWnd = radopen("../Projects/ProjectDetail.aspx?JobID=" + JobID, "wndwSeeMore");
//              
              oWnd.center();
          }

          function clientClose(sender, args) {
              if (args.get_argument() != null) {
                  alert("'" + sender.get_name() + "'" + " was closed and returned the following argument: '" + args.get_argument() + "'");
              }
          }
      </script>
</telerik:RadCodeBlock>
    
    <asp:SqlDataSource ID="SqlDS_MenuStates" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="uspProjectMenusStateGet" SelectCommandType="StoredProcedure">
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
    <asp:SqlDataSource ID="SqlDS_Branch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="uspGetBranchesByState" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter Name="State" ControlID="nState" />
        </SelectParameters>
    </asp:SqlDataSource>
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
    <asp:SqlDataSource ID="SqlDS_BranchQuote" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="uspGetBranchesByState" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter Name="State" controlid="qState" DefaultValue="CO" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <asp:SqlDataSource ID="SqlDS_ActiveProjects" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectListingGet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="%" Name="WorkType" Type="String" />
            <asp:Parameter DefaultValue="Working" Name="Status" Type="String" />
            <asp:Parameter DefaultValue="%" Name="ProjectName" Type="String" />
            <asp:Parameter DefaultValue="%" Name="Flag" Type="String" />
            <asp:Parameter DefaultValue="%" Name="LeadSalesRep" Type="String" />
            <asp:Parameter DefaultValue="%" Name="TakeOff1" Type="String" />
            <%--<asp:ControlParameter ControlID="RadTabStripActiveType" Name="WorkType" DefaultValue="%" Type="String" />
            <asp:ControlParameter ControlID="RadTabStripStatus" Name="Status" DefaultValue="Working" Type="String" />--%>
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
    <asp:SqlDataSource ID="SqlDS_NewAdds" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectNewAddsGet" SelectCommandType="StoredProcedure">
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
    <asp:SqlDataSource ID="SqlDS_DistrictMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="uspMuniSpecListGetAll" SelectCommandType="StoredProcedure">
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
    
    <%--<asp:SqlDataSource ID="SqlDS_PlanSource" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="PlanSource" Name="Type" Type="String" />
            <asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
            <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="Region1" Type="String" />
            <asp:Parameter DefaultValue="0" Name="Region2" Type="String" />
            <asp:Parameter DefaultValue="0" Name="Region3" Type="String" />
            <asp:Parameter DefaultValue="0" Name="Region4" Type="String" />
            <asp:Parameter DefaultValue="0" Name="Region5" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    <%--<asp:SqlDataSource ID="SqlDS_LeadSalesRep" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="SalesPerson" Name="Type" Type="String" />
            <asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
            <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="Region1" Type="String" />
            <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="Region2" Type="String" />
            <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="Region3" Type="String" />
            <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="Region4" Type="String" />
            <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="Region5" Type="String" />
             <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="Region6" Type="String" />
            <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="Region7" Type="String" />
            <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="Region8" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
   <%-- <asp:SqlDataSource ID="SqlDS_TakeOff" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Estimator" Name="Type" Type="String" />
            <asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
            <asp:CookieParameter CookieName="Region1" DefaultValue="0" Name="Region1" Type="String" />
            <asp:CookieParameter CookieName="Region2" DefaultValue="0" Name="Region2" Type="String" />
            <asp:CookieParameter CookieName="Region3" DefaultValue="0" Name="Region3" Type="String" />
            <asp:CookieParameter CookieName="Region4" DefaultValue="0" Name="Region4" Type="String" />
            <asp:CookieParameter CookieName="Region5" DefaultValue="0" Name="Region5" Type="String" />
             <asp:CookieParameter CookieName="Region6" DefaultValue="0" Name="Region6" Type="String" />
            <asp:CookieParameter CookieName="Region7" DefaultValue="0" Name="Region7" Type="String" />
            <asp:CookieParameter CookieName="Region8" DefaultValue="0" Name="Region8" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    
    
    <%--Menu Maintenance Datasources--%>
    <%--<asp:SqlDataSource ID="SqlDS_ContractorMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
          <SelectParameters>
            <asp:Parameter Name="Type" DefaultValue="Contractor"  Type="String" />
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
    </asp:SqlDataSource>--%>
    
    <%--<asp:SqlDataSource ID="SqlDS_DistributorMenu" runat="server" 
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
    </asp:SqlDataSource>--%>
    <%--<asp:SqlDataSource ID="SqlDS_EstimatorMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
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
    </asp:SqlDataSource>--%>
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
   <%-- <asp:SqlDataSource ID="SqlDS_SalesPersonMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
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
    </asp:SqlDataSource>--%>
    
   <%-- <asp:SqlDataSource ID="SqlDS_StateList" runat="server" 
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
    </asp:SqlDataSource>--%>
  
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
    </telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
            <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdRecentQuotes">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdRecentQuotes" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
     
            <telerik:AjaxSetting AjaxControlID="btnCustomerSearch">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteDirections"  />
                    

                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="qCustomer">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep3" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteDirections"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnStartQuote">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteDirections" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelGoToQuote" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep3" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdRecentQuotes"  />
                    <telerik:AjaxUpdatedControl ControlID="grdRecentProjects"  />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteSearch"  />
                    <telerik:AjaxUpdatedControl ControlID="RadListViewNewAdds"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnNewCustomerSearch">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep3" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="qState">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep3" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnSearchProjects">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadListViewActiveProjects" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_ActiveProjects"  />
                </UpdatedControls>
            </telerik:AjaxSetting>

             <telerik:AjaxSetting AjaxControlID="btnSearchQuotes">
                <UpdatedControls>
                    
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteSearch" LoadingPanelID="RadAjaxLoadingPanel1" />

                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="RadTabStripActiveType">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadListViewActiveProjects" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_ActiveProjects"  />
                    <telerik:AjaxUpdatedControl ControlID="RadTabStripActiveType" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadListViewActiveProjects">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="pnlProjectDetails" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteList" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="RadTabStripStatus">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadListViewActiveProjects" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_ActiveProjects"  />
                    <telerik:AjaxUpdatedControl ControlID="RadTabStripStatus" />
                </UpdatedControls>
            </telerik:AjaxSetting>                    
            <telerik:AjaxSetting AjaxControlID="btnAddProject">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadListViewInActiveProjects" LoadingPanelID="RadAjaxLoadingPanel1" />
                     <telerik:AjaxUpdatedControl ControlID="grdRecentQuotes"  />
                    <telerik:AjaxUpdatedControl ControlID="grdRecentProjects"  />
                    <telerik:AjaxUpdatedControl ControlID="grdQuoteSearch"  />
                    <telerik:AjaxUpdatedControl ControlID="RadListViewNewAdds"  />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="RadListViewNewAdds">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="RadListViewNewAdds" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:ajaxsetting ajaxcontrolid="nPrimaryBranchno">
                <updatedcontrols>
                    <telerik:ajaxupdatedcontrol controlid="PanelAddProject" />
                </updatedcontrols>
            </telerik:ajaxsetting>
            

                           
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


 <div id="divBody" style="width:1300px;height:800px; margin: 0px 0px 0px 10px;">

        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Width="1000px" MultiPageID="RadMultiPage1" Skin="MetroTouch"  >
            <Tabs>
                <telerik:RadTab runat="server" Text="Quotes" Selected="true" >
                    <Tabs>
                        <telerik:RadTab runat="server" Text="My Recent Quotes" PageViewID="QuoteRecent" Selected="true"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Start a Quote" PageViewID="QuoteNew" ></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Search Quotes" PageViewID="QuoteSearch" ></telerik:RadTab>
                    </Tabs>
                </telerik:RadTab>
                <telerik:RadTab runat="server" Text="Projects" PageViewID="ProjectSearch" >
                    <Tabs>
                        <telerik:RadTab runat="server" Text="My Recent Projects" PageViewID="ProjectRecent" Selected="true"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Search Projects" PageViewID="ProjectSearch"  ></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Add Project" PageViewID="NewProject"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Recently Added (Regional)" PageViewID="RecentlyAdded" ></telerik:RadTab>
                    </Tabs>
                </telerik:RadTab>
               
               
                
            </Tabs>
        </telerik:RadTabStrip>
    
    


        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="800px" Width="1300px">
            
            <telerik:RadPageView ID="QuoteRecent" runat="server" Selected="true" Width="1300px" Height="800px">
                  <telerik:RadAjaxPanel ID="RadAjaxPanelRecentQuotes" runat="server" Width="1300px" Height="800px"  >
                    <h2>Recent Quotes</h2>
                      <telerik:RadGrid ID="grdRecentQuotes" runat="server" Width="1200px" Height="600px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_QuotesRecent" GridLines="None">
                          <ClientSettings>
                              <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                          </ClientSettings>
                          <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_QuotesRecent" CommandItemDisplay="Top">
                              <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />

                             <%-- <ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column" Visible="True">
                                  <HeaderStyle Width="20px" />
                              </ExpandCollapseColumn>--%>
                              <Columns>
                                  <telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../BidTool/Bid.aspx?QuoteID={0}"  DataNavigateUrlFields="QuoteID" Text="Go" UniqueName="column">
                                    <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left" Font-Bold="true" Font-Italic="true" Font-Size="Small" />
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
                                  <telerik:GridBoundColumn DataField="Margin" HeaderText="Margin" SortExpression="Margin" UniqueName="Margin" DataFormatString="{0:c0}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="MarginPct" HeaderText="Mgn %" SortExpression="MarginPct" UniqueName="MarginPct" DataFormatString="{0:p1}">
                                    <HeaderStyle Width="65px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="65px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                 
                                  <telerik:GridBoundColumn DataField="LastVisit" DataType="System.DateTime" HeaderText="Visited" SortExpression="LastVisit" UniqueName="LastVisit" DataFormatString="{0: MM/dd/yy}" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="Scaling" HeaderText="Scaling" SortExpression="Scaling" UniqueName="Scaling" DataFormatString="{0:n3}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>

                                  

                                  
                                  <telerik:GridBoundColumn DataField="FullName" HeaderText="FullName" SortExpression="FullName" UniqueName="FullName" Visible="False">
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="Index" DataType="System.Int32" HeaderText="Index" ReadOnly="True" SortExpression="Index" UniqueName="Index" Visible="False">
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="QuoteID" DataType="System.Int64" HeaderText="QuoteID" SortExpression="QuoteID" UniqueName="QuoteID" Visible="False">
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="JobID" DataType="System.Int64" HeaderText="JobID" SortExpression="JobID" UniqueName="JobID" Visible="False">
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="TakeOffID" DataType="System.Int32" HeaderText="TakeOffID" SortExpression="TakeOffID" UniqueName="TakeOffID" Visible="False">
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="SalesRepID" HeaderText="SalesRepID" SortExpression="SalesRepID" UniqueName="SalesRepID" Visible="False" ItemStyle-HorizontalAlign="Right">
                                  </telerik:GridBoundColumn>
                                  
                              </Columns>
                             <%-- <EditFormSettings>
                                  <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                                  </EditColumn>
                              </EditFormSettings>--%>
                              <PagerStyle PageSizeControlType="RadComboBox" />
                          </MasterTableView>
                          <PagerStyle PageSizeControlType="RadComboBox" />
                         <%-- <FilterMenu EnableImageSprites="False">
                          </FilterMenu>--%>
                      </telerik:RadGrid>

                      <asp:SqlDataSource ID="SqlDS_QuotesRecent" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspQuoteRecentGet" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:CookieParameter CookieName="FullName" DefaultValue="0" Name="FullName" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>

                  </telerik:RadAjaxPanel>
            </telerik:RadPageView>
                        
            <telerik:RadPageView ID="QuoteNew" runat="server" Width="1200px" Height="800px"  >
                  <h2>Start a Quote</h2>
                  
                  <telerik:RadAjaxPanel ID="RadAjaxPanelAddQuoteStep1" runat="server" Width="1200px" Height="50px"  >
                  
     
                           <div style="width:1200px; margin-top:5px;float:left;"> 
                                        <h6 style="width:900px;"><asp:Label runat="server">Step 1:  Customer Search</asp:Label></h6>
                           </div>

                            <div id="divCustSearchStart" style="height:30px; width:100%; margin-top:5px; margin-left:20px;">
                                   <div style="width:375px; float:left; margin-right:20px;">    
                                        <telerik:RadTextBox ID="searchCustomer" runat="server" Label="Name Contains: " Width="300px" LabelWidth="100px" 
                                                    EmptyMessage="Enter part of the customer's name" EmptyMessageStyle-Font-Italic="true">
                                        </telerik:RadTextBox>
                                   </div>
                                   <div style="width:200px; float:left; margin-left:20px;"> 
                                        <telerik:RadButton ID="btnCustomerSearch" runat="server" Width="140px" Text="Search" >
                                        </telerik:RadButton>
                                   </div>
                            </div>
                    </telerik:RadAjaxPanel>
                    <telerik:RadAjaxPanel ID="RadAjaxPanelAddQuoteStep2" runat="server" Width="1200px" Height="85px"  >
                            <div style="width:1200px; margin-top:5px; margin-left:20px;"> 
                                <h6><asp:Label runat="server">Step2:  Select Customer</asp:Label></h6>
                            </div>
                            <div style="height:40px;width:1200px;margin-top:5px; margin-left:20px;">

                                       <telerik:RadComboBox ID="qCustomer" runat="server" Label="Customer: " 
                                            AllowCustomText="False" AutoPostBack="True" MarkFirstMatch="True" EmptyMessage="Select your customer from the list" 
                                            Width="375px" DataSourceID="SqlDS_qCustomer" DataTextField="Custname" DataValueField="CustID" >
                                        </telerik:RadComboBox>
                                       <asp:SqlDataSource ID="SqlDS_qCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                            SelectCommand="uspCustomerSearch" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="searchCustomer" DefaultValue="%" Name="CustName" PropertyName="Text" Type="String" />
                                                <asp:Parameter Name="CustID" DefaultValue="%" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                
                                        <asp:HiddenField ID="qCustID" runat="server" />
                                        <asp:HiddenField ID="qCustName" runat="server" />
                                        <asp:HiddenField ID="qSalesRepID" runat="server" />
                                        <asp:HiddenField ID="qPriceType" runat="server" />

                                        <asp:HiddenField ID="qOrigination" runat="server" Value="Q" />
                                        <asp:HiddenField ID="qStatus" runat="server" Value="Working" />
                                        <asp:HiddenField ID="qCreatedBy" runat="server" />
                            
                              </div>
                       </telerik:RadAjaxPanel>
                       <telerik:RadAjaxPanel ID="RadAjaxPanelAddQuoteStep3" runat="server" Width="1200px" Height="200px"  >
                            <div style="width:1200px; margin-top:5px; margin-left:20px; "> 
                                <h6><asp:Label runat="server">Step3:  Add Quote Details</asp:Label></h6>
                            </div>
                             <div style="height:30px;width:1200px; "> 
                                    <div style="width:400px; float: left; margin-top:5px; margin-left:20px;">    
                                        <telerik:RadTextBox ID="qProjectName" runat="server" Label="Project Name:" LabelWidth="100px"
                                            MaxLength="40" Width="325px"  >
                                        </telerik:RadTextBox>
                                        <asp:RequiredFieldValidator ID="qProjectNameFieldValidator" runat="server" Display="Dynamic" ControlToValidate="qProjectName" ErrorMessage="A Project Name is Required"></asp:RequiredFieldValidator>
                                    </div>
                                    <div style="width:500px; float: left;margin-top:5px; margin-left:20px;">      
                                        <telerik:RadTextBox ID="qProjectSubTitle" runat="server" Label="Subtitle: " LabelWidth="90px"
                                            MaxLength="40" Width="325px"  >
                                        </telerik:RadTextBox>
                                    </div>
                              </div>
                            
                            <div style="height:30px; width:1200px; margin-top:5px; margin-left:20px;"> 
                                 <div style="width:400px; float: left;">        
                                     <telerik:RadTextBox ID="qQuoteName" runat="server" Label="Quote Name: " LabelWidth="90px" Text="Base Quote"
                                             MaxLength="20" EmptyMessage="Quote Name" EmptyMessageStyle-Font-Italic="true" Width="250px"  >
                                     </telerik:RadTextBox>
                                 </div>
                                 
                                 <div style="width:600px; float: left;">
                                    <telerik:RadComboBox runat="server" ID="qWorkType" Width="200px" Label="Type:" >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="AMR/Meters" Value="AMR/Meters" />
                                                <telerik:RadComboBoxItem runat="server" Text="Lift Station" Value="Lift Station" />
                                                <telerik:RadComboBoxItem runat="server" Text="Plant" Value="Plant" />
                                                <telerik:RadComboBoxItem runat="server" Text="Sewer" Value="Sewer" />
                                                <telerik:RadComboBoxItem runat="server" Text="Storm" Value="Storm" />
                                                <telerik:RadComboBoxItem runat="server" Text="Utilities" Value="Utilities" Selected="true" />
                                                <telerik:RadComboBoxItem runat="server" Text="Water" Value="Water" />
                                            </Items>
                                    </telerik:RadComboBox>
                                </div>
                             </div>
                            
                                <div style="height:30px;width:1000px;float:left;margin-top:5px; margin-left:20px; "> 
                                    <div style="float:left; width:400px; ">
                                        <telerik:RadTextBox ID="qAddress" runat="server" Label="Project Address:" 
                                        MaxLength="50" Width="375px" LabelWidth="125px"  >
                                        </telerik:RadTextBox>
                                    </div>
                            </div>
                            <div style="height:30px;width:1000px;float:left;margin-top:5px; margin-left:20px; ">
                                    <div style="float:left; width:225px; ">
                                        <telerik:RadTextBox ID="qCity" runat="server" Label="City:" MaxLength="50" Width="200px" LabelWidth="50px"  >
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="float:left; width:150px;">
                                   <%-- <telerik:RadComboBox ID="qState" Runat="server" Width="80px" Font-Bold="false"  Label="State:" AutoPostBack="true" AppendDataBoundItems="true"  >
                                       <Items>
                                            <telerik:RadComboBoxItem Value="AZ" Text="AZ" />
                                       </Items>
                                    </telerik:RadComboBox>--%>
                                    
                                    <telerik:RadComboBox ID="qState" Runat="server" Width="80px" Font-Bold="false"  Label="State:" DataSourceID="SqlDS_MenuStates" DataTextField="Region" DataValueField="Region" AutoPostBack="true"  >
                                    </telerik:RadComboBox>
                                    </div>
                                    <div style="float:left; width:200px;">
                                        <telerik:RadTextBox ID="qZip" runat="server" Label="Zip:" MaxLength="10" EmptyMessageStyle-Font-Italic="true" Width="120px" LabelWidth="45px"  >
                                        </telerik:RadTextBox>
                                    </div>
                                  
                            </div>    
                            
                                
                               <div style="height:30px;width:1200px;float:left;margin-top:5px; margin-left:20px; ">
                                <div style="float:left; width:250px;">
                                    <telerik:RadComboBox ID="qPrimaryBranchno" Runat="server" Width="150px" label="Branch: " Font-Bold="false"
                                            DataSourceID="SqlDS_BranchQuote" DataTextField="comboname" DataValueField="branchno"  >
                                    </telerik:RadComboBox>
                                    <telerik:RadToolTip ID="RadToolTipqPrimaryBranchno" runat="server" TargetControlID="qPrimaryBranchno" Title="Branch" Position="BottomCenter"  width="200px" HideEvent="LeaveToolTip" 
                                                    Text="The branch in which the majority, if not all, the material will ship.  This selection helps to determine pricing in the quote." >
                                    </telerik:RadToolTip>
                                </div>
                                <div style="width:70px; float:left; ">
                                        <asp:Label ID="Label1" runat="server" Text="District: " Width="60px"></asp:Label>
                                  </div>
                                  <div style="width:210px; float:left; vertical-align: bottom;">      
                                        <telerik:RadComboBox ID="qDistrict" Runat="server" DropDownWidth="250px" Width="200px"  Height="400px" 
                                                DataSourceID="SqlDS_DistrictMenu" DataTextField="CustName" DataValueField="SpecID" AppendDataBoundItems="true" OnItemDataBound="qDistrict_ItemDataBound"  >
                                            <Items>
                                                <telerik:RadComboBoxItem Text="-" Value="0" />
                                            </Items>
                                        </telerik:RadComboBox>

                                          <telerik:RadToolTip ID="RadToolTipqDistrict" runat="server" TargetControlID="qDistrict" Title="District" Position="BottomRight" Width="200px" HideEvent="LeaveToolTip" 
                                                            Text="Please select the water district/municipality whose specificiations will be used in creating a quote." >
                                          </telerik:RadToolTip>
                                         <%--<asp:HiddenField ID="nMuniSpecID" runat="server" /> --%>
                                  </div>
                               
                             
                             </div>  
                                    
                            
                        </telerik:RadAjaxPanel>
                        
                        <telerik:RadAjaxPanel ID="RadAjaxPanelGoToQuote" runat="server" Width="100%" Height="30px"  >
                            <div style="height:30px; width:1200px; margin:15px 0px 0px 20px;">
                                <telerik:RadButton ID="btnGoToQuote" runat="server" Width="200px" ButtonType="LinkButton"  Target="_blank"></telerik:RadButton>
                            </div>
                        </telerik:RadAjaxPanel>

                        <telerik:RadAjaxPanel ID="RadAjaxPanelAddQuoteDirections" runat="server" Width="1200px" Height="30px"  >
                            <div style="height:40px; width:900px; padding:5px 0px 0px 20px; margin-top:10px;"> 
                               <div style="width:1200px; float:left; margin-top:10px;">
                                 <telerik:RadButton ID="btnStartQuote" runat="server" Width="200px" ButtonType="LinkButton" Text="Start Quote"  ></telerik:RadButton>
                               </div>
                               <div style="width:1200px; float:left;margin-top:10px;">  
                                 <telerik:RadButton ID="btnNewCustomerSearch" runat="server" Width="200px" ButtonType="LinkButton" ></telerik:RadButton>
                               </div>  
                                      
                                 
                            </div>
                        </telerik:RadAjaxPanel>
                        


                   
                        
            </telerik:RadPageView>
            <telerik:RadPageView ID="QuoteSearch" runat="server" Width="1300px" Height="1000px"  >
                
                <telerik:RadAjaxPanel ID="RadAjaxPanelQuoteSearch" runat="server" Width="1300px" Height="500px"  >
                <h2>Quote Search</h2>
                <div style="height:80px; width:1200px; margin:5px 10px 5px 10px; border:1.5px solid #639AFF;">
                    <div style="width:1300px; height:20px;float:left; margin:10px 0px 0px 0px;">
                        <div style="width:270px; float:left; vertical-align:middle;">
                            <telerik:RadTextBox ID="searchQuProjectName" runat="server" Label="Project Name: " MaxLength="40" Width="250px" LabelWidth="100px">
                            </telerik:RadTextBox>
                        </div>
                    
                        <div style="width:300px; float:left; vertical-align:middle;">
                             <%--<telerik:RadComboBox ID="searchQuBranch" Width="180px"  Runat="server" AutoPostBack="true" Label="Branch: "
                                       AppendDataBoundItems="true" >
                                <Items>
                                    <telerik:RadComboBoxItem Text="All Branches" Value="%" Selected="true" />
                                </Items>
                             </telerik:RadComboBox>--%>

                             <telerik:RadComboBox ID="searchQuBranch" Width="180px"  Runat="server" AutoPostBack="true" Label="Branch: "
                                      DataSourceID="SqlDS_BranchesInRegions" DataTextField="comboname" DataValueField="comboname" AppendDataBoundItems="true" >
                                <Items>
                                    <telerik:RadComboBoxItem Text="All Branches" Value="%" Selected="true" />
                                </Items>
                             </telerik:RadComboBox>
                        </div>
                   
                        <%--<div>Created Date</div>--%>
                        <div style="width:200px; float:left; vertical-align:middle;">
                            <telerik:RadComboBox ID="searchQuStatus" Width="130px"  runat="server" Label="Status: " >
                            
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true" />
                                    <telerik:RadComboBoxItem runat="server" Text="Working" Value="Working" />
                                    <telerik:RadComboBoxItem runat="server" Text="Won" Value="Won" />
                                    <telerik:RadComboBoxItem runat="server" Text="Lost" Value="Lost" />
                                    <telerik:RadComboBoxItem runat="server" Text="Waiting for Results" Value="Waiting for Results" />
                                    <telerik:RadComboBoxItem runat="server" Text="On Hold" Value="On Hold" />
                                </Items>
                            </telerik:RadComboBox>
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
                                  <telerik:GridBoundColumn DataField="Margin" HeaderText="Margin" SortExpression="Margin" UniqueName="Margin" DataFormatString="{0:c0}">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="MarginPct" HeaderText="Mgn %" SortExpression="MarginPct" UniqueName="MarginPct" DataFormatString="{0:p1}">
                                    <HeaderStyle Width="65px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="65px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="Created" DataType="System.DateTime" HeaderText="Created" SortExpression="Created" UniqueName="Created" DataFormatString="{0: MM/dd/yy}" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>

                                  <telerik:GridBoundColumn DataField="BidDate" DataType="System.DateTime" HeaderText="Bids" SortExpression="BidDate" UniqueName="BidDate" DataFormatString="{0: MM/dd/yy}" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="Scaling" HeaderText="Scaling" SortExpression="Scaling" UniqueName="Scaling" DataFormatString="{0:n3}">
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
                                  <%--<telerik:GridBoundColumn DataField="JobID" DataType="System.Int64" HeaderText="JobID" SortExpression="JobID" UniqueName="JobID" Visible="False">
                                  </telerik:GridBoundColumn>--%>
                                 <%-- <telerik:GridBoundColumn DataField="TakeOffID" DataType="System.Int32" HeaderText="TakeOffID" SortExpression="TakeOffID" UniqueName="TakeOffID" Visible="False">
                                  </telerik:GridBoundColumn>--%>
                                  <%--<telerik:GridBoundColumn DataField="SalesRepID" HeaderText="SalesRepID" SortExpression="SalesRepID" UniqueName="SalesRepID" Visible="False" ItemStyle-HorizontalAlign="Right">
                                  </telerik:GridBoundColumn>--%>
                                  
                              </Columns>
                            
                              <PagerStyle PageSizeControlType="RadComboBox" />
                          </MasterTableView>
                          <PagerStyle PageSizeControlType="RadComboBox" />
                        
                      </telerik:RadGrid>


                    <asp:SqlDataSource ID="SqlDS_QuoteSearch" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspQuoteSearch" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                                <asp:ControlParameter Name="Branch" ControlID="searchQuBranch" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="ProjectName" ControlID="searchQuProjectName" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="CustName" ControlID="searchQuCustomer" DefaultValue="%" Type="String" />
                                <asp:ControlParameter Name="ProjectStatus" ControlID="searchQuStatus" DefaultValue="%" Type="String" />
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
                


                </telerik:RadAjaxPanel>
            </telerik:RadPageView>
            
            <telerik:RadPageView ID="ProjectRecent" runat="server" Width="1300px" Height="1000px"  >
                  <telerik:RadAjaxPanel ID="RadAjaxPanelRecentProjects" runat="server" Width="1300px" Height="800px"  >
                    <h2>My Recent Projects</h2>
                      <telerik:RadGrid ID="grdRecentProjects" runat="server" Width="900px" Height="600px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_ProjectsRecent" GridLines="None">
                          <ClientSettings>
                              <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                          </ClientSettings>
                          <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_ProjectsRecent" CommandItemDisplay="Top">
                              <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />

                             <%-- <ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column" Visible="True">
                                  <HeaderStyle Width="20px" />
                              </ExpandCollapseColumn>--%>
                              <Columns>
                                  <telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../Projects/ProjectDetail.aspx?JobID={0}"  DataNavigateUrlFields="JobID" Text="Go" UniqueName="column">
                                    <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left" Font-Bold="true" Font-Italic="true" Font-Size="Small" />
                                  </telerik:GridHyperLinkColumn>
                                  
                                  <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project" SortExpression="ProjectName" UniqueName="ProjectName">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="ProjectSubTitle" HeaderText="Sub Title" SortExpression="ProjectSubTitle" UniqueName="ProjectSubTitle">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>
                                  <%--<telerik:GridBoundColumn DataField="LeadSalesRep" HeaderText="LeadSalesRep" SortExpression="LeadSalesRep" UniqueName="LeadSalesRep">
                                    <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                  </telerik:GridBoundColumn>--%>
                                 
                                  <telerik:GridBoundColumn DataField="LastVisit" DataType="System.DateTime" HeaderText="Visited" SortExpression="LastVisit" UniqueName="LastVisit" DataFormatString="{0: MM/dd/yy}" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="BidDate" DataType="System.DateTime" HeaderText="Bids" SortExpression="BidDate" UniqueName="BidDate" DataFormatString="{0: MM/dd/yy}" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>
                                  <telerik:GridBoundColumn DataField="DueDate" DataType="System.DateTime" HeaderText="Due" SortExpression="BidDate" UniqueName="BidDate" DataFormatString="{0: MM/dd/yy}" >
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                  </telerik:GridBoundColumn>

                                  
                                  <telerik:GridBoundColumn DataField="FullName" HeaderText="FullName" SortExpression="FullName" UniqueName="FullName" Visible="False">
                                  </telerik:GridBoundColumn>
                                 
                                  <telerik:GridBoundColumn DataField="JobID" DataType="System.Int64" HeaderText="JobID" SortExpression="JobID" UniqueName="JobID" Visible="False">
                                  </telerik:GridBoundColumn>
                                  
                                  
                              </Columns>
                            
                             <%-- <PagerStyle PageSizeControlType="RadComboBox" />--%>
                          </MasterTableView>
                  <%--        <PagerStyle PageSizeControlType="RadComboBox" />--%>
                       
                      </telerik:RadGrid>

                      <asp:SqlDataSource ID="SqlDS_ProjectsRecent" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectRecentGet" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:CookieParameter CookieName="FullName" DefaultValue="0" Name="FullName" 
                                  Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>

                  </telerik:RadAjaxPanel>
            </telerik:RadPageView>
     
            
            <telerik:RadPageView ID="ProjectSearch" runat="server" Width="1300px" Height="1200px"  >                           
                 <div id="divActivePage" style="padding:10px 0px 10px 0px;float:left; height:1200px;width:1000px; ">
                     <div style="width:1000px; height:35px; padding: 0px 0px 2px 0px;" >
                        <div style="width:1000px; float:Left;">
                             <div style="width:400px; float:left;">   
                                <telerik:RadTextBox ID="sProjectName" LabelWidth="95px" Width="300px" Label="Project Name:" EmptyMessage="Project name contains..." 
                                       EmptyMessageStyle-Font-Italic="true" runat="server">
                                </telerik:RadTextBox>
                             </div>
                             <div style="width:180px; float:left;">
                                <%--<telerik:RadComboBox ID="sFlag" Label="Flag:" ToolTip="Special Designation" Runat="server" Width="120px"  
                                       AppendDataBoundItems="true">
                                   <Items>
                                      <telerik:RadComboBoxItem runat="server" Text="All Projects" Value="%" Selected="true" />
                                   </Items>
                                </telerik:RadComboBox>--%>
                                <telerik:RadComboBox ID="sFlag" Label="Flag:" ToolTip="Special Designation" Runat="server" Width="120px"  
                                      DataSourceID="SqlDS_FlagMenu" DataTextField="label" DataValueField="label"  AppendDataBoundItems="true">
                                   <Items>
                                      <telerik:RadComboBoxItem runat="server" Text="All Projects" Value="%" Selected="true" />
                                   </Items>
                                </telerik:RadComboBox>
                              </div> 
                              <div style="width:100px; float:left;">
                                 <telerik:RadButton ID="btnSearchProjects" runat="server" Text="Search" Width="75px" Skin="MetroTouch" ></telerik:RadButton>
                              </div> 
                          
                        </div>
                     </div>
       
                    <div style="width:1000px; margin-top:3px; margin-bottom:3px;" >       
                        <div style="width:1000px; float:left;">
                           <%-- <div style="float:left;">
                                <asp:Label ID="Label6" runat="server" Text="Project Type:" Width="90px" Font-Bold="true"></asp:Label>
                            </div>--%>
                            <div style="float:left;">
                                <telerik:RadTabStrip ID="RadTabStripActiveType" runat="server" Skin="MetroTouch" SelectedIndex="-1" OnTabClick="RadTabStripActiveType_TabClick" >
                                    <Tabs>
                                        <telerik:RadTab runat="server" Text="All Projects" Value="%" Selected="true" ></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="AMR/Meters" Value="AMR/Meters"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="Lift Station" Value="Lift Station"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="Plant" Value="Plant"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="Sewer" Value="Sewer"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="Storm" Value="Storm"></telerik:RadTab> 
                                        <telerik:RadTab runat="server" Text="Utilities" Value="Utilities"></telerik:RadTab> 
                                        <telerik:RadTab runat="server" Text="Water" Value="Water"></telerik:RadTab> 
                                    </Tabs>
                                </telerik:RadTabStrip>
                            </div>
                        </div>
                        
                        <div style="width:1000px; float:left;margin-bottom:10px;">
                            <%--<div style="float:left;">
                                <asp:Label ID="Label7" runat="server" Text="Status:" Width="90px" Font-Bold="true"></asp:Label>
                            </div>--%>
                            <div style="float:left;">   
                                <telerik:RadTabStrip ID="RadTabStripStatus" runat="server" Skin="MetroTouch" SelectedIndex="1" OnTabClick="RadTabStripStatus_TabClick" >
                                    <Tabs>
                                        <telerik:RadTab runat="server" Text="All Status" Value="%" ></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="Working" Value="Working" Selected="true"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="Waiting for Results" Value="Waiting for Results"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="Hold" Value="Hold"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="Won" Value="Won"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="Lost" Value="Lost"></telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTabStrip>
                            </div>
                        </div>
                    </div>
                    <div style="margin-top:0px; float:left; height:800px; width:1200px;"> 
                       <div style="height:600px; width:500px; margin-top: 0px;margin-right:10px; float:left;">
                            <telerik:RadGrid ID="RadListViewActiveProjects" runat="server" DataSourceID="SqlDS_ActiveProjects" 
                                   GridLines="None" AllowPaging="True" AllowSorting="True" Width="500px" Height="400px" AutoGenerateColumns="False" CellSpacing="0" >
                                
                                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                           <Selecting AllowRowSelect="true" />
                                           <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                    </ClientSettings>

                                        <MasterTableView DataSourceID="SqlDS_ActiveProjects" DataKeyNames="JobID" PageSize="25" Width="900px"  >
        
                                             <Columns>
                                                    <telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../Projects/ProjectDetail.aspx?JobID={0}" DataNavigateUrlFields="JobID" Text="Go" UniqueName="column">
                                                        <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                                        <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" />
                                                      </telerik:GridHyperLinkColumn>
                                                    <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project" UniqueName="ProjectName">
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="200px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="WorkType" HeaderText="WorkType" UniqueName="WorkType">
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="100px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="Flag" HeaderText="Flag" UniqueName="Flag">
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="120px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="120px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="BidDate" HeaderText="Bids" 
                                                        UniqueName="BidDate" DataType="System.DateTime" DataFormatString="{0:MM/dd/yy}">
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="100px" Font-Size="Small" />
                                                    </telerik:GridBoundColumn>
                   
                                                    <telerik:GridBoundColumn DataField="BranchName" HeaderText="BranchName" UniqueName="BranchName" >
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="150px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="150px" Font-Size="Small" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="JobID" Display="false" DataType="System.Int64" HeaderText="JobID" ReadOnly="True" UniqueName="JobID">
                                                    </telerik:GridBoundColumn> 
                                                    <telerik:GridBoundColumn DataField="Logged" HeaderText="Logged" UniqueName="Logged" DataType="System.DateTime" >
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="150px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="150px" Font-Size="Small" />
                                                    </telerik:GridBoundColumn>
                                                </Columns>

           
                                         </MasterTableView>

                                </telerik:RadGrid>
                       </div>
                       <div style="margin-top: 0px; margin-left:10px; float:left; height:600px; width:600px;">
                            <div style="width:100%; height:155px; margin-top:0px; margin-bottom:0px;">
                                <div style="width:100%; height:25px; background-color:Orange; color:White; font-size:medium;font-weight:bold; padding-left:5px; padding-top:5px;" >
                                   High Level Details
                                </div>
                                <div style="width:100%;margin:3px; height:120px; width:600px;">
                                    <asp:Panel ID="pnlProjectDetails" runat="server" Height="120px" Width="600px">
                                        <div style="width: 100%; font-size:Medium;font-weight:bold; color:Black; margin-bottom:10px; float:left;">        
                                            <asp:Label ID="lblProjectName" runat="server"></asp:Label>
                                        </div>
                                        <div style="width: 100%; font-size:Medium;font-weight:bold; color:GrayText; margin-bottom:10px; float:left;">   
                                            <asp:Label ID="lblProjectSubTitle" runat="server"></asp:Label>
                                        </div>
                                        <div style="width: 100%; font-size:small; color:GrayText; margin-bottom:10px; float:left;">
                                            <div style="width: 40%; font-size:small; color:GrayText;  float:left;">
                                                <asp:Label ID="lblBranch" runat="server"></asp:Label>
                                            </div>
                                            <div style="width: 35%; font-size:small; color:GrayText;  float:left;">
                                                <asp:Label ID="lblBidDate" runat="server"></asp:Label>
                                            </div>
                                            <div style="width: 25%; font-size:small; color:GrayText;  float:left;">    
                                                <asp:Label ID="lblPreBid2" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div style="width: 100%; font-size:small; color:GrayText; margin-bottom:10px; float:left;">
                                            <div style="width: 40%; font-size:small; color:GrayText;  float:left;">
                                                <asp:Label ID="lblWorkCity" runat="server"></asp:Label>
                                            </div>
                                            <div style="width: 60%; font-size:small; color:GrayText; float:left;">
                                                <asp:Label ID="lblDistrict" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                   
                
                                    </asp:Panel>
                                </div>
                            </div>
                            <div style="width:600px; height:250px; margin-bottom:10px;">
                                <div style="width:100%; height:25px; background-color:Orange; color:White; font-size:medium;font-weight:bold; padding-left:5px; padding-top:5px; " >
                                    Quotes
                                </div>
                                 <div style="width:600px;margin:3px;">
                                    <telerik:RadGrid ID="grdQuoteList" runat="server" Width="600px" Height="230px" CellSpacing="0" DataSourceID="SqlDS_grdQuoteList" GridLines="None">
                    
                                        <ClientSettings>
                                            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                        </ClientSettings>
                        
                                            <MasterTableView AutoGenerateColumns="False" DataKeyNames="QuoteID" DataSourceID="SqlDS_grdQuoteList">
                                               <Columns>
                                                    <telerik:GridBoundColumn DataField="JobID" DataType="System.Int64" Display="False" HeaderText="JobID" SortExpression="JobID" UniqueName="JobID">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="QuoteID" DataType="System.Int64" Display="False" HeaderText="QuoteID" ReadOnly="True" SortExpression="QuoteID" 
                                                        UniqueName="QuoteID">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../BidTool/Bid.aspx?QuoteID={0}" DataNavigateUrlFields="QuoteID" Text="Go" UniqueName="column">
                                                        <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                                        <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" />
                                                      </telerik:GridHyperLinkColumn>
                                                    <telerik:GridBoundColumn DataField="QuoteName" HeaderText="Name" SortExpression="QuoteName" UniqueName="QuoteName">
                                                        <HeaderStyle Width="75px" />
                                                        <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Left" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                                        <HeaderStyle Width="175px" />
                                                        <ItemStyle Width="175px" VerticalAlign="Top" HorizontalAlign="Left" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="ExtendedPrice" DataFormatString="{0:c0}" DataType="System.Decimal" HeaderText="Price" ReadOnly="True" SortExpression="ExtendedPrice" 
                                                        UniqueName="ExtendedPrice">
                                                        <HeaderStyle Width="55px" />
                                                        <ItemStyle Width="55px" VerticalAlign="Top" HorizontalAlign="Right" />
                                                    </telerik:GridBoundColumn>
                                                   
                                                    <telerik:GridBoundColumn DataField="Margin" Display="true" DataFormatString="{0:c0}" DataType="System.Decimal" HeaderText="Margin" ReadOnly="True" SortExpression="Margin" 
                                                        UniqueName="Margin">
                                                        <HeaderStyle Width="45px" />
                                                        <ItemStyle Width="45px" VerticalAlign="Top" HorizontalAlign="Right" />
                                                    </telerik:GridBoundColumn>
                                                    
                                                    <telerik:GridBoundColumn DataField="MarginPct" DataFormatString="{0:p1}" DataType="System.Decimal" HeaderText="M %" ReadOnly="True" SortExpression="MarginPct" 
                                                        UniqueName="MarginPct">
                                                        <HeaderStyle Width="40px" />
                                                        <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Right" />
                                                    </telerik:GridBoundColumn>
                                                    
                                                   
                                                </Columns>

                                            </MasterTableView>

                                     </telerik:RadGrid>
                                     <asp:SqlDataSource ID="SqlDS_grdQuoteList" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspQuoteListGet" SelectCommandType="StoredProcedure">
                                         <SelectParameters>
                                             <asp:ControlParameter ControlID="RadListViewActiveProjects" DefaultValue="0" Name="JobID" PropertyName="SelectedValue" Type="Int64" />
                                         </SelectParameters>
                                     </asp:SqlDataSource>
                                </div>
            
                        </div>

                       </div>

                  </div>
                     
                 </div>
            </telerik:RadPageView>
            <telerik:RadPageView ID="NewProject" runat="server" Width="1300px" Height="1000px">
                <telerik:RadAjaxPanel ID="PanelAddProject" runat="server" LoadingPanelID="RadAjaxLoadingPanel1" Width="1300px" Height="1000px" >
                      
                      <div style="margin-top:10px; width:1000px;">
                         <div style="float:left; padding:10px 0px 5px 15px;">
                             <div style="width:400px; float:left;">   
                                <asp:HiddenField ID="nOrigination" runat="server" Value="P" />
                                <telerik:RadTextBox ID="nProjectName" runat="server" Label="Project Name:" MaxLength="50" Width="325px" LabelWidth="100px"></telerik:RadTextBox>
                             </div>  
                             <div style="width:400px; float:left;"> 
                                <telerik:RadTextBox ID="nProjectSubTitle" runat="server" Label="SubTitle:" MaxLength="50" Width="325px" LabelWidth="75px"></telerik:RadTextBox>
                             </div>
                            <div style="width:175px; float:left;">
				                    <telerik:RadButton ID="btnAddProject" runat="server" Text="Add Project" Skin="MetroTouch" Width="150px"></telerik:RadButton>                                
			                </div>
                        </div>
                        
                      </div>

                      <div id="divProjectContainers" style="width:990px; margin-top:5px;float:left;">

                         <div id="divProjectLocation" style="width:300px; float:left; margin-left:15px; ">
                             
                             <div style="width:100%; float:left;">

                                  <asp:Label ID="Label19" runat="server" Text="Address: " Width="60px"></asp:Label>
                                  <telerik:RadTextBox ID="nWorkAddress" Width="200px" MaxLength="50" runat="server" EnableAjaxSkinRendering="true"></telerik:RadTextBox>
                                  <telerik:RadToolTip ID="RadToolTip1" runat="server" TargetControlID="nWorkAddress" Title="Job Address" Position="BottomRight" width="200px" HideEvent="LeaveToolTip" 
                                             Text="Please enter the address where the project is located." >
                                  </telerik:RadToolTip> 
                             </div>
                             <div style="width:100%; margin-top:5px; float:left;">
                                  <asp:Label ID="Label8" runat="server" Text="City: " Width="60px"></asp:Label>
                                  <telerik:RadTextBox ID="nWorkCity" Width="200px" runat="server" EnableAjaxSkinRendering="true"></telerik:RadTextBox>
                                  <telerik:RadToolTip ID="RadToolTipnWorkCity" runat="server" TargetControlID="nWorkCity" Title="Job City" Position="BottomRight" width="200px" HideEvent="LeaveToolTip" 
                                             Text="Please enter the city in which the project is located." >
                                  </telerik:RadToolTip> 
                             </div>
                             <div style="width:100%; margin-top:5px; float:left;">
                                  <asp:Label ID="Label20" runat="server" Text="Zip: " Width="60px"></asp:Label>
                                  <telerik:RadTextBox ID="nWorkZip" Width="200px"  runat="server" MaxLength="10" EnableAjaxSkinRendering="true"></telerik:RadTextBox>
                                  <telerik:RadToolTip ID="RadToolTipnWorkZip" runat="server" TargetControlID="nWorkZip" Title="Job Zip" Position="BottomRight" width="200px" HideEvent="LeaveToolTip" 
                                             Text="Please enter the city in which the project is located." >
                                  </telerik:RadToolTip> 
                             </div>
                             <div style="width:100%; margin-top:5px; float:left;">
                                  <div style="width:60px; float:left; "> 
                                        <asp:Label ID="State" runat="server" Text="State: " Width="60px"></asp:Label>
                                  </div>   
                                  <div style="width:200px;  float:left;vertical-align:middle;">    
                                        <%--<telerik:RadComboBox ID="nState" Runat="server" Width="200px" OnSelectedIndexChanged="nState_SelectedIndexChanged"  
                                                  AutoPostBack="true" AppendDataBoundItems="true" >
                                                <Items>
                                                    <telerik:RadComboBoxItem Text="AZ" Value="AZ" />
                                                </Items>
                                        </telerik:RadComboBox>--%>
                                        
                                        <telerik:RadComboBox ID="nState" Runat="server" Width="200px" OnSelectedIndexChanged="nState_SelectedIndexChanged" OnItemDataBound="nState_ItemDataBound"  
                                                DataSourceID="SqlDS_MenuStates" DataTextField="Region" DataValueField="Region"  AutoPostBack="true"  >
                                                <%--<Items>
                                                    <telerik:RadComboBoxItem Text="AZ" Value="AZ" />
                                                </Items>--%>
                                        </telerik:RadComboBox>
                                  </div>
                             </div>
                             
                             
                              
                             
                         </div>
                    
                         <div id="divProjectGeneral" style="width:300px; float:left; margin-left:15px;">
                             <div style="width:100%;margin:3px; float:left;">
                                  <div style="width:70px; float:left; "> 
                                    <asp:Label ID="Label10" runat="server" Text="Branch: " Width="60px"></asp:Label>
                                   </div>
                                   <div style="width:200px; float:left; ">      
                                      <telerik:RadComboBox ID="nPrimaryBranchno" Width="200px"  Runat="server" AutoPostBack="true" 
                                                DataSourceID="SqlDS_Branch" DataTextField="comboname" DataValueField="branchno"  >
                                      </telerik:RadComboBox>
                                      
                                       <%--<telerik:RadComboBox ID="nPrimaryBranchno" Width="200px"  Runat="server" AutoPostBack="true" 
                                                 OnSelectedIndexChanged="nPrimaryBranchno_SelectedIndexChanged" AppendDataBoundItems="true"  >
                                              <Items>
                                                <telerik:RadComboBoxItem Value="1" Text="Denver" />
                                              </Items>
                                      </telerik:RadComboBox>--%>
                                      <telerik:RadToolTip ID="RadToolTipnPrimaryBranchno" runat="server" TargetControlID="nPrimaryBranchno" Title="Branch" Position="BottomCenter"  width="200px" HideEvent="LeaveToolTip" 
                                                        Text="The branch in which the majority, if not all, the material will ship.  This selection helps to determine pricing in the quote." >
                                      </telerik:RadToolTip>
                                    </div>
                             </div>

                             <div style="width:100%;margin:3px; float:left;">
                                  <div style="width:70px; float:left; ">
                                        <asp:Label ID="Label9" runat="server" Text="District: " Width="60px"></asp:Label>
                                  </div>
                                  <div style="width:210px; float:left; vertical-align: bottom;">      
                                         
                                        <%-- <telerik:RadComboBox ID="nDistrict" Runat="server" DropDownWidth="250px" Width="200px"  Height="400px" 
                                                 AppendDataBoundItems="true" OnItemDataBound="nDistrict_ItemDataBound"  >
                                            <Items>
                                                <telerik:RadComboBoxItem Text="-" Value="0" />
                                            </Items>
                                        </telerik:RadComboBox>--%>
                                        
                                        <telerik:RadComboBox ID="nDistrict" Runat="server" DropDownWidth="250px" Width="200px"  Height="400px" 
                                                DataSourceID="SqlDS_DistrictMenu" DataTextField="CustName" DataValueField="SpecID" AppendDataBoundItems="true" >
                                            <Items>
                                                <telerik:RadComboBoxItem Text="-" Value="0" />
                                            </Items>
                                        </telerik:RadComboBox>

                                          <telerik:RadToolTip ID="RadToolTipnDistrict" runat="server" TargetControlID="nDistrict" Title="District" Position="BottomRight" Width="200px" HideEvent="LeaveToolTip" 
                                                            Text="Please select the water district/municipality whose specificiations will be used in creating a quote." >
                                          </telerik:RadToolTip>
                                         <%--<asp:HiddenField ID="nMuniSpecID" runat="server" /> --%>
                                  </div>
                                      
                             </div> 
                             
                         </div>   
                         <div id="divProjectResponsibilites" style="width:300px; float:left; padding:5px 5px 0px 3px; ">
                             <div style="width:100%;margin:3px; float:left;">
                                      <asp:Label ID="Label16" runat="server" Text="Status: " Width="50px"></asp:Label>
                                      <telerik:RadComboBox ID="nStatus" Width="120px"  runat="server"  >
                                          <Items>
                                               <telerik:RadComboBoxItem runat="server" Text="Working" Value="Working" />
                                               <telerik:RadComboBoxItem runat="server" Text="Won" Value="Won" />
                                               <telerik:RadComboBoxItem runat="server" Text="Lost" Value="Lost" />
                                               <telerik:RadComboBoxItem runat="server" Text="Waiting for Results" Value="Waiting for Results" />
                                               <telerik:RadComboBoxItem runat="server" Text="On Hold" Value="On Hold" />
                                          </Items>
                                      </telerik:RadComboBox>
                             </div>
                                 <div style="width:100%;margin:3px; float:left;">
                                      <asp:Label ID="Label17" runat="server" Text="Type: " Width="50px"></asp:Label>
                                      <telerik:RadComboBox runat="server" ID="nWorkType" Width="120px" >
                                          <Items>
                                               <telerik:RadComboBoxItem runat="server" Text="AMR/Meters" Value="AMR/Meters" />
                                               <telerik:RadComboBoxItem runat="server" Text="Lift Station" Value="Lift Station" />
                                               <telerik:RadComboBoxItem runat="server" Text="Plant" Value="Plant" />
                                               <telerik:RadComboBoxItem runat="server" Text="Sewer" Value="Sewer" />
                                               <telerik:RadComboBoxItem runat="server" Text="Storm" Value="Storm" />
                                               <telerik:RadComboBoxItem runat="server" Text="Utilities" Value="Utilities" Selected="true" />
                                               <telerik:RadComboBoxItem runat="server" Text="Water" Value="Water" />
                                          </Items>
                                      </telerik:RadComboBox>
                                 </div>
                                 <div style="width:100%;margin:3px; float:left;">
                                      <asp:Label ID="Label18" runat="server" Text="Flag: " Width="50px"></asp:Label>
                                      <telerik:RadComboBox ID="nFlag" Width="120px"  Runat="server" 
                                                DataSourceID="SqlDS_FlagMenu" DataTextField="label" DataValueField="label" AppendDataBoundItems="true">
                                          <Items>
                                              <telerik:RadComboBoxItem runat="server" Text="-" Value="-" Selected="true" />
                                          </Items>
                                      </telerik:RadComboBox>
                                      <telerik:RadToolTip ID="RadToolTipnFlag" runat="server" TargetControlID="nFlag" Title="Flag" Position="BottomRight"  width="200px" HideEvent="LeaveToolTip" 
                                                Text="The flag identifies special conditions for the project (such as premium customer participation)." >
                                      </telerik:RadToolTip>
                                 </div>
                             
                                 <div style="width:100%;margin:3px; float:left;">
                                      <asp:Label ID="Label13" runat="server" Text="SWAG: " Width="50px"></asp:Label>
                                      <telerik:RadComboBox ID="nBaseEstimate" Width="120px" runat="server" >
                                          <Items>
                                              <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                              <telerik:RadComboBoxItem runat="server" Text="Less Than $5k" Value="Less Than $5k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$5k to $10k" Value="$5k to $10k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$10k to $20k" Value="$10k to $20k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$20k to $40k" Value="$20k to $40k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$40k to $60k" Value="$40k to $60k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$60k to $100k" Value="$60k to $100k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$100k to $150k" Value="$100k to $150k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$150k to $200k" Value="$150k to $200k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$200k to $300k" Value="$200k to $300k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$300k to $500k" Value="$300k to $500k" />
                                              <telerik:RadComboBoxItem runat="server" Text="$500k to $750k" Value="$500k to $750k" />
                                              <telerik:RadComboBoxItem runat="server" Text="Over $750k" Value="Over $750k" />
                                          </Items>
                                      </telerik:RadComboBox>
                                  <telerik:RadToolTip ID="RadToolTipnBaseEstimate" runat="server" TargetControlID="nBaseEstimate" Title="SWAG" Position="BottomLeft"  width="200px" HideEvent="LeaveToolTip" 
                                           Text="The estimated guess for the value of Dana Kepner/Western Industrial supplied material." >
                                  </telerik:RadToolTip>
                             </div>
                             
                             <%--<div style="padding:5px 0px 0px 0px;">
                                  <asp:Label ID="Label11" runat="server" Text="Sales Lead: " Width="80px"></asp:Label>
                                  <telerik:RadComboBox ID="nLeadSalesRep" runat="server" Width="150px"  Height="300px" 
                                           DataSourceID="SqlDS_LeadSalesRep" DataTextField="Label" DataValueField="Label" AppendDataBoundItems="true">
                                       <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="-" Value="-" Selected = "true" />
                                       </Items>
                                  </telerik:RadComboBox>
                                  <telerik:RadToolTip ID="RadToolTipnLeadSalesRep" runat="server" TargetControlID="nLeadSalesRep" Title="Sales Lead" Position="BottomLeft"  width="200px" HideEvent="LeaveToolTip" 
                                           Text="The sales person who is coordinating the quotation process for the company." >
                                  </telerik:RadToolTip>
                             </div>
                             <div style="padding:5px 0px 0px 0px;">
                                  <asp:Label ID="Label12" runat="server" Text="Take Off: " Width="80px"></asp:Label>
                                  <telerik:RadComboBox ID="nTakeOff1" runat="server" Width="150px"  Height="300px" 
                                           DataSourceID="SqlDS_TakeOff" DataTextField="Label" DataValueField="Label"  AppendDataBoundItems="true">
                                      <Items>
                                           <telerik:RadComboBoxItem runat="server" Text="-" Value="-" Selected = "true" />
                                      </Items>
                                  </telerik:RadComboBox>
                                  <telerik:RadToolTip ID="RadToolTipnTakeOff1" runat="server" TargetControlID="nTakeOff1" Title="Take Off" Position="BottomLeft"  width="200px" HideEvent="LeaveToolTip" 
                                           Text="The person who is taking the lead on creating a takeoff." >
                                  </telerik:RadToolTip>
                             </div>--%>
                                   
                             
                             <%--<div style="padding:5px 0px 0px 0px;">
                                  <asp:Label ID="Label14" runat="server" Text="Plan Source:" Width="80px"></asp:Label>
                                  <telerik:RadComboBox ID="nPlanSource" Width="150px"  runat="server" 
                                          DataSourceID="SqlDS_PlanSource" DataTextField="Label" DataValueField="Label" AppendDataBoundItems="true" >
                                       <Items>
                                           <telerik:RadComboBoxItem runat="server" Text="-" Value="-" Selected="true" />
                                       </Items>
                                  </telerik:RadComboBox>                                             
                             </div>
                             <div style="padding:5px 0px 0px 0px;">
                                  <asp:Label ID="Label15" runat="server" Text="Plan Version:" Width="80px"></asp:Label>
                                  <telerik:RadTextBox ID="nPlans" runat="server"  Width="150px"  MaxLength="25"></telerik:RadTextBox>
                                  <telerik:RadToolTip ID="RadToolTipuPlans" runat="server" TargetControlID="nPlans" Title="Plan Version" Position="BottomLeft" width="200px" HideEvent="LeaveToolTip" 
                                          Text="The plan number, or version." >
                                  </telerik:RadToolTip>
                             </div>--%>
                         </div>
                                
                      
                      <div id="divProjectContainersDateLevel" style="width:1000px;">      
                         <div style="height:30px; float:left; width:100%;">
                                    <h6>Dates</h6>
                         </div>
                         <div id="div12" style="width:1000px; float:left; padding:5px 0px 5px 10px;">
                                     
                           <div id="divProjectDates" style="float:left; vertical-align:middle; height:40px;">
                                 
                              <div style="width:175px; margin-right:10px; float:left;">
                                 <asp:Label ID="lblnDueDate" runat="server" Text="Due: " Width="35px" ></ASP:Label>
                                 <telerik:RadDatePicker ID="nDueDate"  runat="server" Width="100px" 
                                          Culture="en-US"  MinDate="1900-01-01" MaxDate="2030-01-01" DatePopupButton-ToolTip="The date the quote is due to the customer." >
                                          <Calendar ID="Calendar1"  UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                          <DateInput ID="DateInput1"  Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                 </telerik:RadDatePicker>
                                     
                              </div>
                              <div style="width:175px; margin-right:10px; float:left;">

                                   <asp:Label ID="lbluCompleted" runat="server" Text="Completed: " Width="65px"></asp:Label>
                                   <telerik:RadDatePicker ID="nCompleteDate"   runat="server" Culture="English (United States)" Width="100px" 
                                            DatePopupButton-ToolTip="The date the takeoff and quote(s) were completed."  MinDate="1/1/1900" MaxDate="1/1/2030" >
                                         <Calendar ID="Calendar4" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                         <DateInput ID="DateInput4" Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                   </telerik:RadDatePicker>
                              </div>
                              <div style="width:175px; margin-right:10px; float:left;">
                                  <asp:Label ID="lblPreBid" runat="server" Text="Pre Bid: " Width="50px"></asp:Label>
                                  <telerik:RadDatePicker ID="nPreBid_Date"  runat="server" Culture="English (United States)" Width="100px"
                                          DatePopupButton-ToolTip="Pre-Bid Date, if applicable."  MinDate="1/1/1900" MaxDate="1/1/2030" >
                                        <Calendar ID="Calendar3" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                        <DateInput ID="DateInput3"  Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                  </telerik:RadDatePicker>
                              </div>
                              <div style="width:175px; margin-right:10px; float:left;">
                                  <asp:Label ID="lblnBidDate" runat="server" Text="Bid: " Width="40px" ></asp:Label>
                                  <telerik:RadDatePicker ID="nBidDate"  runat="server" Culture="English (United States)" Width="100px"
                                       DatePopupButton-ToolTip="The date the job goes to bid."  MinDate="1/1/1900" MaxDate="1/1/2030">
                                         <Calendar ID="Calendar2" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x" runat="server"></Calendar>
                                         <DateInput ID="DateInput2" Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                  </telerik:RadDatePicker>
                                </div>
                              <div style="width:175px; margin-right:10px; float:left;">
                                <asp:Label ID="lblnBidTime" runat="server" Text="Bid Time: " Width="100px" ></asp:Label>
                                <telerik:RadComboBox ID="nBidTime" Width="70px" Height="250px"  runat="server" >
                                      <Items>
                                           <telerik:RadComboBoxItem runat="server" Text="-" Value="-"  Selected="True"/>
                                           <telerik:RadComboBoxItem runat="server" Text="7:00 am" Value="7:00 am"  />
                                           <telerik:RadComboBoxItem runat="server" Text="7:30 am" Value="7:30 am" />
                                           <telerik:RadComboBoxItem runat="server" Text="8:00 am" Value="8:00 am"  />
                                           <telerik:RadComboBoxItem runat="server" Text="8:30 am" Value="8:30 am" />
                                           <telerik:RadComboBoxItem runat="server" Text="9:00 am" Value="9:00 am" />
                                           <telerik:RadComboBoxItem runat="server" Text="9:30 am" Value="9:30 am" />
                                           <telerik:RadComboBoxItem runat="server" Text="10:00 am" Value="10:00 am" />
                                           <telerik:RadComboBoxItem runat="server" Text="10:30 am" Value="10:30 am" />
                                           <telerik:RadComboBoxItem runat="server" Text="11:00 am" Value="11:00 am" />
                                           <telerik:RadComboBoxItem runat="server" Text="11:30 am" Value="11:30 am" />
                                           <telerik:RadComboBoxItem runat="server" Text="12:00 pm" Value="12:00 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="12:30 pm" Value="12:30 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="1:00 pm" Value="1:00 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="1:30 pm" Value="1:30 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="2:00 pm" Value="2:00 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="2:30 pm" Value="2:30 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="3:00 pm" Value="3:00 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="3:30 pm" Value="3:30 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="4:00 pm" Value="4:00 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="4:30 pm" Value="4:30 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="5:00 pm" Value="5:00 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="5:30 pm" Value="5:30 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="6:00 pm" Value="6:00 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="6:30 pm" Value="6:30 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="7:00 pm" Value="7:00 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="7:30 pm" Value="7:30 pm" />
                                           <telerik:RadComboBoxItem runat="server" Text="8:00 pm" Value="8:00 pm" />
                                       </Items>
                                </telerik:RadComboBox>
                              </div>


                              </div> 
                           </div>
                       </div>
                      <div id="divNewProjectContainersFlagLevel" style="width:990px;">   
                           <div style="height:30px;float:left;">
                               <h6>Project Flags</h6>
                           </div>
                           <div id="divNewProjectFlags" style="float:Left;padding:5px 5px 0px 15px; ">     
                               <div style="padding:10px 0px 0px 15px;float:left;">
                                   <asp:CheckBox ID="nFlagDIP" Text="DIP" runat="server" />
                               </div>
                               <div style="padding:10px 0px 0px 15px;float:left;">
                                   <asp:CheckBox ID="nFlagPVC" Text="PVC" runat="server" />
                               </div>
                               <div style="padding:10px 0px 0px 15px;float:left;">
                                            <asp:CheckBox ID="nFlagHDPE" Text="HDPE" runat="server" />
                               </div>
                               <div style="padding:10px 0px 0px 15px;float:left;">
                                   <asp:CheckBox ID="nFlagMeter" Text="Meters" runat="server" />
                               </div>
                           </div>
                       </div>
    
                      <div style="width:1000px; float:left;">
                          <h6>Notes</h6>
                      </div>
                      <div style="width:1000px;height:275px;">
                          <div id="divNotesTabStrip" style="padding:0px 0px 0px 15px;float:left;width:75px;">   
                                <telerik:RadTabStrip ID="RadTabStrip3" runat="server" 
                                    MultiPageID="RadMultiPageAddProjectNotes" SelectedIndex="4" 
                                    Orientation="VerticalLeft" Width="75px">
                                  <Tabs>
                                    <telerik:RadTab runat="server" Text="Bid" PageViewID="Bid"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Plans" PageViewID="Plans" ></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Fittings" PageViewID="Fittings"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Restraints" PageViewID="Restraints"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Ductile" PageViewID="Ductile" 
                                          Selected="True"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="PVC" PageViewID="PVC"  ></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="HDPE" PageViewID="HDPE"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Other" PageViewID="Other"></telerik:RadTab>
                                  </Tabs>
                                </telerik:RadTabStrip>
                          </div>
                          <div id="divNotesContent" style="padding: 0px 0px 0px 0px;float:left;width:800px; height:250px;">
                                <telerik:RadMultiPage ID="RadMultiPageAddProjectNotes" runat="server" 
                                    Width="800px" Height="250px" SelectedIndex="4" >
                                    <telerik:RadPageView ID="Bid" runat="server" Selected="true"   >
                                        <telerik:RadTextBox ID="nBid_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Plans" runat="server">
                                         <telerik:RadTextBox ID="nPlans_Note" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Fittings" runat="server">
                                             <telerik:RadTextBox ID="nFitting_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Restraints" runat="server">
                                             <telerik:RadTextBox ID="nRestraint_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Ductile" runat="server">
                                            <telerik:RadTextBox ID="nDIP_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px"></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="PVC" runat="server">
                                            <telerik:RadTextBox ID="nPVC_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px"></telerik:RadTextBox>                                    
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="HDPE" runat="server">
                                             <telerik:RadTextBox ID="nHDPE_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Other" runat="server">
                                             <telerik:RadTextBox ID="nOther_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                </telerik:RadMultiPage>
                       
                          </div> 
                      </div>
                     </div>
                </telerik:RadAjaxPanel>
            </telerik:RadPageView>
            <telerik:RadPageView ID="RecentlyAdded" runat="server" Width="1300px" Height="1000px" >                              
                  <div id="divRecentlyAdded" style="margin:15px; width:100%; height:600px;">
     
                        <telerik:RadGrid ID="RadListViewNewAdds" runat="server" DataSourceID="SqlDS_NewAdds" 
                                   GridLines="None" AllowPaging="True" AllowSorting="True" Width="1150px" Height="600px" AutoGenerateColumns="False" CellSpacing="0" >
                                
                                    <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                           <Selecting AllowRowSelect="true" />
                                           <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                    </ClientSettings>

                                        <MasterTableView DataSourceID="SqlDS_NewAdds" DataKeyNames="JobID" PageSize="25" Width="1100px" CommandItemDisplay="Top"  >
                                                <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                                             <Columns>
                                                    <telerik:GridHyperLinkColumn AllowSorting="False" Target="_Blank" DataNavigateUrlFormatString="../Projects/ProjectDetail.aspx?JobID={0}" DataNavigateUrlFields="JobID" Text="Go" UniqueName="column">
                                                        <HeaderStyle Width="30px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                                        <ItemStyle Width="30px" VerticalAlign="Top" HorizontalAlign="Left"  Font-Bold="true" Font-Italic="true" Font-Size="Small" />
                                                      </telerik:GridHyperLinkColumn>
                                                    <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project" UniqueName="ProjectName">
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="200px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="WorkType" HeaderText="WorkType" UniqueName="WorkType">
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="100px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="Flag" HeaderText="Flag" UniqueName="Flag">
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="120px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="120px" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="BidDate" HeaderText="Bids" 
                                                        UniqueName="BidDate" DataType="System.DateTime" DataFormatString="{0:MM/dd/yy}">
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="80px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="80px" Font-Size="Small" />
                                                    </telerik:GridBoundColumn>
                                                   
                                                    <telerik:GridBoundColumn DataField="BranchName" HeaderText="Branch" UniqueName="BranchName" >
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="130px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="130px" Font-Size="Small" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="WorkCity" HeaderText="City" UniqueName="WorkCity" >
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="120px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="120px" Font-Size="Small" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="District" HeaderText="District" UniqueName="District" >
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="140px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="140px" Font-Size="Small" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="JobID" Display="false" DataType="System.Int64" HeaderText="JobID" ReadOnly="True" UniqueName="JobID">
                                                    </telerik:GridBoundColumn> 
                                                    <telerik:GridBoundColumn DataField="Logged" HeaderText="Logged" UniqueName="Logged" DataType="System.DateTime" >
                                                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="170px" />
                                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="170px" Font-Size="Small" />
                                                    </telerik:GridBoundColumn>
                                                </Columns>

           
                                         </MasterTableView>

                                </telerik:RadGrid>

    
                     </div>
            
            </telerik:RadPageView>
            
           
       
            
       </telerik:RadMultiPage>
       
  </div>


    
    <telerik:RadWindowManager ID="Singleton" Width="1100" Height="750"
                        VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        <Windows>
                <telerik:RadWindow ID="wndwSeeMore" runat="server" Title="Project Detail" Height="800px"
                    Width="1050px" Left="100px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" />
        </Windows> 

    </telerik:RadWindowManager>