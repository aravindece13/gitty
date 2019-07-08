<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_PricingModel2.ascx.vb" Inherits="Controls_form_PricingModel2" %>


<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>



<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>

            <%--Product View--%>
           <telerik:AjaxSetting AjaxControlID="grdCategories">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdFP" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlBaseStats" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="SelectBranch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="SelectBranch" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    <telerik:AjaxUpdatedControl ControlID="grdCatMargins" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdFP" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCustomers" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdOpenCatRequests" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlBaseStats" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlCatReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequests" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlPriceTypeRequest" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="fltrCustomersPriceType" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdRankBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCatRanks" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlRanks" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>  
           <telerik:AjaxSetting AjaxControlID="fltrProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="fltrDesc">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="fltrRank">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M01e">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="M01e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M02e">
                <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="M02e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M03e">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="M03e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M04e">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="M04e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M05e">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="M05e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M06e">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="M06e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M07e">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="M07e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M08e">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="M08e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M09e">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="M09e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M10e">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="M010e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="M11e">
                <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="M11e" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <%--<telerik:AjaxSetting AjaxControlID="RankVarianceNoRank">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceA">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceB">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceC">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceD">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
--%>

           <telerik:AjaxSetting AjaxControlID="grdBase">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlProductActions" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>

           <telerik:AjaxSetting AjaxControlID="btnPriceTypeUpdateRequest">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCatMargins" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequestReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCatUpdateReview" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    <telerik:AjaxUpdatedControl ControlID="grdOpenCatRequests" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>

           <telerik:AjaxSetting AjaxControlID="btnProdIDMarginOverride">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnProdIDMarginClear">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnFixedPriceRequest">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdFixedPriceStage" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
          
          <%-- Category View--%>
           <telerik:AjaxSetting AjaxControlID="grdCatMargins">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlCatReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <%--<telerik:AjaxUpdatedControl ControlID="pnlCatRankVariances" LoadingPanelID="RadAjaxLoadingPanel1" /> --%>
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnPriceTypeUpdateRequest2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCatMargins" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequestReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequests" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCatUpdateReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdOpenCatRequests" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnPriceTypeRequestDelete2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCatUpdateReview" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequestReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdOpenCatRequests" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>


           <telerik:AjaxSetting AjaxControlID="grdOpenCatRequests">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequests" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    
                </UpdatedControls>
           </telerik:AjaxSetting>

           <%--Customers View--%>
           <telerik:AjaxSetting AjaxControlID="fltrCustomersCustName">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCustomers" LoadingPanelID="RadAjaxLoadingPanel1" />  
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="fltrCustomersPriceType">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCustomers" LoadingPanelID="RadAjaxLoadingPanel1" />  
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="grdCustomers">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlPriceTypeRequest" LoadingPanelID="RadAjaxLoadingPanel1" />  
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnPriceTypeRequestAdd">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOpenPTRequests" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    <telerik:AjaxUpdatedControl ControlID="grdOpenPTRequests2" LoadingPanelID="RadAjaxLoadingPanel1" />  
                </UpdatedControls>
           </telerik:AjaxSetting>

          <%-- Ops Maintenance--%>
           <telerik:AjaxSetting AjaxControlID="grdCatUpdateReview">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequestReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <%--<telerik:AjaxUpdatedControl ControlID="pnlCatRankVariances" LoadingPanelID="RadAjaxLoadingPanel1" /> --%>
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnPriceTypeCommit">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequestReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCatMargins" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCatUpdateReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnPriceTypeRequestDelete">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCatUpdateReview" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequestReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                     <telerik:AjaxUpdatedControl ControlID="grdOpenCatRequests" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="btnPriceTypeUpdateRequest3">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCatUpdateReview" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequestReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="fltrCatReviewStatus">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCatUpdateReview" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    <telerik:AjaxUpdatedControl ControlID="pnlCatRequestReview" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>

           <telerik:AjaxSetting AjaxControlID="lnkFixedPriceWorksheet">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkFixedPriceWorksheet" LoadingPanelID="RadAjaxLoadingPanel1" />     
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="lnkCatMultiplierWorksheet">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkCatMultiplierWorksheet" LoadingPanelID="RadAjaxLoadingPanel1" />     
                </UpdatedControls>
           </telerik:AjaxSetting>

           <telerik:AjaxSetting AjaxControlID="grdFixedPriceStage">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdFixedPriceStage" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                    
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="grdOpenPTRequests2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdOpenPTRequests2" LoadingPanelID="RadAjaxLoadingPanel1" />  
                </UpdatedControls>
           </telerik:AjaxSetting>

           <%--Rank Variance--%> 
           <telerik:AjaxSetting AjaxControlID="grdCatRanks">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="pnlRanks" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankBase" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           
           <telerik:AjaxSetting AjaxControlID="btnUpdateRankVariance">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdCatRanks" LoadingPanelID="RadAjaxLoadingPanel1" /> 
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceNoRank">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceA">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceB">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceC">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceD">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
           <telerik:AjaxSetting AjaxControlID="RankVarianceE">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankBase" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>
        
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


