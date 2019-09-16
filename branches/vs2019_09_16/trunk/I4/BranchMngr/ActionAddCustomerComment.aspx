<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="ActionAddCustomerComment.aspx.vb" Inherits="BranchMngr_ActionAddCustomerComment" %>

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


    <div id="divFormView" style="padding: 5px 2px 5px 5px;">
        <h6>Add Customer Comment for <asp:Label ID="lblCustomer" runat="server"></asp:Label></h6>
        
          <asp:HiddenField ID="Type" runat="server" Value="Customer" />
          <asp:HiddenField ID="Hide" runat="server" Value="No" />
          <asp:HiddenField ID="CommentDate" runat="server" />
          <asp:HiddenField ID="Author" runat="server" />
          <asp:HiddenField ID="PartnerID" runat="server" />

          
           
          <div id="divFields" style="width:550px;padding: 5px 2px 10px 5px;"> 
            
                <div style="padding:2px 0px 2px 0px;">
                
                    <telerik:RadComboBox ID="DisplayLevel" runat="server"  Height="75px" Width="175px" 
                        Label="Display To:" >
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Text="All Employees" Value="All" />
                            <telerik:RadComboBoxItem runat="server" Text="Exec Level Only" Value="Exec" />
                            <telerik:RadComboBoxItem runat="server" Text="Branch Manager &amp; Above" Value="Branch" />
                        </Items>
                    </telerik:RadComboBox>
                    <br /><br />
                    
                    <telerik:RadEditor ID="Comment" runat="server" ToolsFile="~/TelerikTools/ToolsFile.xml" ToolsWidth="300px" 
                            Width="475px" Height="220px" StripFormattingOptions="All"  >
                                         
                        <Tools>
                            <telerik:EditorToolGroup Tag="MainToolbar">
                                
                                <telerik:EditorTool Name="Copy" ShortCut="CTRL+C" />
                                <telerik:EditorTool Name="Paste" ShortCut="CTRL+V" />
                                <telerik:EditorTool Name="Undo" ShortCut="CTRL+Z" />
                                <telerik:EditorTool Name="Redo" ShortCut="CTRL+Y" />
                                <telerik:EditorTool Name="AjaxSpellCheck" />
                               
                            </telerik:EditorToolGroup>
                        </Tools>
                                         
                        <Content>
</Content>
                        
                    </telerik:RadEditor>
                
                <div style="padding: 10px 2px 5px 5px; width:500px; height:20px;">

                    <asp:Button ID="btnCreate" runat="server" Text="Add Comment" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />    
                </div>
                
                </div>
          </div> 
          
     </div>



</asp:Content>

