<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="QuoteActivity.aspx.vb" Inherits="BidTool_QuoteActivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <script type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

        function CloseWindow() {
            GetRadWindow().close();
        }
    </script> 



    <div style="margin:10px; width:670px; height:600px;">
        <div style="width:100%; margin-bottom:15px;float:left;"> 
            <div style="width:670px;float:left; margin-bottom:10px;">
                <div style="float:right; width:195px; ">
                    <telerik:RadButton ID="btnCloseQuote" runat="server" Width="175px" Text="Close Window" OnClientClicking="CloseWindow" Skin="BlackMetroTouch" ></telerik:RadButton>
                </div>
                <div style="float:left; width:470px; ">    
                    <asp:Label ID="lblProjectName" runat="server" Font-Size="Large" ForeColor="#4c68a2" ></asp:Label> 
                </div>
                
            
            </div>
            <div style="width:550px;float:left;margin-bottom:10px;">
                <asp:Label ID="lbQuoteName" runat="server" Font-Size="Large" ForeColor="#4c68a2" ></asp:Label> 
            </div>  
            <div style="width:550px;float:left;">
                <asp:Label ID="lblCreation" runat="server"></asp:Label>
            </div>

        </div>
        <div style="width:100%; margin-bottom:15px;float:left; font-size:large; background-color:Orange; color:White; padding:5px;">
            Quote Activity
        </div>
        <div style="width:100%; margin-bottom:15px;float:left; font-size:medium; color:#4c68a2; padding:5px;">
            <asp:Label ID="lblCurrentDateTime" runat="server"></asp:Label>
        </div>
        <div style="float:left; width:670px; height:345px;">
            <div style="float:left; width:370px; height:450px;">
                <telerik:RadGrid ID="grdQuoteActivity" runat="server" CellSpacing="-1" Width="350px" Height="450px" 
                    DataSourceID="SqlDS_grdQuoteActivity" GridLines="None" PageSize="100" ShowFooter="false" AllowPaging="false"
                    GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                
                     <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true" >
                            <Selecting AllowRowSelect="false" />
                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" />
                                     
                     </ClientSettings>
                
                
                
                    <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdQuoteActivity" AllowSorting="True" CommandItemDisplay="Top">
                        <CommandItemSettings ShowRefreshButton="true" ShowAddNewRecordButton="false" />
                    
                        <Columns>
                            <telerik:GridBoundColumn DataField="FullName" HeaderText="User" SortExpression="FullName" UniqueName="FullName">
                                <HeaderStyle Width="200px" HorizontalAlign="Left" />
                                <ItemStyle Width="200px" HorizontalAlign="Left" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="DateTime" DataType="System.DateTime" HeaderText="Last Accessed" SortExpression="DateTime" UniqueName="DateTime">
                                <HeaderStyle Width="150px" HorizontalAlign="Left" />
                                <ItemStyle Width="150px" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
                <asp:SqlDataSource ID="SqlDS_grdQuoteActivity" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                    SelectCommand="SELECT FullName, DateTime 
                            FROM Quote_Recent 
                            WHERE QuoteID = @QuoteID
                            ORDER BY QuoteID desc, DateTime desc, FullName">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="QuoteID" 
                            QueryStringField="QuoteID" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div style="float:left; width:250px; height:345px; font-size:small; padding:10px 10px 0px 20px;">
                The access time identifies the last time the quote was accessed for the date specified.<br /><br />
                This information is intended to help the user to identify any user conflicts, and ease communication.
            </div>
        </div>
        
        
    </div>

</asp:Content>

