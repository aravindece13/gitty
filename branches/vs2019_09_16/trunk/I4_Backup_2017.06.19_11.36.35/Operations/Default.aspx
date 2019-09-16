<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Operations.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Operations_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Operations - Public | News</h1>
<%--<div id="CommonLinks" style="padding:0px 2px 2px 5px;float:left;height:155px;width:1000px;">
<div id="divTabStrip1" style="padding:5px 5px 0px 5px;float:left;width:995px;">   
    <telerik:RadTabStrip ID="RadTabStrip1" runat="server"  
        MultiPageID="RadMultiPage1" SelectedIndex="2"  Width="800px">
        <Tabs>
            
            <telerik:RadTab runat="server" Text="A" PageViewID="A" Selected="true" ></telerik:RadTab>
            <telerik:RadTab runat="server" Text="B" PageViewID="B" ></telerik:RadTab>
 
        </Tabs>
    </telerik:RadTabStrip>
  </div>


<telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="195px" Width="1000px">
    
  
  <telerik:RadPageView ID="A" runat="server" Selected="true">
        <div id="div2" style="padding:15px 5px 5px 15px;float:left;width:900px;">
          
        </div>  
        
  
  </telerik:RadPageView>
  <telerik:RadPageView ID="B" runat="server">  
        <div id="div3" style="padding:15px 5px 5px 15px;float:left;width:800px;">
        
        
        </div>        	  
  </telerik:RadPageView>
  
  
  
  
  
</telerik:RadMultiPage>  
</div>--%>

<div id="News" style="padding:0px 2px 2px 5px;float:left;height:90%;width:96%;">
    <asp:Panel ID="Panel1" runat="server" Width="100%" Height="100%" 
            ScrollBars="Vertical" BorderColor="#53b3e8" BorderStyle="Solid" BorderWidth="1px">
         
        
    <telerik:RadListView ID="RadListView1" runat="server"   
            AllowPaging="False" DataSourceID="SqlDataSourceNews" width="900px" 
            Height="325px" Skin="Office2007" BorderColor="Black"  >
      
                
        <ItemTemplate>
           <fieldset style="float: left; vertical-align:top; width: 825px;">
           
                           
                <legend style="color:White; padding:5px 5px 5px 5px; background-color: Gray; font-size:small;"><%#Eval("TopicArea")%> | <%#Eval("Headline")%> </legend>
                <%--<asp:Label ID="TopicAreaLabel" runat="server" 
                    Text='<%# Eval("TopicArea") %>' /> | <asp:Label ID="HeadlineLabel" runat="server" Text='<%# Eval("Headline") %>' />
       --%>
            
            
            <div id="NewsItemStats" style="width:395px; padding: 5px 3px 5px 5px;">
                   <asp:Label ID="lblCreatedBy1" runat="server" Text="By: " Font-Size="X-Small" ></asp:Label>
                   <asp:Label ID="lblCreatedBy2" runat="server" Text='<%# Eval("CreatedBy") %>' Font-Size="X-Small"></asp:Label> &nbsp;
                   <asp:Label ID="lblCreatedDate" runat="server" Text='<%# Eval("CreatedDate") %>' Font-Size="X-Small" ></asp:Label> &nbsp;
                   <%--<asp:Label ID="lblModifiedBy1" runat="server" Text="Modified: " Font-Size="X-Small" ></asp:Label>
                   <asp:Label ID="lblModifiedBy2" runat="server" Text='<%# Eval("ModifiedBy") %>' Font-Size="X-Small"></asp:Label> &nbsp;
                   <asp:Label ID="lblModifiedDate" runat="server" Text='<%# Eval("ModifiedDate") %>' Font-Size="X-Small" ></asp:Label> &nbsp;--%>
            </div>
            
            <div id="NewsItem" style="width:800px; padding: 5px 0px 10px 5px;">
                <asp:Label ID="NewsItemLabel" runat="server" Text='<%# Eval("NewsItem") %>' />
            </div>
            
            
            
           
           </fieldset>
        </ItemTemplate>
        <EmptyDataTemplate>
            No Data to Display
        </EmptyDataTemplate>
        
        
    </telerik:RadListView>
 
     <asp:SqlDataSource ID="SqlDataSourceNews" runat="server" 
         ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
         SelectCommand="SELECT TopicArea, StartDate, EndDate, Headline, NewsItem, DisplayPriority, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate,Tags 
         FROM aNews 
         WHERE (EndDate &gt; { fn NOW() }) AND (StartDate &lt; { fn NOW() }) 
         AND TopicArea IN ('Operations')
         ORDER BY DisplayPriority, StartDate DESC">
     </asp:SqlDataSource>
     </asp:Panel> 
   
 </div>


</asp:Content>

