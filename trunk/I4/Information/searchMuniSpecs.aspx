<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="searchMuniSpecs.aspx.vb" Inherits="Information_searchMuniSpecs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">




<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
            <telerik:AjaxSetting AjaxControlID="States">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="States" />
                    <telerik:AjaxUpdatedControl ControlID="grdCustList" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
               
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="grdCustList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdCustList"  />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_SpecList"  />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSpecHeader" />
                    <telerik:AjaxUpdatedControl ControlID="SpecBodyTab" />
                    <telerik:AjaxUpdatedControl ControlID="pnlProfile" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlContacts" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlWater" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlServices" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlSewer" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlStormDrain" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="pnlMisc" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="editLink1" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="editLink2" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="editLink1label" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="editLink2label" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="Link1" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="Link2" LoadingPanelID="RadAjaxLoadingPanel1"/>
                </UpdatedControls>
               
            </telerik:AjaxSetting>
            
            
            <telerik:AjaxSetting AjaxControlID="btnUpdateCustProfile">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="pnlProfile" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="grdCustList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                   <telerik:AjaxUpdatedControl ControlID="sqlDS_SpecList"  />
                   <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSpecHeader" />
                   <telerik:AjaxUpdatedControl ControlID="editLink1" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="editLink2" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="editLink1label" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="editLink2label" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="Link1" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="Link2" LoadingPanelID="RadAjaxLoadingPanel1"/>

                    
                </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnUpdateContacts">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="pnlContacts" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSpecHeader" />
                </UpdatedControls>
            </telerik:AjaxSetting> 
                    
            <telerik:AjaxSetting AjaxControlID="btnUpdateWater">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="pnlWater" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSpecHeader" />
                </UpdatedControls>
            </telerik:AjaxSetting> 

            <telerik:AjaxSetting AjaxControlID="btnUpdateStormDrain">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="pnlStormDrain" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSpecHeader" />
                </UpdatedControls>
            </telerik:AjaxSetting> 

            <telerik:AjaxSetting AjaxControlID="btnUpdateSewer">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="pnlSewer" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSpecHeader" />
                </UpdatedControls>
            </telerik:AjaxSetting> 

            <telerik:AjaxSetting AjaxControlID="btnUpdateServices">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="pnlServices" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSpecHeader" />
                </UpdatedControls>
            </telerik:AjaxSetting> 

            <telerik:AjaxSetting AjaxControlID="btnUpdateMisc">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="pnlMisc" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelSpecHeader" />
                </UpdatedControls>
            </telerik:AjaxSetting> 
            
            <telerik:AjaxSetting AjaxControlID="btnAddSpecSheet">
                <UpdatedControls>
                   <telerik:AjaxUpdatedControl ControlID="PnlAddSpec" LoadingPanelID="RadAjaxLoadingPanel1"/>
                   <telerik:AjaxUpdatedControl ControlID="grdCustList" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>    
        
        
        
        
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


