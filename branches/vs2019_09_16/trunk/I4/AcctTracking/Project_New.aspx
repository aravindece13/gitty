<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Project_New.aspx.vb" Inherits="AcctTracking_Project_New" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script type="text/javascript">
            function CloseAndRebind(args) {
//                GetRadWindow().BrowserWindow.refreshGrid(args);
                GetRadWindow().close();
            }

            function GetRadWindow() {
                var oWindow = null;
                if (window.radWindow) oWindow = window.radWindow; //Will work in Moz in all cases, including clasic dialog
                else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow; //IE (and Moz as well)

                return oWindow;
            }

            function CancelEdit() {
                GetRadWindow().close();
            }
     </script>


    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="Product">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="Product" LoadingPanelID="" />
                                      
                    
                    
                </UpdatedControls>
                
            </telerik:AjaxSetting>
                
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
    </telerik:RadAjaxLoadingPanel>

    <div id="divFormView" style="padding: 5px 2px 5px 5px;">
        <h6>New Project for <asp:Label ID="lblCustomer" runat="server"></asp:Label></h6>
        
        
          <asp:HiddenField ID="Status" runat="server" Value="Active" />
          <asp:HiddenField ID="hdnCUSTKEY" runat="server" />
          <asp:HiddenField ID="CreatedDate" runat="server" />
          <asp:HiddenField ID="CreatedBy" runat="server" />
          <asp:HiddenField ID="ModifiedDate" runat="server" />
          <asp:HiddenField ID="ModifiedBy" runat="server" />
          
          

          
           
          <div id="divFields" style="width:490px;padding: 5px 2px 10px 5px;"> 
            
                <div style="padding:2px 0px 2px 0px;">
                   <div style="padding:3px 0px 3px 0px;width:575px;">
                        <telerik:RadComboBox ID="Product" runat="server" AutoPostBack="true" Width="100px" Label="Product:"  >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="" Value="" />
                                <telerik:RadComboBoxItem runat="server" Text="FlexNet" Value="FlexNet" />
                                <telerik:RadComboBoxItem runat="server" Text="iPerl" Value="iPerl" />
                                <telerik:RadComboBoxItem runat="server" Text="Omni" Value="Omni" />
                                <telerik:RadComboBoxItem runat="server" Text="Radio" Value="Radio" />
                                <telerik:RadComboBoxItem runat="server" Text="VGB" Value="VGB" />
                                <telerik:RadComboBoxItem runat="server" Text="Electric" Value="Electric" />
                                <telerik:RadComboBoxItem runat="server" Text="Gas" Value="Gas" />
                            </Items>
                        </telerik:RadComboBox>
                    
                    
                        <telerik:RadTextBox ID="Desc1" Label="Project Description:" runat="server" Width="300px" MaxLength="100" ></telerik:RadTextBox>
                    </div>
                    <div style="padding:3px 0px 3px 0px;width:575px;">
                        <telerik:RadNumericTextBox ID="SaleEst" Label="Estimated Sale Value ($):" Value="0"
                            NumberFormat-DecimalDigits="0" width="200px"
                            EnabledStyle-HorizontalAlign="Right" EmptyMessageStyle-HorizontalAlign="Right" FocusedStyle-HorizontalAlign="Right" runat="server" ></telerik:RadNumericTextBox>
                        <telerik:RadComboBox ID="Month" Label="Estimated Sale Completion:" runat="server" Width="80px" >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                <telerik:RadComboBoxItem runat="server" Text="January" Value="January" />
                                <telerik:RadComboBoxItem runat="server" Text="February" Value="February" />
                                <telerik:RadComboBoxItem runat="server" Text="March" Value="March" />
                                <telerik:RadComboBoxItem runat="server" Text="April" Value="April" />
                                <telerik:RadComboBoxItem runat="server" Text="May" Value="May" />
                                <telerik:RadComboBoxItem runat="server" Text="June" Value="June" />
                                <telerik:RadComboBoxItem runat="server" Text="July" Value="July" />
                                <telerik:RadComboBoxItem runat="server" Text="August" Value="August" />
                                <telerik:RadComboBoxItem runat="server" Text="September" Value="September" />
                                <telerik:RadComboBoxItem runat="server" Text="October" Value="October" />
                                <telerik:RadComboBoxItem runat="server" Text="November" Value="November" />
                                <telerik:RadComboBoxItem runat="server" Text="December" Value="December" />                           
                            </Items>
                        </telerik:RadComboBox>
                        <telerik:RadComboBox ID="Year" Label="" Width="45px"  runat="server" >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="-" Value="-" />
                                <telerik:RadComboBoxItem runat="server" Text="2011" Value="2011" />
                                <telerik:RadComboBoxItem runat="server" Text="2012" Value="2012" />
                                <telerik:RadComboBoxItem runat="server" Text="2013" Value="2013" />
                                <telerik:RadComboBoxItem runat="server" Text="2014" Value="2014" />                       
                            </Items>
                        </telerik:RadComboBox>
                   
                    </div>
                    
                    
                    
                                  
                    
                    
                    
                    
                    
                   
                    
                
                <div style="padding: 10px 2px 5px 5px; width:400px; height:20px;">
                   
                    <asp:Button ID="btnCreate" runat="server" Text="Add Project" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />    
                </div>
                
                </div>
          </div> 
          
     </div>
   
</asp:Content>

