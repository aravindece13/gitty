<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="BidToolAdminAccessBlock.aspx.vb" Inherits="BidTool_BidToolAdminAccessBlock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="width:500px; height:600px; margin:30px; float:left;">

    <h3>Access Blocked</h3>
    <div style="width:600px; margin-bottom:20px;">
        <p style="font-size:medium; color: #4c68a2; font-weight:bold; width:100%;">
            Access to add/update Assemblies, GrabLists and Sales Person information is limited to the people below (Branch Mngrs, Admins, and select Inside and Outside Sales).  
            If you feel you should have access, please direct your request to your branch manager and Derek Johnson.
        </p>
        <br />

        <p style="font-size:medium; color: #4c68a2; font-weight:bold;width:100%;">
            Use your browser's back button to return to the last page.
        </p>
    </div>
    <div style="width:600px; height:400px;float:left;">
        <telerik:RadListView ID="listBoxUsers" runat="server" Width="900px" Height="500px"  DataSourceID="SqlDS_listBoxUsers"  >

                          <ItemTemplate>
                               <fieldset style="float: left; width: 125px; Margin:5px; ">
                                   
                                  <p style="width:115px;">
                                    <%#Eval("FullName")%>
                                  </p>
                               </fieldset>
                          </ItemTemplate>          
        </telerik:RadListView>
        <asp:SqlDataSource ID="SqlDS_listBoxUsers" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetAppServices %>" 
            SelectCommand="SELECT [FullName] FROM [Intranet_Personalization] WHERE ([BranchAdmin] = @BranchAdmin) AND ([Status] = 'Active') ORDER BY [FullName]">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="BranchAdmin" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    
    



</div>

</asp:Content>

