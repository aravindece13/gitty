<%@ Page Title="Project" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="xProject.aspx.vb" Inherits="AcctTracking_Project" %>

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
                if (window.radWindow) oWindow = window.radWindow; 
                else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow; //IE (and Moz as well)

                return oWindow;
            }

            function CancelEdit() {
                GetRadWindow().close();
            }
     </script>




<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="grdTasks">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTasks" />
                    <telerik:AjaxUpdatedControl ControlID="hdnTaskIndex" />
                    <telerik:AjaxUpdatedControl ControlID="TaskComment" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="btnAddTaskFeedback" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lblTaskFeedbackTitle" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="lvNoteHistory" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel3" LoadingPanelID="RadAjaxLoadingPanel1" />
    
                </UpdatedControls>
               
            </telerik:AjaxSetting>               
        
        
            <telerik:AjaxSetting AjaxControlID="btnAddTask">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTasks" LoadingPanelID="RadAjaxLoadingPanel1" />
                     <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel3" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting>               
            
            
            <telerik:AjaxSetting AjaxControlID="btnAddTaskFeedback">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdTasks" LoadingPanelID="RadAjaxLoadingPanel1" />
                     <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel3" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
           </telerik:AjaxSetting> 


        </AjaxSettings>
</telerik:RadAjaxManagerProxy>



