<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_PropertyOfSearch.ascx.vb" Inherits="Controls_form_PropertyOfSearch" %>



<asp:SqlDataSource ID="SqlDS_Whse" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="uspGetBranchesActiveOnlyLessCorporate" SelectCommandType="StoredProcedure">
</asp:SqlDataSource>

 <asp:SqlDataSource ID="SqlDS_PropertyOfList" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="uspPropertyOfListingFiltered2" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ProdID" DefaultValue="%" Name="ProdID" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Description" DefaultValue="%" Name="Description" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="whse" DefaultValue="%" Name="WhseID" PropertyName="SelectedValue" Type="String" />
            
        </SelectParameters>
</asp:SqlDataSource>


<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
            <telerik:AjaxSetting AjaxControlID="Whse">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="Whse" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="Description">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="Description" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="ProdID">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ProdID" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>

<div style="width:1800px; margin: 10px;">
            
            <div style="width:1300px;float:left; height:30px;margin:10px;">
                <div style="float:left; width:220px;">
                    <telerik:RadComboBox ID="whse" runat="server"  Label="Whse: " Width="140px" LabelCssClass="myLabelCssMedium" CssClass="myLabelCssMedium"
                        DataSourceID="SqlDS_Whse" DataValueField="branchno" DataTextField="Comboname" AutoPostBack="true" AppendDataBoundItems="true" >
                            <Items>   
                                <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true" />
                            </Items>
                    </telerik:RadComboBox> 
                
                </div>
                <div style="width:230px; float:left;">
                    <telerik:RadTextBox ID="ProdID" runat="server" Label="ProdID:" Width="210px" LabelWidth="60px" LabelCssClass="myLabelCssMedium" CssClass="myLabelCssMedium" AutoPostBack="true" MaxLength="20"></telerik:RadTextBox>
                </div>
                <div style="width:320px; float:left;">
                    <telerik:RadTextBox ID="Description" runat="server" Label="Description:" Width="250px" LabelWidth="95px" LabelCssClass="myLabelCssMedium" CssClass="myLabelCssMedium" AutoPostBack="true" MaxLength="20"></telerik:RadTextBox>
                </div>
                
                <%--<div style="width:80px; float:left;">
                    <telerik:RadButton ID="btnSearch" runat="server" Text="Search" Width="70px"   Skin="MetroTouch"></telerik:RadButton>
                </div>--%>
            </div>
            <div style="width:1300px; float:left;">
            
            
            
                <telerik:RadGrid ID="RadGrid1" runat="server" width="1200px" Height="650px" AllowPaging="True" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_PropertyOfList" GridLines="None">
                    <ClientSettings>
                        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                    </ClientSettings>

                    <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_PropertyOfList" PageSize="30"  >

                            <Columns>
                                <telerik:GridBoundColumn DataField="WhseID" HeaderText="Whse" SortExpression="WhseID" UniqueName="WhseID">
                                    <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="40px" VerticalAlign="Top" HorizontalAlign="Center" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID">
                                    <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="150px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="QtyAvailable" DataType="System.Decimal" DataFormatString="{0:n0}" HeaderText="Qty Avail" ReadOnly="True" SortExpression="QtyAvailable" UniqueName="QtyAvailable">
                                    <HeaderStyle Width="60px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="60px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Description" HeaderText="Description" SortExpression="Description" UniqueName="Description">
                                    <HeaderStyle Width="500px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="500px" VerticalAlign="Top" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                
                               
                                <telerik:GridBoundColumn DataField="EnterDate" DataType="System.DateTime" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Entered" SortExpression="EnterDate" UniqueName="EnterDate">
                                    <HeaderStyle Width="75px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                    <ItemStyle Width="75px" VerticalAlign="Top" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                            </Columns>

                            <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
                        </MasterTableView>

                </telerik:RadGrid>
               
            
            
            
            </div>
            
          
       
       

</div>
       