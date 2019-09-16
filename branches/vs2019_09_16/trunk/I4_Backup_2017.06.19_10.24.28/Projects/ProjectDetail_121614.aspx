<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="ProjectDetail_121614.aspx.vb" Inherits="Projects_ProjectDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel2" Runat="server" Skin="Metro" IsSticky="false" InitialDelayTime="0" MinDisplayTime="300" Transparency="0">
    </telerik:RadAjaxLoadingPanel>
    
    <telerik:radajaxmanagerproxy id="RadAjaxManagerProxy2" runat="server">
        <ajaxsettings>
            <telerik:ajaxsetting ajaxcontrolid="RadTabStrip1">
                <updatedcontrols>
                    <telerik:ajaxupdatedcontrol controlid="Panel1" loadingpanelid="RadAjaxLoadingPanel2" />
                    <%--<telerik:ajaxupdatedcontrol controlid="RadAjaxPanel2" loadingpanelid="RadAjaxLoadingPanel2" />--%>
                    <telerik:ajaxupdatedcontrol controlid="RadMultiPage1" loadingpanelid="RadAjaxLoadingPanel2" />
                </updatedcontrols>
            </telerik:ajaxsetting>
            
            <telerik:ajaxsetting ajaxcontrolid="RadTabStrip2">
                <updatedcontrols>
                    <%--<telerik:ajaxupdatedcontrol controlid="RadAjaxPanel3" loadingpanelid="RadAjaxLoadingPanel2" />--%>
                    <telerik:ajaxupdatedcontrol controlid="RadMultiPageProjectNotes" loadingpanelid="RadAjaxLoadingPanel2" />
                </updatedcontrols>
            </telerik:ajaxsetting>
            <telerik:ajaxsetting ajaxcontrolid="btnUpdateProject">
                <updatedcontrols>
                    <telerik:ajaxupdatedcontrol controlid="RadMultiPage1" loadingpanelid="RadAjaxLoadingPanel2" />
                </updatedcontrols>
            </telerik:ajaxsetting>
            <telerik:ajaxsetting ajaxcontrolid="uState">
                <updatedcontrols>
                    <telerik:ajaxupdatedcontrol controlid="uPrimaryBranchno" />
                    <telerik:ajaxupdatedcontrol controlid="uDistrict" />
                    
                    <telerik:ajaxupdatedcontrol controlid="nContractor" />
                    <telerik:ajaxupdatedcontrol controlid="nDistributor" />
                    <telerik:ajaxupdatedcontrol controlid="eContractor" />
                    <telerik:ajaxupdatedcontrol controlid="eDistributor" />
                </updatedcontrols>
            </telerik:ajaxsetting>

            <telerik:ajaxsetting ajaxcontrolid="grdPlayers">
                <updatedcontrols>
                    <%--<telerik:ajaxupdatedcontrol controlid="grdPlayers" loadingpanelid="RadAjaxLoadingPanel2" />--%>
                    <telerik:ajaxupdatedcontrol controlid="PanelEditPlayer" loadingpanelid="RadAjaxLoadingPanel2" />
                </updatedcontrols>
            </telerik:ajaxsetting>

            <telerik:ajaxsetting ajaxcontrolid="btnAddContractor">
                <updatedcontrols>
                    <telerik:ajaxupdatedcontrol controlid="grdPlayers" loadingpanelid="RadAjaxLoadingPanel2" />
                    <telerik:ajaxupdatedcontrol controlid="PanelAddPlayer" />
                </updatedcontrols>
            </telerik:ajaxsetting>
            <telerik:ajaxsetting ajaxcontrolid="btnEditContractor">
                <updatedcontrols>
                    <telerik:ajaxupdatedcontrol controlid="grdPlayers" loadingpanelid="RadAjaxLoadingPanel2" />
                    <telerik:ajaxupdatedcontrol controlid="PanelEditPlayer" loadingpanelid="RadAjaxLoadingPanel2" />
                </updatedcontrols>
            </telerik:ajaxsetting>
            <telerik:ajaxsetting ajaxcontrolid="btnAddContractorToMenu">
                <updatedcontrols>
                    <telerik:ajaxupdatedcontrol controlid="RadMultiPage2" loadingpanelid="RadAjaxLoadingPanel2" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_Contractor" LoadingPanelID="" />
                </updatedcontrols>
            </telerik:ajaxsetting>
            
            <telerik:ajaxsetting ajaxcontrolid="btnAddDistributorToMenu">
                <updatedcontrols>
                    <%--<telerik:ajaxupdatedcontrol controlid="RadAjaxPanel3" loadingpanelid="RadAjaxLoadingPanel2" />--%>
                    <telerik:ajaxupdatedcontrol controlid="RadAjaxPanel5" loadingpanelid="RadAjaxLoadingPanel2" />
                    <telerik:ajaxupdatedcontrol controlid="RadAjaxPanel6" loadingpanelid="RadAjaxLoadingPanel2" />
                </updatedcontrols>
            </telerik:ajaxsetting>
            <telerik:ajaxsetting ajaxcontrolid="grdQuoteList">
                <updatedcontrols>
                    <telerik:ajaxupdatedcontrol controlid="grdQuoteList" loadingpanelid="RadAjaxLoadingPanel2" />
                </updatedcontrols>
            </telerik:ajaxsetting>
            
        </ajaxsettings>
    </telerik:radajaxmanagerproxy>

