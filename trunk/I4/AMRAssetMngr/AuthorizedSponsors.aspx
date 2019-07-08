<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/AMRAssetMngr.master" AutoEventWireup="false" CodeFile="AuthorizedSponsors.aspx.vb" Inherits="AMRAssetMngr_AuthorizedSponsors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Meter Assets | Authorized Sponsors</h1>


<div id="divBodyContent" style="width:1000px; ">
    <div style="padding: 2px 2px 2px 5px; width:990px;height:550px;">
    <div style="padding: 5px 5px 5px 5px;width:600px;">
        <p>Sponsors are Dana Kepner/Western Industrial employees that are ultimately responsible for the safe, and timely, return of assets.</p><br />
        <p>Sponsors are not to be added without the express written consent of Frank Fenton.</p><br />
        <p style="color:Red; font-style:italic;">Please do not remove a name from the list until all assets sponsored by that name have been reassigned.</p>
    </div>
        <telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="SqlDS_Sponsors" 
            GridLines="None" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" 
            AllowAutomaticUpdates="True" Width="350px" Height="450px">
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_Sponsors" DataKeyNames="id" 
                CommandItemDisplay="Top" CommandItemSettings-AddNewRecordText="Add New Sponsor">
                <Columns>
                    <telerik:GridEditCommandColumn UniqueName="EditCommandColumn" 
                        ItemStyle-Width="50px" HeaderStyle-Width="50px">
                        
                    </telerik:GridEditCommandColumn>
                    <telerik:GridBoundColumn DataField="Type" HeaderText="Type" 
                        SortExpression="Type" UniqueName="Type" Visible="false"
                        DefaultInsertValue="Sponsor" Display="false" ReadOnly="true"  >
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Label" HeaderText="Sponsor Name" 
                        SortExpression="Label" UniqueName="Label" ItemStyle-Width="100px" HeaderStyle-Width="100px">
                        <HeaderStyle Width="150px"></HeaderStyle>
                        <ItemStyle Width="150px"></ItemStyle>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Value" HeaderText="Value" 
                        SortExpression="Value" UniqueName="Value" ReadOnly="true" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Seq" HeaderText="Seq" 
                        SortExpression="Seq" UniqueName="Seq" DataType="System.Int32" ReadOnly="true" 
                        DefaultInsertValue="99" Visible="false">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" 
                        HeaderText="ID" SortExpression="ID" UniqueName="ID" ReadOnly="true" Visible="false">
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridButtonColumn CommandName="Delete" Text="Delete" 
                        UniqueName="column" ItemStyle-Width="30px" HeaderStyle-Width="30px" >
                        <HeaderStyle Width="50px"></HeaderStyle>
                        <ItemStyle Width="50px"></ItemStyle>
                    </telerik:GridButtonColumn>
                </Columns>
            <CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>

            <ExpandCollapseColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>

<EditFormSettings>
<EditColumn UniqueName="EditCommandColumn1"></EditColumn>
</EditFormSettings>
            </MasterTableView>
            <ClientSettings>
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>
        </telerik:RadGrid>
        <asp:SqlDataSource ID="SqlDS_Sponsors" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
            
            SelectCommand="SELECT [ID], [Type], [Label], [Value], [Seq] FROM [aAsset_Menu] WHERE ([Type] = @Type) ORDER BY [Seq], [Label]" 
            DeleteCommand="DELETE FROM [aAsset_Menu] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [aAsset_Menu] ([Type], [Label], [Value], [Seq]) VALUES (@Type, @Label, @Label, @Seq)" 
            UpdateCommand="UPDATE [aAsset_Menu] SET [Label] = @Label, [Value] = @Label WHERE [ID] = @ID">
            <SelectParameters>
                <asp:Parameter DefaultValue="Sponsor" Name="Type" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Label" Type="String" />
                <asp:Parameter Name="Value" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Type" Type="String" DefaultValue="Sponsor" />
                <asp:Parameter Name="Label" Type="String" />
                <asp:Parameter Name="Value" Type="String" />
                <asp:Parameter Name="Seq" Type="Int32"  DefaultValue="99"/>
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
</div>
</asp:Content>

