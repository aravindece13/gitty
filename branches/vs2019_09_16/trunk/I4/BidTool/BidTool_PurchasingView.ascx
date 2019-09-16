<%@ Control Language="VB" AutoEventWireup="false" CodeFile="BidTool_PurchasingView.ascx.vb" Inherits="BidTool_BidTool_PurchasingView" %>


 <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="500" Transparency="0">
    </telerik:RadAjaxLoadingPanel>

    

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
            <telerik:AjaxSetting AjaxControlID="btnGNSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdsGN" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="tabStripGNSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdsGN" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="tabStripGNSearch" />
                        <telerik:AjaxUpdatedControl ControlID="SqlDS_grdsGN" />
                    </UpdatedControls>
            </telerik:AjaxSetting> 
            <telerik:AjaxSetting AjaxControlID="grdsGN">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="txtBoxCostNotes" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="ProjectNotes" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lblProjectName" />
                        <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="RadTabStrip2" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="btnCostNotesUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="grdProducts" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
            </telerik:AjaxSetting>  
            <telerik:AjaxSetting AjaxControlID="btnCostNotesUpdate">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="txtBoxCostNotes" LoadingPanelID="RadAjaxLoadingPanel1" />                      
                    </UpdatedControls>
            </telerik:AjaxSetting>                        
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>