<div style="width:1800px; margin:10px;">
    <div style="width:1800px; margin-bottom:0px;">
        <div style="width:150px; float:left; font-size:large; font-weight:bold; padding-top:10px;">
            Branch to Edit:
        </div>
        <div style="width:1600px; float:left;">
            <telerik:RadTabStrip ID="selectBranch" runat="server" Skin="MetroTouch" DataSourceID="SqlDS_selectBranch" ScrollButtonsPosition="Right" Width="1800px" 
                DataTextField="comboname" DataValueField="branchno" OnTabClick="grdCategories_SelectedIndexChanged" >
            </telerik:RadTabStrip>
        
            <asp:SqlDataSource ID="SqlDS_selectBranch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                SelectCommand="uspGetBranchesByJob" SelectCommandType="StoredProcedure">
                     <SelectParameters>
                        <asp:ControlParameter ControlID="hdnJob" Name="Job" Type="String"  />
                        <asp:CookieParameter CookieName="Whse1" DefaultValue="0" Name="WhseID1" Type="String" />
                        <asp:CookieParameter CookieName="Whse2" DefaultValue="0" Name="WhseID2" Type="String" />
                        <asp:CookieParameter CookieName="Whse3" DefaultValue="0" Name="WhseID3" Type="String" />
                        <asp:CookieParameter CookieName="Whse4" DefaultValue="0" Name="WhseID4" Type="String" />
                        <asp:CookieParameter CookieName="Whse5" DefaultValue="0" Name="WhseID5" Type="String" />
                     </SelectParameters>
            </asp:SqlDataSource>
        </div>
 
    </div>
    <div  style="width:1800px;">
       
        <div style="width:1550px; float:left; margin:20px 0px 20px 0px; ">
            <div style="width:1000px; margin-left:50px;">
                <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Skin="BlackMetroTouch" Width="1000px" MultiPageID="RadMultiPage1" ResolvedRenderMode="Classic">
                    <Tabs>
                        <telerik:RadTab runat="server" Text="Category View" PageViewID="CatView" Width="200px" Selected="true"/>
                        <telerik:RadTab runat="server" Text="Product View" PageViewID="ProductView" Width="200px" />
                        <telerik:RadTab runat="server" Text="Rank Variance View" PageViewID="RankView" Width="200px"  />
                        <telerik:RadTab runat="server" Text="Customers" PageViewID="Customers" Width="200px" />
                        <telerik:RadTab runat="server" Text="Ops - Maintenance" PageViewID="Maint" Width="200px" />
                        
                    </Tabs>
                </telerik:RadTabStrip> 
            </div>
        </div>   
        <div style="width:1800px; float:left; ">
          
            <telerik:RadMultiPage ID="RadMultiPage1" runat="server" ResolvedRenderMode="Classic">
                <telerik:RadPageView ID="CatView" runat="server" Width="1800px" Selected="true">
                   
                    <div style="width:1800px; float:left; margin-top:20px;">
                            
                                <asp:Panel ID="pnlCatReview" runat="server">
                    
                                        <div style="width:1500px; float:left; margin:20px 0px 20px 0px;">
                                        
                                            <div style="width:140px; float:left;">
                                                <div style="width:100px; float:left;">
                                                    <asp:Label ID="lbPriceTypeCatReview" runat="server" Text="Price Type" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div style="width:100px; float:left; padding-top:4px;">
                                                    <asp:Label ID="lblCurrentMarginCatReview" runat="server" Text="Current Margin" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div style="width:100px; float:left;padding-top:4px;">
                                                    <asp:Label ID="lblNewMarginCatReview" runat="server" Text="New Margin" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Red; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR01" runat="server" Text="01" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblCR01" runat="server" RelativeTo="Element" Text="-01 Cash Customer" 
                                                            TargetControlID="lblCR01" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <asp:Label ID="lblCRM01" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM01" runat="server" />

                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <telerik:RadNumericTextBox ID="CRM01e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False" >
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR02" runat="server" Text="02" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblCR02" runat="server" RelativeTo="Element"   Text="-02 Good Municipality" 
                                                        TargetControlID="lblCR02" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblCRM02" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM02" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CRM02e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR03" runat="server" Text="03" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblCR03" runat="server" RelativeTo="Element" Text="-03 Better Municipality" 
                                                        TargetControlID="lblCR03" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblCRM03" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM03" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CRM03e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR04" runat="server" Text="04" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblCR04" runat="server" RelativeTo="Element" Text="-04 Best Municipality" TargetControlID="lblCR04" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblCRM04" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM04" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CRM04e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR05" runat="server" Text="05" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblCR05" runat="server" RelativeTo="Element" Text="-05 Good Contractor" 
                                                            TargetControlID="lblCR05" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblCRM05" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM05" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CRM05e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR06" runat="server" Text="06" Font-Size="Medium"></asp:Label>
                                    
                                                    <telerik:RadToolTip ID="RadToolTiplblCR06" runat="server" RelativeTo="Element" Text="-06 Better Contractor" 
                                                            TargetControlID="lblCR06" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <asp:Label ID="lblCRM06" runat="server" Font-Size="Small"></asp:Label>
                                                <asp:HiddenField ID="hdnCRM06" runat="server" />
                                            </div>
                                            <div style="width:65px; float:left;">
                                                <telerik:RadNumericTextBox ID="CRM06e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False">
                                                    <NumberFormat DecimalDigits="1" />
                                                    <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                    <EnabledStyle HorizontalAlign="Right" />
                                                </telerik:RadNumericTextBox>
                                            </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR07" runat="server" Text="07" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblCR07" runat="server" RelativeTo="Element" Text="-07 Best Contractor" 
                                                            TargetControlID="lblCR07" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblCRM07" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM07" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CRM07e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR08" runat="server" Text="08" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblCR08" runat="server" RelativeTo="Element"   Text="-08 Super Contractor" 
                                                        TargetControlID="lblCR08" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblCRM08" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM08" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CRM08e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color: Gray; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR09" runat="server" Text="09" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblCR09" runat="server" RelativeTo="Element" Text="-09 Jobber" TargetControlID="lblCR09" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblCRM09" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM09" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CRM09e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                   <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                       <asp:Label ID="lblCR10" runat="server" Text="10" Font-Size="Medium"></asp:Label>
                                                       <telerik:RadToolTip ID="RadToolTiplblCR10" runat="server" RelativeTo="Element"   Text="-10 Special Use 1" TargetControlID="lblCR10" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                       </telerik:RadToolTip>
                                                   </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblCRM10" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM10" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CRM10e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center; margin-right:25px;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblCR11" runat="server" Text="11" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblCR11" runat="server" RelativeTo="Element" Text="-11 Special Use 2" TargetControlID="lblCR11" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblCRM11" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnCRM11" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="CRM11e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="False">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:200px; float:left; margin-right:20px;">      
                                                
                                                <telerik:RadButton ID="btnPriceTypeUpdateRequest2" runat="server" Text="Category Update Request" Width="200px" Skin="BlackMetroTouch" ></telerik:RadButton>
                                                
                                                <telerik:RadToolTip ID="RadToolTipbtnPriceTypeUpdateRequest2" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnPriceTypeUpdateRequest2" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                </telerik:RadToolTip>
                                            </div>
                                       
                                           
                                            
                                        </div>
                                </asp:Panel>
                        <div style="width:1440px; float:left;">
                            <telerik:RadGrid ID="grdCatMargins" runat="server" Width="1420px" Height="400px" DataSourceID="SqlDS_grdCatMargins" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                                
                                        <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="True" AllowKeyboardNavigation="false" >
                                            <Selecting AllowRowSelect="True" />
                                    
                                            <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="True" />
                                            <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                   
                                        </ClientSettings>

                                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdCatMargins" DataKeyNames="ProdCatID" PageSize="50" Width="1400px" >
                                    
                                            <Columns>
                                                
                                                <telerik:GridBoundColumn DataField="ProdCatID" HeaderText="ProdCatID" SortExpression="ProdCatID" UniqueName="ProdCatID" Visible="False">
                                                    <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                    <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                </telerik:GridBoundColumn>
                                               
                                                
                                                <telerik:GridBoundColumn DataField="M01" DataType="System.Double" HeaderText="01" ReadOnly="True" SortExpression="M01" UniqueName="M01" DataFormatString="{0:p1}">
                                                     <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Red" ForeColor="White" Font-Bold="true"/>
                                                     <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M02" DataType="System.Double" HeaderText="02" ReadOnly="True" SortExpression="M02" UniqueName="M02" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M03" DataType="System.Double" HeaderText="03" ReadOnly="True" SortExpression="M03" UniqueName="M03" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M04" DataType="System.Double" HeaderText="04" ReadOnly="True" SortExpression="M04" UniqueName="M04" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M05" DataType="System.Double" HeaderText="05" ReadOnly="True" SortExpression="M05" UniqueName="M05" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M06" DataType="System.Double" HeaderText="06" ReadOnly="True" SortExpression="M06" UniqueName="M06" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M07" DataType="System.Double" HeaderText="07" ReadOnly="True" SortExpression="M07" UniqueName="M07" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M08" DataType="System.Double" HeaderText="08" ReadOnly="True" SortExpression="M08" UniqueName="M08" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M09" DataType="System.Double" HeaderText="09" ReadOnly="True" SortExpression="M09" UniqueName="M09" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Gray" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M10" DataType="System.Double" HeaderText="10" ReadOnly="True" SortExpression="M10" UniqueName="M10" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Green" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M11" DataType="System.Double" HeaderText="11" ReadOnly="True" SortExpression="M11" UniqueName="M11" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Green" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                        
                                                
                                            </Columns>
                                        </MasterTableView>
                            </telerik:RadGrid>
                        
                            <asp:SqlDataSource ID="SqlDS_grdCatMargins" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspMatrixAnalysisCatView" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter Name="WhseID" Type="String" />        
                                    </SelectParameters>
                            </asp:SqlDataSource>
                        
                        </div>
                        <div style="width:300px;float:left;">
                            <h3>Open Category Requests</h3>
                            <telerik:RadGrid ID="grdOpenCatRequests" runat="server" Width="300px" Height="360px" DataSourceID="SqlDS_grdOpenCatRequests" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                                
                                <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="True" AllowKeyboardNavigation="false" >
                                    <Selecting AllowRowSelect="True" />
                                    
                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="false" />
                                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                   
                                </ClientSettings>

                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdOpenCatRequests" DataKeyNames="TableIndex, WhseID, ProdCatID"  >
                                    
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="True">
                                            <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="ProdCatID" HeaderText="Cat" SortExpression="ProdCatID" UniqueName="ProdCatID" Visible="True">
                                            <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                        </telerik:GridBoundColumn>
  
                                        <telerik:GridBoundColumn DataField="Entered" DataType="System.DateTime" HeaderText="Entered" SortExpression="Entered" UniqueName="Entered">
                                            <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="TableIndex" DataType="System.Int32" HeaderText="TableIndex" SortExpression="TableIndex" UniqueName="TableIndex" Visible="False">
                                            <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                            <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                        </telerik:GridBoundColumn>
  
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>

                            <asp:SqlDataSource ID="SqlDS_grdOpenCatRequests" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="SELECT WhseID, ProdCatID, Last_Update AS Entered, TableIndex FROM Matrix_CatRevisions WHERE WhseID = @WhseID AND Status NOT IN ('Committed') ORDER BY ProdCatID">
                                    <SelectParameters>
                                        <asp:Parameter Name="WhseID" DefaultValue="0" />
                                    </SelectParameters>
                            </asp:SqlDataSource>
                        </div>

                    </div>
                    <div style="width:1800px; float:left; margin-top:20px;">
                        <asp:Panel ID="pnlCatRequests" runat="server" Width="1420px" Height="125px"> 
                            <div style="width:1420px; background-color: Green; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle; padding:3px;">
                                <asp:Label ID="lblCatRequestDetail" runat="server" ></asp:Label>
                            </div>
                                         
                            <div style="width:1500px; float:left; margin:20px 0px 20px 0px;">     
                                    <div style="width:140px; float:left;">
                                        <div style="width:100px; float:left;">
                                            <asp:Label ID="lbPriceTypeCatReview2" runat="server" Text="Cust. Type" Font-Size="Small" Font-Bold="true"></asp:Label>
                                        </div>
                                        <div style="width:100px; float:left; padding-top:4px;">
                                            <asp:Label ID="lblCurrentMarginCatReview2" runat="server" Text="Current Margin" Font-Size="Small" Font-Bold="true"></asp:Label>
                                        </div> 
                                        <div style="width:100px; float:left; padding-top:4px;">
                                            <asp:Label ID="lblCurrentMarginCatRqst2" runat="server" Text="Request Margin" Font-Size="Small" Font-Bold="true"></asp:Label>
                                        </div>                                          
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color:Red; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR01" runat="server" Text="01" Font-Size="Medium"></asp:Label>                                               
                                        </div>
                                        <div style="width:65px; float:left;">
                                            <asp:Label ID="lblCRRMc01" runat="server" Font-Size="Small"></asp:Label>                                                 
                                        </div>
                                        <div style="width:65px; float:left;">
                                            <asp:Label ID="lblCRRM01" runat="server" Font-Size="Small"></asp:Label>                                                 
                                        </div>                   
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR02" runat="server" Text="02" Font-Size="Medium"></asp:Label>                                               
                                        </div>
                                        <div style="width:65px; float:left;">
                                            <asp:Label ID="lblCRRMc02" runat="server" Font-Size="Small"></asp:Label>                                                 
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM02" runat="server" Font-Size="Small"></asp:Label>                                        
                                        </div>                              
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR03" runat="server" Text="03" Font-Size="Medium"></asp:Label>                                                   
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRMc03" runat="server" Font-Size="Small"></asp:Label>                                              
                                        </div> 
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM03" runat="server" Font-Size="Small"></asp:Label>                                              
                                        </div>           
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR04" runat="server" Text="04" Font-Size="Medium"></asp:Label>                                               
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRMc04" runat="server" Font-Size="Small"></asp:Label>                                                   
                                        </div> 
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM04" runat="server" Font-Size="Small"></asp:Label>                                                   
                                        </div>         
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR05" runat="server" Text="05" Font-Size="Medium"></asp:Label>
                                                    
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRMc05" runat="server" Font-Size="Small"></asp:Label>
                                        </div> 
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM05" runat="server" Font-Size="Small"></asp:Label>
                                        </div>                                             
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR06" runat="server" Text="06" Font-Size="Medium"></asp:Label>                           
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRMc06" runat="server" Font-Size="Small"></asp:Label>                                               
                                        </div> 
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM06" runat="server" Font-Size="Small"></asp:Label>                                               
                                        </div>                               
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR07" runat="server" Text="07" Font-Size="Medium"></asp:Label>                                             
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRMc07" runat="server" Font-Size="Small"></asp:Label>                                              
                                        </div> 
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM07" runat="server" Font-Size="Small"></asp:Label>                                              
                                        </div>                                             
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR08" runat="server" Text="08" Font-Size="Medium"></asp:Label>                                   
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRMc08" runat="server" Font-Size="Small"></asp:Label>                                                  
                                        </div> 
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM08" runat="server" Font-Size="Small"></asp:Label>                                                  
                                        </div>                                        
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color: Gray; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR09" runat="server" Text="09" Font-Size="Medium"></asp:Label>                                                    
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRMc09" runat="server" Font-Size="Small"></asp:Label>
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM09" runat="server" Font-Size="Small"></asp:Label>
                                        </div>                                                
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                            <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                <asp:Label ID="lblCRR10" runat="server" Text="10" Font-Size="Medium"></asp:Label>                                       
                                            </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRMc10" runat="server" Font-Size="Small"></asp:Label>                                  
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM10" runat="server" Font-Size="Small"></asp:Label>                                  
                                        </div>        
                                    </div>
                                    <div style="width:65px; float:left; text-align:center; margin-right:25px;">
                                        <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                            <asp:Label ID="lblCRR11" runat="server" Text="11" Font-Size="Medium"></asp:Label>          
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRMc11" runat="server" Font-Size="Small"></asp:Label>     
                                        </div>   
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="lblCRRM11" runat="server" Font-Size="Small"></asp:Label>     
                                        </div>       
                                    </div>
                                    <div style="width:200px; float:left; margin-right:20px;">      
                                                
                                        <telerik:RadButton ID="btnPriceTypeRequestDelete2" runat="server" Text="Delete Request" Width="200px" Skin="BlackMetroTouch" ></telerik:RadButton>
                                                
                                        <telerik:RadToolTip ID="RadToolTipbtnPriceTypeRequestDelete2" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnPriceTypeRequestDelete2" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                        </telerik:RadToolTip>
                                    </div>       
                                            
                            </div>
                        </asp:Panel>
                    
                    </div> 

                </telerik:RadPageView>
                <telerik:RadPageView ID="ProductView" runat="server" Width="1800px"  >
                    <div style="width:220px;  float:left; margin-top:45px;">
                        
                            <telerik:RadGrid ID="grdCategories" runat="server" Width="200px" Height="600px" DataSourceID="SqlDS_grdCategories"  ResolvedRenderMode="Classic">
                
                                <ClientSettings AllowColumnsReorder="False" ReorderColumnsOnClient="False" EnablePostBackOnRowClick="True" >
                                    <Selecting AllowRowSelect="True" />
                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                </ClientSettings>
                
                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdCategories" DataKeyNames="ProdCatId" >
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="ProdCatId" HeaderText="ProdCatId" ReadOnly="True" SortExpression="ProdCatId" UniqueName="ProdCatId" Visible="false">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="EnhancedDesc" HeaderText="Categories" ReadOnly="True" SortExpression="EnhancedDesc" UniqueName="EnhancedDesc">
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>
                            <asp:SqlDataSource ID="SqlDS_grdCategories" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspProductCategoriesGetAll" SelectCommandType="StoredProcedure">
                            </asp:SqlDataSource>
                       
                    </div>
                    <div style="width:1500px; float:left;">
                        <div style="width:1500px; float:left;">
                            <div style="width:700px; float:right; margin-left:600px;">
                            <telerik:RadTabStrip ID="RadTabStrip2" runat="server" Skin="Silk" Width="400px" MultiPageID="RadMultiPage2" ResolvedRenderMode="Classic">
                                <Tabs>
                                    <telerik:RadTab runat="server" Text="Primary View" PageViewID="MainView" Width="200px" Selected="true" />
                                    <%--<telerik:RadTab runat="server" Text="Margin Overrides" Width="200px" PageViewID="MarginOverrides" />--%>
                                    <telerik:RadTab runat="server" Text="Fixed Price Products" Width="200px" PageViewID="FixedPriceActive" />
                                </Tabs>
                                
                            </telerik:RadTabStrip>
                            </div>
                        </div>
                        <div style="width:1500px; float:left;">
                            <telerik:RadMultiPage ID="RadMultiPage2" runat="server" ResolvedRenderMode="Classic" Width="1500px" >
                                <telerik:RadPageView ID="MainView" runat="server" Width="1500px" Selected="true" >

                                    <asp:Panel ID="pnlBaseStats" runat="server" Width="1400px" Height="150px">                
                                        <div style="width:1500px; margin-top:20px;">
                                        
                                            <div style="width:120px; float:left;">
                                                <div style="width:100px; float:left;">
                                                    <asp:Label ID="Label1" runat="server" Text="Price Type" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div style="width:100px; float:left; padding-top:4px;">
                                                    <asp:Label ID="Label2" runat="server" Text="Current Margin" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div style="width:100px; float:left;padding-top:4px;">
                                                    <asp:Label ID="Label3" runat="server" Text="New Margin" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Red; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase01" runat="server" Text="01" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblBase01" runat="server" RelativeTo="Element" Text="-01 Cash Customer" 
                                                            TargetControlID="lblBase01" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <asp:Label ID="M01" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM01" runat="server" />

                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <telerik:RadNumericTextBox ID="M01e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true" >
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase02" runat="server" Text="02" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblBase02" runat="server" RelativeTo="Element"   Text="-02 Good Municipality" 
                                                        TargetControlID="lblBase02" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="M02" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM02" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="M02e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase03" runat="server" Text="03" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblBase03" runat="server" RelativeTo="Element" Text="-03 Better Municipality" 
                                                        TargetControlID="lblBase03" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="M03" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM03" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="M03e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase04" runat="server" Text="04" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblBase04" runat="server" RelativeTo="Element" Text="-04 Best Municipality" TargetControlID="lblBase04" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="M04" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM04" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="M04e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase05" runat="server" Text="05" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblBase05" runat="server" RelativeTo="Element" Text="-05 Good Contractor" 
                                                            TargetControlID="lblBase05" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="M05" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM05" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="M05e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase06" runat="server" Text="06" Font-Size="Medium"></asp:Label>
                                    
                                                    <telerik:RadToolTip ID="RadToolTiplblBase06" runat="server" RelativeTo="Element" Text="-06 Better Contractor" 
                                                            TargetControlID="lblBase06" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <asp:Label ID="M06" runat="server" Font-Size="Small"></asp:Label>
                                                <asp:HiddenField ID="hdnM06" runat="server" />
                                            </div>
                                            <div style="width:65px; float:left;">
                                                <telerik:RadNumericTextBox ID="M06e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                    <NumberFormat DecimalDigits="1" />
                                                    <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                    <EnabledStyle HorizontalAlign="Right" />
                                                </telerik:RadNumericTextBox>
                                            </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase07" runat="server" Text="07" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblBase07" runat="server" RelativeTo="Element" Text="-07 Best Contractor" 
                                                            TargetControlID="lblBase07" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="M07" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM07" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="M07e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase08" runat="server" Text="08" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblBase08" runat="server" RelativeTo="Element"   Text="-08 Super Contractor" 
                                                        TargetControlID="lblBase08" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="M08" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM08" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="M08e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color: Gray; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase09" runat="server" Text="09" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblBase09" runat="server" RelativeTo="Element" Text="-09 Jobber" TargetControlID="lblBase09" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="M09" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM09" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="M09e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                   <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                       <asp:Label ID="lblBase10" runat="server" Text="10" Font-Size="Medium"></asp:Label>
                                                       <telerik:RadToolTip ID="RadToolTiplblBase10" runat="server" RelativeTo="Element"   Text="-10 Special Use 1" TargetControlID="lblBase10" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                       </telerik:RadToolTip>
                                                   </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="M10" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM10" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="M10e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center; margin-right:25px;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblBase11" runat="server" Text="11" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblBase11" runat="server" RelativeTo="Element" Text="-11 Special Use 2" TargetControlID="lblBase11" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="M11" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnM11" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="M11e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="true">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                       
                                            <%--<div style="width:120px; float:left;">
                                                <div style="width:120px; float:left;">
                                                    <asp:Label ID="Label4" runat="server" Text="Whse Rank" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div style="width:120px; float:left; padding-top:4px;">
                                                    <asp:Label ID="Label6" runat="server" Text="Current Var. (%)" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                </div>
                                                <div style="width:120px; float:left; padding-top:4px;">
                                                    <asp:Label ID="Label5" runat="server" Text="New Rank Var. (%)" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                </div>
                               
                                            </div>
                                            <div style="width:65px; float:left; text-align:center; ">
                                                <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblRankNone" runat="server" Text="No Rank" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblRankNone" runat="server" RelativeTo="Element" Text="No Whse Rank Assigned Yet" TargetControlID="lblRankNone" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="RankNone" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnRankNone" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="RankVarianceNoRank" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90"  >
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center; ">
                                                <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblRankA" runat="server" Text="A" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblRankA" runat="server" RelativeTo="Element" Text="Whse Rank: A" TargetControlID="lblRankA" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="RankA" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnRankA" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="RankVarianceA" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center;">
                                                <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblRankB" runat="server" Text="B" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblRankB" runat="server" RelativeTo="Element" Text="Whse Rank: B" TargetControlID="lblRankB" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="RankB" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnRankB" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="RankVarianceB" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90" >
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center; ">
                                                <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblRankC" runat="server" Text="C" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblRankC" runat="server" RelativeTo="Element" Text="Whse Rank: C" TargetControlID="lblRankC" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="RankC" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnRankC" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="RankVarianceC" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90" >
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                            </div>
                                            <div style="width:65px; float:left; text-align:center; ">
                                                <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblRankD" runat="server" Text="D" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblRankD" runat="server" RelativeTo="Element" Text="Whse Rank: D" TargetControlID="lblRankD" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="RankD" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnRankD" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="RankVarianceD" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90" >
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
   
                                            </div> 
                                            <div style="width:65px; float:left; text-align:center;  ">
                                                <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                    <asp:Label ID="lblRankE" runat="server" Text="E" Font-Size="Medium"></asp:Label>
                                                    <telerik:RadToolTip ID="RadToolTiplblRankE" runat="server" RelativeTo="Element" Text="Whse Rank: E" TargetControlID="lblRankE" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="RankE" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnRankE" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="RankVarianceE" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90" >
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
   
                                            </div> --%>
                                        
                                        </div>
                                    
                                    <div style="width:1600px; height:40px; margin-top:20px; float:left;">
                                        <div style="width:220px; float:left; padding-top:7px;">
                                           <telerik:RadTextBox ID="fltrProdID" runat="server" Width="180px"  AutoPostBack="true" Label="ProdID:" LabelWidth="50px" LabelCssClass="myLabelCss">
                                           </telerik:RadTextBox>

                                           <telerik:RadToolTip ID="RadToolTipfltrProdID" runat="server" Width="200px" RelativeTo="Element" TargetControlID="fltrProdID" Text="Product number contains..." ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                           </telerik:RadToolTip>
                                        </div>
                                        <div style="width:220px; float:left; padding-top:7px;">
                                           <telerik:RadTextBox ID="fltrDesc" runat="server" Width="180px" LabelWidth="50px" AutoPostBack="true" Label="Desc:" LabelCssClass="myLabelCss">
                                           </telerik:RadTextBox>

                                           <telerik:RadToolTip ID="RadToolTipfltrDesc" runat="server" Width="200px" RelativeTo="Element" TargetControlID="fltrDesc" Text="Product description contains..." ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                           </telerik:RadToolTip>
                                        </div>
                                        <div style="width:220px; float:left; padding-top:7px;  ">
                                            <telerik:RadComboBox ID="fltrRank" runat="server" Width="100px" AutoPostBack="true" Label="Rank:" LabelCssClass="myLabelCss">
                                                <Items>
                                                    <telerik:RadComboBoxItem runat="server" Text="All Ranks" Value="%" Selected="True" />
                                                    <telerik:RadComboBoxItem runat="server" Text="A" Value="A"  />
                                                    <telerik:RadComboBoxItem runat="server" Text="B" Value="B" />
                                                    <telerik:RadComboBoxItem runat="server" Text="C" Value="C"  />
                                                    <telerik:RadComboBoxItem runat="server" Text="D" Value="D" />
                                                    <telerik:RadComboBoxItem runat="server" Text="Unranked" Value=" " />
                                                </Items>
                                            </telerik:RadComboBox>
                                            <telerik:RadToolTip ID="RadToolTipfltrRank" runat="server" RelativeTo="Element" TargetControlID="fltrRank" Text="Display all products with this warehouse rank" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                            </telerik:RadToolTip>
                                        </div>
                                        <div style="width:240px; float:left; margin-right:20px;">      
                                             <%--<telerik:RadButton ID="btnPriceTypeUpdateRequest" runat="server" Text="Category Update Request" Width="200px" Skin="BlackMetroTouch" UseSubmitBehavior="true" OnClick="btnPriceTypeUpdateRequest_Click"></telerik:RadButton>--%>
                                            <telerik:RadButton ID="btnPriceTypeUpdateRequest" runat="server" Text="Category Update Request" Width="200px" Skin="BlackMetroTouch" ></telerik:RadButton>
                                             <telerik:RadToolTip ID="RadToolTipbtnPriceTypeUpdateRequest" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnPriceTypeUpdateRequest" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                             </telerik:RadToolTip>
                                        </div>
                                        <%--<div style="width:220px; float:left;">      
                                            <telerik:RadButton ID="btnUpdateRankVariance" runat="server" Text="Update Rank Variances" Width="200px" UseSubmitBehavior="true" AutoPostBack="True" Skin="BlackMetroTouch"></telerik:RadButton>
                            
                                            <telerik:RadToolTip ID="RadToolTipbtnUpdateRankVariance" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnUpdateRankVariance" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                            </telerik:RadToolTip>
                                        </div>--%>
                                        <%--<div style="width:200px; float:left;">
                                            <div style="vertical-align:middle; height:15px;">  
                                                <label id="lblRankNote" style=" font-weight:bold; font-size:small; color:Red; padding:2px;">Rank Variance Note</label> 
                                            </div>
                                            <telerik:RadToolTip ID="RadToolTipRankNote" runat="server" RelativeTo="Element" Width="400px" Title="Rank Variance Note" 
                                                    TargetControlID="lblRankNote" ShowEvent="OnMouseOver" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade" >
                                            </telerik:RadToolTip>
                                        </div>--%>




                                          

                                    </div>
                                    </asp:Panel>
                                    <div style="width:1500px; float:left;">
                                        <telerik:RadGrid ID="grdBase" runat="server" Width="1400px" Height="400px" DataSourceID="SqlDS_grdBase" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                                
                                                <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="True" AllowKeyboardNavigation="false" >
                                                    <Selecting AllowRowSelect="True" />
                                    
                                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" />
                                                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                   
                                                </ClientSettings>

                                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdBase" DataKeyNames="ProdID" PageSize="50" Width="1600px" >
                                    
                                                    <Columns>
                                                        <%--<telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="true">
                                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" />
                                                        </telerik:GridBoundColumn>--%>
                                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                                            <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                                            <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="PriceType" HeaderText="PriceType" SortExpression="PriceType" UniqueName="PriceType" Visible="false">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <%--<telerik:GridBoundColumn DataField="BasePrice" DataType="System.Decimal" HeaderText="BasePrice" SortExpression="BasePrice" UniqueName="BasePrice" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>--%>
                                                        <telerik:GridBoundColumn DataField="Rank_Whse" HeaderText="Rank" SortExpression="Rank_Whse" UniqueName="Rank_Whse">
                                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" />
                                                        </telerik:GridBoundColumn>
                                                        <%--<telerik:GridBoundColumn DataField="Override" HeaderText="Override" ReadOnly="True" SortExpression="Override" UniqueName="Override">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>--%>
                                                        <telerik:GridBoundColumn DataField="TargetCashMargin" DataType="System.Double" HeaderText="Cash % OR" ReadOnly="True" SortExpression="TargetCashMargin" UniqueName="TargetCashMargin" DataFormatString="{0:p1}" HeaderTooltip="Target Margin for a product override">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="BidToolCost" DataType="System.Decimal" HeaderText="Cost" SortExpression="BidToolCost" UniqueName="BidToolCost" DataFormatString="{0:c2}" HeaderTooltip="BidTool Cost">
                                                             <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales01" DataType="System.Double" HeaderText="01" ReadOnly="True" SortExpression="Sales01" UniqueName="Sales01" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Red" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales02" DataType="System.Double" HeaderText="02" ReadOnly="True" SortExpression="Sales02" UniqueName="Sales02" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales03" DataType="System.Double" HeaderText="03" ReadOnly="True" SortExpression="Sales03" UniqueName="Sales03" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales04" DataType="System.Double" HeaderText="04" ReadOnly="True" SortExpression="Sales04" UniqueName="Sales04" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales05" DataType="System.Double" HeaderText="05" ReadOnly="True" SortExpression="Sales05" UniqueName="Sales05" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales06" DataType="System.Double" HeaderText="06" ReadOnly="True" SortExpression="Sales06" UniqueName="Sales06" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales07" DataType="System.Double" HeaderText="07" ReadOnly="True" SortExpression="Sales07" UniqueName="Sales07" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales08" DataType="System.Double" HeaderText="08" ReadOnly="True" SortExpression="Sales08" UniqueName="Sales08" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales09" DataType="System.Double" HeaderText="09" ReadOnly="True" SortExpression="Sales09" UniqueName="Sales09" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Gray" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales10" DataType="System.Double" HeaderText="10" ReadOnly="True" SortExpression="Sales10" UniqueName="Sales10" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Green" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Sales11" DataType="System.Double" HeaderText="11" ReadOnly="True" SortExpression="Sales11" UniqueName="Sales11" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Green" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                        
                                                    </Columns>
                                                </MasterTableView>
                                        </telerik:RadGrid>
                      
                                          <asp:SqlDataSource ID="SqlDS_grdBase" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                SelectCommand="uspMatrixCategoryAnalysis" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:Parameter Name="WhseID" Type="String" />
                                                    <asp:Parameter Name="PriceType" DbType="String" DefaultValue="%"/>
                                                    <asp:Parameter Name="ProdID" Type="String" DefaultValue="%" />
                                                    <asp:Parameter Name="Description" Type="String" DefaultValue="%" />
                                                    <asp:Parameter Name="Rank" Type="String" DefaultValue="%" />
                                                    <asp:Parameter Name="M01" Type="Double" />
                                                    <asp:Parameter Name="M02" Type="Double" />
                                                    <asp:Parameter Name="M03" Type="Double" />
                                                    <asp:Parameter Name="M04" Type="Double" />
                                                    <asp:Parameter Name="M05" Type="Double" />
                                                    <asp:Parameter Name="M06" Type="Double" />
                                                    <asp:Parameter Name="M07" Type="Double" />
                                                    <asp:Parameter Name="M08" Type="Double" />
                                                    <asp:Parameter Name="M09" Type="Double" />
                                                    <asp:Parameter Name="M10" Type="Double" />
                                                    <asp:Parameter Name="M11" Type="Double" />
                                                </SelectParameters>
                                          </asp:SqlDataSource>
                                    </div>


                                 <asp:Panel ID="pnlProductActions" runat="server">
                    
                                    <div style="width:1400px; height:90px; float:left; border:2px solid #4c68a2; margin-top:10px;">
                                        <div style="width:100%; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                                            <asp:Label ID="lblProductEdit" runat="server" ></asp:Label>
                                        </div>
                                        <div style="width:1400px; margin-top:10px;">
                                            <div style="width:700px; float:left;">
                                                <div style="width:220px; float:left; padding-top:5px; margin-left:10px;">
                                                    <telerik:RadNumericTextBox ID="MarginOverride" runat="server" Type="Percent" Width="200px" 
                                                        LabelWidth="130px" Label="Margin Override:" LabelCssClass="myLabelCss" Font-Size="Medium"
                                                        Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false" >
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                                <div style="width:200px; float:left; margin-right:20px;">
                                                    <telerik:RadButton ID="btnProdIDMarginOverride" runat="server" Text="Update Product Margin" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                             
                                                    <telerik:RadToolTip ID="RadToolTipbtnProdIDMarginOverride" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnProdIDMarginOverride" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:200px; float:left; margin-right:20px;">
                                                    <telerik:RadButton ID="btnProdIDMarginClear" runat="server" Text="Clear Product Margin" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                             
                                                    <telerik:RadToolTip ID="RadToolTipbtnProdIDMarginClear" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnProdIDMarginClear" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                            </div>
                                            <div style="width:500px; float:left;">
                                                <div style="width:220px; float:left; padding-top:5px;">
                                                    <telerik:RadNumericTextBox ID="FixedPrice" runat="server" Type="Currency" Width="200px" 
                                                        LabelWidth="120px"  Label="Fixed Price:" LabelCssClass="myLabelCss" Font-Size="Medium"
                                                        Enabled="true" Value="0" MinValue="0" MaxValue ="99999" AutoPostBack="false" >
                                                        <NumberFormat DecimalDigits="2" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                                <div style="width:200px; float:left;">
                                                    <telerik:RadButton ID="btnFixedPriceRequest" runat="server" Text="Request Fixed Price" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                             
                                                    <telerik:RadToolTip ID="RadToolTipbtnFixedPriceRequest" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnFixedPriceRequest" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                            </div>
                            
                                        </div> 
                                    </div>
                                 </asp:Panel>

                                </telerik:RadPageView>

                                <%--<telerik:RadPageView ID="MarginOverrides" runat="server" Width="1600px" >
                                    MarginOverrides
                                
                                </telerik:RadPageView>--%>
                                <telerik:RadPageView ID="FixedPriceActive" runat="server" Width="1600px" >
                                     <div style="width:1500px; float:left; margin-top:20px;">
                                        <telerik:RadGrid ID="grdFP" runat="server" Width="1400px" Height="500px" DataSourceID="SqlDS_grdFP" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                                
                                                <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="True" AllowKeyboardNavigation="false" >
                                                    <Selecting AllowRowSelect="True" />
                                    
                                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="false" />
                                                    <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                   
                                                </ClientSettings>

                                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdFP" DataKeyNames="ProdID" PageSize="50" Width="1400px" >
                                    
                                                    <Columns>
                                                        <%--<telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="true">
                                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" />
                                                        </telerik:GridBoundColumn>--%>
                                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                                            <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                                            <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                        </telerik:GridBoundColumn>
                                                                               
                                                        
                                                        <telerik:GridBoundColumn DataField="Price" DataType="System.Double" HeaderText="Price" ReadOnly="True" SortExpression="Price" UniqueName="Price" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Double" HeaderText="Margin %" ReadOnly="True" SortExpression="MarginPct" UniqueName="MarginPct" DataFormatString="{0:p1}" >
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="BidToolCost" DataType="System.Decimal" HeaderText="Cost" SortExpression="BidToolCost" UniqueName="BidToolCost" DataFormatString="{0:c2}" >
                                                             <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="AvgCost" DataType="System.Decimal" HeaderText="Avg Cost" SortExpression="AvgCost" UniqueName="AvgCost" DataFormatString="{0:c2}" >
                                                             <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="LastCost" DataType="System.Decimal" HeaderText="Last Cost" SortExpression="LastCost" UniqueName="LastCost" DataFormatString="{0:c2}" >
                                                             <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                         <telerik:GridBoundColumn DataField="AddonCost" DataType="System.Decimal" HeaderText="Addon Cost" SortExpression="AddonCost" UniqueName="AddonCost" DataFormatString="{0:c2}" >
                                                             <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="LastReceipt" HeaderText="Last Receipt" SortExpression="LastReceipt" UniqueName="LastReceipt">
                                                            <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Center" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="LastInvoice" HeaderText="Last Invoice" SortExpression="LastInvoice" UniqueName="LastInvoice">
                                                            <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Center" />
                                                        </telerik:GridBoundColumn>
                                                    </Columns>
                                                </MasterTableView>
                                        </telerik:RadGrid>
                      
                                          <asp:SqlDataSource ID="SqlDS_grdFP" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                SelectCommand="uspMatrixWhsePricingGetFixedPriceVariances" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:Parameter Name="WhseID" Type="String" />
                                                    <asp:Parameter Name="ProdCatID" Type="String" />
                                                </SelectParameters>
                                          </asp:SqlDataSource>
                                    </div>
                                
                                </telerik:RadPageView>

                            </telerik:RadMultiPage>                       
                        </div>                 
                    </div>


                
                </telerik:RadPageView>
                <telerik:RadPageView ID="Customers" runat="server" Width="1800px" >
                   
                    <div style="width:1800px; float:left; margin-top:20px;">
                        <div style="width:1800px; float:left;">
                            <div style="width:320px; float:left;">
                                <telerik:RadTextBox ID="fltrCustomersCustName" runat="server" AutoPostBack="true" Width="300px" LabelWidth="150px" EmptyMessage="Search by name" Label="Customer Name:" LabelCssClass="myLabelCssMedium" CssClass="myLabelCSSMedium" ></telerik:RadTextBox>
                               
                            </div>
                            <div style="width:300px; float:left;">
                                <telerik:RadComboBox ID="fltrCustomersPriceType" runat="server" Width="200px" label="Customer Price Type:" CssClass="myLabelCSSMedium" LabelCssClass="myLabelCSSMedium"
                                    DataSourceID="SqlDS_fltrCustomersPriceType" DataTextField="TypeDescription" DataValueField="PriceType" ResolvedRenderMode="Classic" AppendDataBoundItems="true" AutoPostBack="true">
                                    <Items>
                                        <telerik:RadComboBoxItem Text="All Price Types" Value="%" />
                                    </Items>
                                    
                                </telerik:RadComboBox>
                                <asp:SqlDataSource ID="SqlDS_fltrCustomersPriceType" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="SELECT PriceType, TypeDescription FROM Matrix_PriceTypes WHERE WhseID = @WhseID ORDER BY PriceType">
                                    <SelectParameters>
                                        <asp:Parameter Name="WhseID" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>

                        </div>
                        <div style="width:1800px; float:left; margin-top:20px;">
                            <div style="width:1020px; float:left;">    
                                <telerik:RadGrid ID="grdCustomers" runat="server" Width="1000px" Height="550px" 
                                    AllowPaging="True" AllowSorting="True" DataSourceID="SqlDS_grdCustomers" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                                    <ClientSettings AllowColumnsReorder="False" ReorderColumnsOnClient="False" EnablePostBackOnRowClick="True" >
                                        <Selecting AllowRowSelect="True" />
                                        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                    </ClientSettings>
                                    <MasterTableView AutoGenerateColumns="False" DataKeyNames="CustID" DataSourceID="SqlDS_grdCustomers" PageSize="50">
                                        <Columns>
                                        
                                            <telerik:GridBoundColumn DataField="CustName" HeaderText="CustName" SortExpression="CustName" UniqueName="CustName">
                                                <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="CustID" HeaderText="CustID" ReadOnly="True" SortExpression="CustID" UniqueName="CustID">
                                                <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="PriceType" HeaderText="Type" SortExpression="PriceType" UniqueName="PriceType">
                                                <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn> 
                                            <telerik:GridBoundColumn DataField="SalesYTD" DataType="System.Decimal" HeaderText="Sales YTD" SortExpression="SalesYTD" UniqueName="SalesYTD" DataFormatString="{0:c2}" >
                                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="MarginYTD" DataType="System.Decimal" HeaderText="Margin YTD" ReadOnly="True" SortExpression="MarginYTD" UniqueName="MarginYTD" DataFormatString="{0:c2}" >
                                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="MarginPctYTD" DataType="System.Decimal" HeaderText="Margin %" ReadOnly="True" SortExpression="MarginPctYTD" UniqueName="MarginPctYTD" DataFormatString="{0:p1}" >
                                                <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Rep" SortExpression="SalesName" UniqueName="SalesName">
                                                <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID">
                                                <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                                <asp:SqlDataSource ID="SqlDS_grdCustomers" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                            SelectCommand="SELECT Customers.CustID, Customers.CustName, Customers.PriceType, Customers.WhseID, Customers.SalesYTD, 
                                                           Customers.SalesYTD - Customers.CostYTD AS MarginYTD, CASE WHEN SalesYTD = 0 THEN 0 ELSE (SalesYTD - CostYTD) / SalesYTD END AS MarginPctYTD, 
                                                           SalesReps.SalesName
                                                           FROM Customers INNER JOIN
                                                                            SalesReps ON Customers.SalesRepID = SalesReps.SalesRepID
                                                           WHERE (Customers.WhseID = @WhseID) AND (Customers.PriceType LIKE '%'+ @PriceType + '%') AND (Customers.Status = 'Active') AND (Customers.CustName LIKE '%' +@CustName + '%')
                                                           ORDER BY Customers.CustName">
                                    <SelectParameters>
                                        <asp:Parameter Name="WhseID" />
                                        <asp:ControlParameter ControlID="fltrCustomersPriceType" DefaultValue="%" Name="PriceType" PropertyName="SelectedValue" />
                                        <asp:ControlParameter ControlID="fltrCustomersCustName" DefaultValue="%" Name="CustName" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                            <div style="width:520px; float:left;">
                                <div style="width:500px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">
                                    <div style="width:500px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle; padding:3px;">
                                       Price Type Update Request
                                    </div>
                                    <asp:Panel ID="pnlPriceTypeRequest" runat="server">
                                        <div style="width:500px; margin:10px 0px 10px 15px; font-size:medium; font-weight:bold; color:#4c68a2;">
                                            <asp:Label ID="lblCustPriceTypeRequest" runat="server"></asp:Label>
                                            <asp:HiddenField ID="hdnCustName" runat="server" />
                                        </div>
                                        <div style="width:500px; margin: 5px 0px 5px 15px; font-size:medium; font-weight:bold; color:#4c68a2;">
                                            <asp:Label ID="lblCustPriceTypeRequestCurrentType" runat="server" ></asp:Label>
                                            <asp:HiddenField ID="hdnPriceTypeCurrent" runat="server" />
                                        </div>
                                        <div style="width:500px; margin: 5px 0px 5px 15px;">
                                            <telerik:RadComboBox ID="PriceTypeNew" runat="server" Width="200px" label="New Price Type:" CssClass="myLabelCSSMedium" LabelCssClass="myLabelCSSMedium"
                                                DataSourceID="SqlDS_fltrCustomersPriceType" DataTextField="TypeDescription" DataValueField="PriceType" ResolvedRenderMode="Classic" AutoPostBack="false"> 
                                            </telerik:RadComboBox>
                                        </div>
                                        <div style="width:500px; margin: 5px 0px 20px 15px;">
                                            <telerik:RadButton ID="btnPriceTypeRequestAdd" runat="server" Text="Submit Request" UseSubmitBehavior="false" Width="200px" Skin="BlackMetroTouch" >
                                            </telerik:RadButton>
                                        </div>
                                        
                                    </asp:Panel>   

                                </div>
                                <div style="width:520px; float:left;">
                                    <div style="width:500px; float:left; margin-bottom:15px; border:2px solid #4c68a2;">
                                        <div style="width:500px; background-color: #4c68a2; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle; ">
                                           Open Price Type Change Requests
                                        </div>
                                        <div style="width:500px; float:left;">
                                            <telerik:RadGrid ID="grdOpenPTRequests" runat="server" Width="490px" Height="280px" AllowSorting="True" DataSourceID="SqlDS_grdOpenPTRequests" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                                                
                                                <ClientSettings>
                                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                                </ClientSettings>
                                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdOpenPTRequests" Width="550px">
                                                    <Columns>
                                                        <telerik:GridBoundColumn DataField="CustID" HeaderText="CustID" SortExpression="CustID" UniqueName="CustID">
                                                            <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Left" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                                            <HeaderStyle Width="125px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="125px" VerticalAlign="Top" HorizontalAlign="Left" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="NewPriceType" HeaderText="New Type" SortExpression="NewPriceType" UniqueName="NewPriceType">
                                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="OldPriceType" HeaderText="Old Type" SortExpression="OldPriceType" UniqueName="OldPriceType">
                                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="RequestDateTime" DataType="System.DateTime" HeaderText="Requested" SortExpression="RequestDateTime" 
                                                            UniqueName="RequestDateTime">
                                                            <HeaderStyle Width="125px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="125px" VerticalAlign="Top" HorizontalAlign="Left" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="RequestID" HeaderText="Requestor" SortExpression="RequestID" UniqueName="RequestID">
                                                            <HeaderStyle Width="125px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="125px" VerticalAlign="Top" HorizontalAlign="Left" />
                                                        </telerik:GridBoundColumn>
                                                        
                                                    </Columns>
                                                </MasterTableView>
                                            </telerik:RadGrid>
                                            <asp:SqlDataSource ID="SqlDS_grdOpenPTRequests" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                SelectCommand="SELECT CustID, CustName, NewPriceType, OldPriceType, RequestID, RequestDateTime FROM Matrix_CustPriceTypeChangeRequests ORDER BY RequestDateTime Desc">
                                            </asp:SqlDataSource>
                                        </div>


                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </telerik:RadPageView>
                <telerik:RadPageView ID="RankView" runat="server" Width="1800px"  >
                   
                    <div style="width:1800px; float:left; margin-top:20px;">
                        <div style="width:570px;  float:left;">
                        
                            <telerik:RadGrid ID="grdCatRanks" runat="server" Width="550px" Height="600px" DataSourceID="SqlDS_grdCatRanks"  ResolvedRenderMode="Classic">
                
                                <ClientSettings AllowColumnsReorder="False" ReorderColumnsOnClient="False" EnablePostBackOnRowClick="True" >
                                    <Selecting AllowRowSelect="True" />
                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                </ClientSettings>
                
                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdCatRanks" DataKeyNames="ProdCatId" >
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="ProdCatId" HeaderText="ProdCatId" DataType="System.String" ReadOnly="True" SortExpression="ProdCatId" UniqueName="ProdCatId" Visible="false">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="EnhancedDesc" HeaderText="Categories" ReadOnly="True" SortExpression="EnhancedDesc" UniqueName="EnhancedDesc">
                                            <HeaderStyle Width="200px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                            <ItemStyle Width="200px" VerticalAlign="Top" HorizontalAlign="Left" Font-Size="Smaller" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="RankBlank" HeaderText="" ReadOnly="True" SortExpression="RankBlank" UniqueName="RankBlank" DataFormatString="{0:P1}">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" Font-Size="Smaller" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="RankA" HeaderText="A" ReadOnly="True" SortExpression="RankA" UniqueName="RankA" DataFormatString="{0:P1}">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" Font-Size="Smaller" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="RankB" HeaderText="B" ReadOnly="True" SortExpression="RankB" UniqueName="RankB" DataFormatString="{0:P1}">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" Font-Size="Smaller" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="RankC" HeaderText="C" ReadOnly="True" SortExpression="RankC" UniqueName="RankC" DataFormatString="{0:P1}">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" Font-Size="Smaller" />
                                        </telerik:GridBoundColumn>

                                        <telerik:GridBoundColumn DataField="RankD" HeaderText="D" ReadOnly="True" SortExpression="RankD" UniqueName="RankD" DataFormatString="{0:P1}">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" Font-Size="Smaller" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="RankE" HeaderText="E" ReadOnly="True" SortExpression="RankE" UniqueName="RankE" DataFormatString="{0:P1}">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center" />
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" Font-Size="Smaller" />
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>
                            
                            <asp:SqlDataSource ID="SqlDS_grdCatRanks" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspMatrixCategoryListingRankVariance" SelectCommandType="StoredProcedure" >
                                  <SelectParameters>                                 
                                    <asp:Parameter Name="WhseID" Type="String" />
                                  </SelectParameters>
                            </asp:SqlDataSource>
                       
                        </div>
                        <div style="width:1200px; float:left; margin-top:20px;">
                            <div style="width:100%; height:20px; vertical-align:middle;">
                                <label id="lblRankNotes" style=" font-weight:bold; font-size:small; color:Red; padding-bottom:10px;">Instructions</label>  
                                <telerik:RadToolTip ID="RadToolTipLblRankNotes" runat="server" RelativeTo="Element" Width="500px" Title="Rank Variance" 
                                      Height="50px" TargetControlID="lblRankNotes" ManualClose="true" IsClientID="true" Position="BottomRight" Animation="Fade" 
                                      Text="Rank Variances add a % of margin on top of the default margin for the category. <br /><br />Select a category to add rank variances to, then supply overrides according to warehouse rank. As you add overrides, the preview of products in the grid below will update to show changes.  <br /><br />When you are satisfied with the rank variances, click the <i>Commit Rank Variance Changes</i> button.   ">
                                </telerik:RadToolTip>
                            </div>
                            <div style="width:1200px;  float:left;">
                                <asp:Panel ID="pnlRanks" runat="server" Width="530px" Height="75px">
                                    <%--<asp:HiddenField ID="hdnProdCatIDRanks" runat="server" />--%>
                                    <div style="width:120px; float:left;">
                                        <div style="width:120px; float:left;">
                                            <asp:Label ID="Label4" runat="server" Text="Whse Rank" Font-Size="Small" Font-Bold="true"></asp:Label>
                                        </div>
                                        <div style="width:120px; float:left; padding-top:4px;">
                                            <asp:Label ID="Label6" runat="server" Text="Current Var. (%)" Font-Size="Small" Font-Bold="true"></asp:Label>
                                        </div>
                                        <div style="width:120px; float:left; padding-top:4px;">
                                            <asp:Label ID="Label5" runat="server" Text="New Rank Var. (%)" Font-Size="Small" Font-Bold="true"></asp:Label>
                                        </div>
                               
                                    </div>
                                    <div style="width:65px; float:left; text-align:center; ">
                                        <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                            <asp:Label ID="lblRankNone" runat="server" Text="No Rank" Font-Size="Medium"></asp:Label>
                                            <telerik:RadToolTip ID="RadToolTiplblRankNone" runat="server" RelativeTo="Element" Text="No Whse Rank Assigned Yet" TargetControlID="lblRankNone" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                            </telerik:RadToolTip>
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="RankNone" runat="server" Font-Size="Small"></asp:Label>
                                            <asp:HiddenField ID="hdnRankNone" runat="server" />
                                        </div>
                                        <div style="width:65px; float:left;">
                                            <telerik:RadNumericTextBox ID="RankVarianceNoRank" runat="server" AutoPostBack="true" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90" >
                                                <NumberFormat DecimalDigits="1" />
                                                <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                <EnabledStyle HorizontalAlign="Right" />
                                            </telerik:RadNumericTextBox>
                                        </div>
                                    </div>
                                    <div style="width:65px; float:left; text-align:center; ">
                                        <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                            <asp:Label ID="lblRankA" runat="server" Text="A" Font-Size="Medium"></asp:Label>
                                            <telerik:RadToolTip ID="RadToolTiplblRankA" runat="server" RelativeTo="Element" Text="Whse Rank: A" TargetControlID="lblRankA" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                            </telerik:RadToolTip>
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="RankA" runat="server" Font-Size="Small"></asp:Label>
                                            <asp:HiddenField ID="hdnRankA" runat="server" />
                                        </div>
                                        <div style="width:65px; float:left;">
                                            <telerik:RadNumericTextBox ID="RankVarianceA" runat="server" AutoPostBack="true" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90" >
                                                <NumberFormat DecimalDigits="1" />
                                                <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                <EnabledStyle HorizontalAlign="Right" />
                                            </telerik:RadNumericTextBox>
                                        </div>
                                    </div>
                                    <div style="width:65px; float:left; text-align:center;">
                                        <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                            <asp:Label ID="lblRankB" runat="server" Text="B" Font-Size="Medium"></asp:Label>
                                            <telerik:RadToolTip ID="RadToolTiplblRankB" runat="server" RelativeTo="Element" Text="Whse Rank: B" TargetControlID="lblRankB" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                            </telerik:RadToolTip>
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="RankB" runat="server" Font-Size="Small"></asp:Label>
                                            <asp:HiddenField ID="hdnRankB" runat="server" />
                                        </div>
                                        <div style="width:65px; float:left;">
                                            <telerik:RadNumericTextBox ID="RankVarianceB" runat="server" AutoPostBack="true" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90"  >
                                                <NumberFormat DecimalDigits="1" />
                                                <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                <EnabledStyle HorizontalAlign="Right" />
                                            </telerik:RadNumericTextBox>
                                        </div>
                                    </div>
                                    <div style="width:65px; float:left; text-align:center; ">
                                        <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                            <asp:Label ID="lblRankC" runat="server" Text="C" Font-Size="Medium"></asp:Label>
                                            <telerik:RadToolTip ID="RadToolTiplblRankC" runat="server" RelativeTo="Element" Text="Whse Rank: C" TargetControlID="lblRankC" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                            </telerik:RadToolTip>
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="RankC" runat="server" Font-Size="Small"></asp:Label>
                                            <asp:HiddenField ID="hdnRankC" runat="server" />
                                        </div>
                                        <div style="width:65px; float:left;">
                                            <telerik:RadNumericTextBox ID="RankVarianceC" runat="server" AutoPostBack="true" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90" >
                                                <NumberFormat DecimalDigits="1" />
                                                <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                <EnabledStyle HorizontalAlign="Right" />
                                            </telerik:RadNumericTextBox>
                                        </div>
                                    </div>
                                    <div style="width:65px; float:left; text-align:center; ">
                                        <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                            <asp:Label ID="lblRankD" runat="server" Text="D" Font-Size="Medium"></asp:Label>
                                            <telerik:RadToolTip ID="RadToolTiplblRankD" runat="server" RelativeTo="Element" Text="Whse Rank: D" TargetControlID="lblRankD" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                            </telerik:RadToolTip>
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="RankD" runat="server" Font-Size="Small"></asp:Label>
                                            <asp:HiddenField ID="hdnRankD" runat="server" />
                                        </div>
                                        <div style="width:65px; float:left;">
                                            <telerik:RadNumericTextBox ID="RankVarianceD" runat="server" AutoPostBack="true" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90" >
                                                <NumberFormat DecimalDigits="1" />
                                                <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                <EnabledStyle HorizontalAlign="Right" />
                                            </telerik:RadNumericTextBox>
                                        </div>
   
                                    </div> 
                                    <div style="width:65px; float:left; text-align:center;  ">
                                        <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                            <asp:Label ID="lblRankE" runat="server" Text="E" Font-Size="Medium"></asp:Label>
                                            <telerik:RadToolTip ID="RadToolTiplblRankE" runat="server" RelativeTo="Element" Text="Whse Rank: E" TargetControlID="lblRankE" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                            </telerik:RadToolTip>
                                        </div>
                                        <div style="width:65px; float:left; text-align:center;">
                                            <asp:Label ID="RankE" runat="server" Font-Size="Small"></asp:Label>
                                            <asp:HiddenField ID="hdnRankE" runat="server" />
                                        </div>
                                        <div style="width:65px; float:left;">
                                            <telerik:RadNumericTextBox ID="RankVarianceE" runat="server" AutoPostBack="true" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="-50" MaxValue ="90" >
                                                <NumberFormat DecimalDigits="1" />
                                                <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                <EnabledStyle HorizontalAlign="Right" />
                                            </telerik:RadNumericTextBox>
                                        </div>
   
                                    </div> 
                                </asp:Panel>

                                <div style="width:5300px; float:left;">      
                                    <telerik:RadButton ID="btnUpdateRankVariance" runat="server" Text="Commit Rank Variance Changes" Width="650px" UseSubmitBehavior="true" AutoPostBack="True" Skin="BlackMetroTouch"></telerik:RadButton>
                            
                                    <telerik:RadToolTip ID="RadToolTipbtnUpdateRankVariance" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnUpdateRankVariance" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                    </telerik:RadToolTip>
                                </div>
                            
                            </div>
                            <div style="width:1200px; margin-top:20px; float:left;">
                                <telerik:RadGrid ID="grdRankBase" runat="server" Width="650px" Height="420px" DataSourceID="SqlDS_grdRankBase" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                                
                                        <ClientSettings AllowColumnsReorder="False" ReorderColumnsOnClient="False" EnablePostBackOnRowClick="False" AllowKeyboardNavigation="false" >
                                            <Selecting AllowRowSelect="False" />
                                    
                                           <%-- <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" />--%>
                                            <Resizing AllowColumnResize="true" AllowRowResize="False" />
                                   
                                        </ClientSettings>

                                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdRankBase" DataKeyNames="ProdID" PageSize="50"  >
                                    
                                                    <Columns>
                                                       
                                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                                            <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                            <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                        </telerik:GridBoundColumn>
                                                       
                                                        <telerik:GridBoundColumn DataField="Rank_Whse" HeaderText="Rank" SortExpression="Rank_Whse" UniqueName="Rank_Whse">
                                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Center" />
                                                        </telerik:GridBoundColumn>
                                                        
                                                        <telerik:GridBoundColumn DataField="CashMargin" DataType="System.Double" HeaderText="Cash %" ReadOnly="True" SortExpression="CashMargin" UniqueName="CashMargin" DataFormatString="{0:p1}" HeaderTooltip="Target Margin for a product override">
                                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="BidToolCost" DataType="System.Decimal" HeaderText="Cost" SortExpression="BidToolCost" UniqueName="BidToolCost" DataFormatString="{0:c2}" HeaderTooltip="BidTool Cost">
                                                             <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="PriceCash" DataType="System.Double" HeaderText="-01" ReadOnly="True" SortExpression="PriceCash" UniqueName="PriceCash" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Red" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                       
                                                        <telerik:GridBoundColumn DataField="PriceMuniBest" DataType="System.Double" HeaderText="-04" ReadOnly="True" SortExpression="PriceMuniBest" UniqueName="PriceMuniBest" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        
                                                        <telerik:GridBoundColumn DataField="PriceContractorSuper" DataType="System.Double" HeaderText="-08" ReadOnly="True" SortExpression="PriceContractorSuper" UniqueName="PriceContractorSuper" DataFormatString="{0:c2}">
                                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" />
                                                        </telerik:GridBoundColumn>
                                                        
                                        
                                                    </Columns>
                                                </MasterTableView>
                                </telerik:RadGrid>
                                
                                          <asp:SqlDataSource ID="SqlDS_grdRankBase" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                SelectCommand="uspMatrixRankAnalysis" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:Parameter Name="WhseID" Type="String" />
                                                    <asp:Parameter Name="PriceType" DbType="String" DefaultValue="%"/>
                                                    <asp:Parameter Name="RequestType" DbType="String" DefaultValue="Initial"/>
                                                    
                                                    <asp:Parameter Name="RankVarNone" Type="Double" DefaultValue="0" />
                                                    <asp:Parameter Name="RankVarA" Type="Double" DefaultValue="0" />
                                                    <asp:Parameter Name="RankVarB" Type="Double" DefaultValue="0" />
                                                    <asp:Parameter Name="RankVarC" Type="Double" DefaultValue="0" />
                                                    <asp:Parameter Name="RankVarD" Type="Double" DefaultValue="0" />
                                                    <asp:Parameter Name="RankVarE" Type="Double" DefaultValue="0" />
                                                    
                                                </SelectParameters>
                                          </asp:SqlDataSource>
                            
                            
                            </div>
                            


                        </div>


                    </div>
                </telerik:RadPageView>


                <telerik:RadPageView ID="Maint" runat="server" Width="1600px" >
                   
                   <div style="width:1500px; float:left; margin:20px 0px 20px 0px;">
                       <div style="width:600px; float:left;">     
                            <telerik:RadTabStrip ID="RadTabStrip3" runat="server" Skin="Silk" Width="600px" MultiPageID="RadMultiPage3" ResolvedRenderMode="Classic">
                                <Tabs>
                                    <telerik:RadTab runat="server" Text="Fixed Price Requests" Width="200px" PageViewID="FixedPriceRequests" />
                                    <telerik:RadTab runat="server" Text="Category Requests" Width="200px" PageViewID="CategoryUpdateRequests" Selected="true" />
                                    <telerik:RadTab runat="server" Text="Cust. PriceType Requests" Width="200px" PageViewID="PriceTypeRequests" Selected="true" />
                                </Tabs>  
                            </telerik:RadTabStrip>
                       </div>
                   </div>


                   <telerik:RadMultiPage ID="RadMultiPage3" runat="server" ResolvedRenderMode="Classic">

                        <telerik:RadPageView ID="FixedPriceRequests" runat="server" Width="1600px" >
                            
                            <div style="margin:10px; float:left;">
                                    
                                    <div>
                                        <telerik:RadGrid ID="grdFixedPriceStage" runat="server" Width="600px" 
                                            Height="400px" DataSourceID="SqlDS_grdFixedPriceStage" GroupPanelPosition="Top" 
                                            ResolvedRenderMode="Classic" AutoGenerateDeleteColumn="True" AllowAutomaticDeletes="true" >
                                            <ClientSettings>
                                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                            </ClientSettings>
                                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdFixedPriceStage" DataKeyNames="WhseID, ProdID" AllowAutomaticDeletes="true">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID">
                                                        <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                        <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                                        <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                        <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="BasePriceNew" DataType="System.Decimal" HeaderText="New Base" SortExpression="BasePriceNew" UniqueName="BasePriceNew" DataFormatString="{0:c2}">
                                                        <HeaderStyle Width="80px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                        <ItemStyle Width="80px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="EnterDate" DataType="System.DateTime" HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate">
                                                        <HeaderStyle Width="120px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                        <ItemStyle Width="120px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    
                                        <asp:SqlDataSource ID="SqlDS_grdFixedPriceStage" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                            SelectCommand="SELECT WhseID, ProdID, BasePriceNew, StartDate AS EnterDate FROM Matrix_FixedPriceStage ORDER BY WhseID, ProdID" 
                                            DeleteCommand="DELETE FROM Matrix_FixedPriceStage WHERE WhseID = @WhseID AND ProdID = @ProdID">
                                            <DeleteParameters>
                                                <asp:Parameter Name="WhseID" />
                                                <asp:Parameter Name="ProdID" />
                                            </DeleteParameters>
                                        </asp:SqlDataSource>
                                    
                                    </div>
                                    <div style="width:1600px; height:30px; float:left; margin:5px; padding:5px; ">    

                                            <div style="width:220px;float:left; font-size:small; margin:10px;">
                                                <telerik:RadButton ID="lnkFixedPriceWorksheet" ButtonType="LinkButton" UseSubmitBehavior="false" NavigateUrl="~/Reports2/Operations_PricingModel_FixedPriceWorksheet.aspx" runat="server" width="190px" font-size="Small" Text="Fixed Price Worksheet" Skin="BlackMetroTouch"  Target="_blank"></telerik:RadButton>
                                            </div>
                                            <div style="width:1300px;float:left; font-size:small; vertical-align:middle; padding-top:10px;">
                                                Converting products to the Fixed Price pricetype in SXe (GUI) is a manual process.  This PDF lists requests for both converting to, or from, the FP pricetype. 
                                            </div>               

                                    </div>
                            </div>
                     
                                    
                
                        </telerik:RadPageView>
                        <telerik:RadPageView ID="CategoryUpdateRequests" runat="server" Width="1600px" Selected="true" >
                    
                           <div style="margin:10px; float:left;">
                                <asp:Panel ID="pnlCatRequestReview" runat="server">
                                    <asp:HiddenField ID="hdnTableIndex" runat="server" />
                                        <div>
                                            <asp:Label ID="lblCatReviewTitle" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="#4c68a2"></asp:Label>
                                        </div>
                                        <div style="width:1500px; float:left; margin:20px 0px 20px 0px;">
                                            <div style="width:1400px; float:left;">
                                                <div style="width:180px; float:left;">
                                                    <div style="width:180px; float:left;">
                                                        <asp:Label ID="lbPriceTypeCatReviewRO" runat="server" Text="Price Type" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                    </div>
                                                    <div style="width:180px; float:left; padding-top:4px;">
                                                        <asp:Label ID="lblCurrentMarginCatReviewRO" runat="server" Text="Requested Margin" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                    </div>
                                                    <div style="width:180px; float:left;padding-top:4px;">
                                                        <asp:Label ID="lblNewMarginCatReviewRO" runat="server" Text="Override Margin" Font-Size="Small" Font-Bold="true"></asp:Label>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <div style="width:65px; float:left; text-align:center; background-color:Red; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview01" runat="server" Text="01" Font-Size="Medium"></asp:Label>
                                                        <telerik:RadToolTip ID="RadToolTiplblReview01" runat="server" RelativeTo="Element" Text="-01 Cash Customer" 
                                                                TargetControlID="lblReview01" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <asp:Label ID="lblROM01" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM01" runat="server" />

                                                    </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <telerik:RadNumericTextBox ID="ROM01e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false" >
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview02" runat="server" Text="02" Font-Size="Medium"></asp:Label>
                                                        <telerik:RadToolTip ID="RadToolTiplblReview02" runat="server" RelativeTo="Element"   Text="-02 Good Municipality" 
                                                            TargetControlID="lblReview02" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <asp:Label ID="lblROM02" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM02" runat="server" />
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <telerik:RadNumericTextBox ID="ROM02e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview03" runat="server" Text="03" Font-Size="Medium"></asp:Label>
                                                        <telerik:RadToolTip ID="RadToolTiplblReview03" runat="server" RelativeTo="Element" Text="-03 Better Municipality" 
                                                            TargetControlID="lblReview03" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <asp:Label ID="lblROM03" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM03" runat="server" />
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <telerik:RadNumericTextBox ID="ROM03e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <div style="width:65px; float:left; text-align:center; background-color:Orange; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview04" runat="server" Text="04" Font-Size="Medium"></asp:Label>
                                                        <telerik:RadToolTip ID="RadToolTiplblReview04" runat="server" RelativeTo="Element" Text="-04 Best Municipality" 
                                                            TargetControlID="lblReview04" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <asp:Label ID="lblROM04" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM04" runat="server" />
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <telerik:RadNumericTextBox ID="ROM04e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview05" runat="server" Text="05" Font-Size="Medium"></asp:Label>
                                                        <telerik:RadToolTip ID="RadToolTiplblReview05" runat="server" RelativeTo="Element" Text="-05 Good Contractor" 
                                                                TargetControlID="lblReview05" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <asp:Label ID="lblROM05" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM05" runat="server" />
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <telerik:RadNumericTextBox ID="ROM05e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview06" runat="server" Text="06" Font-Size="Medium"></asp:Label>
                                    
                                                        <telerik:RadToolTip ID="RadToolTiplblReview06" runat="server" RelativeTo="Element" Text="-06 Better Contractor" 
                                                                TargetControlID="lblReview06" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <asp:Label ID="lblROM06" runat="server" Font-Size="Small"></asp:Label>
                                                    <asp:HiddenField ID="hdnROM06" runat="server" />
                                                </div>
                                                <div style="width:65px; float:left;">
                                                    <telerik:RadNumericTextBox ID="ROM06e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                        <NumberFormat DecimalDigits="1" />
                                                        <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                        <EnabledStyle HorizontalAlign="Right" />
                                                    </telerik:RadNumericTextBox>
                                                </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview07" runat="server" Text="07" Font-Size="Medium"></asp:Label>
                                                        <telerik:RadToolTip ID="RadToolTiplblReview07" runat="server" RelativeTo="Element" Text="-07 Best Contractor" 
                                                                TargetControlID="lblReview07" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <asp:Label ID="lblROM07" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM07" runat="server" />
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <telerik:RadNumericTextBox ID="ROM07e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <div style="width:65px; float:left; text-align:center; background-color:#4c68a2; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview08" runat="server" Text="08" Font-Size="Medium"></asp:Label>
                                                        <telerik:RadToolTip ID="RadToolTiplblReview08" runat="server" RelativeTo="Element"   Text="-08 Super Contractor" 
                                                            TargetControlID="lblReview08" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <asp:Label ID="lblROM08" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM08" runat="server" />
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <telerik:RadNumericTextBox ID="ROM08e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                    <div style="width:65px; float:left; text-align:center; background-color: Gray; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview09" runat="server" Text="09" Font-Size="Medium"></asp:Label>
                                                        <telerik:RadToolTip ID="RadToolTiplblReview09" runat="server" RelativeTo="Element" Text="-09 Jobber" 
                                                            TargetControlID="lblReview09" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <asp:Label ID="lblROM09" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM09" runat="server" />
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <telerik:RadNumericTextBox ID="ROM09e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center;">
                                                       <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                           <asp:Label ID="lblReview10" runat="server" Text="10" Font-Size="Medium"></asp:Label>
                                                           <telerik:RadToolTip ID="RadToolTiplblReview10" runat="server" RelativeTo="Element"   Text="-10 Special Use 1" 
                                                                TargetControlID="lblReview10" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                           </telerik:RadToolTip>
                                                       </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <asp:Label ID="lblROM10" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM10" runat="server" />
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <telerik:RadNumericTextBox ID="ROM10e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                <div style="width:65px; float:left; text-align:center; margin-right:25px;">
                                                    <div style="width:65px; float:left; text-align:center; background-color:Green; color:White; font-weight:bold;">
                                                        <asp:Label ID="lblReview11" runat="server" Text="11" Font-Size="Medium"></asp:Label>
                                                        <telerik:RadToolTip ID="RadToolTiplblReview11" runat="server" RelativeTo="Element" Text="-11 Special Use 2" 
                                                                TargetControlID="lblReview11" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                        </telerik:RadToolTip>
                                                    </div>
                                                    <div style="width:65px; float:left; text-align:center;">
                                                        <asp:Label ID="lblROM11" runat="server" Font-Size="Small"></asp:Label>
                                                        <asp:HiddenField ID="hdnROM11" runat="server" />
                                                    </div>
                                                    <div style="width:65px; float:left;">
                                                        <telerik:RadNumericTextBox ID="ROM11e" runat="server" Type="Percent" Width="65px" Enabled="true" Value="0" MinValue="0" MaxValue ="99" AutoPostBack="false">
                                                            <NumberFormat DecimalDigits="1" />
                                                            <FocusedStyle HorizontalAlign="Right" Font-Bold="true" BorderColor="Red" />
                                                            <EnabledStyle HorizontalAlign="Right" />
                                                        </telerik:RadNumericTextBox>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div style="width:1400px; float:left; margin-top:10px;">
                                                <div style="width:200px; float:left; margin-right:20px;margin-left:200px;">      
                                                
                                                    <telerik:RadButton ID="btnPriceTypeCommit" runat="server" Text="Commit Update" Width="200px" Skin="BlackMetroTouch" ></telerik:RadButton>
                                                
                                                    <telerik:RadToolTip ID="RadToolTipbtnPriceTypeCommit" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnPriceTypeCommit" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                                <div style="width:200px; float:left; margin-right:20px;">      
                                                
                                                    <telerik:RadButton ID="btnPriceTypeUpdateRequest3" runat="server" Text="Cat. Update Override" Width="200px" Skin="BlackMetroTouch" ></telerik:RadButton>
                                                
                                                    <telerik:RadToolTip ID="RadToolTipbtnPriceTypeUpdateRequest3" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnPriceTypeUpdateRequest3" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                            
                                                <div style="width:200px; float:left; margin-right:20px;">      
                                                
                                                    <telerik:RadButton ID="btnPriceTypeRequestDelete" runat="server" Text="Delete Request" Width="200px" Skin="BlackMetroTouch" ></telerik:RadButton>
                                                
                                                    <telerik:RadToolTip ID="RadToolTipbtnPriceTypeRequestDelete" runat="server" Width="200px" RelativeTo="Element" TargetControlID="btnPriceTypeRequestDelete" ManualClose="false" ShowEvent="OnMouseOver" HideEvent="LeaveToolTip" IsClientID="false" Position="BottomRight" Animation="Fade" >
                                                    </telerik:RadToolTip>
                                                </div>
                                            </div>
                                           
                                            
                                        </div>
                                </asp:Panel>

                                <div style="width:1420px; float:left; margin-bottom:10px; height:30px;">
                                    <div style="width:300px; float:right;">
                                        <telerik:RadComboBox ID="fltrCatReviewStatus" runat="server" Label="Request Status:" CssClass="myLabelCSSMedium" LabelCssClass="myLabelCSSMedium" AutoPostBack="true">
                                            <Items>
                                                <telerik:RadComboBoxItem Text="Open Requests" Value = "Open" Selected="true" />
                                                <telerik:RadComboBoxItem Text="Committed Changes" Value = "Committed" Selected="true" />

                                            </Items>
                                        </telerik:RadComboBox>
                                    </div>
                                
                                </div>
                                <div style="width:1500px; float:left; ">
                                <telerik:RadGrid ID="grdCatUpdateReview" runat="server" Width="1420px" Height="400px" DataSourceID="SqlDS_grdCatUpdateReview" GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                                
                                        <ClientSettings AllowColumnsReorder="True" ReorderColumnsOnClient="True" EnablePostBackOnRowClick="True" AllowKeyboardNavigation="false" >
                                            <Selecting AllowRowSelect="True" />
                                    
                                            <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="false" />
                                            <Resizing AllowColumnResize="true" AllowRowResize="True" />
                                   
                                        </ClientSettings>

                                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdCatUpdateReview" DataKeyNames="TableIndex" PageSize="50" Width="1400px" >
                                    
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="TableIndex" DataType="System.Int32" HeaderText="TableIndex" SortExpression="TableIndex" UniqueName="TableIndex" Visible="False">
                                                    <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                    <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="True">
                                                    <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                    <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="ProdCatID" HeaderText="Cat" SortExpression="ProdCatID" UniqueName="ProdCatID" Visible="True">
                                                    <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                    <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                </telerik:GridBoundColumn>
                                                                                            
                                                
                                                <telerik:GridBoundColumn DataField="M01" DataType="System.Double" HeaderText="01" ReadOnly="True" SortExpression="M01" UniqueName="M01" DataFormatString="{0:p1}">
                                                     <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Red" ForeColor="White" Font-Bold="true"/>
                                                     <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M02" DataType="System.Double" HeaderText="02" ReadOnly="True" SortExpression="M02" UniqueName="M02" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M03" DataType="System.Double" HeaderText="03" ReadOnly="True" SortExpression="M03" UniqueName="M03" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M04" DataType="System.Double" HeaderText="04" ReadOnly="True" SortExpression="M04" UniqueName="M04" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Orange" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M05" DataType="System.Double" HeaderText="05" ReadOnly="True" SortExpression="M05" UniqueName="M05" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M06" DataType="System.Double" HeaderText="06" ReadOnly="True" SortExpression="M06" UniqueName="M06" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M07" DataType="System.Double" HeaderText="07" ReadOnly="True" SortExpression="M07" UniqueName="M07" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M08" DataType="System.Double" HeaderText="08" ReadOnly="True" SortExpression="M08" UniqueName="M08" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="#4c68a2" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M09" DataType="System.Double" HeaderText="09" ReadOnly="True" SortExpression="M09" UniqueName="M09" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Gray" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M10" DataType="System.Double" HeaderText="10" ReadOnly="True" SortExpression="M10" UniqueName="M10" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Green" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="M11" DataType="System.Double" HeaderText="11" ReadOnly="True" SortExpression="M11" UniqueName="M11" DataFormatString="{0:p1}">
                                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Center" BackColor="Green" ForeColor="White" Font-Bold="true"/>
                                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="right" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="RequestID" HeaderText="RequestID" SortExpression="RequestID" UniqueName="RequestID">
                                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                                </telerik:GridBoundColumn>
                                                
                                            </Columns>
                                        </MasterTableView>
                                </telerik:RadGrid>
                      
                                <asp:SqlDataSource ID="SqlDS_grdCatUpdateReview" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspMatrixCategoryRevisionRequests" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter Name="Status" Type="String" DefaultValue="Open" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                
                                </div>
                    
                                <div style="width:1600px; height:30px; float:left; margin:5px; padding:5px; ">    

                                        <div style="width:220px;float:left; font-size:small; margin:10px;">
                                            <telerik:RadButton ID="lnkCatMultiplierWorksheet" ButtonType="LinkButton" UseSubmitBehavior="false" NavigateUrl="~/Reports2/Operations_PricingModel_CatMultiplierWorksheet.aspx" runat="server" width="190px" font-size="Small" Text="Cat. Multiplier Worksheet" Skin="BlackMetroTouch"  Target="_blank"></telerik:RadButton>
                                        </div>
                                        <div style="width:1300px;float:left; font-size:small; vertical-align:middle; padding-top:10px;">
                                            Converting customer price type multipliers in SXe (GUI) is a manual process.  This PDF lists requests for changing customer pricetype multipliers. 
                                        </div>               

                                </div>
                           </div>
                
                        </telerik:RadPageView>
                        <telerik:RadPageView ID="PriceTypeRequests" runat="server" Width="1600px" >
                    
                           <div style="margin:10px; float:left;">
                                <telerik:RadGrid ID="grdOpenPTRequests2" runat="server" Width="800px" Height="550px" AllowSorting="True" DataSourceID="SqlDS_grdOpenPTRequests2" 
                                    GroupPanelPosition="Top" ResolvedRenderMode="Classic" AutoGenerateDeleteColumn="True" AllowAutomaticDeletes="true">
                                                
                                    <ClientSettings  >
                                        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                    </ClientSettings>
                                    <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdOpenPTRequests" DataKeyNames="CustID" Width="800px" AllowAutomaticDeletes="true" >
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="CustID" HeaderText="CustID" SortExpression="CustID" UniqueName="CustID">
                                                <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="CustName" HeaderText="Customer" SortExpression="CustName" UniqueName="CustName">
                                                <HeaderStyle Width="175px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="175px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="NewPriceType" HeaderText="New Type" SortExpression="NewPriceType" UniqueName="NewPriceType">
                                                <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="OldPriceType" HeaderText="Old Type" SortExpression="OldPriceType" UniqueName="OldPriceType">
                                                <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="RequestDateTime" DataType="System.DateTime" HeaderText="Requested" SortExpression="RequestDateTime" 
                                                UniqueName="RequestDateTime">
                                                <HeaderStyle Width="175px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="175px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="RequestID" HeaderText="Requestor" SortExpression="RequestID" UniqueName="RequestID">
                                                <HeaderStyle Width="125px" VerticalAlign="Bottom" HorizontalAlign="Left"/>
                                                <ItemStyle Width="125px" VerticalAlign="Top" HorizontalAlign="Left" />
                                            </telerik:GridBoundColumn>
                                                        
                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                                <asp:SqlDataSource ID="SqlDS_grdOpenPTRequests2" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="SELECT CustID, CustName, NewPriceType, OldPriceType, RequestID, RequestDateTime FROM Matrix_CustPriceTypeChangeRequests ORDER BY RequestDateTime Desc" 
                                    DeleteCommand="DELETE FROM Matrix_CustPriceTypeChangeRequests WHERE CustID = @CustID" >
                                    <DeleteParameters>
                                        <asp:Parameter Name="CustID"  />
                                    </DeleteParameters>
                                </asp:SqlDataSource>
                           
                           </div>
                        </telerik:RadPageView>
                   </telerik:RadMultiPage>

                
                </telerik:RadPageView>

                
            </telerik:RadMultiPage>
            
        
        
        
        </div>


    </div>

</div>