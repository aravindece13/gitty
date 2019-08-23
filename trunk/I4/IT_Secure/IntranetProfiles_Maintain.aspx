<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/IT_Secure.master" AutoEventWireup="false" CodeFile="IntranetProfiles_Maintain.aspx.vb" Inherits="IT_Secure_IntranetProfiles_Maintain" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
    <AjaxSettings>   
        <telerik:AjaxSetting AjaxControlID="RadGridProfiles">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="RadGridProfiles"  />
                <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="btnUpdateProfile">
            <UpdatedControls>
                <telerik:AjaxUpdatedControl ControlID="RadGridProfiles" LoadingPanelID="RadAjaxLoadingPanel1"  />
                <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                <telerik:AjaxUpdatedControl ControlID="grdInactive" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="Button1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="UserName2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
        </telerik:AjaxSetting>

        <telerik:AjaxSetting AjaxControlID="grdInactive">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lblInactiveProfileName" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="btnUpdateStatusActive" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
        </telerik:AjaxSetting>

        <telerik:AjaxSetting AjaxControlID="btnUpdateStatusActive">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdInactive" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="btnUpdateStatusActive" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadGridProfiles"  />
                    <telerik:AjaxUpdatedControl ControlID="lblInactiveProfileName"  />

                </UpdatedControls>
        </telerik:AjaxSetting>

    </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700" Transparency="0">
