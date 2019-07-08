<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="QuoteStart2.aspx.vb" Inherits="BidTool_QuoteStart2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel2" Runat="server" Skin="Metro" IsSticky="false" InitialDelayTime="0" MinDisplayTime="300" Transparency="0">
    </telerik:RadAjaxLoadingPanel>
    
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
    </script> 

        <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
            <AjaxSettings>
              
                  <%--<telerik:AjaxSetting AjaxControlID="searchCustomer">
                    <UpdatedControls> 
                       <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep3" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteDirections" LoadingPanelID="RadAjaxLoadingPanel1"  />--%>
                        <%--<telerik:AjaxUpdatedControl ControlID="qPrimaryBranchno2" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="qPriceType2" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    </UpdatedControls>
                </telerik:AjaxSetting>--%>
                <telerik:AjaxSetting AjaxControlID="qPrimaryBranchno2">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="qPriceType2" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="qState" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="qDistrict" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <%--<telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep1" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                       
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <%--<telerik:AjaxSetting AjaxControlID="btnNewCustomerSearch">
                    <UpdatedControls> 
                         <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep1" LoadingPanelID="RadAjaxLoadingPanel1" />
                       <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep2" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep3" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
                </telerik:AjaxSetting>--%>

                <telerik:AjaxSetting AjaxControlID="btnStartQuote">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="btnNewCustomerSearch" LoadingPanelID="RadAjaxLoadingPanel1" />

                        <%--<telerik:AjaxUpdatedControl ControlID="RadAjaxPanelGoToQuote" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelGoToQuote" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep1" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep2" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="RadAjaxPanelAddQuoteStep3" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManagerProxy>

        
          
        
        <asp:SqlDataSource ID="SqlDS_BranchQuote" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="uspGetBranchesActiveOnlyLessCorporate" SelectCommandType="StoredProcedure">
            
        </asp:SqlDataSource>         
        
 
        <asp:SqlDataSource ID="SqlDS_District3" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="uspMuniSpecListGet" SelectCommandType="StoredProcedure">
            <SelectParameters>
                    <asp:Parameter Name="State2" DefaultValue = "" Type="String" />
                <%--<asp:ControlParameter ControlID="qState" Name="State2" PropertyName="Text" Type="String" />--%>
            </SelectParameters>
        </asp:SqlDataSource>     

 <div style="width:700px; height:550px; margin:10px;">                 
      
            <div style="width:680px; height:60px;">
                

                <div style="width:400px;float:left;">
                    <h2 style="width:375px; float:left;">Start Quote</h2>
                </div>

                <div style="float:right; width:235px; margin-top:10px;">
                    <telerik:RadButton ID="btnCloseQuote" runat="server" Width="225px" Text="Close/Cancel" OnClientClicking="CloseWindow" Skin="BlackMetroTouch" ></telerik:RadButton>
                </div>
            </div>
            <div style="width:680px; height:120px; margin-top:10px;">
                    <%--<telerik:RadAjaxPanel ID="RadAjaxPanelAddQuoteStep1" runat="server" Width="680px" Height="90px"  >--%>
                            <asp:HiddenField ID="hdnJobID" runat="server" />
     
                           <div style="width:680px; float:left; vertical-align:top; "> 
                                <h6 style="width:630px;">Select Customer</h6>
                           </div>

                            <div id="divCustSearchStart" style="height:20px; width:680px; margin: 5px 0px 10px 20px;">
                                  
                                  <telerik:RadSearchBox ID="searchCustomer" runat="server" Label="Customer Search:" Width="400px" LabelCssClass="myLabelCss"
                                    DataSourceID="SqlDS_CustomerSearch" DataTextField="CustName" DataKeyNames="CustID, CustName, SalesRepID, PriceType,State, WhseID"
                                    DataValueField="CustID" EmptyMessage="No matches." ShowSearchButton="false">
                                  </telerik:RadSearchBox>


                                <asp:SqlDataSource ID="SqlDS_CustomerSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                    SelectCommand="SELECT Customers.CustID, Customers.CustName, Customers.SalesRepID, Customers.PriceType, Customers.WhseID, Branches.State 
                                                    FROM Customers INNER JOIN Branches ON Customers.WhseID = Branches.branchno
                                                    WHERE (Customers.Status = 'Active')">
                                   
                                </asp:SqlDataSource>
                                  
                                <asp:HiddenField ID="qCustID" runat="server" />
                                <asp:HiddenField ID="qCustName" runat="server" />
                                <asp:HiddenField ID="qSalesRepID" runat="server" />
                                <asp:HiddenField ID="qPriceType" runat="server" />

                                <asp:HiddenField ID="qOrigination" runat="server" Value="Q" />
                                <asp:HiddenField ID="qStatus" runat="server" Value="Working" />
                                <asp:HiddenField ID="qCreatedBy" runat="server" />
         
                                
                            </div>
                            <div style="height:50px; width:680px; float:left; margin: 20px 0px 10px 20px; vertical-align:top;">
                                <div style="width:245px; float:left;">
                                    <telerik:RadComboBox ID="qPrimaryBranchno2" runat="server" Label="Branch:" Width="165px" 
                                        DataSourceID="SqlDS_qBranch" DataTextField="comboname" DataValueField="branchno" OnSelectedIndexChanged="qPrimaryBranchno2_SelectedIndexChanged" 
                                        AutoPostBack="true" LabelCssClass="myLabelCss">
                                    </telerik:RadComboBox>
                                    <asp:SqlDataSource ID="SqlDS_qBranch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                        SelectCommand="uspGetBranchesActiveOnlyLessCorporate" SelectCommandType="StoredProcedure">
                                    </asp:SqlDataSource>
                                </div>
                                <div style="width:175px; float:left;">
                                    <telerik:RadComboBox ID="qPriceType2" runat="server" Label="Price Type:" Width="160px" DataSourceID="SqlDS_qPriceType" DataTextField="TypeDescription" DataValueField="PriceType" LabelCssClass="myLabelCss">
                                    </telerik:RadComboBox>
                                    <asp:SqlDataSource ID="SqlDS_qPriceType" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>"  
                                        SelectCommand="SELECT PriceType, TypeDescription FROM Matrix_PriceTypes WHERE WhseID = @WhseID ORDER BY TypeDescription">
                                        <SelectParameters>
                                            <asp:ControlParameter Name="WhseID" ControlID="qPrimaryBranchno2" PropertyName="SelectedValue" Type="String" DefaultValue=""  />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                    <%--</telerik:RadAjaxPanel>--%>
            
            </div>
           

                                       

            <div style="width:650px; height:300px; margin:10px 0px 20px 0px;">
                 <div style="width:650px; "> 
                                <h6>Add Quote Details</h6>
                            </div>      
                       <%--<telerik:RadAjaxPanel ID="RadAjaxPanelAddQuoteStep3" runat="server" Width="650px" Height="290px"  >--%>
                            
                             <div style="height:60px;width:650px;"> 
                                    <div style="width:600px; height:30px; float: left; margin-top:5px; margin-left:20px;">    
                                        <telerik:RadTextBox ID="qProjectName" runat="server" Label="Project Name:" LabelWidth="125px"
                                            MaxLength="50" Width="375px" LabelCssClass="myLabelCss" >
                                        </telerik:RadTextBox>
                                        <%--<asp:RequiredFieldValidator ID="qProjectNameFieldValidator" runat="server" Display="Dynamic" ControlToValidate="qProjectName" ErrorMessage="A Project Name is Required"></asp:RequiredFieldValidator>--%>
                                    </div>
                                    <div style="width:630px; height:30px; float: left;margin-top:5px; margin-left:20px;">      
                                        <telerik:RadTextBox ID="qProjectSubTitle" runat="server" Label="Subtitle: " LabelWidth="125px"
                                            MaxLength="40" Width="375px" LabelCssClass="myLabelCss" >
                                        </telerik:RadTextBox>
                                    </div>
                              </div>
                            
                            <div style="height:60px; width:650px; margin-top:5px; margin-left:20px;"> 
                                 <div style="width:600px; float: left; height:30px;">        
                                     <telerik:RadTextBox ID="qQuoteName" runat="server" Label="Quote Name: " LabelWidth="125px" Text="Base Quote"
                                             MaxLength="40" EmptyMessage="Quote Name" EmptyMessageStyle-Font-Italic="true" Width="375px" LabelCssClass="myLabelCss" >
                                     </telerik:RadTextBox>
                                 </div>
                                 
                                 <div style="width:375px; height:30px; float: left;">
                                    <div style="width:125px; float:left;">
                                        <asp:Label ID="Label1" runat="server" Text="Work Type:" Width="125px" CssClass="myLabelCss"></asp:Label>
                                    </div>
                                    <div style="width:250px; float:left;">
                                         <telerik:RadComboBox runat="server" ID="qWorkType" Font-Bold="false" Width="175px" LabelCssClass="myLabelCss" >
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
                             </div>
                            
                            <div style="height:160px;width:650px;float:left;margin:5px 0px 0px 20px;"> 
                                <div style="float:left; width:600px; height:30px; ">
                                    <telerik:RadTextBox ID="qAddress" runat="server" Label="Project Address:" MaxLength="50" Width="375px" LabelWidth="125px" LabelCssClass="myLabelCss" >
                                    </telerik:RadTextBox>
                                </div>
                                <div style="float:left; width:600px; height:30px; ">
                                    <telerik:RadTextBox ID="qCity" runat="server" Label="City:" MaxLength="50" Width="375px" LabelWidth="125px" LabelCssClass="myLabelCss"  >
                                    </telerik:RadTextBox>
                                </div>
                                <div style="float:left; width:600px; height:30px; ">
                                    <div style="width:125px; float:left;">
                                        <asp:Label ID="Label3" runat="server" Text="State:" Width="125px" CssClass="myLabelCss"></asp:Label>
                                    </div>
                                   

                                    <telerik:RadComboBox ID="qState" Width="150px"  runat="server"  EnableAjaxSkinRendering="true" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat="server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat="server" Text="Idaho" Value="ID" />
                                            <telerik:RadComboBoxItem runat="server" Text="Kansas" Value="KS" />
                                            <telerik:RadComboBoxItem runat="server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat="server" Text="Oklahoma" Value="OK" />
                                            <telerik:RadComboBoxItem runat="server" Text="Nebraska" Value="NE" />
                                            <telerik:RadComboBoxItem runat="server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat="server" Text="Oklahoma" Value="OK" />
                                            <telerik:RadComboBoxItem runat="server" Text="South Dakota" Value="SD" />
                                            <telerik:RadComboBoxItem runat="server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat="server" Text="Utah" Value="UT" />
                                            <telerik:RadComboBoxItem runat="server" Text="Wyoming" Value="WY" />
                                        </Items>
                                    </telerik:RadComboBox>
                                    
                                    
                                  
                                </div>
                                <div style="float:left; width:600px; height:30px; ">
                                         <telerik:RadTextBox ID="qZip" runat="server" Label="Zip:" MaxLength="10" EmptyMessageStyle-Font-Italic="true" Width="200px" LabelWidth="125px" LabelCssClass="myLabelCss" >
                                         </telerik:RadTextBox>
                                </div>
                                <div style="float:left; width:600px; height:30px; ">
                                    <div style="width:125px; float:left;">
                                        <asp:Label ID="Label2" runat="server" Text="District:" Width="125px" CssClass="myLabelCss"></asp:Label>
                                    </div>
                                    <div style="width:250px; float:left;">
                                    
                                        <telerik:RadComboBox ID="qDistrict" Runat="server" Width="240px"  
                                            DataSourceID="SqlDS_District3" DataTextField="CustName" DataValueField="SpecID" AppendDataBoundItems="false" >
                                           <%-- <items>
                                                <telerik:radcomboboxitem text="-" value="532" />
                                            </items>--%>
                                         </telerik:RadComboBox>

                                            <telerik:RadToolTip ID="RadToolTipqDistrict" runat="server" TargetControlID="qDistrict" Title="District" Position="BottomRight" Width="200px" HideEvent="LeaveToolTip" 
                                                            Text="Please select the water district/municipality whose specificiations will be used in creating a quote." >
                                            </telerik:RadToolTip>
                                    </div>
                                </div>
                                
                             </div>

        
                            
                       <%-- </telerik:RadAjaxPanel>--%>
            </div>          
           
            <div style="width:650px; height:40px; margin-top:10px;">            
                       <%-- <telerik:RadAjaxPanel ID="RadAjaxPanelAddQuoteDirections" runat="server" Width="650px" Height="30px"  >--%>
                            <div style="height:30px; width:600px; padding:5px 0px 0px 20px; margin-top:10px;"> 
                               <%--<div style="width:220px; float:left;margin-top:10px;">  
                                 <telerik:RadButton ID="btnNewCustomerSearch" runat="server" Width="200px" ButtonType="LinkButton" Skin="BlackMetroTouch" ></telerik:RadButton>
                               </div> --%>
                               <div style="width:220px; float:left; margin-top:10px;">
                                 <telerik:RadButton ID="btnStartQuote" runat="server" Width="200px" ButtonType="LinkButton" Text="Start Quote" Skin="BlackMetroTouch"  ></telerik:RadButton>
                               </div>
     
                                 
                            </div>
                       <%-- </telerik:RadAjaxPanel>--%>
            </div>
             <div style="width:650px; height:10px; margin-top:20px;">            
                        <%--<telerik:RadAjaxPanel ID="RadAjaxPanelGoToQuote" runat="server" Width="100%" Height="30px"  >--%>
                            <div style="height:30px; width:455px; margin:15px 0px 0px 20px;">
                                <telerik:RadButton ID="btnGoToQuote" runat="server" Width="200px" ButtonType="LinkButton" OnClientClicking="CloseWindow" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>
                            </div>
                        <%--</telerik:RadAjaxPanel>--%>
            </div>            
</div>


</asp:Content>

