<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="searchSalesRepIDs.aspx.vb" Inherits="Information_searchSalesRepIDs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
</telerik:RadAjaxLoadingPanel>


<h1>Information | Sales Rep ID's</h1>

<div id="divBody" style="width:1200px;height:650px;padding: 0px 0px 0px 10px;">


    <telerik:RadGrid ID="grdSalesIDs" runat="server" Width="900px" Height="650px" CellSpacing="0" DataSourceID="SqlDS_SalesIDs" GridLines="None" Skin="Metro">
            
            <ClientSettings>
                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
            </ClientSettings>

            <MasterTableView AutoGenerateColumns="False" DataKeyNames="SalesRepID" DataSourceID="SqlDS_SalesIDs">
           
                <Columns>
                    <telerik:GridBoundColumn DataField="SalesRepID" HeaderText="Sales ID" ReadOnly="True" SortExpression="SalesRepID" UniqueName="SalesRepID">
                        <HeaderStyle Width="100px" />
                        <ItemStyle Width="100px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Name" SortExpression="SalesName" UniqueName="SalesName">
                        <HeaderStyle Width="200px" />
                        <ItemStyle Width="200px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID">
                        <HeaderStyle Width="50px" />
                        <ItemStyle Width="50px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" UniqueName="Mobile">
                        <HeaderStyle Width="150px" />
                        <ItemStyle Width="150px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="eMail" HeaderText="eMail" SortExpression="eMail" UniqueName="eMail">
                        <HeaderStyle Width="200px" />
                        <ItemStyle Width="200px" />
                    </telerik:GridBoundColumn>
                    
                </Columns>

          
            </MasterTableView>

         </telerik:RadGrid>
                <asp:SqlDataSource ID="SqlDS_SalesIDs" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" SelectCommand="SELECT SalesReps.SalesRepID, SalesReps.SalesName, SalesReps.WhseID,  SalesReps_Details.eMail, SalesReps_Details.Mobile
                    FROM   SalesReps LEFT OUTER JOIN
                                          SalesReps_Details ON SalesReps.SalesRepID = SalesReps_Details.SalesRepID
                    WHERE WhseID NOT IN ('14')
                    ORDER BY SalesReps.SalesRepID">
                </asp:SqlDataSource>
</div>


</asp:Content>

