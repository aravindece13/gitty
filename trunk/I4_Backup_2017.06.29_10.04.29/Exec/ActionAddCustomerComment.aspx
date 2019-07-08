<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="ActionAddCustomerComment.aspx.vb" Inherits="Exec_ActionAddCustomerComment" %>

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

        <div id="divFormView" style="width:550px; height:310px; Margin:10px; float:left; vertical-align:top;">
                        <asp:HiddenField ID="Type" runat="server" Value="Customer" />
                        <asp:HiddenField ID="Hide" runat="server" Value="No" />
                        <asp:HiddenField ID="CommentDate" runat="server" />
                        <asp:HiddenField ID="Author" runat="server" />
                        <asp:HiddenField ID="PartnerID" runat="server" />
     
           
                <div style="width:100%; height:30px; float:left; vertical-align:top;">                
                    <telerik:RadComboBox ID="DisplayLevel" runat="server" Label="Display To:" >
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Text="All Employees" Value="All" />
                            <telerik:RadComboBoxItem runat="server" Text="Exec Level Only" Value="Exec" />
                            <telerik:RadComboBoxItem runat="server" Text="Branch Manager &amp; Above" Value="Branch" />
                        </Items>
                    </telerik:RadComboBox>
                </div>
                <div style="width:100%; height:220px;">      
                    <telerik:RadEditor ID="Comment" runat="server" ToolsFile="~/TelerikTools/ToolsFile.xml" ToolsWidth="300px" 
                            Width="500px" Height="200px" StripFormattingOptions="All"  >
                                         
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
                </div>
                
                <div style="Margin:10px; width:500px; height:40px;">
                        
                   <div style="margin-right:10px; float:left;">
                        <telerik:RadButton ID="btnCreate" runat="server" Text="Add Comment" UseSubmitBehavior="false" Width="150px" Skin="MetroTouch"></telerik:RadButton>
                   </div>  
                  <div style="margin-right:10px; float:left;">
                        <telerik:RadButton ID="btnCancel" runat="server" Text="Cancel" UseSubmitBehavior="false" Width="150px" Skin="MetroTouch"></telerik:RadButton>
                   </div>  
                     
                     
                    
                    
                    <%--<telerik:RadFormDecorator ID="RadFormDecorator1" runat="server" DecoratedControls="Buttons" Skin="MetroTouch" />--%>
                    <%--<asp:Button ID="btnCreate" runat="server" Text="Add Comment" />--%>
                    <%--<asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />--%>    
                </div>
                
                
          
          
     </div>



</asp:Content>