</telerik:RadAjaxLoadingPanel> 


 <div id="divBody" style="width:1800px;Margin: 10px;">    
    
    <h1>IT | Intranet Profiles</h1>

  <div style="width:100%;">
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="MetroTouch" Width="1800px">
        <Tabs>
            
            <telerik:RadTab runat="server" Text="Maintain Profiles" PageViewID="Maintain" Selected="true">
                
                    <Tabs>
                        <telerik:RadTab runat="server" Text="Active" PageViewID="Maintain" Selected="true"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Inactive" PageViewID="Inactive" ></telerik:RadTab>
                    </Tabs>
                
            </telerik:RadTab>
            <telerik:RadTab runat="server" Text="Add Profile" PageViewID="Add"></telerik:RadTab>
           
        </Tabs>
    </telerik:RadTabStrip>
  </div>
  <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1900px">
        <telerik:RadPageView ID="Maintain" runat="server" Selected="true" >
        
                <div style="width:1900px; margin: 10px;">
    
                    <div id="IntranetProfileListContainer" style="float:left;Margin:0px 20px 0px 0px; height:700px; width:600px;">
  
    
                        <telerik:RadGrid ID="RadGridProfiles" runat="server" DataSourceID="SqlDS_Profiles" GridLines="None" Height="650px" Width="600px" 
                                AllowPaging="False" CellSpacing="0" OnSelectedIndexChanged="RadGridProfiles_SelectedIndexChanged"  >

                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                                <Selecting AllowRowSelect="true" />
                            </ClientSettings>
            
                            <MasterTableView DataSourceID="SqlDS_Profiles" DataKeyNames="UserName" AutoGenerateColumns="False" Width="600px" >
                                <Columns>
                                    <telerik:GridBoundColumn DataField="Index" HeaderText="Index" DataType="System.Int32" SortExpression="Index" UniqueName="Index" ReadOnly="True" Visible="false">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="FullName" HeaderText="FullName" SortExpression="FullName" UniqueName="FullName">
                                        <HeaderStyle Width="150px" />
                                        <ItemStyle Width="150px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="PayComID" HeaderText="PayCom" DataType="System.Int32" SortExpression="Index" UniqueName="Index" ReadOnly="True" Visible="True">
                                        <HeaderStyle Width="60px" />
                                        <ItemStyle Width="60px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="UserName" HeaderText="UserName" DataType="System.String" SortExpression="UserName" UniqueName="UserName">
                                        <HeaderStyle Width="100px" />
                                        <ItemStyle Width="100px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="UserName2" HeaderText="UserName2" SortExpression="UserName2" UniqueName="UserName2">
                                        <HeaderStyle Width="100px" />
                                        <ItemStyle Width="100px" />
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status">
                                        <HeaderStyle Width="75px" />
                                        <ItemStyle Width="75px" />
                                    </telerik:GridBoundColumn>
                                </Columns>
                            </MasterTableView>

                        </telerik:RadGrid>    
                        <asp:SqlDataSource ID="SqlDS_Profiles" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetAppServices %>" 
                            SelectCommand="uspIntranetPersonalizationGet" SelectCommandType="StoredProcedure" >
                           <SelectParameters>
                               <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                               <asp:Parameter DefaultValue="%" Name="UserName" Type="String" />
                           </SelectParameters>
                        </asp:SqlDataSource>
            
                    </div>
                    <div id="updatepanel" style="float:left; width:1200px; height:650px;">
 
                     <asp:Panel ID="Panel1" runat="server" Height="650px" Width="1200px">
          
             
                        <%--<telerik:RadAjaxPanel ID="Panel1" runat="server" LoadingPanelID="LoadingPanel1" Height="700px" Width="1100px">--%>
                          <div style="width:100%; background-color: #4c68a2; color:White; font-size:large; font-weight:bold; padding:10px;">
                                <div style="width: 700px;">
                                    <asp:Label ID="lblProfile" runat="server"></asp:Label>
                                </div>
                                
                          </div>
            
         
                         <div id="divEditRow1" style="width:1200px; float:left; margin:5px 0px 10px 10px;" >
                                <div style="width:200px;float:left;">
                                    <telerik:RadComboBox ID="Status" Runat="server" Label="Status:" Width="120px" LabelCssClass="myLabelCss">
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                            <telerik:RadComboBoxItem runat="server" Text="Inactive" Value="Inactive" />
                                        </Items>
                                    </telerik:RadComboBox>
            
                                    <asp:HiddenField ID="hdnUserName" runat="server"  />
                                    <asp:HiddenField ID="hdnUserName2" runat="server"  />
                                    <asp:HiddenField ID="hdnIndex" runat="server" />
                                </div>
                                <div style="width:250px;float:left;">
                                    <telerik:RadTextBox ID="FullName" runat="server" Label="Full Name:" LabelWidth="75px" Width="230px" MaxLength="50" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="width:250px;float:left;">    
                                    <telerik:RadComboBox ID="Company" runat="server" Label="Company: " Width="150px" LabelCssClass="myLabelCss" >
                                        <Items>
                                               <telerik:RadComboBoxItem runat="server" Text="Dana Kepner" Value="Dana Kepner" />
                                               <telerik:RadComboBoxItem runat="server" Text="Western Industrial" Value="Western Industrial" />
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>

                         </div>                   
          
                         <div style="width:1200px; height:50px; Margin: 10px 0px 0px 10px;" >
           
            
           
                           <div style="Margin:0px 0px 5px 0px; width:1200px; float:left;">
                                <div style="width:300px;float:left;"> 
                                    <telerik:RadTextBox ID="eMail" runat="server" Label="eMail:" LabelWidth="50px" Width="275px" MaxLength="50" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="width:200px;float:left;">         
                                    <telerik:RadTextBox ID="Mobile" runat="server" Label="Mobile:" LabelWidth="50px"  Width="150px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="width:250px;float:left;"> 
                                    <telerik:RadTextBox ID="Fax" runat="server" Label="Fax:" LabelWidth="50px" Width="150px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                
                           </div>
                           <div style="Margin:0px 0px 5px 0px; width:1200px; float:left;">
                                <div style="width:200px;float:left;"> 
                                   <telerik:RadTextBox ID="uPayComID" runat="server" Label="PayCom ID:" LabelWidth="80px" Width="150px" MaxLength="15" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                
                                <div style="width:250px;float:left;"> 
                                    <telerik:RadTextBox ID="uUserName" runat="server" Label="User Name:" LabelWidth="100px" Width="175px" MaxLength="50" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="width:250px;float:left;">         
                                    <telerik:RadTextBox ID="uUserName2" runat="server" Label="User Name2:" LabelWidth="100px"  Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                </div>
                                
                
                           </div>
            
                        </div>
                         <div style="width:1200px; Margin: 0px 0px 0px 10px; float:left;" >
                            <h3 style="Width:700px;">Functionality</h3>
                                <div style="Margin:10px 0px 0px 10px; Width:1200px; float:left;"> 
                                    <asp:CheckBox ID="Accounting" Text="Accounting" runat="server"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="AMR" Text="AMR" runat="server"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="BranchAdmin" Text="BranchAdmin" runat="server"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="BranchMngr" Text="BranchMngr" runat="server" CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="AdminCorp" runat="server" Text="Corp Admin"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="Credit" Text="Credit" runat="server"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="CreditMngr" Text="Credit Mngr" runat="server"  CssClass="myLabelCssXSmall" />
                                </div>
                                <div style="Margin:10px 0px 0px 10px; Width:1200px; float:left;">
                         
                                    <asp:CheckBox ID="Executive" Text="Executive" runat="server" CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="HR" Text="HR" runat="server"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="InsideSales" Text="Inside Sales" runat="server"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="IT" Text="IT" runat="server"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="Operations" Text="Operations" runat="server"   CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="Purchasing" Text="Purchasing" runat="server"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="Sales" Text="Sales" runat="server"  CssClass="myLabelCssXSmall" />
                                    <asp:CheckBox ID="Warehouse" Text="Warehouse" runat="server"  CssClass="myLabelCssXSmall" /> 
                                    <%--<asp:CheckBox ID="AcctTracking" Text="AcctTracking" runat="server"  CssClass="myLabelCssXSmall" />--%>
                      
                                </div>    

                                <div style="Margin:20px 0px 0px 10px; Width:1200px; float:left;">
                                    <asp:CheckBox ID="AMRAssetMngr" Text="AMRAssetMngr" runat="server"  CssClass="myLabelCss" />
                                    <asp:CheckBox ID="MeterShop" Text="MeterShop" runat="server"  CssClass="myLabelCss" />
                                    <asp:CheckBox ID="Quote" Text="Quote" runat="server"  CssClass="myLabelCss" />
                                    <asp:CheckBox ID="Projects" Text="Projects" runat="server"  CssClass="myLabelCss" />
                                </div>
           
                         </div>
  
            
        
                        <div style="width:1200px; Margin: 15px 0px 0px 10px; float:left;" >
                            <h3 style="Width:700px;">Warehouses</h3>
                            <div style="Margin:3px 0px 0px 10px;"> 
                              <telerik:RadComboBox ID="Whse1" runat="server" Label="Whse 1:"  Width="100px" LabelCssClass="myLabelCss"  >
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                        <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                        <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                        <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                        <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                        <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                        <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                        <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                        <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                        <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                        <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                        <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                                        <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                        <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                        <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                    </Items>
                              </telerik:RadComboBox>
                              <telerik:RadComboBox ID="Whse2" runat="server" Label="Whse 2:"  Width="100px" LabelCssClass="myLabelCss"  >
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                        <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                        <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                        <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                        <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                        <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                        <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                        <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                        <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                        <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                        <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                        <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                                        <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                        <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                        <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                    </Items>
                              </telerik:RadComboBox>
                              <telerik:RadComboBox ID="Whse3" runat="server" Label="Whse 3:"  Width="100px" LabelCssClass="myLabelCss"  >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                            <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                            <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                            <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                                            <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                        </Items>
                              </telerik:RadComboBox>
                              <telerik:RadComboBox ID="Whse4" runat="server" Label="Whse 4:"  Width="100px" LabelCssClass="myLabelCss"  >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                            <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                            <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                            <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                                            <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                        </Items>
                              </telerik:RadComboBox>
                              <telerik:RadComboBox ID="Whse5" runat="server" Label="Whse 5:"  Width="100px" LabelCssClass="myLabelCss"  >
                                   <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                            <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                            <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                            <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                                            <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                        </Items>
                              </telerik:RadComboBox>

                            </div>
                            <div style="Margin:3px 0px 0px 10px;"> 
                              <telerik:RadComboBox ID="Whse6" runat="server" Label="Whse 6:"  Width="100px" LabelCssClass="myLabelCss"  >
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                        <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                        <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                        <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                        <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                        <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                        <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                        <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                        <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                        <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                        <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                        <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                                        <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                        <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                        <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                    </Items>
                              </telerik:RadComboBox>
                              <telerik:RadComboBox ID="Whse7" runat="server" Label="Whse 7:"  Width="100px" LabelCssClass="myLabelCss"  >
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                        <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                        <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                        <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                        <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                        <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                        <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                        <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                        <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                        <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                        <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                        <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                                        <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                        <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                        <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                    </Items>
                              </telerik:RadComboBox>
                              <telerik:RadComboBox ID="Whse8" runat="server" Label="Whse 8:"  Width="100px" LabelCssClass="myLabelCss"  >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                            <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                            <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                            <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />                                    
                                            <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                        </Items>
                              </telerik:RadComboBox>
                              <telerik:RadComboBox ID="Whse9" runat="server" Label="Whse 9:"  Width="100px" LabelCssClass="myLabelCss"  >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                            <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                            <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                            <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />                                    
                                            <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                        </Items>
                              </telerik:RadComboBox>
                              <telerik:RadComboBox ID="Whse10" runat="server" Label="Whse 10:"  Width="100px" LabelCssClass="myLabelCss"  >
                                   <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="04-Billings" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                            <telerik:RadComboBoxItem runat="server" Text="12-Lubbock" Value="12" />
                                            <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                            <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />                                    
                                            <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                        </Items>
                              </telerik:RadComboBox>

                            </div>
                        </div>
                        <div style="width:1200px; Margin: 15px 0px 0px 10px; float:left;" >
                            <h3 style="Width:700px;">Sales Rep ID's</h3>
            
                            <div style="Margin:3px 0px 0px 10px;">  
                                <telerik:RadTextBox ID="SalesName" runat="server" Label="Sales Name: " Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                <telerik:RadTextBox ID="salesID1" runat="server" Label="ID 1:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                <telerik:RadTextBox ID="salesID2" runat="server" Label="ID 2:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                <telerik:RadTextBox ID="salesID3" runat="server" Label="ID 3:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                <telerik:RadTextBox ID="salesID4" runat="server" Label="ID 4:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                <telerik:RadTextBox ID="salesID5" runat="server" Label="ID 5:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                            </div>
            
                        </div>
                        <div style="width:1200px; Margin: 15px 0px 0px 10px; float:left;" >
                            <h3 style="Width:700px;">Regions</h3>
        
                               <div style="Margin:3px 0px 0px 10px;">  
                                <telerik:RadComboBox ID="Region1" Runat="server" Label="Region1:"  Width="100px" LabelCssClass="myLabelCss"  >
                                        <Items>
                                            <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                        </Items>
                               </telerik:RadComboBox>
                               <telerik:RadComboBox ID="Region2" Runat="server" Label="Region2:"  Width="100px" LabelCssClass="myLabelCss"  >
                                        <Items>
                                            <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                        </Items>
                              </telerik:RadComboBox>
                              <telerik:RadComboBox ID="Region3" Runat="server" Label="Region3:"  Width="100px" LabelCssClass="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                        </Items>
                               </telerik:RadComboBox>
                                <telerik:RadComboBox ID="Region4" Runat="server" Label="Region4:"  Width="100px" LabelCssClass="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                        </Items>
                                </telerik:RadComboBox>
                               </div>
                               <div style="Margin:3px 0px 0px 10px;">  
              
                                <telerik:RadComboBox ID="Region5" Runat="server" Label="Region5:"  Width="100px" LabelCssClass="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                        </Items>
                                 </telerik:RadComboBox>
                                 <telerik:RadComboBox ID="Region6" Runat="server" Label="Region6:"  Width="100px" LabelCssClass="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                        </Items>
                                 </telerik:RadComboBox>
                                 <telerik:RadComboBox ID="Region7" Runat="server" Label="Region7:"  Width="100px" LabelCssClass="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                        </Items>
                                 </telerik:RadComboBox>
                                 <telerik:RadComboBox ID="Region8" Runat="server" Label="Region8:"  Width="100px" LabelCssClass="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                        </Items>
                                 </telerik:RadComboBox>
                               </div>
                        </div>
                       <div style="width:1200px; Margin: 15px 0px 0px 10px; float:left;" > 
                           <div id="divbtns" style="width:400px; float:left;margin:5px 5px 5px 10px; " >
                  
                                 <telerik:RadButton ID="btnUpdateProfile" runat="server" Text="Update Profile" Skin="BlackMetroTouch"></telerik:RadButton>
                           </div>         
                           <div style="width:600px; float:left;margin:5px 5px 5px 10px; " > 
                                <asp:Label ID="lblInfo" runat="server"></asp:Label>    
                           </div>       
                       </div>
                      <%--</telerik:RadAjaxPanel>--%>
                    </asp:Panel>
    
                    </div>
    
                </div>

                       
        </telerik:RadPageView>
        <telerik:RadPageView ID="Inactive" runat="server" >
        
                <div style="width:1800px; margin: 10px;">
    
                    <div id="Div3" style="float:left;Margin:0px 20px 0px 0px; height:700px; width:500px;">
                        <telerik:RadGrid ID="grdInactive" runat="server" DataSourceID="SqlDS_grdInactive" GridLines="None" Height="650px" Width="500px" 
                                AllowPaging="False" CellSpacing="0" OnSelectedIndexChanged="grdInactive_SelectedIndexChanged"  >

                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                                <Selecting AllowRowSelect="true" />
                            </ClientSettings>
            
                            <MasterTableView DataSourceID="SqlDS_grdInactive" DataKeyNames="UserName" AutoGenerateColumns="False" Width="500px" >
                                <Columns>
                                    <telerik:GridBoundColumn DataField="Index" HeaderText="Index" DataType="System.Int32" SortExpression="Index" UniqueName="Index" ReadOnly="True" Visible="false">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="FullName" HeaderText="FullName" SortExpression="FullName" UniqueName="FullName">
                                        <HeaderStyle Width="150px" />
                                        <ItemStyle Width="150px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="UserName" HeaderText="UserName" DataType="System.String" SortExpression="UserName" UniqueName="UserName">
                                        <HeaderStyle Width="100px" />
                                        <ItemStyle Width="100px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="UserName2" HeaderText="UserName2" SortExpression="UserName2" UniqueName="UserName2">
                                        <HeaderStyle Width="100px" />
                                        <ItemStyle Width="100px" />
                                    </telerik:GridBoundColumn>

                                    <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status">
                                        <HeaderStyle Width="75px" />
                                        <ItemStyle Width="75px" />
                                    </telerik:GridBoundColumn>
                                </Columns>
                            </MasterTableView>

                        </telerik:RadGrid>    
                        <asp:SqlDataSource ID="SqlDS_grdInactive" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetAppServices %>" 
                            SelectCommand="uspIntranetPersonalizationGet" SelectCommandType="StoredProcedure" >
                           <SelectParameters>
                               <asp:Parameter DefaultValue="Inactive" Name="Status" Type="String" />
                               <asp:Parameter DefaultValue="%" Name="UserName" Type="String" />
                           </SelectParameters>
                        </asp:SqlDataSource>
            
                    
                    </div>
                    <asp:HiddenField ID="hdnInactiveUserName" runat="server" />
                
                    <div style="width:550px; margin:20px 0px 0px 40px; float:left;">
                        <div style="width:500px; margin:40px 0px 0px 20px; font-size:medium; color:#4c68a2;">
                            <asp:Label ID="lblInactiveProfileName" runat="server"></asp:Label>
                        </div>
                        <div style="width:500px; margin-top:20px;">
                            <telerik:RadButton ID="btnUpdateStatusActive" runat="server" Text="Activate Profile" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                        </div>
                    </div>
                </div>
        </telerik:RadPageView>
        <telerik:RadPageView ID="Add" runat="server" >
             <div id="div4" style="width:1800px; clear:both;float:left; margin:5px 0px 10px 10px;" >
                    <telerik:RadComboBox ID="UserName2" runat="server" DataSourceID="SqlDS_UserListNoProfile" 
                        DataTextField="UserName" DataValueField="UserName" Label="Create Profile For:" LabelCssClass="myLabelCss"  >
                    </telerik:RadComboBox>
                    <asp:SqlDataSource ID="SqlDS_UserListNoProfile" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetAppServices %>" 
                         SelectCommand="uspIntranetPersonalizationNoProfileGet" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
             
             </div>
            
            <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" Height="400px" Width="1800px" LoadingPanelID="LoadingPanel1">
         
                         
                 <div id="div1" style="width:1800px; clear:both;float:left; margin:5px 0px 10px 10px;" >
            

                    <asp:HiddenField ID="UserName" runat="server" />
                   
                 </div>                   
          
                 <div style="width:1800px; height:50px; Margin: 10px 0px 0px 10px;" >
           
                   <div style="Margin:0px 0px 5px 0px; width:100%; float:left;">
                        <div style="width:250px;float:left;">
                            <telerik:RadTextBox ID="aFullName" runat="server" Label="Full Name:" LabelWidth="75px" Width="220px" MaxLength="50" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="width:200px;float:left;"> 
                            <telerik:RadTextBox ID="aPayComID" runat="server" Label="PayCom ID:" LabelWidth="80px" Width="150px" MaxLength="6" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        
                        <div style="width:300px;float:left;"> 
                            <telerik:RadTextBox ID="aemail" runat="server" Label="eMail:" LabelWidth="50px" Width="275px" MaxLength="50" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="width:170px;float:left;">         
                            <telerik:RadTextBox ID="aMobile" runat="server" Label="Mobile:" LabelWidth="50px"  Width="150px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="width:170px;float:left;"> 
                            <telerik:RadTextBox ID="aFax" runat="server" Label="Fax:" LabelWidth="50px" Width="150px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        
                        
                        <div style="width:200px;float:left;">    
                            <telerik:RadComboBox ID="aCompany" runat="server" Label="Company: " Width="150px" LabelCssClass="myLabelCss" >
                                <Items>
                                       <telerik:RadComboBoxItem runat="server" Text="Dana Kepner" Value="Dana Kepner" />
                                       <telerik:RadComboBoxItem runat="server" Text="Western Industrial" Value="Western Industrial" />
                                </Items>
                            </telerik:RadComboBox>
                        </div>

                   </div>
           
                              
                </div>
                 <div style="width:100%; Margin: 15px 0px 0px 10px; float:left;" >
                    <h3 style="Width:700px;">Functionality</h3>
                        <div style="Margin:10px 0px 0px 10px; Width:1700px; float:left;"> 
                            <asp:CheckBox ID="aAccounting" Text="Accounting" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aAMR" Text="AMR" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aBranchAdmin" Text="BranchAdmin" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aBranchMngr" Text="BranchMngr" runat="server" CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aAdminCorp" runat="server" Text="Corp Admin"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aCredit" Text="Credit" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aCreditMngr" Text="Credit Mngr" runat="server"  CssClass="myLabelCssXSmall" />
                        </div>
                        <div style="Margin:10px 0px 0px 10px; Width:1700px; float:left;">
                         
                            <asp:CheckBox ID="aExec" Text="Executive" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aHR" Text="HR" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aInsideSales" Text="Inside Sales" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aIT" Text="IT" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aOperations" Text="Operations" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aPurchasing" Text="Purchasing" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aSales" Text="Sales" runat="server"  CssClass="myLabelCssXSmall" /> 
                            <asp:CheckBox ID="aWarehouse" Text="Warehouse" runat="server" CssClass="myLabelCssXSmall" />

                            <%--<asp:CheckBox ID="aAcctTracking" Text="AcctTracking" runat="server"  CssClass="myLabelCssXSmall" />--%>
                      
                        </div>    
                        <%--<div style="Margin:10px 0px 0px 0px; Width:1000px; float:left;">
                   
                    
                        </div>--%>
                        <div style="Margin:20px 0px 0px 10px; Width:1700px; float:left;">
                            <asp:CheckBox ID="aAMRAssetMngr" Text="AMRAssetMngr" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aMeterShop" Text="MeterShop" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aQuote" Text="Quote" runat="server"  CssClass="myLabelCssXSmall" />
                            <asp:CheckBox ID="aProjects" Text="Projects" runat="server"  CssClass="myLabelCssXSmall" />
                        </div>
           
                 </div>
  
            
        
                <div style="width:100%; Margin: 15px 0px 0px 10px; float:left;" >
                    <h3 style="Width:700px;">Warehouses</h3>
                    <div style="Margin:3px 0px 0px 10px;"> 
                      <telerik:RadComboBox ID="aWhse1" runat="server" Label="Whse 1:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                
                                <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                               
                                <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />                       
                                <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                            </Items>
                      </telerik:RadComboBox>
                      <telerik:RadComboBox ID="aWhse2" runat="server" Label="Whse 2:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                
                                <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                
                                <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                        
                                <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                            </Items>
                      </telerik:RadComboBox>
                      <telerik:RadComboBox ID="aWhse3" runat="server" Label="Whse 3:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                    <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                    <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                    <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                    <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                    <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                    <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                    <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                    <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                
                                    <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                    <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                    <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                </Items>
                      </telerik:RadComboBox>
                      <telerik:RadComboBox ID="aWhse4" runat="server" Label="Whse 4:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                        <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                        <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                        
                                        <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                        <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                        <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                        <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                        
                                        <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                        <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                        <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                           
                                        <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                        <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                        <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                    </Items>
                      </telerik:RadComboBox>
                      <telerik:RadComboBox ID="aWhse5" runat="server" Label="Whse 5:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                           <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                    <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                    <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                    <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                    <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                    <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                    <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                    <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                    <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />

                                    <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                    <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                    <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                           </Items>
                      </telerik:RadComboBox>
                    
                    </div>
                    <div style="Margin:3px 0px 0px 10px;"> 
                      <telerik:RadComboBox ID="aWhse6" runat="server" Label="Whse 6:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                
                                <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                
                                <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                       
                                <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                            </Items>
                      </telerik:RadComboBox>
                      <telerik:RadComboBox ID="aWhse7" runat="server" Label="Whse 7:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                
                                <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                
                                <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                        
                                <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                            </Items>
                      </telerik:RadComboBox>
                      <telerik:RadComboBox ID="aWhse8" runat="server" Label="Whse 8:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                    <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                    <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                    <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                    <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                    <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                    <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                    <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                    <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                
                                    <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                    <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                    <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                </Items>
                      </telerik:RadComboBox>
                      <telerik:RadComboBox ID="aWhse9" runat="server" Label="Whse 9:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                        <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                        <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                       
                                        <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                        <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                        <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                        <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                        
                                        <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                        <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                        <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />
                           
                                        <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                        <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                        <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                    </Items>
                      </telerik:RadComboBox>
                      <telerik:RadComboBox ID="aWhse10" runat="server" Label="Whse 10:"  Width="100px" DropDownWidth="130px" LabelCssClass="myLabelCss"  >
                           <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="-" Value="0" />
                                    <telerik:RadComboBoxItem runat="server" Text="01-Denver" Value="1" />
                                    <telerik:RadComboBoxItem runat="server" Text="02-Casper" Value="2" />
                                    <telerik:RadComboBoxItem runat="server" Text="03-CSprings" Value="3" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="06-Ft. Collins" Value="6" />
                                    <telerik:RadComboBoxItem runat="server" Text="07-Phoenix" Value="7" />
                                    <telerik:RadComboBoxItem runat="server" Text="08-Tucson" Value="8" />
                                    <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                    <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                    <telerik:RadComboBoxItem runat="server" Text="16-Flagstaff" Value="16" />

                                    <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                    <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                    <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                           </Items>
                      </telerik:RadComboBox>
                    </div>
                </div>
                <div style="width:100%; Margin: 15px 0px 0px 10px; float:left;" >
                    <h3 style="Width:700px;">Sales Rep ID's</h3>
            
                    <div style="Margin:3px 0px 0px 10px;">  
                        <telerik:RadTextBox ID="aSalesName" runat="server" Label="Sales Name: " Width="200px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        <telerik:RadTextBox ID="aSalesID1" runat="server" Label="ID 1:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        <telerik:RadTextBox ID="aSalesID2" runat="server" Label="ID 2:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        <telerik:RadTextBox ID="aSalesID3" runat="server" Label="ID 3:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        <telerik:RadTextBox ID="aSalesID4" runat="server" Label="ID 4:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        <telerik:RadTextBox ID="aSalesID5" runat="server" Label="ID 5:" Width="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                    </div>
            
                </div>
                <div style="width:100%; Margin: 15px 0px 0px 10px; float:left;" >
                    <h3 style="Width:700px;">Regions</h3>
        
                        <div style="Margin:3px 0px 0px 10px;">  
                           <telerik:RadComboBox ID="aRegion1" Runat="server" Label="Region1:"  Width="100px" LabelCssClass="myLabelCss"  >
                                    <Items>
                                        <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                        
                                        <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                    </Items>
                           </telerik:RadComboBox>
                           <telerik:RadComboBox ID="aRegion2" Runat="server" Label="Region2:"  Width="100px" LabelCssClass="myLabelCss"  >
                                    <Items>
                                        <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                        
                                        <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                    </Items>
                          </telerik:RadComboBox>
                          <telerik:RadComboBox ID="aRegion3" Runat="server" Label="Region3:"  Width="100px" LabelCssClass="myLabelCss" >
                                    <Items>
                                        <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                       
                                        <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                    </Items>
                          </telerik:RadComboBox>
                          <telerik:RadComboBox ID="aRegion4" Runat="server" Label="Region4:"  Width="100px" LabelCssClass="myLabelCss" >
                                    <Items>
                                        <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                        
                                        <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                        <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                    </Items>
                          </telerik:RadComboBox>

                        </div>
                       <div style="Margin:3px 0px 0px 10px;">  
                           
                        <telerik:RadComboBox ID="aRegion5" Runat="server" Label="Region5:"  Width="100px" LabelCssClass="myLabelCss" >
                                <Items>
                                    <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                   
                                    <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                </Items>
                         </telerik:RadComboBox>
                         <telerik:RadComboBox ID="aRegion6" Runat="server" Label="Region6:"  Width="100px" LabelCssClass="myLabelCss" >
                                <Items>
                                    <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                    
                                    <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                </Items>
                         </telerik:RadComboBox>
                         <telerik:RadComboBox ID="aRegion7" Runat="server" Label="Region7:"  Width="100px" LabelCssClass="myLabelCss" >
                                <Items>
                                    <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                   
                                    <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                </Items>
                         </telerik:RadComboBox>
                         <telerik:RadComboBox ID="aRegion8" Runat="server" Label="Region8:"  Width="100px" LabelCssClass="myLabelCss" >
                                <Items>
                                    <telerik:RadComboBoxItem runat = "server" Text="-" Value="0" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Arizona" Value="AZ" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Colorado" Value="CO" />
                                   
                                    <telerik:RadComboBoxItem runat = "server" Text="Nevada" Value="NV" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Texas" Value="TX" />
                                    <telerik:RadComboBoxItem runat = "server" Text="Wyoming" Value="WY" />
                                </Items>
                         </telerik:RadComboBox>
                       </div>
                </div>
               <div style="width:100%; Margin: 15px 0px 0px 10px; float:left;" > 
                   <div id="div2" style="width:400px; float:left;margin:5px 5px 5px 10px; " >
                         <telerik:RadButton ID="Button1" runat="server" Text="Create Profile" Skin="BlackMetroTouch"></telerik:RadButton> 
                   </div>         
                   <div style="width:600px; float:left;margin:5px 5px 5px 10px; " > 
                        <asp:Label ID="Label1" runat="server"></asp:Label>    
                   </div>       
               </div>
              </telerik:RadAjaxPanel>
        
        
        </telerik:RadPageView>      

  </telerik:RadMultiPage>
             
   













</div>
   
</asp:Content>