<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false"
            InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>



    <div id="divFormView" style="padding: 5px 2px 5px 10px; width:1100px;">
        <h6>Project: <asp:Label ID="lblCustomer" runat="server"></asp:Label></h6>
        

        <div id="divHiddenFields">   
          <asp:HiddenField ID="hdnProjectIndex" runat="server" />
          <asp:HiddenField ID="hdnCUSTKEY" runat="server" />
          <asp:HiddenField ID="hdnProduct" runat="server" />
          <asp:HiddenField ID="CreatedDate" runat="server" />
          <asp:HiddenField ID="CreatedBy" runat="server" />
          <asp:HiddenField ID="ModifiedDate" runat="server" />
          <asp:HiddenField ID="ModifiedBy" runat="server" />
         </div> 
        
            
            <div id="divHeader" style="padding:2px 0px 2px 0px;">
               
               <div id="divStatusDesc" style="padding:3px 0px 3px 0px;width:900px;">
                        <telerik:RadComboBox ID="Status" runat="server" Width="100px" Label="Status:"   >
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                <telerik:RadComboBoxItem runat="server" Text="Inactive" Value="Inactive" />
                            </Items>
                        </telerik:RadComboBox>
                                       
                        <telerik:RadTextBox ID="Desc1" Label="Project Description:" runat="server" Width="350px" MaxLength="100" ></telerik:RadTextBox>
                        
                    <asp:Button ID="btnUpdate" runat="server" Text="Update Project" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />
               </div>
               <div id="divSaleEstMonthYear" style="padding:3px 0px 3px 0px;width:900px;">
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
                                <telerik:RadComboBoxItem runat="server" Text="2009" Value="2009" />
                                <telerik:RadComboBoxItem runat="server" Text="2010" Value="2010" />
                                <telerik:RadComboBoxItem runat="server" Text="2011" Value="2011" />
                                <telerik:RadComboBoxItem runat="server" Text="2012" Value="2012" />
                                <telerik:RadComboBoxItem runat="server" Text="2013" Value="2013" />
                                <telerik:RadComboBoxItem runat="server" Text="2014" Value="2014" />                       
                            </Items>
                        </telerik:RadComboBox>
                       <hr style="width:890px;height:1px; background-color:Silver; float:left;" />
                   </div>
            </div>         
      <div id="divTasksLeft" style="width:1050px;height:300px;padding:2px 0px 2px 0px; float:left;">
        <div id="divTaskGrid" style="width:425px;height:300px;float:left;">
            <h6>Project Tasks (Select Task To See Notes Below)</h6>
            
            <telerik:RadGrid ID="grdTasks" runat="server" AllowSorting="True" AllowAutomaticUpdates="True"
                        DataSourceID="SqlDS_Tasks"   
                        GridLines="None" Width="425px" Height="248px" 
                AutoGenerateColumns="False" >
            
            
            <ClientSettings Selecting-AllowRowSelect="true" 
                    EnableRowHoverStyle="true" EnablePostBackOnRowClick="True" >
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" 
                    FrozenColumnsCount="0" />

                <Selecting AllowRowSelect="True"></Selecting>
            </ClientSettings>
            
            
            <MasterTableView DataKeyNames="TaskIndex" DataSourceID="SqlDS_Tasks" EditMode="InPlace">
                <NoRecordsTemplate>
                    This project currently does not include a task.
                </NoRecordsTemplate>
               
            <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

            <RowIndicatorColumn>
            <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>

            <ExpandCollapseColumn>
            <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
                <Columns>
                    <telerik:GridEditCommandColumn UniqueName="EditCommandColumn" HeaderText="Edit"
                    UpdateText="Update" ItemStyle-Wrap="true" >
                        <HeaderStyle Width="100px" Font-Size="X-Small" />
                        <ItemStyle Font-Size="X-Small" />
                    </telerik:GridEditCommandColumn>
                    
                    <telerik:GridDropDownColumn HeaderText="Status" UniqueName="Status" 
                        DataSourceID="SqlDS_Status" DataField="Status" ListTextField="Display" ListValueField="Value"
                        ColumnEditorID="GridDropDownColumnEditor1" 
                        HeaderStyle-Width="100px" HeaderStyle-Font-Size="X-Small"    
                        ItemStyle-Width="100px" ItemStyle-Font-Size="X-Small">
                    </telerik:GridDropDownColumn>
                    
                   
                    
                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" 
                        SortExpression="Description" UniqueName="Description" ReadOnly="true">
                    <HeaderStyle Width="150px" Font-Size="X-Small" />
                    <ItemStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Top" Wrap="true" Font-Size="X-Small" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="DueDate" DataType="System.DateTime" ReadOnly="true"
                        HeaderText="Due" SortExpression="DueDate" UniqueName="DueDate" DataFormatString="{0:MM/dd/yy}">
                    <HeaderStyle Width="60px" Font-Size="X-Small" />
                    <ItemStyle Width="60px" HorizontalAlign="Left" Font-Size="X-Small" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="TaskIndex" DataType="System.Int32" 
                        HeaderText="TaskIndex" ReadOnly="True" SortExpression="TaskIndex" 
                        UniqueName="TaskIndex" Display="false" Visible="False">
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="ModifiedDate" DataType="System.DateTime" 
                        HeaderText="Modified" SortExpression="ModifiedDate" 
                        UniqueName="ModifiedDate" DataFormatString="{0:MM/dd/yy}" Display="false" 
                        Visible="False" ItemStyle-Font-Size="X-Small">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ModifiedBy" HeaderText="Modified By" 
                        SortExpression="ModifiedBy" UniqueName="ModifiedBy" Display="false" 
                        Visible="False" ItemStyle-Font-Size="X-Small">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CreatedDate" DataType="System.DateTime" 
                        HeaderText="Created" SortExpression="CreatedDate" UniqueName="CreatedDate" 
                        DataFormatString="{0:MM/dd/yy}" Display="false" Visible="False">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CreatedBy" HeaderText="CreatedBy" 
                        SortExpression="CreatedBy" UniqueName="CreatedBy" Display="false" 
                        Visible="False">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ProjectIndex" DataType="System.Int32" 
                        HeaderText="ProjectIndex" SortExpression="ProjectIndex" 
                        UniqueName="ProjectIndex" Display="false" Visible="False">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="CUSTKEY" DataType="System.Int32" 
                        HeaderText="CUSTKEY" SortExpression="CUSTKEY" UniqueName="CUSTKEY" 
                        Display="false" Visible="False">
                    </telerik:GridBoundColumn>
                </Columns>

                <EditFormSettings>
                <EditColumn UniqueName="EditCommandColumn1"></EditColumn>
                </EditFormSettings>
            </MasterTableView>
              <ClientSettings>
                  <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                  <Selecting AllowRowSelect="True" />
              </ClientSettings>
          </telerik:RadGrid>
          
          <telerik:GridDropDownListColumnEditor ID="GridDropDownColumnEditor1" runat="server" 
                DropDownStyle-Width="60px" DropDownStyle-Height="50px"    />
          
                <asp:SqlDataSource ID="SqlDS_Tasks" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
              
                SelectCommand="SELECT [TaskIndex], [Status], [Description], [DueDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ProjectIndex], [CUSTKEY] FROM [aAcct_ProjectTasks] WHERE ([ProjectIndex] = @ProjectIndex) ORDER BY [Status], [CreatedDate] DESC" 
                UpdateCommand="UPDATE [aAcct_ProjectTasks] SET [Status] = @Status WHERE [TaskIndex] = @TaskIndex">
                <SelectParameters>
                  <asp:QueryStringParameter DefaultValue="0" Name="ProjectIndex" 
                      QueryStringField="ProjectIndex" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                         <asp:Parameter Name="Status" Type="String" />
                </UpdateParameters>
                  </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDS_Status" runat="server"
                    ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                    SelectCommand="SELECT [Display], [Value]
                                FROM [aMenu] 
                                WHERE ([Menu]='General' AND [Type]='Status') ORDER BY [DisplaySeq] ">
                </asp:SqlDataSource>
            
            </div>
         
         <div id="divTasksRight" style="padding:10px 0px 10px 5px;width:575px;height:300px; vertical-align:top; float:Left;">
             <div id="tabTask" style="width:575px; vertical-align:top;float:left;">
             <telerik:RadTabStrip ID="RadTabStrip1" runat="server"  
                    MultiPageID="RadMultiPage1" SelectedIndex="2"  CausesValidation="false" Width="300px">
                    <Tabs> 
                        <telerik:RadTab runat="server" Text="Add Task" PageViewID="AddTasks" Selected="true"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Add Comment" PageViewID="AddComment"></telerik:RadTab>
                        
                    </Tabs>
                </telerik:RadTabStrip>
             </div>
         <div style="padding:2px 2px 2px 1px;">    
         <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="275px" Width="565px">
    
            <telerik:RadPageView ID="AddTasks" runat="server" Selected="true" Height="265px" Width="565px" 
                BorderStyle="Solid" BorderWidth="1px" BorderColor="Silver">  
             
                
                <div style="padding:15px 0px 5px 5px;">  
                <h6>New Task</h6>  
                <asp:Label ID="Label1" runat="server" Text="Due Date: " Font-Bold="true"></asp:Label> 
                <telerik:RadDatePicker ID="DueDate" runat="server" Width="150px"></telerik:RadDatePicker>
                 
                    <asp:HiddenField ID="hdnTaskStatus" runat="server" Value="Active" />
                 <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" >
                    
                 <asp:CheckBoxList ID="TaskList" runat="server" 
                        RepeatDirection="Horizontal" RepeatColumns="5" Font-Size="X-Small">
                     <asp:ListItem>Initial Intro</asp:ListItem>
                     <asp:ListItem>Perform FBA</asp:ListItem>
                     <asp:ListItem>Prop Study</asp:ListItem>
                     <asp:ListItem>Demo</asp:ListItem>
                     <asp:ListItem>Write Spec</asp:ListItem>
                     <asp:ListItem>Council Meeting</asp:ListItem>
                     <asp:ListItem>Field Test Meters</asp:ListItem>
                     <asp:ListItem>Shop Test Meters</asp:ListItem>
                     <asp:ListItem>Bid</asp:ListItem>
                     <asp:ListItem>Receive PO</asp:ListItem>
                 </asp:CheckBoxList> <br  />
                
                 <telerik:RadTextBox ID="TaskOther" Label="Other Task: " Width="200px" MaxLength="25" runat="server" Font-Size="X-Small"></telerik:RadTextBox>
             
                      <div id="divBtnAddTask" style="width:450px;padding:3px 0px 3px 300px;"> 
                         <asp:Button ID="btnAddTask" runat="server" Text="Add Task" CausesValidation="true"  />
                     </div>
                 </telerik:RadAjaxPanel>
                </div> 
      
            </telerik:RadPageView>  
      
            <telerik:RadPageView ID="AddComment" runat="server" Height="265px" Width="565px" 
                BorderStyle="Solid" BorderWidth="1px" BorderColor="Silver">
                    
                    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" >
                     <asp:Label ID="lblTaskFeedbackTitle" runat="server" Text="" Font-Bold="true"  ></asp:Label>      
                        <asp:Label ID="lblCommentsSelectRow" runat="server" Text=""></asp:Label>
                          
                        <asp:HiddenField ID="hdnTaskIndex" runat="server" />
                        <telerik:RadEditor ID="TaskComment" runat="server" Width="450px" Height="170px" >
                            <Tools>
                                 <telerik:EditorToolGroup Tag="MainToolbar">
                                                
                                    <telerik:EditorTool Name="Copy" ShortCut="CTRL+C" />
                                    <telerik:EditorTool Name="Paste" ShortCut="CTRL+V" />
                                    <telerik:EditorTool Name="Undo" ShortCut="CTRL+Z" />
                                    <telerik:EditorTool Name="Redo" ShortCut="CTRL+Y" />
                                    <telerik:EditorTool Name="ForeColor" />
                                    <telerik:EditorTool Name="Bold" />
                                    <telerik:EditorTool Name="StrikeThrough" />
                                    <telerik:EditorTool Name="AjaxSpellCheck" />
                                 </telerik:EditorToolGroup>
                            </Tools>
                          </telerik:RadEditor>
                         <asp:Button ID="btnAddTaskFeedback" runat="server" Text="Add Comment to Task" CausesValidation="false" />
                     
                      </telerik:RadAjaxPanel>
              </telerik:RadPageView>
            
            
            
         </telerik:RadMultiPage>
         </div>
      </div>
      </div>
      <div id="divTaskNoteHistory" style="width:900px;height:400px;padding:4px 4px 4px 4px; float:left;">
      <telerik:RadAjaxPanel ID="RadAjaxPanel3" runat="server" >
      <h6><asp:Label ID="lblFeedbackHistory" runat="server" Text=""></asp:Label></h6>
          <telerik:RadListView ID="lvNoteHistory" runat="server" Width="800px" 
              Height="350px" DataSourceID="SqlDS_TaskNotes">
              <EmptyDataTemplate>
                  No feedback has been provided for this task.
              </EmptyDataTemplate>
          
              <ItemTemplate>
                   <fieldset style="float: left; width: 425px;">
                       <legend><b><%#Eval("Author")%>&nbsp; <%#Eval("CommentDate")%></b> </legend>
                      
                       <%#Eval("Comment")%>
                       
                   </fieldset>
              </ItemTemplate>
          
          
          </telerik:RadListView>
      </telerik:RadAjaxPanel>
      
      
          <asp:SqlDataSource ID="SqlDS_TaskNotes" runat="server" 
              ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
              SelectCommand="SELECT [Comment], [CommentDate], [Author] FROM [aAcct_ProjectTaskNotes] WHERE ([TaskIndex] = @TaskIndex) ORDER BY [CommentDate] DESC">
              <SelectParameters>
                  <asp:ControlParameter ControlID="grdTasks" DefaultValue="0" Name="TaskIndex" 
                      PropertyName="SelectedValue" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
          
      
      
      </div>
      
                
                
                
     </div>
    
         
     
    
</asp:Content>

