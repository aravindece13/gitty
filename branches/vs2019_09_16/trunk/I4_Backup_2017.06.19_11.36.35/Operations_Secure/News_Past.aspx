<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Operations_Secure.master" AutoEventWireup="false" CodeFile="News_Past.aspx.vb" Inherits="Operations_Secure_News_Past" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Operations | Past News</h1>

<div id="News" style="padding:0px 2px 2px 5px;float:left;height:90%;width:96%;">
    <asp:Panel ID="Panel1" runat="server" Width="100%" Height="100%" 
            ScrollBars="Vertical" BorderColor="#53b3e8" BorderStyle="Solid" BorderWidth="1px">
         
        
    <telerik:RadListView ID="RadListView1" runat="server" 
            DataSourceID="SqlDataSourceNews" width="90%" Height="100%">
      
        
        <ItemTemplate>
            <div id="NewsHeadline" style="width:80%;">
                <asp:Label ID="TopicAreaLabel" runat="server" 
                    Text='<%# Eval("TopicArea") %>' /> | <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
            
                        
            </div><br />
            
            <div id="NewsItem" style="width:90%; padding: 0px 0px 0px 3px;">
                <asp:Label ID="NewsItemLabel" runat="server" Text='<%# Eval("NewsItem") %>' />
            </div><br />
            
            <div id="NewsItemTags" style="width:100%; padding: 0px 0px 0px 3px;">
                            <asp:Label ID="lblTags" runat="server" Text="Tags: "></asp:Label>
                            <asp:Label ID="NewsItemTagLabel" runat="server" Text='<%# Eval("Tags") %>' />
            </div>
            <br />
            <div id="NewsItemStats" style="width:100%; padding: 0px 0px 0px 3px;">
                   <asp:Label ID="lblCreatedBy1" runat="server" Text="Created By: " Font-Size="X-Small" ></asp:Label>
                   <asp:Label ID="lblCreatedBy2" runat="server" Text='<%# Eval("CreatedBy") %>' Font-Size="X-Small"></asp:Label> &nbsp;
                   <asp:Label ID="lblCreatedDate" runat="server" Text='<%# Eval("CreatedDate") %>' Font-Size="X-Small" ></asp:Label> &nbsp;
                   <asp:Label ID="lblModifiedBy1" runat="server" Text="Modified By: " Font-Size="X-Small" ></asp:Label>
                   <asp:Label ID="lblModifiedBy2" runat="server" Text='<%# Eval("ModifiedBy") %>' Font-Size="X-Small"></asp:Label> &nbsp;
                   <asp:Label ID="lblModifiedDate" runat="server" Text='<%# Eval("ModifiedDate") %>' Font-Size="X-Small" ></asp:Label> &nbsp;
            </div>
            
            
            
            <hr style="color:Black; width:98%;" /> 
            
        </ItemTemplate>
        <EmptyDataTemplate>
            <div >
                <div>
                    There are no items to be displayed.</div>
            </div>
        </EmptyDataTemplate>
        
    </telerik:RadListView>
 
     <asp:SqlDataSource ID="SqlDataSourceNews" runat="server" 
         ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
         
            SelectCommand="SELECT TopicArea, StartDate, EndDate, Headline, NewsItem, DisplayPriority, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, Tags 
            FROM aNews 
            WHERE (EndDate &lt; { fn NOW() }) AND (TopicArea IN ('Operations')) AND (DATEDIFF(dd, EndDate, { fn NOW() }) &lt; 180) 
            ORDER BY DisplayPriority, StartDate DESC">
     </asp:SqlDataSource>
     </asp:Panel> 
   
 </div>

</asp:Content>

