<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/IT_Secure.master" AutoEventWireup="false" CodeFile="Maintain_ContactInfo.aspx.vb" Inherits="IT_Secure_Maintain_ContactInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server" >

<div id="divBody" style="width:1300px;Margin: 10px;"> 
    <h1>IT | Maintain Employee Contact Info</h1>
        
        <asp:SqlDataSource ID="SqlDS_Employees" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                        SelectCommand="SELECT (HR_Employees.name_last + ', '+ HR_Employees.name_first) AS EmpName, employeeid, 
                                HR_Employees.email,HR_Employees.fax,HR_Employees.mobile,HR_Employees.extension 
                                FROM Branches INNER JOIN HR_Employees ON Branches.branchno = HR_Employees.branchno 
                                WHERE HR_Employees.status = 'Active' AND (Branches.branchno=@Branchno) 
                                ORDER BY HR_Employees.name_last, HR_Employees.name_first">
                        <SelectParameters>
                          <asp:Parameter Name="Branchno" Type="String" DefaultValue="1" />
                        </SelectParameters>
       
        </asp:SqlDataSource>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="700" Transparency="0">
    </telerik:RadAjaxLoadingPanel> 

    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="States">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="States"  />
                    <telerik:AjaxUpdatedControl ControlID="GrdCurrentEmployees" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
             </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="GrdCurrentEmployees">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="GrdCurrentEmployees" />
                    <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
               
            </telerik:AjaxSetting>
     
            <telerik:AjaxSetting AjaxControlID="btnUpdateEmployee">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="GrdCurrentEmployees" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
               
            </telerik:AjaxSetting>     
           
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
                     
     <div style="Margin:20px 5px 5px 10px;float:left;width:1500px;">
     
      <div id="divCurrentStateTab" style="width:1300px; Margin:0px 0px 5px 0px; float:left;">
    
           <telerik:RadTabStrip ID="States" runat="server"  Width="1000px" ScrollChildren="true" Skin="MetroTouch" >
             <Tabs>
                   <telerik:RadTab runat="server" Text="Arizona" SelectedIndex="-1" Value="7">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="7-Phoenix" Value="7" Selected="true" ></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="8-Tucson" Value="8"></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="15-Prescott" Value="15"></telerik:RadTab>
                            <%--<telerik:RadTab runat="server" Text="16-Flagstaff" Value="16"></telerik:RadTab>--%>
                            <telerik:RadTab runat="server" Text="17-Lake Havasu" Value="17"></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="18-Show Low" Value="18"></telerik:RadTab>
                        </Tabs>
                   </telerik:RadTab>
                   <telerik:RadTab runat="server" Text="Colorado" Selected="true">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="1-Denver" Value="1" Selected="true" ></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="3-Colorado Springs" Value="3"></telerik:RadTab>
                            <telerik:RadTab runat="server" Text="6-Ft. Collins" Value="6"></telerik:RadTab>
                        </Tabs>
                    </telerik:RadTab>
             <telerik:RadTab runat="server" Text="Montana" SelectedIndex="-1" Value="4">
                <Tabs>
                    <telerik:RadTab runat="server" Text="4-Billings" Value="4" Selected="true" ></telerik:RadTab>
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
                    <telerik:RadTab runat="server" Text="12-Lubbock" Value="12"></telerik:RadTab>
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
      <div id="divCurrentBody" style="width:1300px;">
      
        <div id="divCurrentEmpListing" style="Margin: 0px 10px 0px 0px;width:800px; float:left; ">
        
            <telerik:RadGrid ID="GrdCurrentEmployees" runat="server" Width="800px" Height="550px" DataSourceID="SqlDS_Employees" GridLines="None"  >
                
                 <GroupingSettings CaseSensitive="false" />
                
                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                    <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" />
                    <Selecting AllowRowSelect="True"></Selecting>
                    <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                </ClientSettings>
                
                <MasterTableView DataSourceID="SqlDS_Employees" DataKeyNames="employeeid" ClientDataKeyNames="employeeid" AutoGenerateColumns="False">

                <Columns>
                    <telerik:GridBoundColumn DataField="EmpName" HeaderText="Employee" DataType="System.String" SortExpression="EmpName" UniqueName="EmpName">
                        <ItemStyle VerticalAlign="Top" Width="150px" Wrap="false" Font-Size="Small" />
                        <HeaderStyle VerticalAlign="Bottom" Width="150px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="email" HeaderText="Email" DataType="System.String" SortExpression="Email" UniqueName="Email">
                        <ItemStyle VerticalAlign="Top" Width="180px" Wrap="false" Font-Size="Small"/>
                        <HeaderStyle VerticalAlign="Bottom" Width="180px"  />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="extension" HeaderText="Ext" DataType="System.String" SortExpression="extension" UniqueName="extension">
                        <ItemStyle VerticalAlign="Top" Width="40px" Wrap="false" Font-Size="Small" />
                        <HeaderStyle VerticalAlign="Bottom" Width="40px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="mobile" HeaderText="Mobile" DataType="System.String" SortExpression="mobile" UniqueName="mobile">
                        <ItemStyle VerticalAlign="Top" Width="80px" Wrap="false" Font-Size="Small" />
                        <HeaderStyle VerticalAlign="Bottom" Width="80px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="fax" HeaderText="Fax" DataType="System.String" SortExpression="fax" UniqueName="fax">
                        <ItemStyle VerticalAlign="Top" Width="100px" Wrap="false" Font-Size="Small" />
                        <HeaderStyle VerticalAlign="Bottom" Width="100px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="employeeid" Visible="false" HeaderText="employeeid" DataType="System.String" SortExpression="employeeid" UniqueName="employeeid">
                       
                    </telerik:GridBoundColumn>
                    
                
                </Columns>
     
                
                
                </MasterTableView>
                
            </telerik:RadGrid>
                  
        </div>
        
        <div id="divCurrentEmpUpdatePanel" style="Margin: 0px 0px 0px 10px; width:300px; height:350px; float:left;">
            <asp:Panel ID="Panel1" runat="server" Width="300px" Height="350px" >
           
               <div id="divCurrentEmpUpdateTitle" style="Margin:20px 0px 0px 0px; width:180px;height:45px;">
                    <h6><asp:Label ID="lblEmployeeName" runat="server"></asp:Label></h6>
               </div>
  
                <div style="Margin: 0px 0px 0px 10px;">
                      <asp:HiddenField ID="hdnemployeeid" runat="server"  />
                      <div style="padding:20px 0px 2px 0px; width:300px; height:30px;">
                            <telerik:RadTextBox ID="email" runat="server" Label="eMail: " Width="275px" LabelWidth="75px" MaxLength="30" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                      </div>
              
                      <div style="padding:2px 0px 2px 0px; width:300px;height:30px;">
                        <telerik:RadTextBox ID="mobile" runat="server" Label="Mobile: " Width="200px" LabelWidth="75px" MaxLength="12" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                      </div>
                      <div style="padding:2px 0px 2px 0px; width:300px;height:30px;">
                         <telerik:RadTextBox ID="fax" runat="server" Label="Fax: " Width="200px" LabelWidth="75px" MaxLength="12" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                      </div>
                      <div style="padding:2px 0px 2px 0px; width:300px;height:30px;">
                        <telerik:RadTextBox ID="extension" runat="server" Label="Extension: " Width="200px" LabelWidth="75px" MaxLength="5" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                      </div>
          
                       <div style="padding:2px 0px 2px 0px; width:300px;height:30px;">   
                                <telerik:RadButton ID="btnUpdateEmployee" runat="server" Text="Update Contact" Width="260px" Skin="BlackMetroTouch" ></telerik:RadButton>
                       </div>     
                </div>
         
            </asp:Panel>
        </div>
      
      </div>  
     
     
     </div> 







</div>

</asp:Content>

