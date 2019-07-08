<%@ Control Language="VB" AutoEventWireup="false" CodeFile="form_EmployeeData.ascx.vb" Inherits="Controls_form_EmployeeData" %>


<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700"  Transparency="0">
</telerik:RadAjaxLoadingPanel>

    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="States">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="States"  />
                        <telerik:AjaxUpdatedControl ControlID="GrdCurrentEmployees" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lblTest"  />
                    </UpdatedControls>
                 </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="GrdCurrentEmployees">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="GrdCurrentEmployees" />
                       
                        <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
                </telerik:AjaxSetting>      
                <telerik:AjaxSetting AjaxControlID="RadTabStrip1">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="RadTabStrip1" />
                        <telerik:AjaxUpdatedControl ControlID="RadMultiPage1" />                    
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="btnUpdateEmployee">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="GrdCurrentEmployees" LoadingPanelID="RadAjaxLoadingPanel1" />
                         <telerik:AjaxUpdatedControl ControlID="GrdPastEmployees" />
                        <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
                </telerik:AjaxSetting>     
                <telerik:AjaxSetting AjaxControlID="PStateTabStrip">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="PStateTabStrip"  />
                        <telerik:AjaxUpdatedControl ControlID="GrdPastEmployees" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
                 </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="GrdPastEmployees">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="GrdPastEmployees" LoadingPanelID="RadAjaxLoadingPanel1"/>  
                        <telerik:AjaxUpdatedControl ControlID="GrdCurrentEmployees" LoadingPanelID="RadAjaxLoadingPanel1"/>  
                             
                        <%--<telerik:AjaxUpdatedControl ControlID="Pemployeeid" />--%>    
                        <telerik:AjaxUpdatedControl ControlID="Panel2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>              
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="btnUpdatePastEmployee">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="GrdPastEmployees" />    
                        <telerik:AjaxUpdatedControl ControlID="GrdCurrentEmployees" />        
                        <telerik:AjaxUpdatedControl ControlID="Panel2" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>         
                </telerik:AjaxSetting>  
          
                <telerik:AjaxSetting AjaxControlID="btnAddEmployee">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="Panel3" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>       
                </telerik:AjaxSetting>
                           
                <telerik:AjaxSetting AjaxControlID="lnkEmployeeRoster">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="lnkEmployeeRoster" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>       
                </telerik:AjaxSetting>
            </AjaxSettings>
    </telerik:RadAjaxManagerProxy>

        <asp:SqlDataSource ID="SqlDS_Employees" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="SELECT (HR_Employees.name_last + ', '+ HR_Employees.name_first) AS EmpName, employeeid 
                           FROM Branches INNER JOIN HR_Employees ON Branches.branchno = HR_Employees.branchno 
                           WHERE HR_Employees.status LIKE 'Active' AND (Branches.branchno=@Branchno) 
                           ORDER BY HR_Employees.name_last, HR_Employees.name_first">      
            <SelectParameters>
                 <asp:Parameter Name="Branchno" Type="String" DefaultValue="1" />
            </SelectParameters>
        </asp:SqlDataSource>
   
        <asp:SqlDataSource ID="SqlDS_PastEmployees" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="SELECT (HR_Employees.name_last + ', '+ HR_Employees.name_first) AS EmpName, employeeid 
                           FROM Branches INNER JOIN HR_Employees ON Branches.branchno = HR_Employees.branchno 
                           WHERE HR_Employees.status = 'Inactive' AND (Branches.branchno=@Branchno) 
                           ORDER BY HR_Employees.name_last, HR_Employees.name_first">
              <SelectParameters>
                <asp:Parameter Name="Branchno" Type="String" DefaultValue="1" />
              </SelectParameters>
        </asp:SqlDataSource>

        
 <div id="divBody" style="width:1300px; margin:10px;">   
    
      
      <div id="divTabStrip1" style="margin:0px 0px 10px 0px;float:left;width:100%;">   
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Align="Left" AutoPostBack="true" Skin="MetroTouch" >
            <Tabs>
                <telerik:RadTab runat="server" Text="Current Employees" PageViewID="Current" Selected="true"></telerik:RadTab>
                <telerik:RadTab runat="server" Text="New Employee" PageViewID="New" ></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Past Employees" PageViewID="Past" ></telerik:RadTab>
                <telerik:RadTab runat="server" Text="Roster Export" PageViewID="RosterExport" ></telerik:RadTab>

            </Tabs>
        </telerik:RadTabStrip>
      </div>



        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Width="1300px" >
    
          <telerik:RadPageView ID="Current" runat="server" Width="1300px" Height="700px" Selected="true">             
     
              <div id="divCurrentStateTab" style="width:1300px; margin:0px 0px 5px 0px; float:left;">
                    <telerik:RadTabStrip ID="States" runat="server" ScrollChildren="true" Skin="MetroTouch" Width="1300px" >
                            <Tabs>
                                <telerik:RadTab runat="server" Text="Arizona" Value="7">
                                    <Tabs>
                                        <telerik:RadTab runat="server" Text="7-Phoenix" Value="7" ></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="8-Tucson" Value="8"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="15-Prescott" Value="15"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="17-Lake Havasu" Value="17"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="18-Show Low" Value="18"></telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTab>
                                <telerik:RadTab runat="server" Text="Colorado" SelectedIndex="-1" Value="1" Selected="true">
                                    <Tabs>
                                        <telerik:RadTab runat="server" Text="1-Denver" Value="1" Selected="true" ></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="3-Colorado Springs" Value="3"></telerik:RadTab>
                                        <telerik:RadTab runat="server" Text="6-Ft. Collins" Value="6"></telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTab>
                                
                                <telerik:RadTab runat="server" Text="Nevada" SelectedIndex="-1" Value="20">
                                    <Tabs>
                                        <telerik:RadTab runat="server" Text="20-Henderson" Value="20" Selected="true" ></telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTab>
                                <telerik:RadTab runat="server" Text="Texas" SelectedIndex="-1" Value="11">
                                    <Tabs>
                                        <telerik:RadTab runat="server" Text="11-Amarillo" Value="11" Selected="true" ></telerik:RadTab>
                                       
                                        <telerik:RadTab runat="server" Text="13-Odessa" Value="13"></telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTab>
                                <telerik:RadTab runat="server" Text="Wyoming" SelectedIndex="-1" Value="2">
                                    <Tabs>
                                        <telerik:RadTab runat="server" Text="2-Casper" Value="2" Selected="true" ></telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTab>
        
        
                            </Tabs>
                    </telerik:RadTabStrip>
              </div>
              <div id="divCurrentBody" style="width:1300px; height:700px; vertical-align:top;">
      
                <div id="divCurrentEmpListing" style="margin: 0px 10px 0px 0px;width:250px; height:700px; float:left; ">
        
                    <telerik:RadGrid ID="GrdCurrentEmployees" runat="server" Width="250px" Height="600px"  DataSourceID="SqlDS_Employees" GridLines="None"  >
                
                         <GroupingSettings CaseSensitive="false" />
                
                        <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" />
                            <Selecting AllowRowSelect="True"></Selecting>
                            <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                        </ClientSettings>
                
                        <MasterTableView DataSourceID="SqlDS_Employees" DataKeyNames="employeeid" ClientDataKeyNames="employeeid" AutoGenerateColumns="False">
                            <HeaderStyle VerticalAlign="Bottom" />
                            <Columns>
                                <telerik:GridBoundColumn DataField="EmpName" HeaderText="Employee" DataType="System.String" SortExpression="EmpName" UniqueName="EmpName">
                                    <ItemStyle VerticalAlign="Bottom" Width="180px" />
                                </telerik:GridBoundColumn>
                    
                                <telerik:GridBoundColumn DataField="employeeid" Visible="false" HeaderText="employeeid" DataType="System.String" SortExpression="employeeid" UniqueName="employeeid">
                       
                                </telerik:GridBoundColumn>
                    
                
                            </Columns>

                        </MasterTableView>
                
                    </telerik:RadGrid>
                          
                </div>
        
                <div id="divCurrentEmpUpdatePanel" style="margin: 0px 0px 0px 10px; width:900px; height:500px; float:left;">
                     <asp:Panel ID="Panel1" runat="server" Width="900px" Height="500px" >

                        <div id="divCurrentEmpUpdateTitle" style="margin:0px 0px 0px 0px; width:100%;">
                            <h3 style="width:500px;"><asp:Label ID="lblEmployeeName" runat="server"></asp:Label></h3>
                            <asp:HiddenField ID="hdnemployeeid" runat="server"  />
                            <asp:HiddenField ID="hdnlastedit" runat="server"  />
                            <asp:HiddenField ID="hdnslsrepid" runat="server"  />
                        </div>

                        <div style="width:900px; margin: 10px 0px 0px 10px;">
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">  
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadComboBox ID="Status" Runat="server" Width="100px" Label="Status:" LabelCssClass ="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                            <telerik:RadComboBoxItem runat="server" Text="Inactive" Value="Inactive" />
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <asp:Label ID="Label2" runat="server" Text="Start Date:" cssclass="myLabelCss"></asp:Label>
                                    <telerik:RadDatePicker ID="startdt" runat="server" Width="120px" MinDate="1/1/1900" ></telerik:RadDatePicker>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <asp:Label ID="Label1" runat="server" Text="Term Date:" cssclass="myLabelCss"></asp:Label>
                                    <telerik:RadDatePicker ID="termdt" runat="server" Width="120px" MinDate="1/1/1900" CssClass ="myLabelCss" ></telerik:RadDatePicker>
                                </div>
                            
                           
                   
                            </div>
     
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="name_first" runat="server" Label="First Name: " Wrap="false" Width="225px" LabelWidth="90px" MaxLength="15" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="width:275px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="name_last" runat="server" Label="Last Name: " Width="225px" LabelWidth="90px" MaxLength="20" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                            </div>
               
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">     
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadComboBox ID="Branchno" Runat="server" Width="150px" Label="Branch:" LabelCssClass ="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="1-Denver" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="2-Casper" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="3-CSprings" Value="3" />
                                            
                                            <telerik:RadComboBoxItem runat="server" Text="6-Ft. Collins" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="7-Phoenix" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="8-Tucson" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                            
                                            <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                           
                                            <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                          
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadComboBox ID="dept" Runat="server" Width="150px" Label="Department:" LabelCssClass ="myLabelCss" >
                                            <Items>                                                                                                                                              
                                                <telerik:RadComboBoxItem runat="server" Text="Accounting" Value="Accounting" />
                                                <telerik:RadComboBoxItem runat="server" Text="Administration" Value="Administration" />
                                                <telerik:RadComboBoxItem runat="server" Text="Branch Mngmnt" Value="Branch Mngmnt" />
                                                <telerik:RadComboBoxItem runat="server" Text="Credit" Value="Credit" />
                                                <telerik:RadComboBoxItem runat="server" Text="Human Resources" Value="Human Resources" />
                                                <telerik:RadComboBoxItem runat="server" Text="Inside Sales" Value="Inside Sales" />
                                                <telerik:RadComboBoxItem runat="server" Text="IT" Value="IT" />
                                                <telerik:RadComboBoxItem runat="server" Text="Operations" Value="Operations" />
                                                <telerik:RadComboBoxItem runat="server" Text="Outside Sales" Value="Outside Sales" />
                                                
                                                <telerik:RadComboBoxItem runat="server" Text="Purchasing" Value="Purchasing" />
                                                <telerik:RadComboBoxItem runat="server" Text="Sales" Value="Sales" />
                                                <telerik:RadComboBoxItem runat="server" Text="Warehouse" Value="Warehouse" />
                          
                                            </Items>
                                     </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="jobtitle" runat="server" Label="Title:" Width="200px" LabelWidth="40px" MaxLength="20" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                            </div>
          
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                 <div style="width:450px; height:30px; vertical-align:middle; float:left;">   
                                    <telerik:RadTextBox ID="email" runat="server" Label="eMail: " Width="275px" LabelWidth="90px" MaxLength="30" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                 </div>
                            </div>
          
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="mobile" runat="server" Label="Mobile:" Width="180px" LabelWidth="90px" MaxLength="50" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="fax" runat="server" Label="Fax:" Width="180px" LabelWidth="90px" MaxLength="15" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="extension" runat="server" Label="Extension:" LabelWidth="90px" Width="180px" MaxLength="5" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                            </div>
          
                  
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:600px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="street" runat="server" Label="Street: " Width="350px" LabelWidth="90px" MaxLength="40" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                            </div>  
 
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="city" runat="server" Label="City: " Width="250px" LabelWidth="90px" MaxLength="20" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadComboBox ID="State" Runat="server" Width="100px" Label="State:" LabelCssClass ="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat="server" Text="Colorado" Value="CO" />
                                            <%--<telerik:RadComboBoxItem runat="server" Text="Montana" Value="MT" />--%>
                                            <telerik:RadComboBoxItem runat="server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat="server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat="server" Text="Wyoming" Value="WY" />
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="zip" runat="server" Label="Zip:" Width="100px" LabelWidth="40px" MaxLength="11" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                            </div> 
            
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                 <div style="width:250px; height:30px; vertical-align:middle; float:left;">   
                                    <telerik:RadTextBox ID="hometele" runat="server" Label="Home Phone:" Width="180px" LabelWidth="90px" MaxLength="15" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                </div>
                            </div>  
       
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">  
                                    <telerik:RadComboBox ID="Bday" Runat="server" Width="60px" Label="Birth Day:" LabelCssClass ="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="1" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="3" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="5" Value="5" />
                                            <telerik:RadComboBoxItem runat="server" Text="6" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="7" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="8" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="9" Value="9" />
                                            <telerik:RadComboBoxItem runat="server" Text="10" Value="10" />
                                            <telerik:RadComboBoxItem runat="server" Text="11" Value="11" />
                                            <telerik:RadComboBoxItem runat="server" Text="12" Value="12" />
                                            <telerik:RadComboBoxItem runat="server" Text="13" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="14" Value="14" />
                                            <telerik:RadComboBoxItem runat="server" Text="15" Value="15" />
                                            <telerik:RadComboBoxItem runat="server" Text="16" Value="16" />
                                            <telerik:RadComboBoxItem runat="server" Text="17" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="19" Value="19" />
                                            <telerik:RadComboBoxItem runat="server" Text="20" Value="20" />
                                            <telerik:RadComboBoxItem runat="server" Text="21" Value="21" />
                                            <telerik:RadComboBoxItem runat="server" Text="22" Value="22" />
                                            <telerik:RadComboBoxItem runat="server" Text="23" Value="23" />
                                            <telerik:RadComboBoxItem runat="server" Text="24" Value="24" />
                                            <telerik:RadComboBoxItem runat="server" Text="25" Value="25" />
                                            <telerik:RadComboBoxItem runat="server" Text="26" Value="26" />
                                            <telerik:RadComboBoxItem runat="server" Text="27" Value="27" />
                                            <telerik:RadComboBoxItem runat="server" Text="28" Value="28" />
                                            <telerik:RadComboBoxItem runat="server" Text="29" Value="29" />
                                            <telerik:RadComboBoxItem runat="server" Text="30" Value="30" />
                                            <telerik:RadComboBoxItem runat="server" Text="31" Value="31" />
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">                    
                                    <telerik:RadComboBox ID="Bmonth" Runat="server" Width="100px" Label="Birth Month:" LabelCssClass ="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="01-January" Value="January" />
                                            <telerik:RadComboBoxItem runat="server" Text="02-February" Value="February" />
                                            <telerik:RadComboBoxItem runat="server" Text="03-March" Value="March" />
                                            <telerik:RadComboBoxItem runat="server" Text="04-April" Value="April" />
                                            <telerik:RadComboBoxItem runat="server" Text="05-May" Value="May" />
                                            <telerik:RadComboBoxItem runat="server" Text="06-June" Value="June" />
                                            <telerik:RadComboBoxItem runat="server" Text="07-July" Value="July" />
                                            <telerik:RadComboBoxItem runat="server" Text="08-August" Value="August" />
                                            <telerik:RadComboBoxItem runat="server" Text="09-September" Value="September" />
                                            <telerik:RadComboBoxItem runat="server" Text="10-October" Value="October" />
                                            <telerik:RadComboBoxItem runat="server" Text="11-November" Value="November" />
                                            <telerik:RadComboBoxItem runat="server" Text="12-December" Value="December" />  
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
          
                            </div>
                           <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:300px; float:left;">
                                    <asp:CheckBox ID="ShowBday" Text="Show Birthday" runat="server"  CssClass="myLabelCssXSmall" />
                                </div>
                                <div style="width:300px; float:left;">
                                    <asp:CheckBox ID="ShowAnniv" Text="Show Anniversary" runat="server"  CssClass="myLabelCssXSmall" />
                                </div>
                           </div>
                           <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                    
                                    <telerik:RadTextBox ID="notes" runat="server" Label="Notes: " Width="500px" LabelWidth="90px" MaxLength="50" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                                     
                           </div>
                           <div style="margin:20px 0px 2px 0px; width:900px; float:left; height:30px; vertical-align:middle;">
                                <telerik:RadButton ID="btnUpdateEmployee" runat="server" Text="Update Employee" Width="200px" Skin="BlackMetroTouch" ></telerik:RadButton>
                           </div>
                              

                        </div>
        
                      </asp:Panel>
                   </div>
      
              </div>  
     
     

          </telerik:RadPageView>
  
  
          <telerik:RadPageView ID="New" runat="server" Width="1300px" Height="700px" >         
                      
               <asp:Panel ID="Panel3" runat="server" Width="900px" Height="500px" >
       
                    <div id="div10" style="margin:10px 0px 2px 0px; width:100%;">
                        <h6>New Employee</h6>
                    </div>
        
                    <asp:HiddenField ID="NhdnStatus" runat="server" Value="Active"  />
                    <asp:HiddenField ID="NhdnSlsrepid" runat="server" Value=""  />
                    <asp:HiddenField ID="Nhdnlastedit" runat="server"  />
                    <asp:HiddenField ID="Nhdntermdt" runat="server" value="1/1/50" />
        
                <div style="width:900px; margin: 10px 0px 0px 10px;">
                    <div style="margin:0px 0px 2px 0px; width:900px; float:left;">      
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <asp:Label ID="Label3" runat="server" Text="Start Date:" cssclass="myLabelCss"></asp:Label>
                            <telerik:RadDatePicker ID="nstartdt" runat="server" Width="120px" MinDate="1/1/1900" ></telerik:RadDatePicker>
                        </div>
                    </div>
     
                  <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadTextBox ID="nname_first" runat="server" Label="First Name: " Wrap="false" Width="225px" LabelWidth="90px" MaxLength="15" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="width:275px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadTextBox ID="nname_last" runat="server" Label="Last Name: " Width="225px" LabelWidth="90px" MaxLength="20" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                  </div>
               
                  <div style="margin:0px 0px 2px 0px; width:900px; float:left;">     
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadComboBox ID="nBranchno" Runat="server" Width="150px" Label="Branch:" LabelCssClass ="myLabelCss" >
                                  <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="1-Denver" Value="1" />
                                    <telerik:RadComboBoxItem runat="server" Text="2-Casper" Value="2" />
                                    <telerik:RadComboBoxItem runat="server" Text="3-CSprings" Value="3" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="6-Ft. Collins" Value="6" />
                                    <telerik:RadComboBoxItem runat="server" Text="7-Phoenix" Value="7" />
                                    <telerik:RadComboBoxItem runat="server" Text="8-Tucson" Value="8" />
                                    <telerik:RadComboBoxItem runat="server" Text="11-Amarillo" Value="11" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="13-Odessa" Value="13" />
                                    <telerik:RadComboBoxItem runat="server" Text="15-Prescott" Value="15" />
                                   
                                    <telerik:RadComboBoxItem runat="server" Text="17-Lake Havasu" Value="17" />
                                    <telerik:RadComboBoxItem runat="server" Text="18-Show Low" Value="18" />
                                    <telerik:RadComboBoxItem runat="server" Text="20-Henderson" Value="20" />
                                  </Items>
                            </telerik:RadComboBox>
                        </div>
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadComboBox ID="ndept" Runat="server" Width="150px" Label="Department:" LabelCssClass ="myLabelCss" >
                                    <Items>                                                                                                                                              
                                        <telerik:RadComboBoxItem runat="server" Text="Accounting" Value="Accounting" />
                                        <telerik:RadComboBoxItem runat="server" Text="Administration" Value="Administration" />
                                        <telerik:RadComboBoxItem runat="server" Text="Branch Mngmnt" Value="Branch Mngmnt" />
                                        <telerik:RadComboBoxItem runat="server" Text="Credit" Value="Credit" />
                                        <telerik:RadComboBoxItem runat="server" Text="Human Resources" Value="Human Resources" />
                                        <telerik:RadComboBoxItem runat="server" Text="Inside Sales" Value="Inside Sales" />
                                        <telerik:RadComboBoxItem runat="server" Text="IT" Value="IT" />
                                        <telerik:RadComboBoxItem runat="server" Text="Operations" Value="Operations" />
                                        <telerik:RadComboBoxItem runat="server" Text="Outside Sales" Value="Outside Sales" />
                                        <telerik:RadComboBoxItem runat="server" Text="Purchasing" Value="Purchasing" />
                                        <telerik:RadComboBoxItem runat="server" Text="Sales" Value="Sales" />
                                        <telerik:RadComboBoxItem runat="server" Text="Warehouse" Value="Warehouse" />
                          
                                    </Items>
                                </telerik:RadComboBox>
                        </div>
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadTextBox ID="njobtitle" runat="server" Label="Title:" Width="200px" LabelWidth="40px" MaxLength="20" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                    </div>
          
                  <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                        <div style="width:450px; height:30px; vertical-align:middle; float:left;">   
                            <telerik:RadTextBox ID="nemail" runat="server" Label="eMail: " Width="275px" LabelWidth="90px" MaxLength="30" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                  </div>
          
                 <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadTextBox ID="nmobile" runat="server" Label="Mobile:" Width="180px" LabelWidth="90px" MaxLength="50" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadTextBox ID="nfax" runat="server" Label="Fax:" Width="180px" LabelWidth="90px" MaxLength="15" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadTextBox ID="nextension" runat="server" Label="Extension:" LabelWidth="90px" Width="180px" MaxLength="5" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                 </div>
          
          
                  
                  <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                         <div style="width:600px; height:30px; vertical-align:middle; float:left;">
                             <telerik:RadTextBox ID="nstreet" runat="server" Label="Street: " Width="350px" LabelWidth="90px" MaxLength="40" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                         </div>
                  </div>  
 
                  <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadTextBox ID="ncity" runat="server" Label="City: " Width="250px" LabelWidth="90px" MaxLength="20" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadComboBox ID="nState" Runat="server" Width="100px" Label="State:" LabelCssClass ="myLabelCss" >
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Text="Arizona" Value="AZ" />
                                    <telerik:RadComboBoxItem runat="server" Text="Colorado" Value="CO" />
                                    
                                    <telerik:RadComboBoxItem runat="server" Text="Nevada" Value="NV" />
                                    <telerik:RadComboBoxItem runat="server" Text="Texas" Value="TX" />
                                    <telerik:RadComboBoxItem runat="server" Text="Wyoming" Value="WY" />
                                </Items>
                            </telerik:RadComboBox>
                        </div>
                        <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                            <telerik:RadTextBox ID="nzip" runat="server" Label="Zip:" Width="100px" LabelWidth="40px" MaxLength="11" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                    </div> 
            
                  <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                            <div style="width:250px; height:30px; vertical-align:middle; float:left;">   
                            <telerik:RadTextBox ID="nhometele" runat="server" Label="Home Phone:" Width="180px" LabelWidth="90px" MaxLength="15" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                        </div>
                    </div>  
       
                  <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">  
                                    <telerik:RadComboBox ID="nBday" Runat="server" Width="60px" Label="Birth Day:" LabelCssClass ="myLabelCss" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="1" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="3" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="5" Value="5" />
                                            <telerik:RadComboBoxItem runat="server" Text="6" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="7" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="8" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="9" Value="9" />
                                            <telerik:RadComboBoxItem runat="server" Text="10" Value="10" />
                                            <telerik:RadComboBoxItem runat="server" Text="11" Value="11" />
                                            <telerik:RadComboBoxItem runat="server" Text="12" Value="12" />
                                            <telerik:RadComboBoxItem runat="server" Text="13" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="14" Value="14" />
                                            <telerik:RadComboBoxItem runat="server" Text="15" Value="15" />
                                            <telerik:RadComboBoxItem runat="server" Text="16" Value="16" />
                                            <telerik:RadComboBoxItem runat="server" Text="17" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="19" Value="19" />
                                            <telerik:RadComboBoxItem runat="server" Text="20" Value="20" />
                                            <telerik:RadComboBoxItem runat="server" Text="21" Value="21" />
                                            <telerik:RadComboBoxItem runat="server" Text="22" Value="22" />
                                            <telerik:RadComboBoxItem runat="server" Text="23" Value="23" />
                                            <telerik:RadComboBoxItem runat="server" Text="24" Value="24" />
                                            <telerik:RadComboBoxItem runat="server" Text="25" Value="25" />
                                            <telerik:RadComboBoxItem runat="server" Text="26" Value="26" />
                                            <telerik:RadComboBoxItem runat="server" Text="27" Value="27" />
                                            <telerik:RadComboBoxItem runat="server" Text="28" Value="28" />
                                            <telerik:RadComboBoxItem runat="server" Text="29" Value="29" />
                                            <telerik:RadComboBoxItem runat="server" Text="30" Value="30" />
                                            <telerik:RadComboBoxItem runat="server" Text="31" Value="31" />
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">                    
                                    <telerik:RadComboBox ID="nBmonth" Runat="server" Width="100px" Label="Birth Month:" LabelCssClass ="myLabelCss" >
                                        <Items>
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
                                </div>
          
                            </div>
       
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left; height:30px; vertical-align:middle;">
                                    
                                    <telerik:RadTextBox ID="nnotes" runat="server" Label="Notes: " Width="500px" LabelWidth="90px" MaxLength="50" LabelCssClass ="myLabelCss"></telerik:RadTextBox>
                            </div>  
                            <div style="margin:20px 0px 2px 0px; width:900px; float:left;">
                                <telerik:RadButton ID="btnAddEmployee" runat="server" Text="Add Employee" Skin="BlackMetroTouch" Width="200px" ></telerik:RadButton>
                            </div>
                </div>
                        
                        

               </asp:Panel>

          
          </telerik:RadPageView>
  
  
          <telerik:RadPageView ID="Past" runat="server" Width="1300px" Height="700px" >         
              
     
              <div id="div2" style="width:1300px; margin:0px 0px 5px 0px; float:left;">
    
                   <telerik:RadTabStrip ID="PStateTabStrip" runat="server" ScrollChildren="true" Skin="MetroTouch" LabelCssClass="myLabelCss" Width="1300px" >
                        <Tabs>
                            <telerik:RadTab runat="server" Text="Arizona">
                                <Tabs>
                                    <telerik:RadTab runat="server" Text="7-Phoenix" Value="7"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="8-Tucson" Value="8"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="15-Prescott" Value="15"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="16-Flagstaff" Value="16"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="17-Lake Havasu" Value="17"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="18-Show Low" Value="18"></telerik:RadTab>
                                </Tabs>
                            </telerik:RadTab>
                            <telerik:RadTab runat="server" Text="Colorado" Selected="true">
                                <Tabs>
                                    <telerik:RadTab runat="server" Text="1-Denver" Value="1" Selected="true"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="3-Colorado Springs" Value="3"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="6-Ft. Collins" Value="6"></telerik:RadTab>
                                </Tabs>
                            </telerik:RadTab>
                            <telerik:RadTab runat="server" Text="Montana">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="4-Billings" Value="4"></telerik:RadTab>
                        </Tabs>
                    </telerik:RadTab>
                            <telerik:RadTab runat="server" Text="Nevada">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="20-Henderson" Value="20"></telerik:RadTab>
                        </Tabs>
                    </telerik:RadTab>
                            <telerik:RadTab runat="server" Text="Texas">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="11-Amarillo" Value="11"></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="12-Lubbock" Value="12"></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="13-Odessa" Value="13"></telerik:RadTab>
                        </Tabs>
                    </telerik:RadTab>
                            <telerik:RadTab runat="server" Text="Wyoming">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="2-Casper" Value="2"></telerik:RadTab>
                        </Tabs>
                    </telerik:RadTab>

                        </Tabs>
                   </telerik:RadTabStrip>
    
          
              </div>
              <div id="div3" style="width:1300px; height:700px; vertical-align:top;">
      
                <div id="div4" style="margin: 0px 10px 0px 0px;width:250px; height:700px; float:left; ">
        
                    <telerik:RadGrid ID="GrdPastEmployees" runat="server" Width="250px" Height="500px" DataSourceID="SqlDS_PastEmployees" gridlines="None"  >
                
                         <GroupingSettings CaseSensitive="false" />
                
                        <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" />
                            <Selecting AllowRowSelect="True"></Selecting>
                            <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                        </ClientSettings>
                
                        <MasterTableView DataSourceID="SqlDS_PastEmployees" DataKeyNames="employeeid" ClientDataKeyNames="employeeid" AutoGenerateColumns="False">
                            <HeaderStyle VerticalAlign="Bottom" />

                            <Columns>
                                <telerik:GridBoundColumn DataField="EmpName" HeaderText="Employee" DataType="System.String" SortExpression="EmpName" UniqueName="EmpName">
                                    <ItemStyle VerticalAlign="Bottom" />
                                </telerik:GridBoundColumn>
                    
                                <telerik:GridBoundColumn DataField="employeeid" Visible="false" HeaderText="employeeid" DataType="System.String" SortExpression="employeeid" UniqueName="employeeid">
                       
                                </telerik:GridBoundColumn>
                            </Columns>

                        </MasterTableView>
                
                    </telerik:RadGrid>

                </div>
        
                <div id="div5" style="margin: 0px 0px 0px 10px; width:900px; height:500px; float:left;">
        
        
         
                  <asp:Panel ID="Panel2" runat="server" Width="900px" Height="500px" >
                        
                        <asp:HiddenField ID="Pemployeeid" runat="server"  />
                        
                        <div id="div1" style="margin:0px 0px 0px 0px; width:100%; height:30px;">
                                <h3 style="width:500px;"><asp:Label ID="lblExEmployee" runat="server"></asp:Label></h3>
                        </div>
        
                        

                        <div style="width:900px; margin: 10px 0px 0px 10px;">
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">  
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadComboBox ID="pStatus" Runat="server" Width="100px" Label="Status:" LabelCssClass ="myLabelCss"  >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" />
                                            <telerik:RadComboBoxItem runat="server" Text="Inactive" Value="Inactive" />
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <asp:Label ID="Label4" runat="server" Text="Start Date:" cssclass="myLabelCss"></asp:Label>
                                    <telerik:RadDatePicker ID="pstartdt" runat="server" Width="120px" MinDate="1/1/1900" Enabled="false" ></telerik:RadDatePicker>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <asp:Label ID="Label5" runat="server" Text="Term Date:" cssclass="myLabelCss"></asp:Label>
                                    <telerik:RadDatePicker ID="ptermdt" runat="server" Width="120px" MinDate="1/1/1900" CssClass ="myLabelCss" Enabled="false" ></telerik:RadDatePicker>
                                </div>
                            
                           
                   
                            </div>
     
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="pname_first" runat="server" Label="First Name: " Wrap="false" Width="225px" LabelWidth="90px" MaxLength="15" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                                <div style="width:275px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="pname_last" runat="server" Label="Last Name: " Width="225px" LabelWidth="90px" MaxLength="20" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                            </div>
               
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">     
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadComboBox ID="pBranchno" Runat="server" Width="150px" Label="Branch:" LabelCssClass ="myLabelCss" Enabled="false" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="1-Denver" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="2-Casper" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="3-CSprings" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="4-Billings" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="6-Ft. Collins" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="7-Phoenix" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="8-Tucson" Value="8" />
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
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadComboBox ID="pdept" Runat="server" Width="150px" Label="Department:" LabelCssClass ="myLabelCss" Enabled="false" >
                                            <Items>                                                                                                                                              
                                                <telerik:RadComboBoxItem runat="server" Text="Accounting" Value="Accounting" />
                                                <telerik:RadComboBoxItem runat="server" Text="Administration" Value="Administration" />
                                                <telerik:RadComboBoxItem runat="server" Text="Branch Mngmnt" Value="Branch Mngmnt" />
                                                <telerik:RadComboBoxItem runat="server" Text="Credit" Value="Credit" />
                                                <telerik:RadComboBoxItem runat="server" Text="Human Resources" Value="Human Resources" />
                                                <telerik:RadComboBoxItem runat="server" Text="Inside Sales" Value="Inside Sales" />
                                                <telerik:RadComboBoxItem runat="server" Text="IT" Value="IT" />
                                                <telerik:RadComboBoxItem runat="server" Text="Operations" Value="Operations" />
                                                <telerik:RadComboBoxItem runat="server" Text="Outside Sales" Value="Outside Sales" />
                                                <telerik:RadComboBoxItem runat="server" Text="Purchasing" Value="Purchasing" />
                                                <telerik:RadComboBoxItem runat="server" Text="Sales" Value="Sales" />
                                                <telerik:RadComboBoxItem runat="server" Text="Warehouse" Value="Warehouse" />
                          
                                            </Items>
                                     </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="pjobtitle" runat="server" Label="Title:" Width="200px" LabelWidth="40px" MaxLength="20" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                            </div>
          
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                 <div style="width:450px; height:30px; vertical-align:middle; float:left;">   
                                    <telerik:RadTextBox ID="pemail" runat="server" Label="eMail: " Width="275px" LabelWidth="90px" MaxLength="30" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                 </div>
                            </div>
          
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="pmobile" runat="server" Label="Mobile:" Width="180px" LabelWidth="90px" MaxLength="50" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="pfax" runat="server" Label="Fax:" Width="180px" LabelWidth="90px" MaxLength="15" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="pextension" runat="server" Label="Extension:" LabelWidth="90px" Width="180px" MaxLength="5" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                            </div>
          
                  
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:600px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="pstreet" runat="server" Label="Street: " Width="350px" LabelWidth="90px" MaxLength="40" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                            </div>  
 
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="pcity" runat="server" Label="City: " Width="250px" LabelWidth="90px" MaxLength="20" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadComboBox ID="pState" Runat="server" Width="100px" Label="State:" LabelCssClass ="myLabelCss" Enabled="false" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="Arizona" Value="AZ" />
                                            <telerik:RadComboBoxItem runat="server" Text="Colorado" Value="CO" />
                                            <telerik:RadComboBoxItem runat="server" Text="Montana" Value="MT" />
                                            <telerik:RadComboBoxItem runat="server" Text="Nevada" Value="NV" />
                                            <telerik:RadComboBoxItem runat="server" Text="Texas" Value="TX" />
                                            <telerik:RadComboBoxItem runat="server" Text="Wyoming" Value="WY" />
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">
                                    <telerik:RadTextBox ID="pzip" runat="server" Label="Zip:" Width="100px" LabelWidth="40px" MaxLength="11" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                            </div> 
            
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                 <div style="width:250px; height:30px; vertical-align:middle; float:left;">   
                                    <telerik:RadTextBox ID="phometele" runat="server" Label="Home Phone:" Width="180px" LabelWidth="90px" MaxLength="15" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
                                </div>
                            </div>  
       
                            <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">  
                                    <telerik:RadComboBox ID="pBday" Runat="server" Width="60px" Label="Birth Day:" LabelCssClass ="myLabelCss" Enabled="false" >
                                        <Items>
                                            <telerik:RadComboBoxItem runat="server" Text="1" Value="1" />
                                            <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                                            <telerik:RadComboBoxItem runat="server" Text="3" Value="3" />
                                            <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                                            <telerik:RadComboBoxItem runat="server" Text="5" Value="5" />
                                            <telerik:RadComboBoxItem runat="server" Text="6" Value="6" />
                                            <telerik:RadComboBoxItem runat="server" Text="7" Value="7" />
                                            <telerik:RadComboBoxItem runat="server" Text="8" Value="8" />
                                            <telerik:RadComboBoxItem runat="server" Text="9" Value="9" />
                                            <telerik:RadComboBoxItem runat="server" Text="10" Value="10" />
                                            <telerik:RadComboBoxItem runat="server" Text="11" Value="11" />
                                            <telerik:RadComboBoxItem runat="server" Text="12" Value="12" />
                                            <telerik:RadComboBoxItem runat="server" Text="13" Value="13" />
                                            <telerik:RadComboBoxItem runat="server" Text="14" Value="14" />
                                            <telerik:RadComboBoxItem runat="server" Text="15" Value="15" />
                                            <telerik:RadComboBoxItem runat="server" Text="16" Value="16" />
                                            <telerik:RadComboBoxItem runat="server" Text="17" Value="17" />
                                            <telerik:RadComboBoxItem runat="server" Text="18" Value="18" />
                                            <telerik:RadComboBoxItem runat="server" Text="19" Value="19" />
                                            <telerik:RadComboBoxItem runat="server" Text="20" Value="20" />
                                            <telerik:RadComboBoxItem runat="server" Text="21" Value="21" />
                                            <telerik:RadComboBoxItem runat="server" Text="22" Value="22" />
                                            <telerik:RadComboBoxItem runat="server" Text="23" Value="23" />
                                            <telerik:RadComboBoxItem runat="server" Text="24" Value="24" />
                                            <telerik:RadComboBoxItem runat="server" Text="25" Value="25" />
                                            <telerik:RadComboBoxItem runat="server" Text="26" Value="26" />
                                            <telerik:RadComboBoxItem runat="server" Text="27" Value="27" />
                                            <telerik:RadComboBoxItem runat="server" Text="28" Value="28" />
                                            <telerik:RadComboBoxItem runat="server" Text="29" Value="29" />
                                            <telerik:RadComboBoxItem runat="server" Text="30" Value="30" />
                                            <telerik:RadComboBoxItem runat="server" Text="31" Value="31" />
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                                <div style="width:250px; height:30px; vertical-align:middle; float:left;">                    
                                    <telerik:RadComboBox ID="pBmonth" Runat="server" Width="100px" Label="Birth Month:" LabelCssClass ="myLabelCss" Enabled="false">
                                        <Items>
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
                                </div>
          
                            </div>
       
                           <div style="margin:0px 0px 2px 0px; width:900px; float:left;">
                                    
                                    <telerik:RadTextBox ID="pnotes" runat="server" Label="Notes: " Width="500px" LabelWidth="90px" MaxLength="50" LabelCssClass ="myLabelCss" Enabled="false"></telerik:RadTextBox>
          
                           </div>
                          
                               <div style="margin:20px 0px 2px 0px; width:900px; float:left; height:30px; vertical-align:middle;">
                                <telerik:RadButton ID="btnUpdatePastEmployee" runat="server" Text="Update Former Employee" Skin="BlackMetroTouch" Width="250px"></telerik:RadButton>
                           </div>

                        </div>
        
                  </asp:Panel> 
                  
                 
                </div>
      
              </div>  
     
     
               
     
          </telerik:RadPageView>
  
          <telerik:RadPageView ID="RosterExport" runat="server"  >
             <div id="div6" style="margin:0px 0px 0px 0px;float:left;width:1300px;float:left;">
                <div style="width:1300px;">    
                    <div style="width:400px; padding:5px; margin: 10px 0px 10px 0px; color:White; background-color:#4c68a2; font-weight:bold; font-size:medium;">
                        Employee Roster
                    </div>
                </div>
                <div style="width:1300px;">
	                <div style="width:300px;float:left; margin:10px;">
                        <telerik:RadButton ID="lnkEmployeeRoster" ButtonType="LinkButton" runat="server" Width="250px" Skin="BlackMetroTouch"  Text="Roster Export (Excel)" 
                            NavigateUrl="../Reports2/Employees_EmployeeRoster.aspx" Target="_blank">
                        </telerik:RadButton>
        	        </div>
         	        <div style="width:700px; font-size:Small;float:left; margin-bottom:10px;">
                        <b>Data Source: </b> <i>Data Warehouse</i><br /><br /> 
                        <b>Report Description: </b>A listing of all active employees with work anniversary and birthday info, and home addresses. <br /><br />
                        
                    </div>

    	        </div>
             </div> 
          </telerik:RadPageView>
  
        </telerik:RadMultiPage>
 </div>