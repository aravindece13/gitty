<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Information.master" AutoEventWireup="false" CodeFile="searchNewsArchive.aspx.vb" Inherits="Information_searchNewsArchive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



    <asp:SqlDataSource ID="SqlDS_News" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                        SelectCommand="uspNews_RetrieveOldNews" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="fltrNewsItemContains" Name="NewsItemContains" DefaultValue="" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="btnSearch">
                <UpdatedControls> 
                    <telerik:AjaxUpdatedControl ControlID="RadListView1" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>

    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
    </telerik:RadAjaxLoadingPanel>



<h1>Information | Past News</h1>
 

 <div id="divBody" style="width:1200px;height:650px;padding: 0px 0px 0px 10px;">

    <div id="divFilters" style="width:1100px; height:25px;padding: 0px 0px 0px 0px; float:left;">
        
        <telerik:RadTextBox ID="fltrNewsItemContains" runat="server" Label="Text Search: " Width="400px" LabelWidth="100px" >
        </telerik:RadTextBox>
      
        <telerik:RadButton ID="btnSearch" runat="server" Skin="Silk" Text="Search">
        </telerik:RadButton>
        
               
    </div>
    <div id="divListing" style="width:1100px; height:600px;padding: 10px 0px 0px 0px; float:left;">
    
                <asp:Panel ID="Panel1" runat="server" Width="1050px" Height="600px">
         
                <telerik:RadListView ID="RadListView1" runat="server" AllowPaging="False" DataSourceID="SqlDS_News" width="1050px" Height="600px">
                     
                    <ItemTemplate>
                       <fieldset style="float: left; vertical-align:top; width: 1000px; ">

                            <legend style="color:White; padding:5px 5px 5px 5px; background-color: Gray; font-size:small;"><%#Eval("TopicArea")%> | <%#Eval("Headline")%> </legend>

                            <div id="NewsItemStats" style="width:395px; padding: 5px 3px 5px 5px;">
                                   <asp:Label ID="lblCreatedBy1" runat="server" Text="By: " Font-Size="X-Small" ></asp:Label>
                                   <asp:Label ID="lblCreatedBy2" runat="server" Text='<%# Eval("CreatedBy") %>' Font-Size="X-Small"></asp:Label> &nbsp;
                                   <asp:Label ID="lblCreatedDate" runat="server" Text='<%# Eval("CreatedDate") %>' Font-Size="X-Small" ></asp:Label> &nbsp;
                   
                            </div>
            
                            <div id="NewsItem" style="width:800px; padding: 5px 0px 10px 5px;">
                                <asp:Label ID="NewsItemLabel" runat="server" Text='<%# Eval("NewsItem") %>' />
                            </div>
           
                       </fieldset>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                       No stories to show.
                    </EmptyDataTemplate>
        
        
                </telerik:RadListView>
 
                 <%--<asp:SqlDataSource ID="SqlDataSourceNews" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
         
                     SelectCommand="SELECT TopicArea, StartDate, EndDate, Headline, NewsItem, DisplayPriority, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, Tags 
                     FROM aNews WHERE EndDate &lt; { fn NOW() } AND TopicArea != 'Payroll'
                     ORDER BY DisplayPriority, StartDate DESC">
                 </asp:SqlDataSource>--%>
   
   
    
                
   
   
                 </asp:Panel>
    
    </div>
 </div>






     
        
   




   



</asp:Content>

