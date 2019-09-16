<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="searchBirthAnniv.aspx.vb" Inherits="Information_searchBirthAnniv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <h1>Employees | This Month's Birthdays and Anniversaries</h1>
    
    <div style="width:1200px; float:left; margin:20px;">
        

        <div style="width:1200px; margin-bottom:20px;">
            <div style="width:1200px; font-size: x-large; color:#4c68a2; padding:10px;">
                Birthdays
            </div>
            <telerik:RadGrid ID="grdBDay" runat="server" Width="1000px" DataSourceID="SqlDS_grdBirth" GroupPanelPosition="Top" 
                ResolvedRenderMode="Classic" Skin="MetroTouch">
                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdBirth">
                    <Columns>
                        <telerik:GridBoundColumn DataField="Name" HeaderText="" ReadOnly="True" SortExpression="Name" UniqueName="Name">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="branchname" HeaderText="Branch" SortExpression="branchname" UniqueName="branchname">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="dept" HeaderText="Department" SortExpression="dept" UniqueName="dept">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="title" HeaderText="Title" SortExpression="title" UniqueName="title">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Birthday" HeaderText="Birthday" ReadOnly="True" SortExpression="Birthday" UniqueName="Birthday">
                        </telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDS_grdBirth" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                SelectCommand="SELECT  E.name_first + ' ' + E.name_last AS Name, Branches.branchname, E.dept, E.title, E.bmonth + ' ' + CONVERT(char,E.bday) AS Birthday
                                FROM   HR_Employees E INNER JOIN
                                                      Branches ON E.branchno = Branches.branchno
                                WHERE     (E.status = 'Active') AND E.ShowBDay = 1 AND E.bmonth = DATENAME(month,GETDATE())
                                ORDER BY bday">
            </asp:SqlDataSource>
        </div>
        
        <div style="width:1200px; margin-bottom:30px;">
            <div style="width:1200px; font-size: x-large; color:#4c68a2; padding:10px;">
                Work Anniversaries
            </div>
            <telerik:RadGrid ID="grdAnniv" runat="server" Width="1000px" DataSourceID="SqlDS_grdAnniv" GroupPanelPosition="Top" 
                ResolvedRenderMode="Classic" Skin="MetroTouch">

                <ClientSettings>
                    
                </ClientSettings>

                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdAnniv">
                    <Columns>
                        <telerik:GridBoundColumn DataField="Name" HeaderText="" ReadOnly="True" SortExpression="Name" UniqueName="Name">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="branchname" HeaderText="Branch" SortExpression="branchname" UniqueName="branchname">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Dept" HeaderText="Department" SortExpression="Dept" UniqueName="Dept">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="title" HeaderText="Title" SortExpression="title" UniqueName="title">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Day" HeaderText="Day" ReadOnly="True" SortExpression="Day" UniqueName="Day">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="YearsService" DataType="System.Int32" HeaderText="Years of Service" ReadOnly="True" SortExpression="YearsService" UniqueName="YearsService">
                        </telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDS_grdAnniv" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="SELECT  E.name_first + ' ' + E.name_last AS Name, Branches.branchname, E.dept AS Dept,
                        E.title, DATENAME(month,E.startdt) + ' ' + DATENAME(day,E.startdt) AS Day, YEAR(GETDATE())- YEAR(E.startdt) AS YearsService
                        FROM         HR_Employees E INNER JOIN
                                              Branches ON E.branchno = Branches.branchno
                        WHERE     (E.status = 'Active') AND E.ShowAnniv = 1 AND DATENAME(month,E.startdt) = DATENAME(month,GETDATE()) AND (YEAR(GETDATE())- YEAR(E.startdt)) &gt; 0
                        ORDER BY Day(E.startdt)">
            </asp:SqlDataSource>
        </div>
        
    </div>
    
</asp:Content>

