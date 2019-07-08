<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="Ref_SalesIDs.aspx.vb" Inherits="Information_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="width:400px; height:600px;float:left;margin:10px;">
        <h4>Sales ID Assignments</h4>

        <div style="width:400px; height:560px;">
        
            <telerik:RadGrid ID="RadGrid1" runat="server" CellSpacing="0" DataSourceID="SqlDS_SalesIDs" GridLines="None" Width="400px" Height="560px">


                <ClientSettings>
                    <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                </ClientSettings>

                    <MasterTableView AutoGenerateColumns="False" DataKeyNames="SalesRepID" DataSourceID="SqlDS_SalesIDs">
                    
                        <Columns>
                            <telerik:GridBoundColumn DataField="SalesRepID" HeaderText="ID" ReadOnly="True" SortExpression="SalesRepID" UniqueName="SalesRepID">
                                <HeaderStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="40px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="SalesName" HeaderText="SalesName" ReadOnly="True" SortExpression="SalesName" UniqueName="SalesName">
                                <HeaderStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="150px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" UniqueName="Mobile">
                                <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="eMail" HeaderText="eMail" SortExpression="eMail" UniqueName="eMail">
                                <HeaderStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                                <ItemStyle Width="100px" VerticalAlign="Bottom" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>
                            
                            
                        </Columns>


                    <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
                    </MasterTableView>

            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDS_SalesIDs" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                SelectCommand="SELECT SalesReps.SalesRepID, SalesReps_Details.eMail, SalesReps_Details.Mobile,
                                CASE WHEN SalesReps_Details.SalesName IS NULL THEN SalesReps.SalesName ELSE SalesReps_Details.SalesName END AS SalesName
                                FROM SalesReps LEFT OUTER JOIN SalesReps_Details ON SalesReps.SalesRepID = SalesReps_Details.SalesRepID">
            </asp:SqlDataSource>
        
        </div>

    
    </div>


</asp:Content>