<div id="formBody" style="margin:10px; width:1300px;">

    <div style="width:1100px; height:30px;">
        <div style="width:320px; float:left;">   
            <telerik:RadTextBox ID="sGNProjectName" LabelWidth="110px" Width="300px" Label="Project Name:" EmptyMessage="Project name contains..." 
                    EmptyMessageStyle-Font-Italic="true" runat="server" LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div>
       
        <div style="width:120px; float:left;">
            <telerik:RadButton ID="btnGNSearch" runat="server" Text="Search" Width="100px" Skin="Metro" ></telerik:RadButton>
        </div> 
        <div style="margin-left:20px;float:left; width:500px; font-size:medium; color:Gray;" >
            <i>Or</i> search by keyword in the tab strip immediately below...
        </div>
    </div>

    
    <div style="width:1300px; height:800px;">
       
         <div style="margin:10px;">
                    
            <div style="width:1100px; height:40px;">
                <telerik:RadTabStrip ID="tabStripGNSearch" runat="server" Skin="Metro" width="1270px" AutoPostBack="false" SelectedIndex="0" OnTabClick="tabStripGNSearch_TabClick" >
                    <Tabs>
                        <telerik:RadTab runat="server" Text="All" Value="%" ></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="ADS" Value="ADS"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="AFC" Value="AFC"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Diamond" Value="Diamond"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Ford" Value="Ford"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="GPK" Value="GPK"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="JM" Value="JM"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Romac" Value="Romac"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Sensus" Value="Sensus"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Star" Value="Star"></telerik:RadTab> 
                        <telerik:RadTab runat="server" Text="Tyler" Value="Tyler"></telerik:RadTab>   
                    </Tabs>
                </telerik:RadTabStrip>

            </div>
            <div style="width:1300px;">
                <div style="width:304px; height:654px; float:left; margin:0px 20px 10px 0px; border:2px solid Orange;">  
                       
                    <div style="width:100%; background-color: Orange; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;">
                        Project Listing
                    </div> 
                        
                    <telerik:RadGrid ID="grdsGN" runat="server" Width="300px" Height="620px" AllowPaging="True" AllowSorting="True" CellSpacing="0" 
                            DataSourceID="SqlDS_grdsGN" GridLines="None" PageSize="50" OnSelectedIndexChanged="grdsGN_SelectedIndexChanged">
                                
                        <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                            <Selecting AllowRowSelect="true" />
                            <Scrolling AllowScroll="True" UseStaticHeaders="True" />   
                        </ClientSettings>
                                
                        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdsGN" DataKeyNames="JobID" CommandItemDisplay="Top">
                            <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />

                            <Columns>
                                <%--<telerik:GridBoundColumn DataField="CostNoteIndex" DataType="System.Int64" HeaderText="CostNoteIndex" 
                                    ReadOnly="True" SortExpression="CostNoteIndex" UniqueName="CostNoteIndex" Visible="false">
                                </telerik:GridBoundColumn>--%>
                                <telerik:GridBoundColumn DataField="JobID" DataType="System.Int64" HeaderText="JobID" 
                                    SortExpression="JobID" UniqueName="JobID" Visible="false">
                                </telerik:GridBoundColumn>
                                <%--<telerik:GridBoundColumn DataField="Notes" HeaderText="Notes" SortExpression="Notes" UniqueName="Notes" Display="false">
                                </telerik:GridBoundColumn>--%>
                                <%--<telerik:GridBoundColumn DataField="State" HeaderText="State" SortExpression="State" UniqueName="State" Display="false">
                                </telerik:GridBoundColumn>--%>
                                <telerik:GridBoundColumn DataField="ProjectName" HeaderText="Project" SortExpression="ProjectName" UniqueName="ProjectName">
                                    <HeaderStyle Width="275px" HorizontalAlign="Left" />
                                    <ItemStyle Width="275px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" />
                                </telerik:GridBoundColumn>
                                <%--<telerik:GridBoundColumn DataField="ProjectSubTitle" HeaderText="SubTitle" SortExpression="ProjectSubTitle" UniqueName="ProjectSubTitle" Display="false">
                                    <HeaderStyle Width="150px" HorizontalAlign="Left" />
                                    <ItemStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Logged" DataType="System.DateTime" HeaderText="Logged" SortExpression="Logged" UniqueName="Logged" Display="false">
                                </telerik:GridBoundColumn>--%>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>
                    <asp:SqlDataSource ID="SqlDS_grdsGN" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                        SelectCommand="uspPurchasingBidToolGenNotesSearch" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter Name="Vendor" Type="String" DefaultValue="%" />             
                            <asp:ControlParameter ControlID="sGNProjectName" Name="ProjectName" PropertyName="Text" Type="String" DefaultValue="%" />
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
                <div id="divProject" style="width:940px; height:654px; float:left; margin:0px 0px 10px 0px; border:2px solid #4c68a2;">  
                    <div style="width:100%; height:30px; font-size:Large; color:#4c68a2; padding:5px;">
                        <asp:Label ID="lblProjectName" runat="server"></asp:Label>
                    </div>
                    
                    
                    <div style="margin: 0px 0px 10px 0px;">
                        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" 
                            MultiPageID="RadMultiPage1" Skin="MetroTouch" width="100%" SelectedIndex="0" >
                            <Tabs>
                                <telerik:RadTab runat="server" Text="General Notes" PageViewID="GeneralNotes"></telerik:RadTab>
                                <telerik:RadTab runat="server" Text="Products" PageViewID="Product"></telerik:RadTab>    
                            </Tabs>
                        </telerik:RadTabStrip>

                    </div>
                    
                    <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="550px" Width="940px" SelectedIndex="1">
                        <telerik:RadPageView ID="GeneralNotes" runat="server" Selected="true">
                            
                           
                            <div style="margin:5px 0px 10px 10px;; float:left; width:100%;">
                                <div style="width:100%; height:250px;">
                                    <div style="width:100%; height:215px; margin:5px 0px 0px 0px;">
                                        <telerik:RadTextBox ID="txtBoxCostNotes" runat="server" Width="900px" Height="200px" MaxLength="2000" 
                                            TextMode="MultiLine" Wrap="true" Enabled="true" LabelCssClass="myLabelCss">    
                                        </telerik:RadTextBox>
                                    </div>
                                    <div style="width:100%;float:left; margin: 5px 0px 5px 5px;">
                                        <telerik:RadButton ID="btnCostNotesUpdate" runat="server" UseSubmitBehavior="false" Width="895px" Text="Update Cost Notes" Skin="MetroTouch" ></telerik:RadButton>
                                    </div>
                                </div>
                                <div style="width:100%; height:200px; margin: 20px 0px 10px 5px; ">
                                    <div>
                                        <telerik:RadTabStrip ID="RadTabStrip2" runat="server" Skin="Metro" Width="900px" MultiPageID="ProjectNotes" >
                                            <Tabs>
                                                <telerik:RadTab runat="server" Text="DIP" PageViewID="DIP" ></telerik:RadTab>
                                                <telerik:RadTab runat="server" Text="Fittings" PageViewID="Fittings" ></telerik:RadTab>
                                                <telerik:RadTab runat="server" Text="HDPE" PageViewID="HDPE" ></telerik:RadTab>
                                                <telerik:RadTab runat="server" Text="PVC" PageViewID="PVC" ></telerik:RadTab>
                                                <telerik:RadTab runat="server" Text="Restraints" PageViewID="Restraints" ></telerik:RadTab>
                                                <telerik:RadTab runat="server" Text="Other" PageViewID="Other" ></telerik:RadTab>  
                                            </Tabs>
                                        </telerik:RadTabStrip>
                                    </div>
                                    <div>
                                        <telerik:RadMultiPage runat="server" ID="ProjectNotes" Width="900px" Height="175px" >
                                            <telerik:RadPageView ID="DIP" runat="server" Selected="true">
                                                <div style="margin:5px;width:100%; height:100%;">
                                                    <telerik:RadTextBox ID="lblProjectDIPNotes" runat="server" TextMode="MultiLine" Width="900px" Height="175px" Wrap="true" Enabled="false" DisabledStyle-ForeColor="Black" >
                                                    </telerik:RadTextBox>
                                                </div>
                                            </telerik:RadPageView>
                                            <telerik:RadPageView ID="Fittings" runat="server" >
                                                    <div style="margin:5px;width:100%; height:100%;">
                                                    <telerik:RadTextBox ID="lblProjectFittingNotes" runat="server" TextMode="MultiLine" Width="900px" Height="175px" Wrap="true" Enabled="false" DisabledStyle-ForeColor="Black" >
                                                    </telerik:RadTextBox>
                                                </div>
                                            </telerik:RadPageView>
                                            <telerik:RadPageView ID="HDPE" runat="server" >
                                                    <div style="margin:5px;width:100%; height:100%;">
                                                    <telerik:RadTextBox ID="lblProjectHDPENotes" runat="server" TextMode="MultiLine" Width="900px" Height="175px" Wrap="true" Enabled="false" DisabledStyle-ForeColor="Black" >
                                                    </telerik:RadTextBox>
                                                </div>
                                            </telerik:RadPageView>
                                            <telerik:RadPageView ID="PVC" runat="server" >
                                                    <div style="margin:5px;width:100%; height:100%;">
                                                    <telerik:RadTextBox ID="lblProjectPVCNotes" runat="server" TextMode="MultiLine" Width="900px" Height="175px" Wrap="true" Enabled="false" DisabledStyle-ForeColor="Black" >
                                                    </telerik:RadTextBox>
                                                </div>
                                            </telerik:RadPageView>
                                            <telerik:RadPageView ID="Restraints" runat="server" >
                                                    <div style="margin:5px;width:100%; height:100%;">
                                                    <telerik:RadTextBox ID="lblProjectRestraintNotes" runat="server" TextMode="MultiLine" Width="900px" Height="175px" Wrap="true" Enabled="false" DisabledStyle-ForeColor="Black" >
                                                    </telerik:RadTextBox>
                                                </div>
                                            </telerik:RadPageView>
                                            <telerik:RadPageView ID="Other" runat="server" >
                                                    <div style="margin:5px;width:100%; height:100%;">
                                                    <telerik:RadTextBox ID="lblProjectOtherNotes" runat="server" TextMode="MultiLine" Width="900px" Height="175px" Wrap="true" Enabled="false" DisabledStyle-ForeColor="Black" >
                                                    </telerik:RadTextBox>
                                                </div>
                                            </telerik:RadPageView>
                                        </telerik:RadMultiPage>
                                    </div>

                                </div>
                            
                            
                            
                            
                            </div>
                            
                
                        </telerik:RadPageView>            
                        <telerik:RadPageView ID="Products" runat="server">
                            <div style="width:100%; height:100%; float:left;">
                                
                            <telerik:RadGrid ID="grdProducts" runat="server" Width="936px" Height="550px" AllowPaging="True" AllowSorting="True" CellSpacing="0" 
                                DataSourceID="SqlDS_grdProducts" GridLines="None">
                                <ClientSettings>
                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                </ClientSettings>
                                    
                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdProducts">
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="JobID" DataType="System.Int64" Display="False" HeaderText="JobID" SortExpression="JobID" UniqueName="JobID">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                            <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" Wrap="true" />
                                            <ItemStyle Width="100px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                            <HeaderStyle Width="250px" VerticalAlign="Bottom" HorizontalAlign="Left" Wrap="true" />
                                            <ItemStyle Width="250px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Qty" DataType="System.Decimal" HeaderText="Qty" SortExpression="Qty" UniqueName="Qty" DataFormatString="{0:n1}">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left" Wrap="true" />
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Right" Wrap="true" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="UnitCost" DataType="System.Decimal" HeaderText="UnitCost" SortExpression="UnitCost" UniqueName="UnitCost" DataFormatString="{0:c2}">
                                            <HeaderStyle Width="70px" VerticalAlign="Bottom" HorizontalAlign="Left" Wrap="true" />
                                            <ItemStyle Width="70px" VerticalAlign="Top" HorizontalAlign="right" Wrap="true" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="SellUnit" HeaderText="SellUnit" SortExpression="SellUnit" UniqueName="SellUnit">
                                            <HeaderStyle Width="50px" VerticalAlign="Bottom" HorizontalAlign="Left" Wrap="true" />
                                            <ItemStyle Width="50px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Comment" HeaderText="Comment" SortExpression="Comment" UniqueName="Comment">
                                            <HeaderStyle Width="400px" VerticalAlign="Bottom" HorizontalAlign="Left" Wrap="true" />
                                            <ItemStyle Width="400px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="true" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="NonStock" Display="False" HeaderText="NonStock" SortExpression="NonStock" UniqueName="NonStock">
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>
                                <asp:SqlDataSource ID="SqlDS_grdProducts" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="uspPurchasingBidToolProductNotes" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="grdsGN" Name="JobID" 
                                            PropertyName="SelectedValue" Type="Int64" />
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