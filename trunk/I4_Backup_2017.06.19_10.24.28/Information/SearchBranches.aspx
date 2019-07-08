<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="SearchBranches.aspx.vb" Inherits="Information_SearchBranches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <h1>Information | Branch Information</h1>


  <asp:SqlDataSource ID="SqlDS_Branches" runat="server" 
       ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
       SelectCommand="uspGetBranchesByState" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:Parameter Name="State" Type="String" />
        <%--<asp:ControlParameter ControlID="tsStates" Name="State" Type="String" DefaultValue="AZ" />--%>
    </SelectParameters>
  </asp:SqlDataSource>
  
  <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="tsStates">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lvBranches" />
                    <telerik:AjaxUpdatedControl ControlID="tsStates" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_Branches" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy> 
  
    
<div style="Margin:10px;width:1000px;">
    
    <telerik:RadTabStrip ID="tsStates" runat="server" Width="1000px" SelectedIndex="1" Skin="MetroTouch">
        <Tabs>
            <telerik:RadTab runat="server" Text="Arizona" Value="AZ" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Colorado" Value="CO" Selected="true"></telerik:RadTab>
            <%--<telerik:RadTab runat="server" Text="Montana" Value="MT"></telerik:RadTab>--%>
            <telerik:RadTab runat="server" Text="Nevada" Value="NV"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Texas" Value="TX"></telerik:RadTab>
            <telerik:RadTab runat="server" Text="Wyoming" Value="WY"></telerik:RadTab>
            
        </Tabs>
    </telerik:RadTabStrip>
    
    <div style="Margin:10px 0px 0px 0px;">
    <telerik:RadListView ID="lvBranches" runat="server" Width="900px" Height="400px" DataSourceID="SqlDS_Branches" >
              <EmptyDataTemplate>
                  Search error.
              </EmptyDataTemplate>
          
              <ItemTemplate>
                   <div>
                   <fieldset style="float: left; width: 400px; Margin:10px; ">
                       <legend style="color:#4c68a2; font-size:medium; font-weight:bold; padding:3px;"><%#Eval("comboname")%></legend>
                      <p style="width:375px;">
                        <%#Eval("address1")%><br />
                        <%#Eval("city")%>, <%#Eval("BranchStateAlt")%>&nbsp;&nbsp;<%#Eval("zip")%><br /><i><%#Eval("address2")%></i><br />
                        <a href="<%#Eval("GoogleMap")%>" target="_blank">Google Map</a><br />
                       <br />
                       
                       <strong>Phone:</strong><%#Eval("phone")%><br />
                       <strong>After Hours:</strong><%#Eval("oncall")%> <br />
                       <strong>Fax:</strong><%#Eval("fax")%> <br />
                       <strong>Standard Hours:</strong><%#Eval("Hours")%><br />
                      </p>
                       
                   </fieldset>
                   </div>
              </ItemTemplate>
          
          
          </telerik:RadListView>
    </div>
</div>

    

   <%-- <asp:SqlDataSource ID="SqlDS_Branches" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="SELECT [state], [comboname], [address1], [Address2], [city], [zip], [phone], [fax], [oncall], [Hours], [BranchStateAlt], [tollfree], [GoogleMap],[Mapquest] 
                FROM [Branches] 
                WHERE (([branchno2] &lt;&gt; @branchno2) AND ([Status] = @Status)) AND ([BranchStateAlt]=@State)
                ORDER BY [BranchStateAlt], [comboname]">
        <SelectParameters>
            <asp:Parameter DefaultValue="99" Name="branchno2" Type="String" />
            <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
            <asp:Parameter Name="State" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>


</asp:Content>

