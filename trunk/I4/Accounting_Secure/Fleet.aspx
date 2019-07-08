<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Accounting_Secure.master" AutoEventWireup="false" CodeFile="Fleet.aspx.vb" Inherits="Accounting_Secure_Fleet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">



<h1>Accounting | Fleet Vehicle GL Account Maintenance</h1>

    

    
<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="10" Transparency="0">
</telerik:RadAjaxLoadingPanel>
   
   
   <telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="btnUpdateGL">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="grdFleet" LoadingPanelID="RadAjaxLoadingPanel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
                       
            <telerik:AjaxSetting AjaxControlID="grdFleet">
               <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="grdFleet"  />
                    <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1" />
               </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="fStatus">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fStatus" />
                    <telerik:AjaxUpdatedControl ControlID="grdFleet" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fVin">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fVin" />
                    <telerik:AjaxUpdatedControl ControlID="grdFleet" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fLeaseUnit">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fLeaseUnit" />
                    <telerik:AjaxUpdatedControl ControlID="grdFleet" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fDriver">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fDriver" />
                    <telerik:AjaxUpdatedControl ControlID="grdFleet" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="fLocation">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="fLocation" />
                    <telerik:AjaxUpdatedControl ControlID="grdFleet" LoadingPanelID="RadAjaxLoadingPanel1" />                    
                </UpdatedControls> 
            </telerik:AjaxSetting>
                           
        </AjaxSettings>
   </telerik:RadAjaxManagerProxy>
   
    

