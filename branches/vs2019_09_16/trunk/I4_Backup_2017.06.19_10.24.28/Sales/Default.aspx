<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Sales.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Sales_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Sales | News</h1>

<div id="News" style="padding:0px 2px 2px 5px;float:left;height:90%;width:96%;">
    <asp:Panel ID="Panel1" runat="server" Width="100%" Height="100%" 
            ScrollBars="Vertical" BorderColor="#53b3e8" BorderStyle="Solid" BorderWidth="1px">
         
        
    <telerik:RadListView ID="RadListView1" runat="server"  
            AllowPaging="false" DataSourceID="SqlDataSourceNews" width="1000px" Height="500px">
      
        
        <ItemTemplate>
            <div id="NewsHeadline" style="width:80%;">
                <asp:Label ID="TopicAreaLabel" runat="server" 
                    Text='<%# Eval("TopicArea") %>' /> | <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
            
                        
            </div><br />
            
            <div id="NewsItem" style="width:90%; padding: 0px 0px 0px 3px;">
                <asp:Label ID="NewsItemLabel" runat="server" Text='<%# Eval("NewsItem") %>' />
            </div><br />
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
         SelectCommand="SELECT TopicArea, StartDate, EndDate, Headline, NewsItem, DisplayPriority, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate 
         FROM aNews 
         WHERE (EndDate &gt; { fn NOW() }) AND (StartDate &lt; { fn NOW() }) 
         AND TopicArea IN ('Sales','Purchasing','AMR','Fleet','Payroll','Credit')
         ORDER BY DisplayPriority, StartDate DESC">
     </asp:SqlDataSource>
     </asp:Panel> 
   
 </div>


</asp:Content>