<h1>Information | Municipal Specifications</h1>
    
    
  <div id="divAll" style="margin-left:5px; ">   

   <div id="divMunispecBody" style="float:left;width:1300px;">
    <div id="divCustListing" style="margin:3px;; float:left; width:275px; height:590px;">
        <div style="margin:3px; float:left; width:210px;">
            <telerik:RadComboBox ID="States" runat="server" Label="State: " Width="150px" AutoPostBack="true">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Text="Arizona" Value="AZ" />
                    <telerik:RadComboBoxItem runat="server" Text="Colorado" Value="CO" />
                    <telerik:RadComboBoxItem runat="server" Text="Montana" Value="MT" />
                    <telerik:RadComboBoxItem runat="server" Text="Nevada" Value="NV" />
                    <telerik:RadComboBoxItem runat="server" Text="Oklahoma" Value="OK" />
                    <telerik:RadComboBoxItem runat="server" Text="South Dakota" Value="SD" />
                    <telerik:RadComboBoxItem runat="server" Text="Texas" Value="TX" />
                    <telerik:RadComboBoxItem runat="server" Text="Wyoming" Value="WY" />
                </Items>
            </telerik:RadComboBox>
        </div>
        <div style="margin:3px; float:left; width:275px;">
        
            <telerik:RadGrid ID="grdCustList" runat="server"  Width="240px" Height="550px" DataSourceID="SqlDS_SpecList" >
               <GroupingSettings CaseSensitive="false" />
                                 
               <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" />
                    <Selecting AllowRowSelect="True"></Selecting>
               </ClientSettings>
               <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_SpecList" DataKeyNames="SpecID" ClientDataKeyNames="SpecID" >
                    
                    <Columns>
                        <telerik:GridBoundColumn DataField="SpecID" Visible="false" UniqueName="SpecID">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CustID" Visible="false" UniqueName="CustID">
                            <ItemStyle Font-Size="Small" />
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CustName" HeaderText="Specification" SortExpression="CustName" UniqueName="CustName">
                            <ItemStyle Font-Size="Small" />
                        </telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            
            </telerik:RadGrid>
        </div>
        <asp:SqlDataSource ID="SqlDS_SpecList" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>"  
            SelectCommand="uspMuniSpecListGet" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="state2" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    
    </div>
    <div id="divSpecHeader" style="margin: 5px; float:left; width:900px;height:50px;">
        <telerik:RadAjaxPanel ID="RadAjaxPanelSpecHeader" runat="server" Height="30px" Width="850px" >
           <div style="width:600px; height:25px; background-color:#639aff; color:White; padding:3px; font-size:medium; font-weight: bold;"> 
                <asp:Label ID="lblCustName" runat="server"></asp:Label>
           </div> 
            <div style="width:600px; height:10px; Margin:5px; float:left; font-size:small;">
                <div style="width:250px;float:left;">
                    <asp:Label ID="lblAcctOwner" runat="server"></asp:Label>
                </div>
                <div style="width:300px;float:left;">
                    <asp:Label ID="lblLastEdit" runat="server"></asp:Label>
                </div>
            </div>
        </telerik:RadAjaxPanel>
            
    </div>
    <div id="divSpecBody" style="margin:5px; float:left; width:900px; ">
        <div style="margin: 5px 5px 0px 5px; width:900px;">
          <telerik:RadTabStrip ID="SpecBodyTab" runat="server" SelectedIndex="0" Width="900px" Skin="MetroTouch" MultiPageID="RadMultiPage1" >
               <Tabs>
                  <telerik:RadTab runat="server" Text="Profile" PageViewID="CustProfile" Selected="true"></telerik:RadTab>
                  <telerik:RadTab runat="server" Text="Contacts" PageViewID="Contacts"></telerik:RadTab>
                  <telerik:RadTab runat="server" Text="Water" PageViewID="Water"></telerik:RadTab>
                  <telerik:RadTab runat="server" Text="Services" PageViewID="Services"></telerik:RadTab>
                  <telerik:RadTab runat="server" Text="Sewer" PageViewID="Sewer"></telerik:RadTab>
                  <telerik:RadTab runat="server" Text="Storm Drain" PageViewID="StormDrain"></telerik:RadTab>
                  <telerik:RadTab runat="server" Text="Misc" PageViewID="Misc"></telerik:RadTab>
               </Tabs>
          </telerik:RadTabStrip>
        </div>
        <div style="Margin: 5px 5px 5px 5px;">    
           
                
      
                <telerik:RadMultiPage ID="RadMultiPage1" runat="server"  Width="900px" >

                    <telerik:RadPageView ID="CustProfile" runat="server" Selected="true" Width="900px" >
                        <asp:Panel ID="pnlProfile" runat="server">
                        
                        <asp:HiddenField id="hdnCustName" runat="server"></asp:HiddenField>
                       
                       
                       <div style="Margin:5px;">
                           

                            <%--<telerik:RadAjaxPanel ID="RadAjaxPanelCustProfile" runat="server" Height="520px" Width="780px">--%>
                          
                          
                          <div style="Margin:10px;"> 
                    
                    
                            <div style="padding:5px 0px 0px 0px; width:400px;">
                                <telerik:RadTextBox ID="acctowner" Label="Account Owner: " runat="server" LabelWidth="120px" Width="600px" MaxLength="40" LabelCssClass="myLabelCss" EmptyMessage="ie. John Doe"></telerik:RadTextBox>
                            </div>
                            <div style="padding:5px 0px 0px 0px; width:400px;">
                                <telerik:RadTextBox ID="custname" Label="Customer Name: " runat="server" LabelWidth="120px" Width="600px" MaxLength="30" LabelCssClass="myLabelCss" ToolTip="Max of 30 characters" ></telerik:RadTextBox>
                            </div>
                            <div style="padding:5px 0px 0px 0px; width:400px;">
                                <telerik:RadTextBox ID="custid" Label="Customer #: " runat="server" LabelWidth="120px" Width="600px" MaxLength="8" LabelCssClass="myLabelCss" ToolTip="Max of 8 characters" ></telerik:RadTextBox>
                            </div>
                            <div style="padding:5px 0px 0px 0px; width:400px;">
                                <telerik:RadComboBox ID="State2" runat="server" Width="100px" Label="State:" LabelCssClass="myLabelCss"  >
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="Arizona" Value="AZ" />
                                        <telerik:RadComboBoxItem runat="server" Text="Colorado" Value="CO" />
                                        <telerik:RadComboBoxItem runat="server" Text="Montana" Value="MT" />
                                        <telerik:RadComboBoxItem runat="server" Text="Nevada" Value="NV" />
                                        <telerik:RadComboBoxItem runat="server" Text="Oklahoma" Value="OK" />
                                        <telerik:RadComboBoxItem runat="server" Text="South Dakota" Value="SD" />
                                        <telerik:RadComboBoxItem runat="server" Text="Texas" Value="TX" />
                                        <telerik:RadComboBoxItem runat="server" Text="Wyoming" Value="WY" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                           <div style="padding:5px 0px 0px 0px; width:400px; float:left; margin-right:20px;">
                                <telerik:RadButton ID="link1" runat="server" Skin="MetroTouch" Width="400px" Target="_blank" ButtonType="LinkButton">
                                </telerik:RadButton>
                            </div>
                            <div style="padding:5px 0px 0px 0px; width:400px; float:left; margin-bottom:10px;">
                                <telerik:RadButton ID="link2" runat="server" Skin="MetroTouch" Width="400px" Target="_blank" ButtonType="LinkButton">
                                </telerik:RadButton>
                            </div>
                            
                            <div style="padding:5px 0px 0px 0px; width:800px;">
                                <div style="width:380px; margin-right:20px;float:left;">
                                    <telerik:RadTextBox ID="editlink1label" Label="Link #1 Label: " runat="server" LabelWidth="100px" Width="375px" MaxLength="50" LabelCssClass="myLabelCss" ToolTip="Max of 50 characters" ></telerik:RadTextBox>
                                </div>
                                <div style="width:380px;float:left; margin-bottom:10px;">
                                    <telerik:RadTextBox ID="editlink1" Label="Edit Link #1: " runat="server" LabelWidth="100px" Width="375px" MaxLength="100" LabelCssClass="myLabelCss" ToolTip="Max of 100 characters" ></telerik:RadTextBox>
                                </div>
                            </div>
                            <div style="padding:5px 0px 0px 0px; width:800px;">
                                <div style="width:380px; margin-right:20px;float:left;">
                                    <telerik:RadTextBox ID="editlink2label" Label="Link #2 Label: " runat="server" LabelWidth="100px" Width="375px" MaxLength="50" LabelCssClass="myLabelCss" ToolTip="Max of 50 characters" ></telerik:RadTextBox>
                                </div>
                                <div style="width:380px; float:left; margin-bottom:10px;">
                                    <telerik:RadTextBox ID="editlink2" Label="Edit Link #2: " runat="server" LabelWidth="100px" Width="375px" MaxLength="100" LabelCssClass="myLabelCss" ToolTip="Max of 100 characters" ></telerik:RadTextBox>
                                </div>
                               
                            </div>

                            <div style="padding:5px 0px 0px 0px; width:400px;">
                                <telerik:RadTextBox ID="notes" Label="Notes: " runat="server" LabelWidth="50px" Width="600px" Height="80px" MaxLength="255" LabelCssClass="myLabelCss"
                                      TextMode="MultiLine" Rows="5" Wrap="true" ></telerik:RadTextBox>
                            </div>
                          </div> 
                             <%--</telerik:RadAjaxPanel>--%>
               
                            <div style="width:400px;float:right;padding:3px 0px 5px 0px;">
                                <%--<asp:Button ID="btnUpdateCustProfile" runat="server" Text="Update Customer Profile" />--%>
                                <telerik:RadButton ID="btnUpdateCustProfile" runat="server" Text="Update Customer Profile" Skin="MetroTouch">
                                </telerik:RadButton>
                            </div>
                       </div>
                        </asp:Panel>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Contacts" runat="server"  Width="900px" >
                        <asp:Panel ID="pnlContacts" runat="server">
                        <div style="Margin: 5px;">
                            <div style="Margin:5px;">
                            
                            <div style="Margin:10px;">   
                                <div style="Margin: 2px 0px 2px 10px;">
                        
                                <div style="width:225px;float:left;">
                                    <div style="padding:5px 0px 0px 0px;">
                                        <telerik:RadTextBox ID="name1" Label="Name: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">
                                        <telerik:RadTextBox ID="title1" Label="Title: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">
                                        <telerik:RadTextBox ID="phone1" Label="Phone: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">
                                        <telerik:RadTextBox ID="mobile1" Label="Mobile: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">
                                        <telerik:RadTextBox ID="eMail1" Label="eMail: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                    </div>
                                </div>
                                <div style="width:225px;float:left;">
                                    <div style="padding:5px 0px 0px 0px;">
                                        <telerik:RadTextBox ID="name2" Label="Name: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">    
                                        <telerik:RadTextBox ID="title2" Label="Title: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">  
                                        <telerik:RadTextBox ID="phone2" Label="Phone: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">    
                                        <telerik:RadTextBox ID="mobile2" Label="Mobile: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">  
                                        <telerik:RadTextBox ID="email2" Label="eMail: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                    </div>
                                </div>
                                <div style="width:225px;float:left;">
                                    <div style="padding:5px 0px 0px 0px;">  
                                        <telerik:RadTextBox ID="name3" Label="Name: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">    
                                        <telerik:RadTextBox ID="title3" Label="Title: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">    
                                        <telerik:RadTextBox ID="phone3" Label="Phone: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">    
                                        <telerik:RadTextBox ID="mobile3" Label="Mobile: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                    <div style="padding:5px 0px 0px 0px;">  
                                        <telerik:RadTextBox ID="email3" Label="eMail: " runat="server" Width="215px" Labelwidth="60px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                    </div>
                                </div>
                                </div>
                            </div>
                            </div>
                
                                <div style="width:400px;float:right;padding:3px 0px 5px 0px;">
                                    <%--<asp:Button ID="btnUpdateContacts" runat="server" Text="Update Customer Contacts" />--%>
                                    <telerik:RadButton ID="btnUpdateContacts" runat="server" Text="Update Customer Contacts" Skin="MetroTouch">
                                    </telerik:RadButton>
                                </div>
                        </div> 
                        </asp:Panel>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Water" runat="server" Width="900px" >
                        <asp:Panel ID="pnlWater" runat="server">
                        <div style="Margin: 5px;">
                            <div style="Margin: 5px;">
                            
                                 <div style="Margin:10px;">   
                    
                    
                                    <div style="padding: 2px 0px 2px 10px;">
                                        <div style="padding:5px 0px 0px 0px;">
                                            <telerik:RadTextBox ID="dip" Label="Ductile Pipe: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="pvcwater" Label="PVC Pipe: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="Polywrap" Label="Polywrap: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="TapSleeve" Label="Tapping Sleeve: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="TracerWarn" Label="Tracer/Warning: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="MJFit" Label="MJ Fittings: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="DIPFitRest" Label="DI Restraint: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="PVCFitRest" Label="PVC Restraint: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="ValveGate" Label="Gate Valve: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="ValveBox" Label="Valve Box: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">    
                                            <telerik:RadTextBox ID="DebrisCap" Label="Debris Cap: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                        <div style="padding:5px 0px 0px 0px;">
                                            <telerik:RadTextBox ID="Hydrant" Label="Hydrant: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                        </div>
                                       </div>
                            </div>
                            </div>
                
                        <div style="width:400px;float:right;padding:3px 0px 5px 0px;">
                                <%--<asp:Button ID="btnUpdateWater" runat="server" Text="Update Water Specifications" />--%>
                                <telerik:RadButton ID="btnUpdateWater" runat="server" Text="Update Water Specifications" Skin="MetroTouch">
                                </telerik:RadButton>
                        </div>
                
                        </div>
                        </asp:Panel>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Services" runat="server" Width="900px" >
                        <asp:Panel ID="pnlServices" runat="server">
                        <div style="Margin:5px;">
                            <div style= "Margin: 5px;">
                                
                                 <div style="Margin:10px;">   

                                      <div style="padding: 2px 0px 2px 10px;">
                         
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="TapSadDIP" Label="Tap Saddle-DIP: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="TapSadPVC" Label="Tap Saddle-PVC: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="CurbStopBox" Label="Curb Stop Box: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="MeterBox" Label="Meter Box: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="MeterPit" Label="Meter Pit: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="MeterCover" Label="Meter Cover: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="CorpStop" Label="Corp Stop: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="AngleValve" Label="Angle Valve: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="CopperSetter" Label="Copper Setter: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="CustomSetter" Label="Custom Setter: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                         </div>
                                         <div style="padding:5px 0px 0px 0px;">   
                                            <telerik:RadTextBox ID="Meter" Label="Meter: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                         </div>
                      
                                      </div>
                            </div>
                            </div>
                    
                            <div style="width:400px;float:right;padding:3px 0px 5px 0px;">
                                <%--<asp:Button ID="btnUpdateServices" runat="server" Text="Update Service Specifications" />--%>
                                <telerik:RadButton ID="btnUpdateServices" runat="server" Text="Update Service Specifications" Skin="MetroTouch">
                                </telerik:RadButton>
                            </div>
                    
                        </div>
                        </asp:Panel>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Sewer" runat="server" Width="900px" >
                        <asp:Panel ID="pnlSewer" runat="server">
                            <div style="Margin: 5px;">
                               
                               <div style="Margin:10px;">   

                                 <div style="padding: 2px 0px 2px 10px;">

                             <div style="Margin: 5px;">
                                 <div style="padding:5px 0px 0px 0px;">        
                                    <telerik:RadTextBox ID="DIPSewer" Label="Ductile Pipe: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="PVCSewer" Label="PVC Pipe: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="ClaySewer" Label="Clay Pipe: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="TracerWarnSewer" Label="Tracer/Warning: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="Underdrain" Label="Underdrain: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="DIPFitSewer" Label="DI Fittings: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="PVCFitSewer" Label="PVC Fittings: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="ClayFitSewer" Label="Clay Fittings: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                            </div>
                          </div>
                          </div>
                               <div style="width:400px;float:right;padding:3px 0px 5px 0px;">
                                <%--<asp:Button ID="btnUpdateSewer" runat="server" Text="Update Sewer Specifications" />--%>
                                <telerik:RadButton ID="btnUpdateSewer" runat="server" Text="Update Sewer Specifications" Skin="MetroTouch">
                                </telerik:RadButton>
                            </div>
                          </div>  
                          </asp:Panel>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="StormDrain" runat="server" Width="900px" >
                        <asp:Panel ID="pnlStormDrain" runat="server">
                        <div style="Margin:5px;">
                            <div style="Margin:5px;">
                            
                            <div style="Margin: 10px;">   
                                <div style="padding: 2px 0px 2px 10px;">
                       
                                     <div style="padding:5px 0px 0px 0px;">             
                                    <telerik:RadTextBox ID="HDPEDrainPipe" Label="HDPE Pipe: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                                     <div style="padding:5px 0px 0px 0px;">
                                    <telerik:RadTextBox ID="HDPEDrainFit" Label="HDPE Fittings: " runat="server" Width="600px" Labelwidth="110px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                                 </div>
                                </div>
                            </div>
                            </div>
                    
                            <div style="width:400px;float:right;padding:3px 0px 5px 0px;">
                                <%--<asp:Button ID="btnUpdateStormDrain" runat="server" Text="Update Storm Drain Specifications" />--%>
                                <telerik:RadButton ID="btnUpdateStormDrain" runat="server" Text="Update Storm Drain Specifications" Skin="MetroTouch">
                                </telerik:RadButton>
                              </div>  
                        </div>
                        </asp:Panel>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="Misc" runat="server" Width="900px" >
                        <asp:Panel ID="pnlMisc" runat="server">
                        <div style="Margin:5px;">
                            <div style="Margin: 5px;">
                            
                    
                              <div style="margin:10px;">
                                 <div style="padding:5px 0px 0px 0px;">  
                                    <telerik:RadTextBox ID="misc1" Label="1.: " runat="server" LabelWidth="30px" Width="600px" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">                            
                                    <telerik:RadTextBox ID="misc2" Label="2.: " runat="server" LabelWidth="30px" Width="600px" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="misc3" Label="3.: " runat="server" LabelWidth="30px" Width="600px" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="misc4" Label="4.: " runat="server" LabelWidth="30px" Width="600px" ></telerik:RadTextBox>
                                 </div>
                                 <div style="padding:5px 0px 0px 0px;">   
                                    <telerik:RadTextBox ID="misc5" Label="5.: " runat="server" LabelWidth="30px" Width="600px" ></telerik:RadTextBox>
                                 </div>
                              </div>
                            </div>
                    
                    
                            <div style="padding: 2px 0px 2px 10px;">   
                              <div style="width:400px;float:right;padding:3px 0px 5px 0px;">
                                <%--<asp:Button ID="btnUpdateMisc" runat="server" Text="Update Misc. Specifications" />--%>
                                <telerik:RadButton ID="btnUpdateMisc" runat="server" Text="Update Misc. Specifications" Skin="MetroTouch">
                                </telerik:RadButton>
                              </div>  
                             </div>
                         </div>
                         </asp:Panel>
                    </telerik:RadPageView>
                </telerik:RadMultiPage>     
           
        </div>
        
       
    </div>
    </div>
    
    <div id="divAddSpec" style="float:left; width:980px;Margin:0px 0px 0px 10px; border: 2px solid Green; padding:10px;">
        <asp:Panel ID="PnlAddSpec" runat="server">
        <div style="width:100%; background-color: Green; color:White; font-size:medium; font-weight:bold;height:25px; vertical-align:middle;"> 
           Add Spec Sheet
        </div>
           <div style="Margin: 5px 0px 0px 15px;">
                <telerik:RadTextBox ID="addCustName" Label="Customer: " runat="server" Width="250px" LabelWidth="75px" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
                <telerik:RadTextBox ID="addCustID" Label="Customer #: " runat="server" Width="175px" LabelWidth="85px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                <telerik:RadTextBox ID="addAcctOwner" Label="Acct Owner: " runat="server" Width="200px" LabelWidth="85px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                <telerik:RadComboBox ID="AddState" runat="server" Width="100px" Label="State:" LabelCssClass="myLabelCss"  >
                     <Items>
                       <telerik:RadComboBoxItem runat="server" Text="Arizona" Value="AZ" />
                       <telerik:RadComboBoxItem runat="server" Text="Colorado" Value="CO" />
                       <telerik:RadComboBoxItem runat="server" Text="Montana" Value="MT" />
                       <telerik:RadComboBoxItem runat="server" Text="Nevada" Value="NV" />
                       <telerik:RadComboBoxItem runat="server" Text="Oklahoma" Value="OK" />
                       <telerik:RadComboBoxItem runat="server" Text="South Dakota" Value="SD" />
                       <telerik:RadComboBoxItem runat="server" Text="Texas" Value="TX" />
                       <telerik:RadComboBoxItem runat="server" Text="Wyoming" Value="WY" />
                     </Items>
                 </telerik:RadComboBox>
                 <%--<asp:Button ID="btnAddSpecSheet" runat="server" Text="Add Spec Sheet" />--%>
                 <telerik:RadButton ID="btnAddSpecSheet" runat="server" Text="Add Spec Sheet" Skin="MetroTouch">
                 </telerik:RadButton>

           </div>
        </asp:Panel> 
    </div>
      
  </div> 

</asp:Content>

