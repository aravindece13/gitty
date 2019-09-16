<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/AdminCorp_Secure.master" AutoEventWireup="false" CodeFile="AnniversarySearch.aspx.vb" Inherits="AdminCorp_AnniversarySearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="comboBoxBranch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdEmployeeListing" LoadingPanelID="RadAjaxLoadingPanel1"  /> 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="comboBoxAnniversaryMonth">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdEmployeeListing" LoadingPanelID="RadAjaxLoadingPanel1"  /> 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="comboBoxBirthMonth">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdEmployeeListing" LoadingPanelID="RadAjaxLoadingPanel1"  /> 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnSearchEmployees">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdEmployeeListing" LoadingPanelID="RadAjaxLoadingPanel1"  /> 
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
</telerik:RadAjaxManagerProxy>

<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
</telerik:RadAjaxLoadingPanel>


<div style="width:1320px; margin:10px; float:left;">
    <h1>Corporate Administration | Anniversary &amp; Birthday Search</h1>

    <div style="width:1300px; float:left; margin:5px 20px 5px 10px;">
        <div style="width:225px; margin: 0px 20px 0px 0px; float:left;">
            <telerik:RadComboBox ID="comboBoxBranch" runat="server" Width="160px" 
                Label="Branch:" DataSourceID="SqlDS_Branch" LabelCssClass ="myLabelCss" AppendDataBoundItems="true" DataTextField="comboname" DataValueField="comboname" >
                <Items>
                    <telerik:RadComboBoxItem runat="server" Text="All Branches" Value="%" Selected="true" />    
                </Items>
            </telerik:RadComboBox>
            <asp:SqlDataSource ID="SqlDS_Branch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                SelectCommand="uspGetBranchesActiveOnly" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>

        </div>
        <div style="width:220px; margin: 0px 20px 0px 0px; float:left;">
            <telerik:RadComboBox ID="comboBoxAnniversaryMonth" runat="server" Width="120px" Label="Anniv. Month:" LabelCssClass ="myLabelCss" >
              <Items>
                <telerik:RadComboBoxItem runat="server" Text="All Months" Value="%" Selected="true" />
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
        <div style="width:220px; margin: 0px 20px 0px 0px; float:left;">
            <telerik:RadComboBox ID="comboBoxBirthMonth" runat="server" Width="120px" Label="Birth Month:" LabelCssClass ="myLabelCss" >
                <Items>
                    <telerik:RadComboBoxItem runat="server" Text="All Months" Value="%" Selected="true" />
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
        <div style="width:225px; float:left; ">
            <telerik:RadButton ID="btnSearchEmployees" runat="server" Text="Search" UseSubmitBehavior="false" Width="150px" ></telerik:RadButton>
        </div>

    </div>
    <div style="float:left; width:1600px; ">
        <telerik:RadGrid ID="grdEmployeeListing" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellSpacing="0" 
            DataSourceID="SqlDS_EmployeeListing" GridLines="None" Width="1600px" Height="650px">
            <ClientSettings>
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>
            <MasterTableView DataSourceID="SqlDS_EmployeeListing" PageSize="50">
                <Columns>
                    <telerik:GridBoundColumn DataField="EmpName"  HeaderText="Employee" SortExpression="EmpName" UniqueName="EmpName">
                        <HeaderStyle Width = "150px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "150px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="startdt" DataFormatString="{0:M/d/yyyy}" DataType="System.DateTime" HeaderText="Start" SortExpression="startdt" UniqueName="startdt">
                        <HeaderStyle Width = "80px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "80px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="AnniversaryMonth"  HeaderText="Anniv Month" ReadOnly="True" SortExpression="AnniversaryMonth" UniqueName="AnniversaryMonth">
                        <HeaderStyle Width = "90px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "90px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="YearsService" DataType="System.Int32" HeaderText="Years Service" ReadOnly="True" SortExpression="YearsService" UniqueName="YearsService">
                        <HeaderStyle Width = "60px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "60px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="BirthDay" HeaderText="Birth Day" SortExpression="BirthDay" UniqueName="BirthDay">
                        <HeaderStyle Width = "130px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "130px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="street" HeaderText="Street" SortExpression="street" UniqueName="street">
                        <HeaderStyle Width = "220px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "220px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="city" HeaderText="City" SortExpression="city" UniqueName="city">
                        <HeaderStyle Width = "130px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "130px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="state" HeaderText="State" SortExpression="state" UniqueName="state">
                        <HeaderStyle Width = "50px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "50px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="zip" HeaderText="Zip" SortExpression="zip" UniqueName="zip">
                        <HeaderStyle Width = "50px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "50px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="title" HeaderText="Title" SortExpression="title" UniqueName="title">
                        <HeaderStyle Width = "140px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "140px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="comboname" HeaderText="Branch" SortExpression="comboname" UniqueName="comboname">
                        <HeaderStyle Width = "140px" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        <ItemStyle Width = "140px" HorizontalAlign="Left" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
        <asp:SqlDataSource ID="SqlDS_EmployeeListing" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="uspEmployees_BirthdayAnniversary" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="comboBoxBranch" DefaultValue="%" Name="BranchName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="comboBoxAnniversaryMonth" DefaultValue="%" Name="AnniversaryMonth" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="comboBoxBirthMonth" DefaultValue="%" Name="BirthMonth" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</div>
</asp:Content>

