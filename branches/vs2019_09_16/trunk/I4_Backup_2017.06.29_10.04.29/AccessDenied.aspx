<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="false" CodeFile="AccessDenied.aspx.vb" Inherits="AccessDenied" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h6>Access Denied</h6>

<p style="width:500px; padding:10px 5px 10px 5px;">You have been denied access to the requested page.  If you believe this is in error, please review your security profile below and direct any security request to Derek Johnson.</p>
<p>You may review your security settings any time by clicking on your name in the upper right had corner of this page.</p>


<div style="float: left; width:675px; height:525px; padding:20px 0px 0px 0px;">
                
               
        <h6><asp:Label ID="lblProfile" runat="server"></asp:Label></h6>
        
        
        
        
        <div style="width:675px; padding: 3px 0px 3px 5px;" >
           
            <div style="padding:3px 0px 3px 15px;">
                <telerik:RadTextBox ID="Status" runat="server" Label="Status: " Width="220px" Enabled="false" ></telerik:RadTextBox>

            </div>
           
           <div style="padding:3px 0px 3px 15px;">
               <telerik:RadTextBox ID="FullName" runat="server" Label="Full Name: " Width="220px" Enabled="false"></telerik:RadTextBox>
               <telerik:RadTextBox ID="Company" runat="server" Label="Company: " Width="220px" Enabled="false" ></telerik:RadTextBox>
           </div>
           
           <div style="padding:3px 0px 3px 15px;">
                <telerik:RadTextBox ID="eMail" runat="server" Label="eMail: " Width="275px" Enabled="false"></telerik:RadTextBox>

               <telerik:RadTextBox ID="Mobile" runat="server" Label="Mobile: " Width="130px" Enabled="false"></telerik:RadTextBox>
               <telerik:RadTextBox ID="Fax" runat="server" Label="Fax: " Width="130px" Enabled="false"></telerik:RadTextBox>
           </div>
            
        </div>
        <div style="width:675px; padding: 3px 0px 3px 5px;" >
            <h5>Functionality</h5>
            
            <div style="padding:3px 0px 3px 15px;"> 
                <asp:CheckBox ID="Accounting" Text="Accounting" runat="server" Enabled="false" />
                <asp:CheckBox ID="AMR" Text="AMR" runat="server" Enabled="false" />
                <asp:CheckBox ID="BranchMngr" Text="BranchMngr" Enabled="false" runat="server" />
                <asp:CheckBox ID="AdminCorp" runat="server" Text="Corp Admin" Enabled="false" />
                <asp:CheckBox ID="Credit" Text="Credit" runat="server" Enabled="false" />
                <asp:CheckBox ID="CreditMngr" Text="Credit Mngr" runat="server" Enabled="false" />
            </div>
            <div style="padding:3px 0px 3px 15px;">     
                <asp:CheckBox ID="Executive" Text="Executive" runat="server" Enabled="false" />
                <asp:CheckBox ID="HR" Text="HR" runat="server" Enabled="false" />
                <asp:CheckBox ID="InsideSales" Text="Inside Sales" runat="server" Enabled="false" />
                <asp:CheckBox ID="IT" Text="IT" runat="server" Enabled="false" />
                <asp:CheckBox ID="Operations" Text="Operations" runat="server" Enabled="false" />
                <asp:CheckBox ID="Purchasing" Text="Purchasing" runat="server" Enabled="false" />
                <asp:CheckBox ID="Sales" Text="Sales" runat="server" Enabled="false" />
            </div>    
            <div style="padding:20px 0px 3px 15px;"> 
                <asp:CheckBox ID="AcctTracking" Text="AcctTracking" runat="server" Enabled="false" />
                <asp:CheckBox ID="AMRAssetMngr" Text="AMRAssetMngr" runat="server" Enabled="false" />
                <asp:CheckBox ID="MeterShop" Text="MeterShop" runat="server" Enabled="false" />
                <asp:CheckBox ID="Quote" Text="Quote" runat="server" Enabled="false" />
                <asp:CheckBox ID="Projects" Text="Projects" runat="server" Enabled="false" />
            </div>
         </div>
  
            
        
        <div style="width:675px; padding: 3px 0px 3px 5px;" >
            <h5>Warehouses</h5>
            <div style="padding:3px 0px 3px 15px;"> 
              <telerik:RadTextBox ID="Whse1" runat="server" Label="Whse1: "  width="100px" Enabled="false" ></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse2" runat="server" Label="Whse2: "  width="100px" Enabled="false"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse3" runat="server" Label="Whse3: "  width="100px" Enabled="false"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse4" runat="server" Label="Whse4: "  width="100px" Enabled="false"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse5" runat="server" Label="Whse5: "  width="100px" Enabled="false"></telerik:RadTextBox>
              
            </div>
        </div>
        <div style="width:675px; padding: 3px 0px 3px 5px;" >
            <h5>Sales Rep ID's</h5>
            
            <div style="padding:3px 0px 3px 15px;"> 
                <telerik:RadTextBox ID="SalesName" runat="server" Label="Sales Name: " Width="200px" Enabled="false"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID1" runat="server" Label="ID 1: " Width="75px" Enabled="false"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID2" runat="server" Label="ID 2: " Width="75px" Enabled="false"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID3" runat="server" Label="ID 3: " Width="75px" Enabled="false"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID4" runat="server" Label="ID 4: " Width="75px" Enabled="false"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID5" runat="server" Label="ID 5: " Width="75px" Enabled="false"></telerik:RadTextBox>
            </div>
            
        </div>
        <div style="width:675px; padding: 3px 0px 3px 5px;" >
            <h5>Regions</h5>
        
                <div style="padding:3px 0px 3px 15px;"> 
                    <telerik:RadTextBox ID="Region1" runat="server" Label="Region1: "  width="100px" Enabled="false"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region2" runat="server" Label="Region2: "  width="100px" Enabled="false"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region3" runat="server" Label="Region3: "  width="100px" Enabled="false"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region4" runat="server" Label="Region4: "  width="100px" Enabled="false"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region5" runat="server" Label="Region5: "  width="100px" Enabled="false"></telerik:RadTextBox>
                </div>
        </div>
        
       
    
    
    </div>



</asp:Content>

