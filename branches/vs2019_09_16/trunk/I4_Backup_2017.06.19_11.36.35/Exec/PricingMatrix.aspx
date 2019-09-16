<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="PricingMatrix.aspx.vb" Inherits="Exec_PricingMatrix" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="50" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <%--Header Controls--%>
            <telerik:AjaxSetting AjaxControlID="txtBoxCategoryFilter">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCatList" LoadingPanelID="RadAjaxLoadingPanel1"  />
 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdBranchList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCatList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                     <telerik:AjaxUpdatedControl ControlID="grdCurrentPricing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdRankVariance" LoadingPanelID="RadAjaxLoadingPanel1"  />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdCatList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCatList"   />
                    <telerik:AjaxUpdatedControl ControlID="pnlEditCat" LoadingPanelID="RadAjaxLoadingPanel1"  />
                     <%--<telerik:AjaxUpdatedControl ControlID="SqlDS_grdCurrentPricing"   />--%>
                    <telerik:AjaxUpdatedControl ControlID="grdCurrentPricing" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdFixedPrice" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="grdRankVariance" LoadingPanelID="RadAjaxLoadingPanel1"  />
 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdRankVariance">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankVariance" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="pnlRankUpdate" LoadingPanelID="RadAjaxLoadingPanel1"  />
 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateRankVariance">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdRankVariance" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    <telerik:AjaxUpdatedControl ControlID="pnlRankUpdate" LoadingPanelID="RadAjaxLoadingPanel1"  />
 
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>




