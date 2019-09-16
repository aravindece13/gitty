<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/IT_Secure.master" AutoEventWireup="false" CodeFile="Assets.aspx.vb" Inherits="IT_Secure_Assets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
    <AjaxSettings>   
        <telerik:AjaxSetting AjaxControlID="btnClearFilters">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="sAssetStatus" />
                <telerik:AjaxUpdatedControl ControlID="sAssetTag" />
                <telerik:AjaxUpdatedControl ControlID="sSponsor" />
                <telerik:AjaxUpdatedControl ControlID="sOrderNo" />
                <telerik:AjaxUpdatedControl ControlID="grdAssets" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="stripAssetType"  />
            </UpdatedControls>
        </telerik:AjaxSetting>      
        <telerik:AjaxSetting AjaxControlID="btnAssetSearch">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="grdAssets" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="stripAssetType">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="grdAssets" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="stripAssetType"  />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="sAssetStatus">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="grdAssets" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="sSponsor">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="grdAssets" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="sOrderNo">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="grdAssets" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="sAssetTag">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="grdAssets" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        

        <telerik:AjaxSetting AjaxControlID="grdAssets">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="pnlAssetUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="uAction">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="pnlAssetUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>

        <telerik:AjaxSetting AjaxControlID="btnUpdateAsset">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="grdAssets" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="pnlAssetUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="btnAddAsset">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="grdAssets" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="pnlInsert" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
    </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<h1>IT | Meter Asset Management</h1>
