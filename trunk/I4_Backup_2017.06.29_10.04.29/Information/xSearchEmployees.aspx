<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="xSearchEmployees.aspx.vb" Inherits="Information_SearchEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Information | Employees</h1>




<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="States">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="States" />
                    <telerik:AjaxUpdatedControl ControlID="lvEmployees" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_Employees" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy> 


<div style="padding:5px 5px 5px 10px;width:1000px; max-height:500px;">
    
    
    
    
    <telerik:RadTabStrip ID="States" runat="server" Skin="Office2007" Width="1000px" SelectedIndex="0" ScrollChildren="true">
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
            <telerik:RadTab runat="server" Text="Colorado">
                <Tabs>
                    <telerik:RadTab runat="server" Text="1-Denver" Value="1"></telerik:RadTab>
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
    


    <asp:SqlDataSource ID="SqlDS_Employees" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        SelectCommand="SELECT aBranches.comboname AS Branch, aBranches.branchno, aBranches.BranchStateAlt, aHR_Emp.name_last, aHR_Emp.name_first, 
                aHR_Emp.dept, aHR_Emp.status, aHR_Emp.email, aHR_Emp.mobile, aHR_Emp.fax, aHR_Emp.title, aHR_Emp.startdt, aHR_Emp.extension 
                FROM aBranches INNER JOIN aHR_Emp ON aBranches.branchno = aHR_Emp.branchno 
                WHERE aHR_Emp.status = 'Active' AND (aBranches.branchno=@Branchno) 
                ORDER BY aHR_Emp.name_last, aHR_Emp.name_first">
        
        <SelectParameters>
          <asp:Parameter Name="Branchno" Type="String" DefaultValue="10" />
        </SelectParameters>
         
        
    </asp:SqlDataSource>
    
    
    
    
    
    <telerik:RadListView ID="lvEmployees" runat="server" Width="980px" DataSourceID="SqlDS_Employees" >
              <%--<EmptyDataTemplate>
                  Please enter part of the first name in the 'Search' box above.
              </EmptyDataTemplate>--%>
          
              <ItemTemplate>
                   <%--<div style="padding:0px 2px 0px 0px;">--%>
                   <fieldset style="float: left; height:70px; width: 300px; padding:5px 5px 5px 5px; margin: 1px 1px 1px 1px; border-color:Black; border-width:1px;">
                       <legend><b style="color: Green;"><%#Eval("Name_Last")%>, <%#Eval("Name_First")%> | <%#Eval("Title")%></b> </legend>
                      
                       <b style="font-size:smaller; color:Gray;">Extension:</b> <%#Eval("extension")%> <br />                       
                       <b style="font-size:smaller; color:Gray;">Mobile:</b> <%#Eval("mobile")%> <br />
                       <b style="font-size:smaller; color:Gray;">eMail:</b> <%#Eval("email")%> <br />
                       <b style="font-size:smaller; color:Gray;">Fax:</b> <%#Eval("fax")%> <br />
                       
                       
                   </fieldset>
                   <%--</div>--%>
              </ItemTemplate>
          
          
          </telerik:RadListView>
  
 </div>   

</asp:Content>