<h1>Executive | Pricing Matrix</h1>
<div style="width:1800px; margin:20px;">

    

    <div style="width:100%; margin:10px 0px 10px 0px; float:left;">
        
        <div style="width:400px;float:left;">
            <telerik:RadTextBox ID="txtBoxCategoryFilter" runat="server" LabelWidth="110px" width="375px" Label="Category Name:" h EmptyMessage="The product category description contains.."  LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
            
        
        </div>
        <div style="width:240px; float:left;">
            <telerik:RadButton ID="btnFilterCategory" runat="server" Text="Filter Categories" ButtonType="StandardButton" Skin="Metro" Width="200px">
            </telerik:RadButton>
        </div>
    </div>
    <div style="width:100%; float:left;">
        <div style="width:175px; height:700px; float:left;" >
            <telerik:RadGrid ID="grdBranchList" runat="server"  Width="175px" Height="700px" CellSpacing="0" DataSourceID="SqlDS_BranchListing" GridLines="None">
                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                    <Selecting AllowRowSelect="true" />
                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                </ClientSettings>
                
                <MasterTableView AutoGenerateColumns="False" DataKeyNames="branchno" DataSourceID="SqlDS_BranchListing">
                    <Columns>
                        <telerik:GridBoundColumn DataField="branchno" HeaderText="branchno" ReadOnly="True" SortExpression="branchno2" UniqueName="branchno" Visible="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="comboname" HeaderText="Branch" SortExpression="comboname" UniqueName="comboname">
                        </telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid> 
            <asp:SqlDataSource ID="SqlDS_BranchListing" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspGetBranchesActiveOnly" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </div>
        <div style="width:225px; height:700px; float:left;" >
            <telerik:RadGrid ID="grdCatList" runat="server"  Width="215px" Height="700px" CellSpacing="0" DataSourceID="SqlDS_CatListing" GridLines="None">
                 <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                    <Selecting AllowRowSelect="true" />
                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                </ClientSettings>
                
                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_CatListing" DataKeyNames="ProdCatID">
                    <Columns>
                        <telerik:GridBoundColumn DataField="ProdCatId" HeaderText="Cat ID" SortExpression="ProdCatId" UniqueName="ProdCatId">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Description" HeaderText="Category Description" SortExpression="Description" UniqueName="Description">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="False">
                        </telerik:GridBoundColumn>
                        
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid> 
            <asp:SqlDataSource ID="SqlDS_CatListing" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                SelectCommand="SELECT P_Categories.ProdCatId, P_Categories.Description, PW.WhseID, COUNT(PW.ProdID) AS ProductCount 
                    FROM P_Categories INNER JOIN PW ON P_Categories.ProdCatId = PW.PriceType 
                    GROUP BY P_Categories.ProdCatId, P_Categories.Description, PW.WhseID 
                    HAVING (PW.WhseID = @WhseID) AND P_Categories.Description LIKE '%' + @CatDesc + '%'
                    ORDER BY P_Categories.ProdCatId">
                <SelectParameters>
                    <asp:ControlParameter ControlID="grdBranchList" Name="WhseID" PropertyName="SelectedValue" />
                    <asp:Parameter Name="CatDesc" DbType="String" DefaultValue="%" />

                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div style="width:924px; height:704px; float:left; border: 2px solid #4c68a2;" >
            <asp:Panel ID="pnlEditCat" runat="server">
                <div style="width:900px; height:220px; margin:10px; ">
                    <div style="width:100%; height:20px; background-color:#4c68a2; color:White; font-size:medium; font-weight:bold; padding:6px; vertical-align:middle;">
                        <asp:Label ID="lblCatEdit" runat="server"></asp:Label>
                    </div>
                    <div style="width:100%; height:25px; margin:10px;">
                        <div style="width:195px; vertical-align:middle; float:left;">
                            <telerik:RadNumericTextBox ID="txtEdit01" runat="server" Label="Cash Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                <NumberFormat DecimalDigits="1" />
                                <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                            </telerik:RadNumericTextBox>
                        </div>
                        <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                            <asp:Label ID="lblEdit01PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:195px; vertical-align:middle; float:left;">
                            <telerik:RadNumericTextBox ID="txtEdit09" runat="server" Label="Jobber Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                <NumberFormat DecimalDigits="1" />
                                <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                            </telerik:RadNumericTextBox>
                        </div>
                        <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                            <asp:Label ID="lblEdit09PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                        </div>
                        <div style="width:200px; vertical-align:middle; float:left; ">
                            <telerik:RadButton ID="btnCatRequestUpdate" runat="server" Text="Request Update" ButtonType="StandardButton" Skin="Metro" Width="200px">
                            </telerik:RadButton>
                        </div>
                    </div>
                    <div style="width:100%; float:left;">
                        <div style="width:250px; float:left; margin-right:20px;">    
                            <div style=" width:100%; height:15px;background-color:Orange; color:White; font-size:medium; font-weight:bold; padding:4px; margin-bottom:5px; vertical-align:middle;">
                                Municipalities
                            </div>
                            <div style="width:100%; margin-left:10px;">
                                <div style="width:195px; vertical-align:middle; margin-bottom:5px; float:left;">
                                    <telerik:RadNumericTextBox ID="txtEdit02" runat="server" Label="Good Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                        LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                        <NumberFormat DecimalDigits="1" />
                                        <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                        <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                                    <asp:Label ID="lblEdit02PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                                </div>
                            </div>
                            <div style="width:100%; margin-left:10px;">

                                <div style="width:195px; vertical-align:middle; margin-bottom:5px; float:left;">
                                    <telerik:RadNumericTextBox ID="txtEdit03" runat="server" Label="Better Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                        LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                        <NumberFormat DecimalDigits="1" />
                                        <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                        <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                                    <asp:Label ID="lblEdit03PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                                </div>
                            </div>
                            <div style="width:100%; margin-left:10px;">

                                <div style="width:195px; vertical-align:middle; margin-bottom:5px; float:left;">
                                    <telerik:RadNumericTextBox ID="txtEdit04" runat="server" Label="Best Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                        LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                        <NumberFormat DecimalDigits="1" />
                                        <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                        <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                                    <asp:Label ID="lblEdit04PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                                </div>
                            </div>
                        </div>


                       
                        <div style="width:250px; float:left; margin-right:20px;">     
                            <div style=" width:100%; height:15px;background-color:Orange; color:White; font-size:medium; font-weight:bold; padding:4px; margin-bottom:5px; vertical-align:middle;">
                                Contractors
                            </div>
                            <div style="width:100%; margin-left:10px;">
                                <div style="width:195px; vertical-align:middle; margin-bottom:5px; float:left;">
                                    <telerik:RadNumericTextBox ID="txtEdit05" runat="server" Label="Good Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                        LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                        <NumberFormat DecimalDigits="1" />
                                        <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                        <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                                    <asp:Label ID="lblEdit05PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                                </div>
                            </div>
                            <div style="width:100%; margin-left:10px;">

                                <div style="width:195px; vertical-align:middle; margin-bottom:5px; float:left;">
                                    <telerik:RadNumericTextBox ID="txtEdit06" runat="server" Label="Better Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                        LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                        <NumberFormat DecimalDigits="1" />
                                        <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                        <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                                    <asp:Label ID="lblEdit06PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                                </div>
                            </div>
                            <div style="width:100%; margin-left:10px;">

                                <div style="width:195px; vertical-align:middle; margin-bottom:5px; float:left;">
                                    <telerik:RadNumericTextBox ID="txtEdit07" runat="server" Label="Best Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                        LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                        <NumberFormat DecimalDigits="1" />
                                        <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                        <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                                    <asp:Label ID="lblEdit07PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                                </div>
                            </div>
                            <div style="width:100%; margin-left:10px;">

                                <div style="width:195px; vertical-align:middle; margin-bottom:5px; float:left;">
                                    <telerik:RadNumericTextBox ID="txtEdit08" runat="server" Label="Super Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                        LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                        <NumberFormat DecimalDigits="1" />
                                        <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                        <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                                    <asp:Label ID="lblEdit08PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div style="width:250px; float:left; margin-right:20px;">    
                            <div style=" width:100%; height:15px;background-color:Orange; color:White; font-size:medium; font-weight:bold; padding:4px; margin-bottom:5px; vertical-align:middle;">
                                Other
                            </div>
                            <div style="width:100%; margin-left:10px;">
                                <div style="width:195px; vertical-align:middle; margin-bottom:5px; float:left;">
                                    <telerik:RadNumericTextBox ID="txtEdit10" runat="server" Label="Other 1 Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                        LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                        <NumberFormat DecimalDigits="1" />
                                        <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                        <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                                    <asp:Label ID="lblEdit10PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                                </div>
                            </div>
                            <div style="width:100%; margin-left:10px;">

                                <div style="width:195px; vertical-align:middle; margin-bottom:5px; float:left;">
                                    <telerik:RadNumericTextBox ID="txtEdit11" runat="server" Label="Other 2 Target %:" MinValue="0" MaxValue="95" Type="Percent"  
                                        LabelCssClass="myLabelCss" ShowSpinButtons="true" LabelWidth="110px" Width="175px">
                                        <NumberFormat DecimalDigits="1" />
                                        <IncrementSettings InterceptMouseWheel="true" Step="1" />
                                        <InvalidStyle BorderColor="Red" BorderWidth="3px" />
                                    
                                    </telerik:RadNumericTextBox>
                                </div>
                                <div style="width:50px; vertical-align:middle; float:left; padding-top:5px;">
                                    <asp:Label ID="lblEdit11PctCurrent" runat="server" CssClass="myLabelCss"></asp:Label>
                                </div>
                            </div>
                            
                        </div>
                    </div>
            
                </div>
            </asp:Panel>   
            
            <div style="width:900px; height:460px; margin:10px;">
                <div style="width:100%;">
                    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="MetroTouch">
                        <Tabs>
                            <telerik:RadTab Text="Current Pricing" PageViewID="CurrentPricing" runat="server" Selected="true" />
                            <%--<telerik:RadTab Text="Margin Samples" PageViewID="MarginSamples" runat="server" />--%>
                            <telerik:RadTab Text="Update Requests" PageViewID="UpdateRequests" runat="server" />
                            <telerik:RadTab Text="Rank Variances" PageViewID="RankVariances" runat="server" />
                            <telerik:RadTab Text="Fixed Price" PageViewID="FixedPrice" runat="server" />
                        </Tabs>
                    </telerik:RadTabStrip>
                </div>
                <div style="width:100%;">
                    <telerik:RadMultiPage ID="RadMultiPage1" runat="server">
                        <telerik:RadPageView ID="CurrentPricing" runat="server" Width="900px" Height="400px" Selected="true">
                           <div style="margin:10px; height:100%;width:100%;">
                               <telerik:RadGrid ID="grdCurrentPricing" runat="server" Width="880px" Height="380px" AllowPaging="True" AutoGenerateColumns="False" CellSpacing="0" 
                                   DataSourceID="SqlDS_grdCurrentPricing" GridLines="None" ShowGroupPanel="false" >
                                   <ClientSettings>
                                       <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                   </ClientSettings>
                                   <MasterTableView DataSourceID="SqlDS_grdCurrentPricing" PageSize="50">
                                        <ColumnGroups>
                                            
                                            <telerik:GridColumnGroup HeaderText="Municipalities" Name="Muni" HeaderStyle-HorizontalAlign="Center"/>
                                            <telerik:GridColumnGroup HeaderText="Contractors" Name="Cont" HeaderStyle-HorizontalAlign="Center" />
                                            
                                            <telerik:GridColumnGroup HeaderText="Other" Name="Other" HeaderStyle-HorizontalAlign="Center"/>
                                        </ColumnGroups>
                                       <Columns>
                                           <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" UniqueName="ProdID">
                                                <HeaderStyle VerticalAlign="Bottom" Width="75px"  />
                                                <ItemStyle VerticalAlign="Top" Width="75px" Wrap="false" />    
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Description" HeaderText="Description" UniqueName="Description">
                                                <HeaderStyle VerticalAlign="Bottom" Width="100px" />
                                                <ItemStyle VerticalAlign="Top" Width="100px" Wrap="false" />    
                                           
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="BidToolCost" DataType="System.Decimal" HeaderText="Cost" UniqueName="BidToolCost" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />    
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Rank_Whse" HeaderText="Rank" UniqueName="Rank_Whse">
                                                <HeaderStyle VerticalAlign="Bottom" Width="40px" />
                                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Center" Width="40px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales01" DataType="System.Double" HeaderText="Cash" ReadOnly="True" SortExpression="Sales01" UniqueName="Sales01" DataFormatString="{0:c2}">
                                               <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales02" DataType="System.Double" HeaderText="Good" ReadOnly="True" UniqueName="Sales02" ColumnGroupName="Muni" DataFormatString="{0:c2}">
                                               <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales03" DataType="System.Double" HeaderText="Better" ReadOnly="True" UniqueName="Sales03" ColumnGroupName="Muni" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales04" DataType="System.Double" HeaderText="Best" ReadOnly="True" UniqueName="Sales04" ColumnGroupName="Muni" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales05" DataType="System.Double" HeaderText="Good" ReadOnly="True" UniqueName="Sales05" ColumnGroupName="Cont" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales06" DataType="System.Double" HeaderText="Better" ReadOnly="True" UniqueName="Sales06" ColumnGroupName="Cont" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales07" DataType="System.Double" HeaderText="Best" ReadOnly="True" UniqueName="Sales07" ColumnGroupName="Cont" DataFormatString="{0:c2}">
                                               <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales08" DataType="System.Double" HeaderText="Super" ReadOnly="True" UniqueName="Sales08" ColumnGroupName="Cont" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales09" DataType="System.Double" HeaderText="Jobber" ReadOnly="True" UniqueName="Sales09" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales10" DataType="System.Double" HeaderText="1" ReadOnly="True" UniqueName="Sales10" ColumnGroupName="Other" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" HorizontalAlign="Center" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Sales11" DataType="System.Double"  HeaderText="2" ReadOnly="True" UniqueName="Sales11" ColumnGroupName="Other" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="50px" HorizontalAlign="Center" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="50px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                       </Columns>
                                   </MasterTableView>
                               </telerik:RadGrid>
                               <asp:SqlDataSource ID="SqlDS_grdCurrentPricing" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                   SelectCommand="uspMatrixWhsePricingGetCurrent" SelectCommandType="StoredProcedure">
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="grdBranchList" Name="WhseID" PropertyName="SelectedValue" Type="String" />
                                       <asp:ControlParameter ControlID="grdCatList" Name="ProdCatID" PropertyName="SelectedValue" Type="String" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                           </div> 
                            
                            
                        </telerik:RadPageView>
                         <%--<telerik:RadPageView ID="MarginSamples" runat="server" Width="900px" Height="400px">
                           <div style="margin:10px ;height:100%;width:100%; ">
                                Margin Samples    
                           </div> 
                            
                        </telerik:RadPageView>--%>
                        <telerik:RadPageView ID="UpdateRequests" runat="server" Width="900px" Height="400px">
                           <div style="margin:10px; height:100%;width:100%;">
                               Update Requests
                           </div> 
                            
                            
                        </telerik:RadPageView>
                        <telerik:RadPageView ID="RankVariances" runat="server" Width="900px" Height="400px">
                             <div style="margin:10px; height:100%;width:100%;">
                                <div style="width:900px; height:150px; margin-top:5px; float:left; ">
                                    <b >ABC Ranking</b><br />
                                        Ranking is a method of classifying products based on hits, or the number of times a product appears on a sales order. Hits may also be called issues, velocity, 
                                        or frequency. By tracking a product’s hits, whether they appear on a sales order, warehouse transfer, or even a lost business transaction (canceled order), you can rank a product by the volume of transactions it appears on.<br /><br />
                                        Products that we hold on our shelves for an extended period of time may warrant a higher margin.  This rank variance allows us to tack on this additional margin for the 
                                        product category that is being edited.  Unranked products are new to the warehouse, and the ranks of A, B, and C are normal products that should not warrant further markup
                                        from the base target margin for the category.


                               
                               </div>
                                <div style="width:900px; height:400px; float:left;">
                                    <div style="width:170px; float:left;">
                                        <telerik:RadGrid ID="grdRankVariance" runat="server" width="150px" Height="200px"  CellSpacing="0" DataSourceID="SqlDS_grdRankVar" 
                                            GridLines="None" OnSelectedIndexChanged="grdRankVariance_SelectedIndexChanged" >
                                        
                                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                                    <Selecting AllowRowSelect="true" />
                                                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                </ClientSettings>
                                        
                                            <MasterTableView AutoGenerateColumns="False" DataKeyNames="MatrixRankVarianceID, Variance, Rank_Whse" DataSourceID="SqlDS_grdRankVar" >
                                            
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="MatrixRankVarianceID" DataType="System.Int32" HeaderText="MatrixRankVarianceID" ReadOnly="True" 
                                                        SortExpression="MatrixRankVarianceID" UniqueName="MatrixRankVarianceID" Visible="false">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="ProdCatId" HeaderText="ProdCatId" SortExpression="ProdCatId" UniqueName="ProdCatId" ReadOnly="true" Visible="false">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" ReadOnly="true" Visible="false">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="Rank_Whse" HeaderText="Rank" SortExpression="Rank_Whse" UniqueName="Rank_Whse" ReadOnly="true">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="Variance" DataType="System.Double" HeaderText="Variance" 
                                                        SortExpression="Variance" UniqueName="Variance" DataFormatString="{0:N1} %">
                                                    </telerik:GridBoundColumn>
                                                
                                                </Columns>
                                           
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                   
                                        <asp:SqlDataSource ID="SqlDS_grdRankVar" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                            SelectCommand="uspMatrixRankVarianceGetByWhseCat" SelectCommandType="StoredProcedure" >
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="grdBranchList" Name="WhseID" PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="grdCatList" Name="ProdCatID" PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
                                       
                                        </asp:SqlDataSource>
                                    </div>
                                    <div style="width:400px;float:left;">
                                       <asp:Panel ID="pnlRankUpdate" runat="server">
                                        <div style="width:400px; float:left; margin-bottom:10px; height:20px; background-color:#4c68a2; color:White; font-size:medium; font-weight:bold; padding:6px; vertical-align:middle;">
                                            <asp:Label ID="lblRankEdit" runat="server" ></asp:Label>
                                        </div>
                                        <div style="width:100%;">
                                            <asp:HiddenField ID="hdnMatrixRankVarianceID" runat="server" />
                                            
                                             <div style="width:185px; float:left;">
                                                <telerik:RadNumericTextBox ID="txtRankVariance" runat="server" LabelCssClass="myLabelCss" Label="Variance:" LabelWidth="70px" Width="165px"
                                                    Type="Percent" MinValue="0" MaxValue="50" ShowSpinButtons="true" AllowOutOfRangeAutoCorrect="true">
                                                    <IncrementSettings InterceptArrowKeys="true" InterceptMouseWheel="true" Step="1" />
                                                     <InvalidStyle BorderColor="Red" BorderWidth="3px" />    
                                                     <NumberFormat DecimalDigits="1" /> 
                                                </telerik:RadNumericTextBox>
                                             </div>
                                             <div style="width:200px; float:left;">
                                                <telerik:RadButton ID="btnUpdateRankVariance" runat="server" Text="Update" ButtonType="StandardButton" Skin="Metro" Width="200px">
                                                </telerik:RadButton>
                                             </div>   
                                              
                                        </div>
                                        </asp:Panel>
                                    </div>
                               </div>
                               
                           </div> 
                            
                            
                        </telerik:RadPageView>
                        <telerik:RadPageView ID="FixedPrice" runat="server" Width="900px" Height="400px">
                             <div style="margin:10px; height:100%;width:100%;">
                               <telerik:RadGrid ID="grdFixedPrice" runat="server" Width="700px" Height="380px" AllowPaging="True" AutoGenerateColumns="False" CellSpacing="0" 
                                   DataSourceID="SqlDS_grdFixedPrice" GridLines="None">
                                   <ClientSettings>
                                       <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                   </ClientSettings>
                                   <MasterTableView DataSourceID="SqlDS_grdFixedPrice" PageSize="50">
                                        
                                       <Columns>
                                           <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" UniqueName="ProdID">
                                                <HeaderStyle VerticalAlign="Bottom" Width="125px"  />
                                                <ItemStyle VerticalAlign="Top" Width="125px" Wrap="false" />    
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="Description" HeaderText="Description" UniqueName="Description">
                                                <HeaderStyle VerticalAlign="Bottom" Width="220px" />
                                                <ItemStyle VerticalAlign="Top" Width="220px" Wrap="false" />    
                                           
                                           </telerik:GridBoundColumn>
                                           
                                           <telerik:GridBoundColumn DataField="Rank_Whse" HeaderText="Rank" UniqueName="Rank_Whse">
                                                <HeaderStyle VerticalAlign="Bottom" Width="40px" />
                                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Center" Width="40px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="FixedPrice" DataType="System.Double" HeaderText="Fixed Price" ReadOnly="True" SortExpression="FixedPrice" UniqueName="FixedPrice" DataFormatString="{0:c2}">
                                               <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="80px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           <telerik:GridBoundColumn DataField="BidToolCost" DataType="System.Decimal" HeaderText="Cost" UniqueName="BidToolCost" DataFormatString="{0:c2}">
                                                <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                                                <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="80px"  Wrap="false" />    
                                           </telerik:GridBoundColumn>

                                           <telerik:GridBoundColumn DataField="MarginPct" DataType="System.Double" HeaderText="Margin %" ReadOnly="True" UniqueName="MarginPct" DataFormatString="{0:N2}">
                                               <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                                               <ItemStyle VerticalAlign="Top" HorizontalAlign="Right" Width="80px"  Wrap="false" />
                                           </telerik:GridBoundColumn>
                                           
                                       </Columns>
                                   </MasterTableView>
                               </telerik:RadGrid>
                                <asp:SqlDataSource ID="SqlDS_grdFixedPrice" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                   SelectCommand="uspMatrixWhsePricingGetFixedPriceVariances" SelectCommandType="StoredProcedure">
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="grdBranchList" Name="WhseID" PropertyName="SelectedValue" Type="String" />
                                       <asp:ControlParameter ControlID="grdCatList" Name="ProdCatID" PropertyName="SelectedValue" Type="String" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                           </div> 
                            
                        </telerik:RadPageView>
                    </telerik:RadMultiPage>
                
                </div>
            </div>

        </div>

    </div>



</div>

</asp:Content>