<div style="margin:20px; width:1800px;"> 
    
    
    
    <div style="width:1800px; margin-top:20px;">
        <div style="width:250px; float:left; padding-top:3px;">
            <telerik:RadComboBox ID="sAssetStatus" runat="server" Width="150px" Label="Status:" LabelCssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true" ResolvedRenderMode="Classic">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true" />
                    <telerik:RadComboBoxItem runat="server" Text="Available" Value="Available" />
                    <telerik:RadComboBoxItem runat="server" Text="In Use" Value="In Use" />
                    <telerik:RadComboBoxItem runat="server" Text="Maintenance" Value="Maintenance" />
                    <telerik:RadComboBoxItem runat="server" Text="Retired" Value="Retired" />
                </Items>
            </telerik:RadComboBox>
        </div>
        <div style="width:260px;float:left;">
            <telerik:RadTextBox ID="sAssetTag" runat="server" Label="Asset Tag:" Width="230px" LabelWidth="85px" LabelCssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true">
            </telerik:RadTextBox>
        </div>
        <div style="width:250px;float:left;">
            <telerik:RadTextBox ID="sSponsor" runat="server" Label="Sponsor:" Width="230px" LabelWidth="75px" LabelCssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true">
            </telerik:RadTextBox>
        </div>
        <div style="width:250px;float:left;">
            <telerik:RadTextBox ID="sOrderNo" runat="server" Label="Order:" Width="230px" LabelWidth="75px" LabelCssClass="myLabelCssMedium" Font-Size="Medium" AutoPostBack="true">
            </telerik:RadTextBox>
        </div>

        <div style="width:200px; float:left;Margin:0px 5px 15px 10px; " >
            <telerik:RadButton ID="btnAssetSearch" runat="server" Text="Search" Width="180px" Skin="BlackMetroTouch"></telerik:RadButton>
        </div>
        <div style="width:200px; float:left;Margin:0px 5px 15px 10px; " >
            <telerik:RadButton ID="btnClearFilters" runat="server" Text="Clear Search" Width="180px" Skin="BlackMetroTouch"></telerik:RadButton>
        </div>
    </div>

    <div style="width:1800px; margin-top:20px;">
        <telerik:RadTabStrip ID="stripAssetType" runat="server" Width="100%" 
            ResolvedRenderMode="Classic" Skin="MetroTouch" OnTabClick="stripAssetType_TabClick"  >
            <Tabs>
                <telerik:RadTab runat="server" Text="All Assets" Value="%" Selected="true"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Autogun" Value="Autogun"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="CommandLink" Value="CommandLink"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Computer" Value="Computer"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Handheld" Value="Handheld"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Misc" Value="Misc"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Stand" Value="Stand"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="VXU" Value="VXU"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="TouchReader" Value="TouchReader"></telerik:RadTab>
            </Tabs>
                
        </telerik:RadTabStrip>

        <%--<telerik:RadTabStrip ID="stripAssetType" runat="server" Width="100%" DataSourceID="SqlDS_stripAssetType" DataTextField="Label" 
            DataValueField="Value" ResolvedRenderMode="Classic" Skin="MetroTouch" OnTabClick="stripAssetType_TabClick" AutoPostBack="false"  >
        </telerik:RadTabStrip>--%>
        
        <asp:SqlDataSource ID="SqlDS_stripAssetType" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="SELECT [Label], [Value] FROM [Asset_Menu] WHERE (([Status] = @Status) AND ([Type] = @Type)) ORDER BY [Seq]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                <asp:Parameter DefaultValue="Type" Name="Type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div style="width:1800px; ">
        <div style="width:1050px; float:left;">
            <telerik:RadGrid ID="grdAssets" runat="server" DataSourceID="SqlDS_grdAssets" Width="1000px" Height="600px" AllowPaging="True" PageSize="50" AllowSorting="True"  
                GroupPanelPosition="Top" ResolvedRenderMode="Classic" Skin="Metro">
            
                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                    
                        <Selecting AllowRowSelect="true" />
                        <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                        <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                </ClientSettings>
            
                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdAssets" DataKeyNames="ID" Width="1200px">
                    <Columns>
                        <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" HeaderText="ID" ReadOnly="True" Visible="false" SortExpression="ID" UniqueName="ID">
                        </telerik:GridBoundColumn>
                    
                        <telerik:GridBoundColumn DataField="type" HeaderText="Type" SortExpression="type" UniqueName="type">
                            <HeaderStyle Width="90" VerticalAlign="Bottom" />
                            <ItemStyle Width="90" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                    
                        <telerik:GridBoundColumn DataField="status" HeaderText="Status" SortExpression="status" UniqueName="status">
                            <HeaderStyle Width="90" VerticalAlign="Bottom" />
                            <ItemStyle Width="90" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                    
                        <telerik:GridBoundColumn DataField="OutDate" HeaderText="Out" ReadOnly="True" SortExpression="OutDate" UniqueName="OutDate">
                            <HeaderStyle Width="90" VerticalAlign="Bottom" />
                            <ItemStyle Width="90" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                    
                        <telerik:GridBoundColumn DataField="DueDate" HeaderText="Due" ReadOnly="True" SortExpression="DueDate" UniqueName="DueDate">
                            <HeaderStyle Width="90" VerticalAlign="Bottom" />
                            <ItemStyle Width="90" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                    
                        <telerik:GridBoundColumn DataField="OrderNo" HeaderText="OrderNo" SortExpression="OrderNo" UniqueName="OrderNo">
                            <HeaderStyle Width="80" VerticalAlign="Bottom" />
                            <ItemStyle Width="80" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>

                        <telerik:GridBoundColumn DataField="Tag" HeaderText="Tag" SortExpression="Tag" UniqueName="Tag">
                            <HeaderStyle Width="60" VerticalAlign="Bottom" />
                            <ItemStyle Width="60" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="description" HeaderText="Description" SortExpression="description" UniqueName="description">
                            <HeaderStyle Width="200" VerticalAlign="Bottom" />
                            <ItemStyle Width="200" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                    
                        <telerik:GridBoundColumn DataField="serialno" HeaderText="Serial No." SortExpression="serialno" UniqueName="serialno">
                            <HeaderStyle Width="120" VerticalAlign="Bottom" />
                            <ItemStyle Width="120" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                    
                        <telerik:GridBoundColumn DataField="cursponsor" HeaderText="Sponsor" SortExpression="cursponsor" UniqueName="cursponsor">
                            <HeaderStyle Width="110" VerticalAlign="Bottom" />
                            <ItemStyle Width="110" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                    
                        <telerik:GridBoundColumn DataField="curuser" HeaderText="User" SortExpression="curuser" UniqueName="curuser">
                            <HeaderStyle Width="200" VerticalAlign="Bottom" />
                            <ItemStyle Width="200" VerticalAlign="Top" HorizontalAlign="Left" />
                        </telerik:GridBoundColumn>
                   
                        <%--<telerik:GridBoundColumn DataField="BranchName" HeaderText="Branch" SortExpression="BranchName" UniqueName="BranchName">
                        </telerik:GridBoundColumn>--%>
                   
                    
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDS_grdAssets" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                SelectCommand="uspAssetListingGet" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="Status" Type="String" DefaultValue="%" />
                    <asp:Parameter Name="Tag" Type="String"  DefaultValue="%" />
                    <asp:Parameter Name="Type" Type="String"  DefaultValue="%" />
                    <asp:Parameter Name="Sponsor" Type="String"  DefaultValue="%" />
                    <asp:Parameter Name="OrderNo" Type="String"  DefaultValue="%" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    
    
    
    <div style="width:500px; float:left; margin:5px 0px 5px 0px;">
        <telerik:RadTabStrip ID="tabstripEditInsert" runat="server" ResolvedRenderMode="Classic" Width="440px" Skin="Metro" MultiPageID="RadMultiPage1">
            <Tabs>
                <telerik:RadTab runat="server" Text="Edit Asset" PageViewID="Edit" Selected="true" >
                </telerik:RadTab>
                <telerik:RadTab runat="server" Text="Add Asset" PageViewID="Insert">
                </telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>
        
        
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" ResolvedRenderMode="Classic">
            <telerik:RadPageView runat="server" ID="Edit" Selected="true" >
                <asp:Panel ID="pnlAssetUpdate" runat="server">
          
                    <div style="width:100%; margin:10px;">
                        <h3 style="width:400px;">
                            <asp:Label ID="lblAssetEdit" runat="server"></asp:Label>
                        </h3>
                    </div>
                    <div style="width:100%; margin:10px;">
                        <telerik:RadComboBox ID="uAction" runat="server" Width="200px" Label="Action:" LabelCssClass="myLabelCss" AutoPostBack="true" ResolvedRenderMode="Classic">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="-" Value="Select" />
                                <telerik:RadComboBoxItem runat="server" Text="Loan" Value="Loan" />
                                <telerik:RadComboBoxItem runat="server" Text="Return" Value="Return" />
                                <telerik:RadComboBoxItem runat="server" Text="Info Update" Value="InfoUpdate" />
                                <telerik:RadComboBoxItem runat="server" Text="Out of Service - Maintenance" Value="OutOfService" />
                                <telerik:RadComboBoxItem runat="server" Text="Return to Service" Value="ReturnToService" />
                                <telerik:RadComboBoxItem runat="server" Text="Retire" Value="Retire" />
                            </Items>
                        </telerik:RadComboBox>
                    </div>
                    <%--<div style="width:100%; margin:10px;">
                
                        <telerik:RadComboBox ID="uStatus" runat="server" Width="150px" Label="Status:" LabelCssClass="myLabelCss" AutoPostBack="False" ResolvedRenderMode="Classic">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Available" Value="Available" />
                                <telerik:RadComboBoxItem runat="server" Text="In Use" Value="In Use" />
                                <telerik:RadComboBoxItem runat="server" Text="Retired" Value="Retired" />
                            </Items>
                        </telerik:RadComboBox>
                    </div>--%>

                    <asp:HiddenField ID="uStatus" runat="server" />

                    <div style="width:100%; margin:10px;">
                        <telerik:RadTextBox ID="uCurSponsor" runat="server" Width="200px" Label="Sponsor:" LabelWidth="80px" MaxLength="20" LabelCssClass="myLabelCss" >
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:100%; margin:10px;">
                        <telerik:RadTextBox ID="uCurUser" runat="server" Width="200px" Label="User:" LabelWidth="80px" MaxLength="20" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:100%; margin:10px;">
                        <telerik:RadTextBox ID="uOrderNo" runat="server" Width="200px" Label="Order No.:" LabelWidth="80px" MaxLength="15" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:100%; margin:10px;">
                        <asp:Label ID="lbluoutdt" runat="server" Text="Out:" CssClass="myLabelCss"></asp:Label>
                        <telerik:RadDatePicker ID="uOutDdt" runat="server" DisplayDateFormat="MM/dd/yyyy" Width="100px" MinDate="01/01/1950" MaxDate="01/01/2030">
                        </telerik:RadDatePicker>
                    </div>
                    <div style="width:100%; margin:10px;">
                        <asp:Label ID="lbluduedt" runat="server" Text="Due:" CssClass="myLabelCss"></asp:Label>
                        <telerik:RadDatePicker ID="uDueDt" runat="server" DisplayDateFormat="MM/dd/yyyy" Width="100px"  MinDate="01/01/1950" MaxDate="01/01/2030">
                        </telerik:RadDatePicker>
                    </div>
            
            
            
            
            
                    <div style="width:100%; margin:20px 10px 10px 10px;">
                        <telerik:RadTextBox ID="uTag" runat="server" Width="200px" Label="Asset Tag:" LabelWidth="80px" MaxLength="10" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>

                    <div style="width:100%; margin:10px;">
                        <telerik:RadComboBox ID="uBranch" runat="server" Width="200px" Label="Branch:" LabelCssClass="myLabelCss"
                            DataSourceID="SqlDS_branch" DataTextField="comboname" DataValueField="branchno" ResolvedRenderMode="Classic">
                        </telerik:RadComboBox>
                    </div>
                    <div style="width:100%; margin:10px;">
                        <telerik:RadComboBox ID="uType" runat="server" Width="150px" Label="Type:" LabelCssClass="myLabelCss" AutoPostBack="False" 
                            DataSourceID="SqlDS_stripAssetType" DataTextField="Label" DataValueField="Value" ResolvedRenderMode="Classic">         
                   
                        </telerik:RadComboBox>
                    </div>
            
                    <div style="width:100%; margin:10px;">
                        <telerik:RadTextBox ID="uSerialNo" runat="server" Width="200px" Label="Serial No.:" LabelWidth="80px" MaxLength="50" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
            
                    <div style="width:100%; margin:10px;">
                        <telerik:RadTextBox ID="uDescription" runat="server" Width="350px" Label="Description:" LabelWidth="80px" MaxLength="50" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
            
                    <div style="width:100%; margin:10px;">
                        <telerik:RadTextBox ID="uNotes" runat="server" Width="350px" Height="100px" Label="Notes:"
                            TextMode="MultiLine" Wrap="true" LabelWidth="80px" MaxLength="50" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:100%; margin:10px;">
                        <asp:Label ID="lblAssetCreated" runat="server" CssClass="myLabelCss" ></asp:Label>
                    </div>

                    <div style="width:100%; margin:10px;">
                        <telerik:RadButton ID="btnUpdateAsset" runat="server" Text="Update Asset" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                
                    </div>
                </asp:Panel>
            </telerik:RadPageView>
            
            <telerik:RadPageView runat="server" ID="Insert" >
                <asp:Panel ID="pnlInsert" runat="server">
                    <asp:HiddenField ID="hdnCreatedBy" runat="server" />
                    <div style="width:100%; margin:10px;">
                        <h3 style="width:300px;">
                            <asp:Label ID="Label1" runat="server" Text="New Asset"></asp:Label>
                        </h3>
                    </div>
                    
                   
                          
            
            
            
            
                    <div style="width:100%; margin:20px 10px 10px 10px;">
                        <telerik:RadTextBox ID="iTag" runat="server" Width="200px" Label="Asset Tag:" LabelWidth="80px" MaxLength="10" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>

                    <div style="width:100%; margin:20px 10px 10px 10px;">
                        <telerik:RadComboBox ID="iBranch" runat="server" Width="200px" Label="Branch:" LabelCssClass="myLabelCss"
                            DataSourceID="SqlDS_branch" DataTextField="comboname" DataValueField="branchno" ResolvedRenderMode="Classic">
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_branch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspGetBranchesActiveOnlyLessCorporate" SelectCommandType="StoredProcedure">
                        </asp:SqlDataSource>
                    </div>

                    <div style="width:100%; margin:10px;">
                        <telerik:RadComboBox ID="iType" runat="server" Width="150px" Label="Type:" LabelCssClass="myLabelCss" AutoPostBack="False" 
                            DataSourceID="SqlDS_stripAssetType" DataTextField="Label" DataValueField="Value" ResolvedRenderMode="Classic">         
                   
                        </telerik:RadComboBox>
                    </div>
            
                    <div style="width:100%; margin:10px;">
                        <telerik:RadTextBox ID="iSerialno" runat="server" Width="200px" Label="Serial No.:" LabelWidth="80px" MaxLength="50" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
            
                    <div style="width:100%; margin:10px;">
                        <telerik:RadTextBox ID="iDescription" runat="server" Width="350px" Label="Description:" LabelWidth="80px" MaxLength="50" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
            
                    <div style="width:100%; margin:10px;">
                        <telerik:RadTextBox ID="iNotes" runat="server" Width="350px" Height="100px" Label="Notes:"
                            TextMode="MultiLine" Wrap="true" LabelWidth="80px" MaxLength="50" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    
                    <div style="width:100%; margin:10px;">
                        <telerik:RadButton ID="btnAddAsset" runat="server" Text="Add Asset" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                
                    </div>
                </asp:Panel>
            </telerik:RadPageView>
        
        
        
        </telerik:RadMultiPage>
        
        
         
    </div>
    </div>

</div>

</asp:Content>

