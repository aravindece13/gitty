<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/HR_Secure.master" AutoEventWireup="false" CodeFile="News_Future.aspx.vb" Inherits="HR_Secure_News_Future" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>HR | Future News</h1>


    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDataSourceNews" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>    
 
 <div id="News" style="padding:2px 5px 2px 5px; width:95%; height:75%;">   
     <telerik:RadTabStrip ID="RadTabStrip1" runat="server" SelectedIndex="0" >
         <Tabs>
             <telerik:RadTab runat="server" Text="HR" Value="HR"></telerik:RadTab>
             <telerik:RadTab runat="server" Text="Payroll" Value="Payroll"></telerik:RadTab>
         </Tabs>
     </telerik:RadTabStrip>
    
    
     <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="SqlDataSourceNews" 
            AllowAutomaticInserts="True" AllowAutomaticUpdates="True" 
            GridLines="None" Width="100%" Height="500px">
            <MasterTableView DataSourceID="SqlDataSourceNews" AutoGenerateColumns="False" 
            CommandItemDisplay="Bottom" CommandItemSettings-AddNewRecordText="Add News Item">
            
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>

                <NoRecordsTemplate>
                    <div id="NewsHeadline">
                    No news to report.
                    </div>
                </NoRecordsTemplate>

            <ExpandCollapseColumn>
            <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>

            <CommandItemSettings AddNewRecordText="Add News Item">
            </CommandItemSettings>
                <Columns>
                    <telerik:GridEditCommandColumn ButtonType="ImageButton" EditImageUrl="../Images/Edit_Blue.png" HeaderStyle-Width="30px">
                        <HeaderStyle Width="30px"></HeaderStyle>
                    </telerik:GridEditCommandColumn>
            
            
                    <telerik:GridBoundColumn Visible="False" UniqueName="NewsID" DataField="NewsID" DataType="System.Int32" 
                        HeaderText="NewsID" ReadOnly="true">
                    </telerik:GridBoundColumn>
            
            
                  <telerik:GridTemplateColumn UniqueName="TemplateColumn">
                    
                
                    <ItemTemplate>
                        <div id="NewsHeadline" style="width:80%;">
                            <asp:Label ID="TopicAreaLabel" runat="server" 
                                    Text='<%# Eval("TopicArea") %>' /> | <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
                        </div><br />

                        <div id="NewsItem" style="width:800px; padding: 0px 0px 0px 3px;">
                            <asp:Label ID="NewsItemLabel" runat="server" Text='<%# Eval("NewsItem") %>'  />
                        </div>
                        <br />
                        <div id="NewsItemTags" style="width:100%; padding: 0px 0px 0px 3px;">
                            <asp:Label ID="lblTags" runat="server" Text="Tags: "></asp:Label>
                            <asp:Label ID="NewsItemTagLabel" runat="server" Text='<%# Eval("Tags") %>' />
                        </div>
                        <br />
                        <div id="NewsItemStats" style="width:100%; padding: 0px 0px 0px 3px;">
                            <asp:Label ID="lblCreatedBy1" runat="server" Text="Created By: " Font-Size="X-Small" ></asp:Label>
                            <asp:Label ID="lblCreatedBy2" runat="server" Text='<%# Eval("CreatedBy") %>' Font-Size="X-Small"></asp:Label> &nbsp;
                            <asp:Label ID="lblCreatedDate" runat="server" Text='<%# Eval("CreatedDate") %>' Font-Size="X-Small" ></asp:Label> &nbsp;
                            <asp:Label ID="lblModifiedBy1" runat="server" Text="Modified By: " Font-Size="X-Small" ></asp:Label>
                            <asp:Label ID="lblModifiedBy2" runat="server" Text='<%# Eval("ModifiedBy") %>' Font-Size="X-Small"></asp:Label> &nbsp;
                            <asp:Label ID="lblModifiedDate" runat="server" Text='<%# Eval("ModifiedDate") %>' Font-Size="X-Small" ></asp:Label> &nbsp;
                        </div>
                  </ItemTemplate>
                        
                        
                </telerik:GridTemplateColumn>
                </Columns>

                <EditFormSettings EditFormType="Template">
                     <EditColumn UniqueName="EditCommandColumn1" EditFormColumnIndex="2"></EditColumn>
                    
                
                    <FormTemplate>
                        <div id="divEditItem" style="width:100%;padding:3px 0px 3px 40px; height:350px;background-color: yellow;">
                            <h6>Edit/Create News Item</h6>
                            <div id="divEditLine1" style="padding:0px 0px 0px 10px;">
                                <asp:Label ID="asplbl1" runat="server" Text=""></asp:Label>
                                
                                <asp:HiddenField ID="NewsID" runat="server" Value='<%# Bind("NewsID") %>' />
                                <telerik:RadTextBox ID="CreatedBy" Visible="false" Text="" runat="server"></telerik:RadTextBox>
                                <telerik:RadTextBox ID="CreatedDate" Visible="false" Text="" runat="server"></telerik:RadTextBox>
                                <telerik:RadTextBox ID="ModifiedBy" Visible="false" Text="" runat="server"></telerik:RadTextBox>
                                <telerik:RadTextBox ID="ModifiedDate" Visible="false" Text="" runat="server"></telerik:RadTextBox>
                                
                                <telerik:RadTextBox ID="Headline" runat="server" Width="250px" 
                                    Label="Headline: " Text='<%# Bind("Headline") %>' >
                                </telerik:RadTextBox>
                                
                                <telerik:RadComboBox ID="TopicArea" runat="server" Width="160px" 
                                    Label="Topic Area: " SelectedValue='<%# Bind("TopicArea") %>'>
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="HR" Value="HR" />
                                        <telerik:RadComboBoxItem runat="server" Text="Payroll" Value="Payroll" />                                   
                                    </Items>
                                </telerik:RadComboBox>
                            </div>
                            
                            <div id="divEditLine2" style="padding:0px 0px 0px 10px;">
                                <asp:Label ID="lblStartDate" runat="server" Text="Start Date: "></asp:Label>
                                <telerik:RadDatePicker ID="StartDate" runat="server" 
                                    Culture="English (United States)" DbSelectedDate='<%# Bind("StartDate") %>' Width="100px">
                                    <Calendar ID="Calendar1" runat="server" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" 
                                        ViewSelectorText="x">
                                    </Calendar>
                                    <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                    <DateInput ID="DateInput1" runat="server" DateFormat="M/d/yyyy" DisplayDateFormat="M/d/yyyy">
                                    </DateInput>
                                </telerik:RadDatePicker>
                                <asp:Label ID="lblEndDate" runat="server" Text="End Date: "></asp:Label>
                                <telerik:RadDatePicker ID="EndDate" runat="server" 
                                    Culture="English (United States)" DbSelectedDate='<%# Bind("EndDate") %>' Width="100px">
                                    <Calendar ID="Calendar2" runat="server" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False" 
                                        ViewSelectorText="x">
                                    </Calendar>
                                    <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                    <DateInput ID="DateInput2" runat="server" DateFormat="M/d/yyyy" DisplayDateFormat="M/d/yyyy">
                                    </DateInput>
                                </telerik:RadDatePicker>
                                <telerik:RadComboBox ID="DisplayPriority" runat="server" 
                                    Label="Display Priority: "  
                                    SelectedValue='<%# Bind("DisplayPriority") %>' Width="150px">
                                    <Items>
                                        <telerik:RadComboBoxItem runat="server" Text="2-Normal Priority" Value="2" />
                                        <telerik:RadComboBoxItem runat="server" Text="1-Highest Priority" Value="1" />
                                     </Items>
                                </telerik:RadComboBox>
                            </div>
                            
                            <div id="divEditLine3" style="padding:0px 0px 0px 10px;">
                                <telerik:RadEditor ID="NewsItem" runat="server" 
                                    Content='<%# Bind("NewsItem") %>' Font-Names="Century Gothic" 
                                     
                                    
                                    Font-Size="Medium" Height="200px" Width="900px" 
                                    NewLineBr="true" EnableResize="false">
                                    <Tools>
                                        <telerik:EditorToolGroup>
                                            
                                            <telerik:EditorTool Name="Copy" ShowIcon="true" />
                                            <telerik:EditorTool Name="Paste" ShowIcon="true" />
                                            <telerik:EditorTool Name="PasteFromWord" ShowIcon="true" />
                                            <telerik:EditorTool Name="Bold" ShowIcon="true" />
                                            <telerik:EditorTool Name="Italic" ShowIcon="true" />
                                            <telerik:EditorTool Name="Underline" ShowIcon="true" />
                                            <telerik:EditorTool Name="LinkManager" ShowIcon="true" />
                                            <telerik:EditorTool Name="Indent" ShowIcon="true" />
                                            <telerik:EditorTool Name="Outdent" ShowIcon="true" />
                                            <telerik:EditorTool Name="AjaxSpellCheck" ShowIcon="true" />
                                            
                                        </telerik:EditorToolGroup>
                                    </Tools>
                                   
                                    
                                    <Content>
                                        
                                    </Content>
                                </telerik:RadEditor>
                            </div>
                        
                            <br />
                            <div id="divEditTags" style="padding:0px 0px 0px 10px;">
                                <telerik:RadTextBox ID="RadTextBox1" Label="Tags: " Text='<%# Bind("Tags") %>' MaxLength="100" Width="750px" runat="server"></telerik:RadTextBox>
                            </div>
                        
                            <div id="divbtns" style="height:auto; width:700px; clear:both ;float:left; padding:5px 5px 5px 10px;" >
                                        <asp:Button ID="Button1" runat="server" 
                                            CommandName='<%# Iif (TypeOf Container is GridEditFormInsertItem, "PerformInsert", "Update") %>' 
                                            Text='<%# Iif (TypeOf Container is GridEditFormInsertItem, "Add News Item", "Update") %>' />
                                        &nbsp;
                                        <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                            CommandName="Cancel" Text="Cancel" />
                            </div>
                        </div>
                    </FormTemplate>
                </EditFormSettings>
                
            </MasterTableView>
             
             <ClientSettings>
                 <Scrolling AllowScroll="True" UseStaticHeaders="True" />
             </ClientSettings>
     
     </telerik:RadGrid>
    
    
    <asp:SqlDataSource ID="SqlDataSourceNews" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        DeleteCommand="DELETE FROM [aNews] WHERE [NewsID] = @NewsID" 
        InsertCommand="INSERT INTO [aNews] ([TopicArea], [StartDate], [EndDate], [Headline], [NewsItem], 
                        [CreatedBy], [CreatedDate], [DisplayPriority], [Tags]) 
                        VALUES (@TopicArea, @StartDate, @EndDate, @Headline, @NewsItem, @CreatedBy, @CreatedDate, 
                        @DisplayPriority, @Tags)" 
        SelectCommand="SELECT NewsID, TopicArea, StartDate, EndDate, Headline, NewsItem, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, DisplayPriority, Tags 
                        FROM aNews 
                        WHERE (TopicArea LIKE @TopicArea) AND (StartDate &gt;=  { fn NOW() })
                        ORDER BY DisplayPriority, StartDate DESC" 
        
        UpdateCommand="UPDATE [aNews] 
                        SET [TopicArea] = @TopicArea, [StartDate] = @StartDate, [EndDate] = @EndDate, [Headline] = @Headline, 
                        [NewsItem] = @NewsItem, [ModifiedBy] = @ModifiedBy, [ModifiedDate] = @ModifiedDate, [DisplayPriority] = @DisplayPriority, [Tags]=@Tags 
                        WHERE [NewsID] = @NewsID">
        
        <SelectParameters>
            <asp:Parameter Name="TopicArea" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="NewsID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="TopicArea" Type="String"  />
            <asp:Parameter Name="StartDate" Type="DateTime"  />
            <asp:Parameter Name="EndDate" Type="DateTime"  />
            <asp:Parameter Name="Headline" Type="String" />
            <asp:Parameter Name="NewsItem" Type="String" />
            <asp:Parameter Name="ModifiedBy" Type="String"  />
            <asp:Parameter Name="ModifiedDate" Type="DateTime" />
            <asp:Parameter Name="DisplayPriority" Type="Single" />
            <asp:Parameter Name="Tags" Type="String" />
            <asp:Parameter Name="NewsID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="TopicArea" Type="String" />
            <asp:Parameter Name="StartDate" Type="DateTime" />
            <asp:Parameter Name="EndDate" Type="DateTime"  />
            <asp:Parameter Name="Headline" Type="String"  />
            <asp:Parameter Name="NewsItem" Type="String"  />
            <asp:Parameter Name="CreatedBy" Type="String"  />
            <asp:Parameter Name="CreatedDate" Type="DateTime"  />
            <asp:Parameter Name="DisplayPriority" Type="Single" />
            <asp:Parameter Name="Tags" Type="String" />
        </InsertParameters>
     </asp:SqlDataSource>
    
     
     <br />
    </div>

</asp:Content>

