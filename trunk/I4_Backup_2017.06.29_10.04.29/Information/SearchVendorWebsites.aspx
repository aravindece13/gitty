<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="SearchVendorWebsites.aspx.vb" Inherits="Information_SearchVendorWebsites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Information | Vendor Websites</h1>


    <div id="Content2Container" style="width:900px; float:left; padding:5px 5px 5px 10px;">

    <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" DataSourceID="SqlDS_VendorWebsites" GridLines="None" Height="675px" 
            Width="700px" >
        <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_VendorWebsites" >
        <RowIndicatorColumn>
        <HeaderStyle Width="20px"></HeaderStyle>
        </RowIndicatorColumn>

        <ExpandCollapseColumn>
        <HeaderStyle Width="20px"></HeaderStyle>
        </ExpandCollapseColumn>
<CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>
            <Columns>
                <telerik:GridBoundColumn DataField="Name" DefaultInsertValue="" 
                    HeaderText="Name" SortExpression="Name" UniqueName="Name" HeaderStyle-Width="200px" >
<HeaderStyle Width="200px"></HeaderStyle>
                </telerik:GridBoundColumn>
                
                <telerik:GridHyperLinkColumn DataTextField="URL" DataNavigateUrlFields="URL" HeaderText="URL" 
                    SortExpression="URL" UniqueName="URL" Target="_blank">
                </telerik:GridHyperLinkColumn>
            </Columns>
        </MasterTableView>
        <ClientSettings EnableRowHoverStyle="true">
            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
        </ClientSettings>
    </telerik:RadGrid>  


    <asp:SqlDataSource ID="SqlDS_VendorWebsites" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
        SelectCommand="SELECT NAME, URL FROM Vendor_Special ORDER BY Name">
    </asp:SqlDataSource>

    </div>
</asp:Content>

