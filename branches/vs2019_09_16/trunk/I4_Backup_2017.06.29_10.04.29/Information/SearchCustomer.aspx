<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="SearchCustomer.aspx.vb" Inherits="Information_SearchCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Information | Customers</h1>


<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="btnSearch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lvCustomers" />
                    <telerik:AjaxUpdatedControl ControlID="SqlDS_Customers" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy> 


<div style="Margin:5px 5px 10px 10px;width:1300px; max-height:500px;">
    <div style="width:1300px; height:25px;padding: 0px 0px 10px 0px; float:left;">
        <asp:Label ID="Label1" runat="server" Text="Customer Search: " Font-Size="Medium" Font-Bold="true" CssClass="myLabelCss"></asp:Label>
        <telerik:RadTextBox ID="tbNameSearch" runat="server" Width="300px" EmptyMessage="Search by name" LabelCssClass="myLabelCss" ></telerik:RadTextBox>
    
        <telerik:RadButton ID="btnSearch" runat="server" Skin="MetroTouch" Text="Search">
        </telerik:RadButton>
    </div>
    <telerik:RadListView ID="lvCustomers" runat="server" Width="400px"  DataSourceID="SqlDS_Customers" >
              <EmptyDataTemplate>
                  Please enter part of the name in the 'Search' box above.
              </EmptyDataTemplate>
          
              <ItemTemplate>
                   <fieldset style="float: left; width: 400px; Margin:10px; ">
                       <legend style="color:#4c68a2; font-size:medium; font-weight:bold; padding:3px;"><%#Eval("Custname")%> | <%#Eval("Custid")%></b> </legend>
                      <p style="width:375px;">
                       <%#Eval("Address")%><br />
                       <%#Eval("City")%>, <%#Eval("State")%>&nbsp;&nbsp;<%#Eval("zipcd")%><br /><br />
                       
                       <b style="color:Gray; font-weight:bold;">Phone:</b> <%#Eval("phoneno")%> &nbsp;&nbsp;
                       <%--<b style="color:Gray; font-weight:bold;">Fax:</b> <%#Eval("fax")%> <br />--%>
                       <b style="color:Gray; font-weight:bold;">Home Branch:</b> <%#Eval("Branch")%><br />
                       <b style="color:Gray; font-weight:bold;">Sales Rep:</b> <%#Eval("SalesName")%>- <%#Eval("Salesrepid")%><br />
                      </p>
                   </fieldset>
              </ItemTemplate>
          
          
          </telerik:RadListView>
</div>

    <asp:SqlDataSource ID="SqlDS_Customers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="uspCustomerSearch" SelectCommandType="StoredProcedure" >
        
        <SelectParameters>
            <asp:Parameter Name="CustName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