<div id="FleetListContainer" style="float:left; Width:1800px; Margin:10px;">
  
     <div style="width:1800px;float:left; margin-bottom:10px; ">                  
            <div style="width:180px; float:left;">
                <telerik:RadComboBox ID="fStatus" runat="server" Label="Status" Width="100px" AutoPostBack="true" CssClass="myLabelCssMedium" LabelCssClass="myLabelCssMedium" >
                    <Items>   
                        <telerik:RadComboBoxItem runat="server" Text="All" Value="%" />
                        <telerik:RadComboBoxItem runat="server" Text="Active" Value="Active" Selected="true" />   
                        <telerik:RadComboBoxItem runat="server" Text="Sold" Value="Sold" />    
                    </Items>
                </telerik:RadComboBox> 
            </div>
            <div style="width:200px; float:left; ">
                <telerik:RadTextBox ID="fVin" runat="server" Label="VIN:" Width="180px" AutoPostBack="true" LabelWidth="50px" LabelCssClass="myLabelCSS" CssClass="myLabelCssMedium" ></telerik:RadTextBox>
            </div>              
            <div style="width:200px; float:left; ">
                <telerik:RadTextBox ID="fLeaseUnit" runat="server" Label="Lease Unit:" Width="180px" AutoPostBack="true" LabelWidth="90px" LabelCssClass="myLabelCSS" CssClass="myLabelCssMedium"  ></telerik:RadTextBox>
            </div>
            <div style="width:200px; float:left;  ">
                <telerik:RadTextBox ID="fDriver" runat="server" Label="Driver:" Width="180px" LabelWidth="70px" LabelCssClass="myLabelCSS" AutoPostBack="true" CssClass="myLabelCssMedium" ></telerik:RadTextBox>
            </div> 
            <div style="width:200px; float:left;  ">
                <telerik:RadTextBox ID="fLocation" runat="server" Label="Location:" Width="180px" LabelWidth="70px" LabelCssClass="myLabelCSS" AutoPostBack="true" CssClass="myLabelCssMedium" ></telerik:RadTextBox>
            </div>                      
     </div>
     <div style="width:100%; float:left; margin:5px 0px 5px 10px; ">
        <div style="width:300px; float:left; padding:3px; background-color:Orange; color:White; font-style:italic; font-weight:bold; ">
            Select a vehicle to edit the GL number.
        </div>
     </div>
                            

  
    <div id="listview" style="float: left; width:1000px; ">
        <telerik:RadGrid ID="grdFleet" runat="server" DataSourceID="SqlDS_grdFleet" GridLines="None" Height="650px" Width="980px" AllowSorting="True" CellSpacing="0" >
            
            <GroupingSettings CaseSensitive="false" />
            
            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true"  >
                <Selecting AllowRowSelect="true" />
                <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="3" />
            </ClientSettings>
            
            <MasterTableView DataSourceID="SqlDS_grdFleet" DataKeyNames="id" ClientDataKeyNames="id" AutoGenerateColumns="False">
                
     
                <Columns>
                    <telerik:GridBoundColumn DataField="GL" HeaderText="GL" DataType="System.String" SortExpression="GL" UniqueName="GL">
                        <ItemStyle Font-Size="Small" VerticalAlign="Top" Width="120px" />
                        <HeaderStyle Font-Size="Small" VerticalAlign="Bottom" Width="120px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="unit" HeaderText="Lease Unit" DataType="System.String" SortExpression="Unit" UniqueName="Unit">
                        <ItemStyle Font-Size="Small" VerticalAlign="Top" Width="90px" />
                        <HeaderStyle Font-Size="Small" VerticalAlign="Bottom" Width="90px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="vin" HeaderText="VIN" DataType="System.String" SortExpression="vin" UniqueName="vin">
                       <ItemStyle Font-Size="Small" VerticalAlign="Top" Width="150px" />
                        <HeaderStyle Font-Size="Small" VerticalAlign="Bottom" Width="150px" />
                    </telerik:GridBoundColumn>
                    

                    <telerik:GridBoundColumn DataField="dkunit" HeaderText="DK Unit" DataType="System.String" SortExpression="dkunit" UniqueName="dkunit">
                       <ItemStyle Font-Size="Small" VerticalAlign="Top" Width="50px"/>
                        <HeaderStyle Font-Size="Small" VerticalAlign="Bottom" Width="50px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="location" HeaderText="Location" DataType="System.String" SortExpression="location" UniqueName="location">
                       <ItemStyle Font-Size="Small" VerticalAlign="Top" Width="100px" Wrap="false" />
                       <HeaderStyle Font-Size="Small" VerticalAlign="Bottom" Width="100px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="driver_namel" HeaderText="Driver" DataType="System.String" SortExpression="driver_namel" UniqueName="driver_namel">
                       <ItemStyle Font-Size="Small" VerticalAlign="Top" Width="100px" Wrap="false" />
                       <HeaderStyle Font-Size="Small" VerticalAlign="Bottom" Width="100px" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Description" HeaderText="Description" DataType="System.String" SortExpression="Description" UniqueName="Description">
                       <ItemStyle Font-Size="Small" VerticalAlign="Top" Width="200px" Wrap="false" />
                       <HeaderStyle Font-Size="Small" VerticalAlign="Bottom" Width="200px" />
                    </telerik:GridBoundColumn>
                    
                    <telerik:GridBoundColumn DataField="id" Visible="false" DataType="System.Int32">
                       <ItemStyle Font-Size="Small" VerticalAlign="Top" />
                    </telerik:GridBoundColumn>
                </Columns>
 
           
            </MasterTableView>
                       
        
                
        </telerik:RadGrid>
        
        
        <asp:SqlDataSource ID="SqlDS_grdFleet" runat="server"  ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
            SelectCommand="SELECT [id], [unit],[vin],[GL],[driver_namel],[dkunit], [year] + ' ' + [make] + ' ' + [model] AS Description, [location]
                    FROM [Fleet]
                    WHERE ([Status] LIKE @fStatus2) 
                    AND ([unit] LIKE '%'+ @fLeaseUnit2 + '%')
                    AND ([driver_namel] LIKE '%'+ @fDriver2 + '%')
                    AND ([vin] LIKE '%'+ @fVin2 + '%')
                    AND ([location] LIKE '%'+ @flocation2 + '%')
                    ORDER BY [GL], vin" >
            <SelectParameters>
                <asp:ControlParameter ControlID="fStatus" DefaultValue="Active" Name="fStatus2"  PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="fVin" DefaultValue="%" Name="fVin2"  PropertyName="Text" />
                <asp:ControlParameter ControlID="fLeaseUnit" DefaultValue="%" Name="fLeaseUnit2"  PropertyName="Text" />
                <asp:ControlParameter ControlID="fDriver" DefaultValue="%" Name="fDriver2"  PropertyName="Text" />
                <asp:ControlParameter ControlID="fLocation" DefaultValue="%" Name="fLocation2"  PropertyName="Text" />
            </SelectParameters>
        
        </asp:SqlDataSource>
        
    </div>


        <div id="updatepanel" style="float: left; width:350px; height:400px;">
                <asp:Panel ID="Panel1" runat="server" Width="350px" Height="400px">
        

                <asp:HiddenField ID="hdnID" runat="server"  />
        
        
                <div style="width:290px; Margin: 10px;" >
                  <h6><asp:Label ID="lblProfile" runat="server"></asp:Label></h6>  
                    
            
                    <h5>Vehicle Details</h5>
                        <div style="width:100%; float:left;">
                            <div style="Margin: 3px; width:100%; float:left;">
                                <asp:Label ID="lblDriver_name" runat="server" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="Margin: 3px; width:100%; float:left;">
                                <asp:Label ID="lblVehicleDesc" runat="server" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="Margin: 3px; width:100%; float:left;">
                                <asp:Label ID="lblVin" runat="server" Width="240px" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="Margin: 3px; width:100%; float:left;">
                                <asp:Label ID="lblGL" runat="server" Width="240px" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="Margin: 3px; width:100%; float:left;">
                                <asp:Label ID="lblUnit" runat="server" Width="240px" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="Margin: 3px; width:100%; float:left;">
                                <asp:Label ID="lbldkUnit" runat="server" Width="240px" CssClass="myLabelCss"></asp:Label>
                            </div>
                            <div style="Margin: 3px; width:100%; float:left;">
                                <asp:Label ID="lblStatus" runat="server" Width="240px" CssClass="myLabelCss"></asp:Label>
                            </div>
                        </div>

           
                   <div style="width:100%; float:left;">
                     <h5>GL # Update</h5>   
                
                        <div style="Margin:10px; width:300px; float:left;">
                            <telerik:RadTextBox ID="GL" runat="server" Label="New GL#:" LabelWidth="80px" Width="280px" MaxLength="16" LabelCssClass="myLabelCss"></telerik:RadTextBox>
                        </div>
                        <div style="width:300px;float:right; ">
                                <telerik:RadButton ID="btnUpdateGL" runat="server" Text="Update Vehicle GL #" Width="200px" Skin="BlackMetroTouch"></telerik:RadButton>
                        
                                <%--<asp:Button ID="btnUpdateGL" runat="server" Text="Update Vehicle GL"  Width="200px" />--%>
                        </div>
                   </div>
            
                </div>
        
  
            
        
        
        
        
                </asp:Panel>
    
    
        </div>

</div>

</asp:Content>

