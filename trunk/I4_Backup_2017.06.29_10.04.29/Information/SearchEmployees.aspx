<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="SearchEmployees.aspx.vb" Inherits="Information_SearchEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



    <asp:SqlDataSource ID="SqlDS_fltrBranch" runat="server" 
       ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
       SelectCommand="uspGetBranchesActiveOnly" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDS_Employees" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="uspHREmployeeGetEmployees" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="Status" DefaultValue="Active" Type="String" />
                <asp:ControlParameter Name="Branch" ControlID="fltrBranch" DefaultValue="%" PropertyName="SelectedValue" Type="String" />
                <asp:Parameter Name="Branchstate" DefaultValue="%" Type="String" />
                <asp:ControlParameter Name="Name_last" ControlID="fltrName_Last" DefaultValue="%" PropertyName="Text" Type="String" />
                <asp:ControlParameter Name="Name_first" ControlID="fltrName_First" DefaultValue="%" PropertyName="Text" Type="String" />
                <asp:Parameter Name="AnniversaryMonth" DefaultValue="%" Type="String" />
                <asp:Parameter Name="TermYear" DefaultValue="%" Type="String" />
                <asp:Parameter Name="Department" DefaultValue="%" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>


    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="btnSearch">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="grdListing" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="lnkContactExts">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkContactExts" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="lnkContactListing">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="lnkContactListing" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>

    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
    </telerik:RadAjaxLoadingPanel>


<h1>Information | Employees</h1>

<div id="divBody" style="width:1200px;height:650px;padding: 0px 0px 0px 10px;">

    <div id="divFilters" style="width:1100px; height:30px;Margin: 0px 0px 0px 0px; float:left;">
        <div style="width:260px;float:left;margin-right:10px;">
            <telerik:RadTextBox ID="fltrName_First" runat="server" Label="First Name: " Width="220px" LabelWidth="80px" LabelCssClass="myLabelCss" >
            </telerik:RadTextBox>
        </div>
        <div style="width:260px;float:left;margin-right:10px;">
            <telerik:RadTextBox ID="fltrName_Last" runat="server" Label="Last Name: " Width="220px" LabelWidth="80px" LabelCssClass="myLabelCss">
            </telerik:RadTextBox>
        </div>
        <div style="width:260px;float:left;margin-right:10px;">
            <telerik:RadComboBox ID="fltrBranch" runat="server" Label="Branch: "  DataSourceID="SqlDS_fltrBranch" AppendDataBoundItems="true" 
                DataTextField="comboname" DataValueField="branchno" LabelCssClass="myLabelCss">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Text="All" Value="%" Selected="true" />
                </Items>
            </telerik:RadComboBox> 
        </div>
        <div style="width:80px;float:left;">
            <telerik:RadButton ID="btnSearch" runat="server" Width="75px" Skin="Metro" Text="Search">
            </telerik:RadButton>
        </div>
               
    </div>
    <div id="divListing" style="width:1100px; height:600px;Margin: 10px 0px 0px 0px; float:left;">
    
        <telerik:RadGrid ID="grdListing" runat="server" AllowSorting="True" Height="600px" Width="1100px"
            CellSpacing="0" DataSourceID="SqlDS_Employees" GridLines="None" AllowFilteringByColumn="false"  >
            
            <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="true" />
            </ClientSettings>
            
            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_Employees" >
                               
               
                <Columns>
                    
                    <telerik:GridBoundColumn DataField="name_last" HeaderText="Last Name" SortExpression="name_last" UniqueName="name_last">
                        <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                        <ItemStyle Width="100px" HorizontalAlign="left" VerticalAlign="Top" Wrap="true" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="name_first" HeaderText="First Name" SortExpression="name_first" UniqueName="name_first">
                        <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                        <ItemStyle Width="100px" HorizontalAlign="left" VerticalAlign="Top" Wrap="true" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="comboname" HeaderText="Branch" SortExpression="comboname" UniqueName="comboname">
                        <HeaderStyle Width="130px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                        <ItemStyle Width="130px" HorizontalAlign="left" VerticalAlign="Top" Wrap="true" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="title" HeaderText="Title" SortExpression="title" UniqueName="title">
                        <HeaderStyle Width="120px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                        <ItemStyle Width="120px" HorizontalAlign="left" VerticalAlign="Top" Wrap="true" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="dept" HeaderText="Department" SortExpression="dept" UniqueName="dept">
                        <HeaderStyle Width="85px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                        <ItemStyle Width="85px" HorizontalAlign="left" VerticalAlign="Top" Wrap="true" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="mobile" HeaderText="Mobile" SortExpression="mobile" UniqueName="mobile">
                        <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                        <ItemStyle Width="100px" HorizontalAlign="left" VerticalAlign="Top" Wrap="true" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="extension" HeaderText="Ext." SortExpression="extension" UniqueName="extension">
                        <HeaderStyle Width="50px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                        <ItemStyle Width="50px" HorizontalAlign="left" VerticalAlign="Top" Wrap="true" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="fax" HeaderText="Fax" SortExpression="fax" UniqueName="fax">
                        <HeaderStyle Width="100px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                        <ItemStyle Width="100px" HorizontalAlign="left" VerticalAlign="Top" Wrap="true" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="email" HeaderText="Email" SortExpression="email" UniqueName="email">
                        <HeaderStyle Width="150px" HorizontalAlign="Left" VerticalAlign="Bottom" Wrap="true" />
                        <ItemStyle Width="150px" HorizontalAlign="left" VerticalAlign="Top" Wrap="true" />
                    </telerik:GridBoundColumn>
                </Columns>

            </MasterTableView>

        </telerik:RadGrid>
        
    </div>
    <div>
         <div style="Margin:15px 5px 5px 15px;float:left;width:1200px;">
            
            <div style="padding:4px 4px 4px 4px;width:500px; float:left; margin-right:20px;" >
                <telerik:RadButton ID="lnkContactExts" ButtonType="LinkButton" runat="server" Width="480px" Text="Phone Extensions" NavigateUrl="~/Reports2/Employees_Exts_ByBranch.aspx" Skin="BlackMetroTouch" Target="_blank"></telerik:RadButton>
            </div>
            
            <div style="padding:4px 4px 4px 4px;width:500px; float:left;" >
                <telerik:RadButton ID="lnkPhoneFax" ButtonType="LinkButton" runat="server" Skin="BlackMetroTouch" Width="480px" Text="Mobile #'s, Extensions, eMail Addresses" NavigateUrl="~/Reports2/Employees_Contacts_ByBranch.aspx" Target="_blank"></telerik:RadButton>
            </div>
            

       
        </div>  
    </div>
</div>



    
  
   

</asp:Content>