<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

        function CloseWindow() {
            GetRadWindow().close();
        }


        function openWndwNewQuoteJob(sender, args) {

            var JobID = document.getElementById("<%= hdnuJobID.ClientID %>").value;
            var oWnd3 = radopen("../BidTool/QuoteStart.aspx?JobID=" + JobID, "wndwNewQuoteJob");
            //              
            oWnd3.center();
        }

        function clientClose(sender, args) {
            if (args.get_argument() != null) {
                alert("'" + sender.get_name() + "'" + " was closed and returned the following argument: '" + args.get_argument() + "'");
            }
        }

    </script> 
</telerik:RadCodeBlock>    
        
    <asp:SqlDataSource ID="SqlDS_MenuStates" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
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
    <asp:SqlDataSource ID="SqlDS_Branch" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="uspGetBranchesByState" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter Name="State" ControlID="uState" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDS_District" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="uspMuniSpecListGet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="uState" Name="State2" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDS_Flag" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Flag" Name="Type" Type="String" />
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
    </asp:SqlDataSource>
    
   
    
     <div id="divBody" style="width:1200px;height:1000px;margin: 0px 0px 0px 10px;">
        
        <div style="margin:10px 0px 5px 10px;">
            <div style="float:Left; width:600px;">
                <asp:Label ID="lblProjectName" runat="server" Font-Bold="true" Font-Size="Large" ForeColor="#DB6D3D"></asp:Label> 
            </div>
            <div style="float:right; width:500px;">
                <telerik:RadButton ID="btnUpdateProject" runat="server" Text="Save Changes" Width="200px"  Skin="MetroTouch" AutoPostBack="true" ></telerik:RadButton>
                <%--<telerik:RadButton ID="btnCloseProject" runat="server" Text="Close" OnClientClicked="CloseWindow"  Skin="Silk" ></telerik:RadButton>--%>
                <telerik:RadButton ID="btnCloseProject" runat="server" Text="Close" Skin="MetroTouch" Width="200px" ></telerik:RadButton>
            </div>
        </div>

        <div id="divTabStrip1" style="margin:10px;float:left;width:1000px;">   
            <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" SelectedIndex="0" Width="100%" ShowBaseLine="true" Skin="MetroTouch" >
                <Tabs>
                    <telerik:RadTab runat="server" Text="Project" PageViewID="Project" Selected="true"></telerik:RadTab>
                    <telerik:RadTab runat="server" Text="Quotes" PageViewID="Quotes" ></telerik:RadTab>
                   <%-- <telerik:RadTab runat="server" Text="Future Development: Players and Feedback" PageViewID="Players" ></telerik:RadTab>--%>
            
                </Tabs>
            </telerik:RadTabStrip>
        </div>

        <div style="height:700px; width:1000px; margin:10px;">  
            <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="650px" Width="1000px">
        
                <telerik:RadPageView ID="Project" runat="server" Selected="true" Height="650px" Width="1000px" >                           
                   
                   <telerik:RadAjaxPanel ID="Panel1" runat="server" LoadingPanelID="RadAjaxLoadingPanel2" Height="650px" Width="1000px" >
                      
                       <asp:HiddenField ID="hdnuJobID" runat="server" />

                       <div style="padding: 10px 0px 0px 0px; width:1000px;">
                         <div style="float:left; padding:10px 0px 5px 15px;">
                             <div style="width:400px; float:left;">   
                                <telerik:RadTextBox ID="uProjectName" runat="server" Label="Project Name:" MaxLength="50" Width="325px" LabelWidth="100px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                             </div>  
                             <div style="width:400px; float:left;"> 
                                <telerik:RadTextBox ID="uProjectSubTitle" runat="server" Label="SubTitle:" MaxLength="50" Width="325px" LabelWidth="75px" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                             </div>
                            
                        </div>
                        
                      </div>

                      <div id="divProjectContainers" style="width:990px; margin-top:5px;float:left;">

                         <div id="divProjectLocation" style="width:300px; float:left; margin-left:15px; ">
                             
                                 <div style="width:100%; float:left;">
                                      
                                      <telerik:RadTextBox ID="uWorkAddress" Label="Address:" Width="250px" LabelWidth="60px" MaxLength="50" runat="server" EnableAjaxSkinRendering="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                      <telerik:RadToolTip ID="RadToolTip1" runat="server" TargetControlID="uWorkAddress" Title="Job Address" Position="BottomRight" width="200px" HideEvent="LeaveToolTip" 
                                                 Text="Please enter the address where the project is located." >
                                      </telerik:RadToolTip> 
                                 </div>
                                 <div style="width:100%; margin-top:5px; float:left;">
                                      
                                      <telerik:RadTextBox ID="uWorkCity" Label="City:" Width="250px" LabelWidth="60px" runat="server" EnableAjaxSkinRendering="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                      <telerik:RadToolTip ID="RadToolTipnWorkCity" runat="server" TargetControlID="uWorkCity" Title="Job City" Position="BottomRight" width="200px" HideEvent="LeaveToolTip" 
                                                 Text="Please enter the city in which the project is located." >
                                      </telerik:RadToolTip> 
                                 </div>
                                 <div style="width:100%; margin-top:5px; float:left;">
                                      
                                      <telerik:RadTextBox ID="uWorkZip" Label="Zip:" Width="250px" LabelWidth="60px" runat="server" MaxLength="10" EnableAjaxSkinRendering="true" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                                      <telerik:RadToolTip ID="RadToolTipnWorkZip" runat="server" TargetControlID="uWorkZip" Title="Job Zip" Position="BottomRight" width="200px" HideEvent="LeaveToolTip" 
                                                 Text="Please enter the city in which the project is located." >
                                      </telerik:RadToolTip> 
                                 </div>
                                 <div style="width:100%; margin-top:5px; float:left;">
                                     <div style="width:60px; float:left; "> 
                                        <asp:Label ID="State" runat="server" Text="State: " Width="60px" CssClass="myLabelCss"></asp:Label>
                                     </div>
                                     <div style="width:200px;  float:left;vertical-align:middle;">
                                          <telerik:RadComboBox ID="uState" Runat="server" Width="100px"  
                                                    DataSourceID="SqlDS_MenuStates" DataTextField="Region" DataValueField="Region"  AutoPostBack="true" >
                                          </telerik:RadComboBox>
                                     </div>
                                 </div>

                         </div>
                         <div id="div1" style="width:300px; float:left; margin-left:15px; ">
                             <div style="width:100%;margin:3px; float:left;">
                                  <div style="width:70px; float:left; ">      
                                      <asp:Label ID="Label10" runat="server" Text="Branch: " Width="60px" CssClass="myLabelCss"></asp:Label>
                                   </div>
                                   <div style="width:200px; float:left; ">    
                                      
                                      <telerik:RadComboBox ID="uPrimaryBranchno" Width="200px"  Runat="server" 
                                                DataSourceID="SqlDS_Branch" DataTextField="comboname" DataValueField="branchno"  >
                                      </telerik:RadComboBox>
                                      <telerik:RadToolTip ID="RadToolTipnPrimaryBranchno" runat="server" TargetControlID="uPrimaryBranchno" Title="Branch" Position="BottomCenter"  width="200px" HideEvent="LeaveToolTip" 
                                                        Text="The branch in which the majority, if not all, the material will ship.  This selection helps to determine pricing in the quote." >
                                      </telerik:RadToolTip>
                                   </div>
                             </div>
                             <div style="width:100%;margin:3px; float:left;">
                                  <div style="width:70px; float:left; ">
                                      <asp:Label ID="Label9" runat="server" Text="District:" Width="60px" CssClass="myLabelCss"></asp:Label>
                                  </div>
                                  <div style="width:210px; float:left; vertical-align: bottom;">
                                                                       
                                      <telerik:RadComboBox ID="uDistrict" Runat="server" Width="200px"  
                                             DataSourceID="SqlDS_District" DataTextField="CustName" DataValueField="SpecID" AppendDataBoundItems="true"  >
                                         <Items>
                                             <telerik:RadComboBoxItem Text="-" Value="0" />
                                         </Items>
                                      </telerik:RadComboBox>
                                  </div>

                                  <telerik:RadToolTip ID="RadToolTipnDistrict" runat="server" TargetControlID="uDistrict" Title="District" Position="BottomRight" Width="200px" HideEvent="LeaveToolTip" 
                                                    Text="Please select the water district/municipality whose specificiations will be used in creating a quote." >
                                  </telerik:RadToolTip>
                                 <%--<asp:HiddenField ID="uMuniSpecID" runat="server" /> --%>     
                             </div>
                         
                         
                         </div>
                         <div id="div2" style="width:300px; float:left; margin-left:15px; ">
                             <div style="width:100%;margin:3px; float:left;">
                                  <asp:Label ID="Label16" runat="server" Text="Status: " Width="50px" CssClass="myLabelCss"></asp:Label>
                                  <telerik:RadComboBox ID="uStatus" Width="150px"  runat="server"  >
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
                                  <asp:Label ID="Label17" runat="server" Text="Type: " Width="50px" CssClass="myLabelCss"></asp:Label>
                                  <telerik:RadComboBox runat="server" ID="uWorkType" Width="150px" >
                                      <Items>
                                           <telerik:RadComboBoxItem runat="server" Text="AMR/Meters" Value="AMR/Meters" />
                                           <telerik:RadComboBoxItem runat="server" Text="Lift Station" Value="Lift Station" />
                                           <telerik:RadComboBoxItem runat="server" Text="Plant" Value="Plant" />
                                           <telerik:RadComboBoxItem runat="server" Text="Sewer" Value="Sewer" />
                                           <telerik:RadComboBoxItem runat="server" Text="Storm" Value="Storm" />
                                           <telerik:RadComboBoxItem runat="server" Text="Utilities" Value="Utilities" />
                                           <telerik:RadComboBoxItem runat="server" Text="Water" Value="Water" />
                                      </Items>
                                  </telerik:RadComboBox>
                             </div>
                             <div style="width:100%;margin:3px; float:left;">
                                  <asp:Label ID="Label18" runat="server" Text="Flag: " Width="50px" CssClass="myLabelCss"></asp:Label>
                                  <telerik:RadComboBox ID="uFlag" Width="150px"  Runat="server" 
                                            DataSourceID="SqlDS_Flag" DataTextField="label" DataValueField="label" AppendDataBoundItems="true">
                                      <Items>
                                          <telerik:RadComboBoxItem runat="server" Text="" Value="" Selected="true" />
                                      </Items>
                                  </telerik:RadComboBox>
                                  <telerik:RadToolTip ID="RadToolTipnFlag" runat="server" TargetControlID="uFlag" Title="Flag" Position="BottomRight"  width="200px" HideEvent="LeaveToolTip" 
                                            Text="The flag identifies special conditions for the project (such as premium customer participation)." >
                                  </telerik:RadToolTip>
                             </div>
                             
                             
                             
                             <div style="width:100%;margin:3px; float:left;">
                                  <asp:Label ID="Label13" runat="server" Text="SWAG: " Width="50px" CssClass="myLabelCss"></asp:Label>
                                  <telerik:RadComboBox ID="uBaseEstimate" Width="150px" runat="server" >
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
                                  <telerik:RadToolTip ID="RadToolTipnBaseEstimate" runat="server" TargetControlID="uBaseEstimate" Title="SWAG" Position="BottomLeft"  width="200px" HideEvent="LeaveToolTip" 
                                           Text="The estimated guess for the value of Dana Kepner/Western Industrial supplied material." >
                                  </telerik:RadToolTip>
                             </div>
                             
                             
                             <%--<div style="padding:5px 0px 0px 0px;">
                                  <asp:Label ID="Label11" runat="server" Text="Sales Lead: " Width="80px"></asp:Label>
                                  <telerik:RadComboBox ID="uLeadSalesRep" runat="server" Width="150px"  Height="300px" 
                                           DataSourceID="SqlDS_LeadSalesRep" DataTextField="Label" DataValueField="Label" AppendDataBoundItems="true">
                                       <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="-" Value="-" Selected = "true" />
                                       </Items>
                                  </telerik:RadComboBox>
                                  <telerik:RadToolTip ID="RadToolTipnLeadSalesRep" runat="server" TargetControlID="uLeadSalesRep" Title="Sales Lead" Position="BottomLeft"  width="200px" HideEvent="LeaveToolTip" 
                                           Text="The sales person who is coordinating the quotation process for the company." >
                                  </telerik:RadToolTip>
                             </div>--%>
                             <%--<div style="padding:5px 0px 0px 0px;">
                                  <asp:Label ID="Label12" runat="server" Text="Take Off: " Width="80px"></asp:Label>
                                  <telerik:RadComboBox ID="uTakeOff1" runat="server" Width="150px"  Height="300px" 
                                           DataSourceID="SqlDS_TakeOff" DataTextField="Label" DataValueField="Label"  AppendDataBoundItems="true">
                                      <Items>
                                           <telerik:RadComboBoxItem runat="server" Text="-" Value="-" Selected = "true" />
                                      </Items>
                                  </telerik:RadComboBox>
                                  <telerik:RadToolTip ID="RadToolTipnTakeOff1" runat="server" TargetControlID="uTakeOff1" Title="Take Off" Position="BottomLeft"  width="200px" HideEvent="LeaveToolTip" 
                                           Text="The person who is taking the lead on creating a takeoff." >
                                  </telerik:RadToolTip>
                             </div>--%>
                                   
                             
                             <%--<div style="padding:5px 0px 0px 0px;">
                                  <asp:Label ID="Label14" runat="server" Text="Plan Source:" Width="80px"></asp:Label>
                                  <telerik:RadComboBox ID="uPlanSource" Width="150px"  runat="server" 
                                          DataSourceID="SqlDS_PlanSource" DataTextField="Label" DataValueField="Label" AppendDataBoundItems="true" >
                                       <Items>
                                           <telerik:RadComboBoxItem runat="server" Text="-" Value="-" Selected="true" />
                                       </Items>
                                  </telerik:RadComboBox>                                             
                             </div>--%>
                             <%--<div style="padding:5px 0px 0px 0px;">
                                  <asp:Label ID="Label15" runat="server" Text="Plan Version:" Width="80px"></asp:Label>
                                  <telerik:RadTextBox ID="uPlans" runat="server"  Width="150px"  MaxLength="25"></telerik:RadTextBox>
                                  <telerik:RadToolTip ID="RadToolTipuPlans" runat="server" TargetControlID="uPlans" Title="Plan Version" Position="BottomLeft" width="200px" HideEvent="LeaveToolTip" 
                                          Text="The plan number, or version." >
                                  </telerik:RadToolTip>
                             </div>--%>
                         </div>
                                
                      </div>
                      <div id="divProjectContainersDateLevel" style="width:1000px; margin-top:20px; margin-left:15px;">      
                         <div style="height:30px; float:left;">
                              <h6>Dates</h6>
                         </div>
                         <div id="div12" style="width:1000px; float:left; padding:5px 0px 5px 10px;">
                                     
                           <div id="divProjectDates" style="float:left; vertical-align:middle; height:40px;">
                                 
                              <div style="width:150px; height:40px; margin-right:10px; float:left;">
                                <div style="width:100%; height:20px;">
                                    <asp:Label ID="Label1" runat="server" Text="Due Date" CssClass="myLabelCss"></asp:Label>
                                </div>
                                  
                                <div style="width:100%; height:20px;">     
                                     <telerik:RadDatePicker ID="uDueDate"  runat="server" Width="100px" 
                                              Culture="en-US"  MinDate="1900-01-01" MaxDate="2030-01-01" DatePopupButton-ToolTip="The date the quote is due to the customer." >
                                              <Calendar ID="Calendar1"  UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                              <DateInput ID="DateInput1"  Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                     </telerik:RadDatePicker>
                                 </div>    
                              </div>
                              <div style="width:150px; margin-right:10px; float:left;">
                                    <div style="width:100%; height:20px;">
                                        <asp:Label ID="Label2" runat="server" Text="Completed" CssClass="myLabelCss"></asp:Label>
                                    </div>
                                    <div style="width:100%; height:20px;">
                                       <telerik:RadDatePicker ID="uCompleteDate"   runat="server" Culture="English (United States)" Width="100px" 
                                                DatePopupButton-ToolTip="The date the takeoff and quote(s) were completed."  MinDate="1/1/1900" MaxDate="1/1/2030" >
                                             <Calendar ID="Calendar4" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                             <DateInput ID="DateInput4" Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                       </telerik:RadDatePicker>
                                    </div>
                              </div>
                              <div style="width:150px; margin-right:10px; float:left;">
                                    <div style="width:100%; height:20px;">
                                        <asp:Label ID="Label3" runat="server" Text="Pre-Bid" CssClass="myLabelCss"></asp:Label>
                                    </div>
                                    <div style="width:100%; height:20px;">  
                                          <telerik:RadDatePicker ID="uPreBid_Date"  runat="server" Culture="English (United States)" Width="100px" 
                                                  DatePopupButton-ToolTip="Pre-Bid Date, if applicable."  MinDate="1/1/1900" MaxDate="1/1/2030" >
                                                <Calendar ID="Calendar3" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"  runat="server"></Calendar>
                                                <DateInput ID="DateInput3"  Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                          </telerik:RadDatePicker>
                                    </div>
                              </div>
                              <div style="width:150px; margin-right:10px; float:left;">
                                    <div style="width:100%; height:20px;">
                                        <asp:Label ID="Label4" runat="server" Text="Bid" CssClass="myLabelCss"></asp:Label>
                                    </div>
                                    <div style="width:100%; height:20px;">     
                                          <telerik:RadDatePicker ID="uBidDate"  runat="server" Culture="English (United States)" Width="100px" 
                                               DatePopupButton-ToolTip="The date the job goes to bid."  MinDate="1/1/1900" MaxDate="1/1/2030">
                                                 <Calendar ID="Calendar2" UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x" runat="server"></Calendar>
                                                 <DateInput ID="DateInput2" Width="80px" DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" runat="server"></DateInput>
                                          </telerik:RadDatePicker>
                                    </div>
                                
                                </div>
                              <div style="width:115px; margin-right:10px; float:left;">

                                <telerik:RadComboBox ID="uBidTime" Width="100px" Height="250px"  runat="server" Label="Bid Time: " LabelCssClass="myLabelCss" >
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
                     <%-- <div id="divNewProjectContainersFlagLevel" style="width:990px; margin-top:20px;">   
                           <div style="height:30px;float:left;">
                               <h6>Project Flags</h6>
                           </div>
                           <div id="divNewProjectFlags" style="float:Left;padding:5px 5px 0px 15px; ">     
                               <div style="padding:10px 0px 0px 15px;float:left;">
                                   <asp:CheckBox ID="uFlagDIP" Text="DIP" runat="server" />
                               </div>
                               <div style="padding:10px 0px 0px 15px;float:left;">
                                   <asp:CheckBox ID="uFlagPVC" Text="PVC" runat="server" />
                               </div>
                               <div style="padding:10px 0px 0px 15px;float:left;">
                                            <asp:CheckBox ID="uFlagHDPE" Text="HDPE" runat="server" />
                               </div>
                               <div style="padding:10px 0px 0px 15px;float:left;">
                                   <asp:CheckBox ID="uFlagMeter" Text="Meters" runat="server" />
                               </div>
                           </div>
                       </div>--%>
    
                      <div style="width:1000px; float:left; margin-top:20px; margin-left:15px;">
                          <h6>Notes</h6>
                      </div>
                      <div style="width:1000px;height:275px;">
                          <div id="divNotesTabStrip" style="padding:0px 0px 0px 15px;float:left;width:75px;">   
                                <telerik:RadTabStrip ID="RadTabStrip3" runat="server" 
                                    MultiPageID="RadMultiPageAddProjectNotes" SelectedIndex="0" 
                                    Orientation="VerticalLeft" Width="75px">
                                  <Tabs>
                                    <telerik:RadTab runat="server" Text="Bid" PageViewID="Bid"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Plans" PageViewID="Plans" ></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Fittings" PageViewID="Fittings"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Restraints" PageViewID="Restraints"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Ductile" PageViewID="Ductile"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="PVC" PageViewID="PVC" ></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="HDPE" PageViewID="HDPE" Selected="True"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Other" PageViewID="Other"></telerik:RadTab>
                                  </Tabs>
                                </telerik:RadTabStrip>
                          </div>
                          <div id="divNotesContent" style="padding: 0px 0px 0px 0px;float:left;width:800px; height:250px;">
                                <telerik:RadMultiPage ID="RadMultiPageAddProjectNotes" runat="server" 
                                    Width="800px" Height="250px" SelectedIndex="0" >
                                    <telerik:RadPageView ID="Bid" runat="server" Selected="true"   >
                                        <telerik:RadTextBox ID="uBid_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Plans" runat="server">
                                         <telerik:RadTextBox ID="uPlans_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Fittings" runat="server">
                                             <telerik:RadTextBox ID="uFitting_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Restraints" runat="server">
                                             <telerik:RadTextBox ID="uRestraint_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Ductile" runat="server">
                                            <telerik:RadTextBox ID="uDIP_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px"></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="PVC" runat="server">
                                            <telerik:RadTextBox ID="uPVC_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px"></telerik:RadTextBox>                                    
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="HDPE" runat="server">
                                             <telerik:RadTextBox ID="uHDPE_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Other" runat="server">
                                             <telerik:RadTextBox ID="uOther_Notes" runat="server" TextMode="MultiLine" Wrap="true" Width="800px" Height="250px" ></telerik:RadTextBox>
                                    </telerik:RadPageView>
                                </telerik:RadMultiPage>
                       
                          </div> 
                      </div>
                     
                </telerik:RadAjaxPanel>

                </telerik:RadPageView>
                
                
                 <telerik:RadPageView ID="Quotes" runat="server" Height="650px" Width="1000px" >
                    
                    <div style="width:1000px; height:320px; margin:10px; float:left; ">
                        <telerik:RadGrid ID="grdQuoteList" runat="server" Width="800px" Height="300px" CellSpacing="0" DataSourceID="SqlDS_grdQuoteList" GridLines="None">
                    
                                <ClientSettings>
                                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                </ClientSettings>
                                <PagerStyle AlwaysVisible="true" HorizontalAlign="Left" />
                                    <MasterTableView AutoGenerateColumns="False" DataKeyNames="QuoteID" DataSourceID="SqlDS_grdQuoteList" ShowHeader="true" CommandItemDisplay="Top">
                                        <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
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
                                                <HeaderStyle Width="175px" />
                                                <ItemStyle Width="175px" VerticalAlign="Top" HorizontalAlign="Left" />
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
                                <asp:ControlParameter ControlID="hdnuJobID" DefaultValue="0" Name="JobID" PropertyName="Value" Type="Int64" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:1000px;margin:10px; float:left;">
                            <telerik:RadButton ID="btnStartQuoteProjectSearch" runat="server"  Text="New Fresh Quote for This Project" Width="600px" Skin="MetroTouch" 
                                    OnClientClicking="openWndwNewQuoteJob" ButtonType="LinkButton" AutoPostBack="false">
                            </telerik:RadButton>
                                     
                    </div>

                 </telerik:RadPageView>
                
                
               
                <telerik:RadPageView ID="Players" runat="server"> 
                                       
                 <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" >
                     <div id="divCustomers" style="padding:15px 5px 5px 15px;float:left; height:550px;width:550px; ">
                          <telerik:RadGrid ID="grdPlayers" runat="server" AllowSorting="True" DataSourceID="SqlDS_Players" 
                                GridLines="Horizontal"  Width="530px" Height="330px" CellSpacing="0" OnSelectedIndexChanged="grdPlayers_SelectedIndexChanged">
        
                                <GroupingSettings CaseSensitive="false" />
                                    <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                    </ClientSettings>
      
                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="Bid_PlayerID" DataSourceID="SqlDS_Players" >
            
                                    <RowIndicatorColumn>
                                        <HeaderStyle Width="20px"></HeaderStyle>
                                    </RowIndicatorColumn>

                                    <ExpandCollapseColumn>
                                        <HeaderStyle Width="20px"></HeaderStyle>
                                    </ExpandCollapseColumn>
                                     <Columns>
                                        <telerik:GridBoundColumn DataField="Bid_PlayerID" DataType="System.Int32" 
                                            Display="False" HeaderText="Bid_PlayerID" ReadOnly="True" 
                                            SortExpression="Bid_PlayerID" UniqueName="Bid_PlayerID">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="JobID" DataType="System.Int32" 
                                            Display="False" HeaderText="JobID" SortExpression="JobID" UniqueName="JobID">
                                        </telerik:GridBoundColumn>
        
                                        <telerik:GridBoundColumn DataField="Contractor" HeaderText="Contractor" 
                                            SortExpression="Contractor" UniqueName="Contractor">
                                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" Width="170px" />
                                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" VerticalAlign="Top" Width="170px" />
                                        </telerik:GridBoundColumn>
        
                                        <telerik:GridBoundColumn DataField="Distributor" HeaderText="Distributor" 
                                            SortExpression="Distributor" UniqueName="Distributor">
                                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" Width="170px" />
                                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" VerticalAlign="Top" Width="170px" />
                                        </telerik:GridBoundColumn>
        
                                        <telerik:GridBoundColumn DataField="BidAmount" DataFormatString="{0:C0}" 
                                            DataType="System.Decimal" HeaderText="Bid Amount" SortExpression="BidAmount" 
                                            UniqueName="BidAmount">
                                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" Width="80px" />
                                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Right" VerticalAlign="Top" Width="80px" />
                                        </telerik:GridBoundColumn>
        
                                        <telerik:GridBoundColumn DataField="Result" HeaderText="Result" 
                                            SortExpression="Result" UniqueName="Result">
                                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" Width="70px" />
                                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" VerticalAlign="Top" Width="70px" />
                                        </telerik:GridBoundColumn>
        
                                        <telerik:GridBoundColumn DataField="Note" HeaderText="Note" SortExpression="Note" UniqueName="Note" Display="false">
                                        <HeaderStyle Font-Size="X-Small" HorizontalAlign="Left" Width="50px" />
                                        <ItemStyle Font-Size="X-Small" HorizontalAlign="Left" VerticalAlign="Top" Width="50px" />
                                        </telerik:GridBoundColumn>
        
                                        <telerik:GridBoundColumn DataField="Added" DataType="System.DateTime" 
                                            Display="False" HeaderText="Added" SortExpression="Added" UniqueName="Added">
                                        </telerik:GridBoundColumn>
        
        
                                    </Columns>
                                </MasterTableView>
          
                              <ClientSettings>
                                  <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                              </ClientSettings>
                          </telerik:RadGrid>

                         <asp:SqlDataSource ID="SqlDS_Players" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                              SelectCommand="uspProjectPlayersGet" SelectCommandType="StoredProcedure">
                             <SelectParameters>
                                 <asp:QueryStringParameter DefaultValue="0" Name="JobID" QueryStringField="JobID" Type="Int32" />
                             </SelectParameters>
                         
                         </asp:SqlDataSource>
     
                      <div style="padding: 25px 0px 0px 0px;">
                          <telerik:RadTabStrip ID="RadTabStripPlayers" runat="server" MultiPageID="RadMultiPage2" Width="530px" >
                            <Tabs>
                                <telerik:RadTab runat="server" Text="Add Player" PageViewID="AddPlayer" Selected="true"></telerik:RadTab>
                                <telerik:RadTab runat="server" Text="Edit Player" PageViewID="EditPlayer" ></telerik:RadTab>
  
                            </Tabs>
                          </telerik:RadTabStrip>
      
              <telerik:RadMultiPage ID="RadMultiPage2" runat="server" Width="530px" Height="200px">
                <telerik:RadPageView ID="AddPlayer" runat="server" Selected="true" BorderColor="SteelBlue" BorderWidth="1px" Width="530px" Height="150px">
                   <telerik:RadAjaxPanel ID="PanelAddPlayer" runat="server" Width="530px" Height="150px" >
                        <div style="padding: 5px 0px 0px 5px;">
                            <div style="width: 500px;padding: 5px 0px 0px 5px;">
                                <telerik:RadComboBox ID="nContractor" runat="server" Label="Contractor:" Width="225px" Height="200px"  
                                    DataSourceID="SqlDS_Contractor" DataValueField="label" DataTextField="label" AppendDataBoundItems="true" >
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            <div style="width: 500px;padding: 5px 0px 0px 5px;">
                                <telerik:RadComboBox ID="nDistributor" runat="server" Label="Distributor:" 
                                     DataSourceID="SqlDS_Distributor" DataValueField="label" DataTextField="label" Width="225px" AppendDataBoundItems="true"   >
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            <div style="width: 500px;padding: 5px 0px 0px 5px;">
                                <telerik:RadNumericTextBox ID="nBidAmount" 
                                    MinValue="0" MaxValue="100000000" Label="Bid Amount:" Width="150px" LabelWidth="75px" 
                                    NumberFormat-DecimalDigits="0" Type="Currency" EnabledStyle-HorizontalAlign="Right"  Value="0" runat="server">
                                </telerik:RadNumericTextBox>
                                <telerik:RadComboBox ID="nResult" runat="server" Label="Result:" Width="90px" >
                                     <Items>
                                        <telerik:RadComboBoxItem runat="server" Text=" - " Value=" - " Selected="true" />
                                        <telerik:RadComboBoxItem runat="server" Text="Winner" Value="01" />
                                        <telerik:RadComboBoxItem runat="server" Text="2nd" Value="02" />
                                        <telerik:RadComboBoxItem runat="server" Text="3rd" Value="03" />
                                        <telerik:RadComboBoxItem runat="server" Text="4th" Value="04" />
                                        <telerik:RadComboBoxItem runat="server" Text="5th" Value="05" />
                                        <telerik:RadComboBoxItem runat="server" Text="6th" Value="06" />
                                        <telerik:RadComboBoxItem runat="server" Text="7th" Value="07" />
                                        <telerik:RadComboBoxItem runat="server" Text="8th" Value="08" />
                                        <telerik:RadComboBoxItem runat="server" Text="9th" Value="09" />
                                        <telerik:RadComboBoxItem runat="server" Text="10th" Value="10" />
                                     </Items>
                                </telerik:RadComboBox>
                            </div> 
                            <div style="width:500px;padding: 15px 0px 0px 5px;">
                                <telerik:RadButton ID="btnAddContractor" runat="server" Text="Add Player"  Skin="Silk"></telerik:RadButton>
                                <%--<asp:Button ID="btnAddContractor" runat="server" Text="Add Player"  Width="400px" />--%>
                            </div>
                        </div>
                    </telerik:RadAjaxPanel>
                </telerik:RadPageView>
                <telerik:RadPageView ID="EditPlayer" runat="server" BorderColor="SteelBlue" BorderWidth="1px" Width="530px" Height="150px">
                   <telerik:RadAjaxPanel ID="PanelEditPlayer" runat="server" Width="530px" Height="150px" >
                     <asp:HiddenField ID="hdnBid_PlayerID" runat="server" />
               
                        <div style="padding: 5px 0px 0px 5px;">
                                    <div style="width: 500px;padding: 5px 0px 0px 5px;">
                                        <telerik:RadComboBox ID="eContractor" runat="server" Label="Contractor:" DataSourceID="SqlDS_Contractor" DataValueField="label" DataTextField="label" Width="225px" AppendDataBoundItems="true"   >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </div>
                                    <div style="width: 500px;padding: 5px 0px 0px 5px;">
                                        <telerik:RadComboBox ID="eDistributor" runat="server" Label="Distributor:" 
                                             DataSourceID="SqlDS_Distributor" DataValueField="label" DataTextField="label" Width="225px" AppendDataBoundItems="true"   >
                                            <Items>
                                                <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </div>
                                    <div style="width: 500px;padding: 5px 0px 0px 5px;">
                                        <telerik:RadNumericTextBox ID="eBidAmount" 
                                            MinValue="0" MaxValue="100000000" Label="Bid Amount:" Width="150px"  LabelWidth="75px"
                                            NumberFormat-DecimalDigits="0" Type="Currency" EnabledStyle-HorizontalAlign="Right" runat="server">
                                        </telerik:RadNumericTextBox>
                                        <telerik:RadComboBox ID="eResult" runat="server" Label="Result:" Width="100px" >
                                            <Items>
                                                    <telerik:RadComboBoxItem runat="server" Text=" - " Value=" - " Selected="true" />
                                                    <telerik:RadComboBoxItem runat="server" Text="Winner" Value="01" />
                                                    <telerik:RadComboBoxItem runat="server" Text="2nd" Value="02" />
                                                    <telerik:RadComboBoxItem runat="server" Text="3rd" Value="03" />
                                                    <telerik:RadComboBoxItem runat="server" Text="4th" Value="04" />
                                                    <telerik:RadComboBoxItem runat="server" Text="5th" Value="05" />
                                                    <telerik:RadComboBoxItem runat="server" Text="6th" Value="06" />
                                                    <telerik:RadComboBoxItem runat="server" Text="7th" Value="07" />
                                                    <telerik:RadComboBoxItem runat="server" Text="8th" Value="08" />
                                                    <telerik:RadComboBoxItem runat="server" Text="9th" Value="09" />
                                                    <telerik:RadComboBoxItem runat="server" Text="10th" Value="10" />
                                            </Items>
                                        </telerik:RadComboBox>
                                    </div> 
                                    <div style="width:500px;padding: 15px 0px 0px 5px;">
                                        <telerik:RadButton ID="btnEditContractor" runat="server" Text="Update Player"  Skin="Silk"></telerik:RadButton>
                                        <asp:Label ID="lblTest" runat="server" ></asp:Label>
                                    </div>
                        </div>
                   </telerik:RadAjaxPanel>
                </telerik:RadPageView>
         
              </telerik:RadMultiPage>  
      
                       <asp:SqlDataSource ID="SqlDS_Contractor" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                      SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
                           <SelectParameters>
                               <asp:Parameter DefaultValue="Contractor" Name="Type" Type="String" />
                               <asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
                               <asp:ControlParameter ControlID="uState" DefaultValue="" Name="Region1" PropertyName="SelectedValue" Type="String" />
                               <asp:Parameter DefaultValue="''" Name="Region2" Type="String" />
                               <asp:Parameter DefaultValue="''" Name="Region3" Type="String" />
                               <asp:Parameter DefaultValue="''" Name="Region4" Type="String" />
                               <asp:Parameter DefaultValue="''" Name="Region5" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <asp:SqlDataSource ID="SqlDS_Distributor" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                          SelectCommand="uspProjectMenusGet" SelectCommandType="StoredProcedure">
                           <SelectParameters>
                               <asp:Parameter DefaultValue="Distributor" Name="Type" Type="String" />
                               <asp:Parameter DefaultValue="Active" Name="TypeStatus" Type="String" />
                               <asp:ControlParameter ControlID="uState" DefaultValue="" Name="Region1" PropertyName="SelectedValue" Type="String" />
                               <asp:Parameter DefaultValue="''" Name="Region2" Type="String" />
                               <asp:Parameter DefaultValue="''" Name="Region3" Type="String" />
                               <asp:Parameter DefaultValue="''" Name="Region4" Type="String" />
                               <asp:Parameter DefaultValue="''" Name="Region5" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
      
      
                      </div>
                     </div>

   
     
                 </telerik:RadAjaxPanel>
              </telerik:RadPageView>
  


            </telerik:RadMultiPage>
        </div>
     
     </div>
     
      <telerik:RadWindowManager ID="Singleton" VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        <Windows>
                <%--<telerik:RadWindow ID="wndwSeeMore" runat="server" Title="Project Detail" Height="800px"
                    Width="1050px" Left="100px" ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" />--%>
                <telerik:RadWindow ID="wndwNewQuoteNoJob" runat="server" Height="620px" Width="750px" Left="100px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" />
                <telerik:RadWindow ID="wndwNewQuoteJob" runat="server" Height="620px" Width="750px" Left="100px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" VisibleStatusbar="false" />
        </Windows> 

    </telerik:RadWindowManager>


    
     
</asp:Content>

