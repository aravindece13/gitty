<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Operations_Secure.master" AutoEventWireup="false" CodeFile="maintainVendorWebsites.aspx.vb" Inherits="Operations_Secure_maintainVendorWebsites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Operations | Maintain Vendor Websites</h1>

<div id="Content2Container" style="height:550px; width:700px; float:left; padding:5px 5px 5px 10px;">

    <telerik:RadGrid ID="RadGrid1" runat="server" 
        DataSourceID="SqlDS_VendorWebsites" AllowSorting="True" GridLines="None" 
        AutoGenerateEditColumn="false" Height="530px" AllowAutomaticInserts="True">
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_VendorWebsites" CommandItemDisplay="Top" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowAutomaticDeletes="True" EditFormSettings-EditFormType="Template" CommandItemSettings-AddNewRecordText="Add New Vendor Website">
            <RowIndicatorColumn>
            <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>

            <ExpandCollapseColumn>
            <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
                <Columns>
                    <telerik:GridEditCommandColumn ButtonType="ImageButton" 
                        EditImageUrl="../Images/EditInformationHS.png" HeaderStyle-Width="30px" >
                    </telerik:GridEditCommandColumn>
                    
                    <telerik:GridBoundColumn DataField="Vendid" DefaultInsertValue="" 
                        HeaderText="Vendid" SortExpression="Vendid" UniqueName="Vendid" HeaderStyle-Width="75px">
<HeaderStyle Width="75px"></HeaderStyle>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Name" DefaultInsertValue="" 
                        HeaderText="Name" SortExpression="Name" UniqueName="Name" HeaderStyle-Width="175px">
<HeaderStyle Width="175px"></HeaderStyle>
                    </telerik:GridBoundColumn>             
                    <telerik:GridHyperLinkColumn DataTextField="URL" DataNavigateUrlFields="URL" HeaderText="URL" 
                    SortExpression="URL" UniqueName="URL" Target="_blank">
                </telerik:GridHyperLinkColumn>
                </Columns>
                <EditFormSettings>
                    <FormTemplate>
                      <div id="divEditForm" style="width:700px; height:80px; background-color:lime;">  
                            <div id="divEditBoxes" style="width:800px;padding:5px 5px 5px 10px;" > 
                                <asp:HiddenField ID="VendorIndex" Value='<%# Bind("VendorIndex") %>' runat="server" />
                                <asp:Label ID="lblVendid" Text="Vendid: " runat="server" />
                                <asp:TextBox ID="Vendid" runat="server" Text='<%# Bind("Vendid") %>' Width="75px"></asp:TextBox>
                                <asp:Label ID="lblName" Text="Vendor Name: " runat="server" />
                                <asp:TextBox ID="Name" runat="server" Text='<%# Bind("Name") %>' Width="175px"></asp:TextBox>
                                <asp:Label ID="lblURL" Text="URL: " runat="server" />
                                <asp:TextBox ID="URL" runat="server" Text='<%# Bind("URL") %>' width="270px"></asp:TextBox>            
                            </div>
                      
                      
                      <div id="divbtns" style="height:30px; width:700px; clear:both ;float:left; padding:5px 5px 5px 10px;" >
                                        <asp:Button ID="Button1" runat="server" 
                                            CommandName='<%# Iif (TypeOf Container is GridEditFormInsertItem, "PerformInsert", "Update") %>' 
                                            Text='<%# Iif (TypeOf Container is GridEditFormInsertItem, "Add URL", "Update") %>' />
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




    <asp:SqlDataSource ID="SqlDS_VendorWebsites" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
        
        SelectCommand="SELECT [VendorIndex], [Vendid], [Name], [URL] FROM [aVendor] ORDER BY [Name]" 
        DeleteCommand="DELETE FROM aVendor WHERE [VendorIndex]=@VendorIndex" 
        InsertCommand="INSERT INTO aVendor(Vendid, Name, URL) VALUES (@Vendid,@Name,@URL)" 
        UpdateCommand="UPDATE aVendor SET Vendid =@Vendid, Name =@Name, URL =@URL WHERE [VendorIndex]= @VendorIndex">
    
        <InsertParameters>
            <asp:Parameter Name="Vendid" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="VendorIndex" Type="Int16" />
            <asp:Parameter Name="Vendid" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
        </UpdateParameters>
    
    
    
    </asp:SqlDataSource>




</div>


</asp:Content>

