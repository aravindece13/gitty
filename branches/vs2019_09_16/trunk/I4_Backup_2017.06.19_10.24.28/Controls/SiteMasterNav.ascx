<%@ Control Language="VB" AutoEventWireup="false" CodeFile="SiteMasterNav.ascx.vb" Inherits="Controls_SiteMasterNav" %>

<telerik:RadMenu ID="RadMenu1" runat="server" Skin="Metro" Width="800px">
        <Items>
                <telerik:RadMenuItem runat="server" Text="Home" NavigateUrl="~/Default.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" Text="Department Pages">
                    <Items>
                        <telerik:RadMenuItem runat="server" Text="Accounting" NavigateUrl="~/Accounting/Default.aspx" ></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="Credit" NavigateUrl="~/Credit/Default.aspx" ></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="Human Resources" NavigateUrl="~/HR/Default.aspx"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="IT" NavigateUrl="~/IT/Default.aspx"></telerik:RadMenuItem>
                        <%--<telerik:RadMenuItem runat="server" Text="MeterShop" NavigateUrl="~/MeterShop/Default.aspx"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="Operations" NavigateUrl="~/Operations/Default.aspx" ></telerik:RadMenuItem>--%>
                        <telerik:RadMenuItem runat="server" Text="MeterShop" NavigateUrl="~/MeterShop/Default.aspx" ></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="Purchasing" NavigateUrl="~/Purchasing/Default.aspx" ></telerik:RadMenuItem>
                        
                    </Items>
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" Text="Job Pages">
                    <Items>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/Accounting_Secure/Reports.aspx" Text="Accounting"></telerik:RadMenuItem>   
                        <%--<telerik:RadMenuItem runat="server" NavigateUrl="~/AMR_Secure/Orders.aspx" Text="AMR Specialists"></telerik:RadMenuItem>--%>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/BranchAdmin/Reports.aspx" Text="Branch Admin"></telerik:RadMenuItem> 
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/BranchMngr/Default.aspx" Text="Branch Manager"></telerik:RadMenuItem>               
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/AdminCorp/Reports.aspx" Text="Corporate Admin"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/Credit_Secure/Reports.aspx" Text="Credit"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/Exec/Default.aspx" Text="Executives"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/HR_Secure/Reports.aspx" Text="HR"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/InsideSales/Projects.aspx" Text="Inside Sales"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/IT_Secure/Maintain_ContactInfo.aspx" Text="IT"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/Operations_Secure/ActivityMonitor.aspx" Text="Operations"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/Purchasing_Secure/Reports.aspx" Text="Purchasing"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/Sales/Projects.aspx" Text="Sales"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" NavigateUrl="~/Warehouse/Default.aspx" Text="Warehouse" ></telerik:RadMenuItem>
                    </Items>
                </telerik:RadMenuItem>
               <%-- <telerik:RadMenuItem runat="server" Text="Training">
                    <Items>
                        <telerik:RadMenuItem runat="server" Text="BidTool" NavigateUrl="~/Training/BidTool.aspx"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="Intranet" NavigateUrl="~/Training/Intranet.aspx"></telerik:RadMenuItem>
                    </Items>
                </telerik:RadMenuItem>--%>

                <telerik:RadMenuItem runat="server" Text="Searches">
                    <Items>
                        <telerik:RadMenuItem runat="server" Text="Anniversaries &amp; Birthdays" NavigateUrl="~/Information/searchBirthAnniv.aspx"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="Branch Info" NavigateUrl="~/Information/searchBranches.aspx"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="Customers" NavigateUrl="~/Information/searchCustomer.aspx"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="Employees" NavigateUrl="~/Information/searchEmployees.aspx"></telerik:RadMenuItem>
                        <telerik:RadMenuItem runat="server" Text="Municipal Specs" NavigateUrl="~/Information/searchMuniSpecs.aspx"></telerik:RadMenuItem>
                        <%--<telerik:RadMenuItem runat="server" Text="News Archive" NavigateUrl="~/Information/searchNewsArchive.aspx"></telerik:RadMenuItem>--%>
                        <telerik:RadMenuItem runat="server" Text="Vendor Websites" NavigateUrl="~/Information/searchVendorWebsites.aspx"></telerik:RadMenuItem>
                    </Items>
                </telerik:RadMenuItem>
               
                            
               
                
                <telerik:RadMenuItem runat="server" Text="New Intranet Tab" NavigateUrl="http://Intranet/" Target="_blank">
                </telerik:RadMenuItem>
        </Items>
</telerik:RadMenu>