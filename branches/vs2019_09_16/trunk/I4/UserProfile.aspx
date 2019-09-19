<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="UserProfile.aspx.vb" Inherits="UserProfile" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >


<div style="float: left; width:825px; height:525px;">
                
               
        <h6><asp:Label ID="lblProfile" runat="server"></asp:Label></h6>
        
        
        
        
        <div style="width:800px; padding: 3px 0px 3px 5px;" >
           
            <div style="padding:3px 0px 3px 15px;">
                <telerik:RadTextBox ID="Status" runat="server" Label="Status: " LabelWidth="75px" Width="220px" Enabled="false" LabelCssClass="myLabelCss"  ></telerik:RadTextBox>
                
            </div>
           
           <div style="padding:3px 0px 3px 15px;">
               <telerik:RadTextBox ID="FullName" runat="server" Label="Full Name: " LabelWidth="75px" Width="220px" Enabled="false" LabelCssClass="myLabelCss"></telerik:RadTextBox>
               <telerik:RadTextBox ID="PayComID" runat="server" Label="PayComID: " LabelWidth="75px" Width="150px" Enabled="false" LabelCssClass="myLabelCss"></telerik:RadTextBox>
               <telerik:RadTextBox ID="Company" runat="server" Label="Company: " LabelWidth="75px" Width="220px" Enabled="false" LabelCssClass="myLabelCss"></telerik:RadTextBox>
           </div>
           
           <div style="padding:3px 0px 3px 15px;">
                <telerik:RadTextBox ID="eMail" runat="server" Label="eMail: " LabelWidth="75px" Width="250px" Enabled="false" LabelCssClass="myLabelCss"></telerik:RadTextBox>

               <telerik:RadTextBox ID="Mobile" runat="server" Label="Mobile: " LabelWidth="65px" Width="150px" Enabled="false" LabelCssClass="myLabelCss"></telerik:RadTextBox>
               <telerik:RadTextBox ID="Fax" runat="server" Label="Fax: " LabelWidth="50px" Width="150px" Enabled="false" LabelCssClass="myLabelCss"></telerik:RadTextBox>
           </div>
            
        </div>
        <div style="width:775px; margin: 3px 0px 3px 5px;" >
            <h5>Functionality</h5>
            
            <div style="width:755px; float:left; margin:3px 0px 3px 15px;"> 
                <asp:CheckBox ID="Accounting" Text="Accounting" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall" />
                <asp:CheckBox ID="AMR" Text="AMR" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall" />
                <asp:CheckBox ID="BranchAdmin" Text="Branch Admin" Enabled="false" runat="server" Width="160px" CssClass="myLabelCssXSmall" />
                <asp:CheckBox ID="BranchMngr" Text="BranchMngr" Enabled="false" runat="server" Width="140px" CssClass="myLabelCssXSmall" />
                <asp:CheckBox ID="AdminCorp" runat="server" Text="Corp Admin" Enabled="false"  Width="140px" CssClass="myLabelCssXSmall"/>
                
            </div>
            <div style="width:755px; float:left; margin:3px 0px 3px 15px;">     
                <asp:CheckBox ID="Credit" Text="Credit" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="CreditMngr" Text="CreditMngr" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="Executive" Text="Executive" runat="server" Enabled="false" Width="160px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="HR" Text="HR" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="InsideSales" Text="Inside Sales" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
                
            </div>    
            <div style="width:755px; float:left; margin:3px 0px 3px 15px;"> 
                <asp:CheckBox ID="IT" Text="IT" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall" />
                <asp:CheckBox ID="Operations" Text="Operations" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="Purchasing" Text="Purchasing" runat="server" Enabled="false" Width="160px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="Sales" Text="Sales" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="Warehouse" Text="Warehouse" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
                <%--<asp:CheckBox ID="AcctTracking" Text="AcctTracking" runat="server" Enabled="false" Width="130px" CssClass="myLabelCssXSmall"/>--%>
            </div>
            <div style="width:755px; float:left; margin:3px 0px 3px 15px;"> 
                <asp:CheckBox ID="AMRAssetMngr" Text="AMRAssetMngr" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="MeterShop" Text="MeterShop" runat="server" Enabled="false" Width="160px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="Quote" Text="Quote" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
                <asp:CheckBox ID="Projects" Text="Projects" runat="server" Enabled="false" Width="140px" CssClass="myLabelCssXSmall"/>
            </div>
        </div>
  
            
        
        <div style="width:775px; margin: 3px 0px 3px 5px;" >
            <h5>Warehouses</h5>
            <div style="width:755px; float:left; margin:3px 0px 3px 15px;"> 
              <telerik:RadTextBox ID="Whse1" runat="server" Label="Whse1:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse2" runat="server" Label="Whse2:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse3" runat="server" Label="Whse3:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse4" runat="server" Label="Whse4:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse5" runat="server" Label="Whse5:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              
            </div>
            <div style="width:755px; float:left; margin:3px 0px 3px 15px;"> 
              <telerik:RadTextBox ID="Whse6" runat="server" Label="Whse6:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse7" runat="server" Label="Whse7:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse8" runat="server" Label="Whse8:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse9" runat="server" Label="Whse9:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              <telerik:RadTextBox ID="Whse10" runat="server" Label="Whse10:"  width="120px" LabelWidth="65px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
              
            </div>
        </div>
        <div style="width:775px; margin: 3px 0px 3px 5px;" >
            <h5>Sales Rep ID's</h5>
            
            <div style="width:755px; float:left; margin:3px 0px 3px 15px;"> 
                <telerik:RadTextBox ID="SalesName" runat="server" Label="Sales Name: " Width="200px" LabelWidth="95px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID1" runat="server" Label="ID 1: " Width="85px" LabelWidth="40px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID2" runat="server" Label="ID 2: " Width="85px" LabelWidth="40px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID3" runat="server" Label="ID 3: " Width="85px" LabelWidth="40px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID4" runat="server" Label="ID 4: " Width="85px" LabelWidth="40px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                <telerik:RadTextBox ID="salesID5" runat="server" Label="ID 5: " Width="85px" LabelWidth="40px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
            </div>
            
        </div>
        <div style="width:775px; margin: 3px 0px 3px 5px;" >
            <h5>Regions</h5>
        
                <div style="width:755px; float:left; margin:3px 0px 3px 15px;"> 
                    <telerik:RadTextBox ID="Region1" runat="server" Label="R1: "  width="80px" LabelWidth="30px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region2" runat="server" Label="R2: "  width="80px" LabelWidth="30px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region3" runat="server" Label="R3: "  width="80px" LabelWidth="30px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region4" runat="server" Label="R4: "  width="80px" LabelWidth="30px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>

                    <telerik:RadTextBox ID="Region5" runat="server" Label="R5: "  width="80px" LabelWidth="30px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region6" runat="server" Label="R6: "  width="80px" LabelWidth="30px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region7" runat="server" Label="R7: "  width="80px" LabelWidth="30px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                    <telerik:RadTextBox ID="Region8" runat="server" Label="R8: "  width="80px" LabelWidth="30px" Enabled="false" labelCssClass="myLabelCssSmall"></telerik:RadTextBox>
                </div>
        </div>
        <div style="width:775px; margin:10px;">
            <p style="color:#4c68a2; font-size:small; font-weight:bolder;">Please contact Support if you feel that any of your Intranet Personalization information is incorrect.</p>
        </div>
       
    
    
    </div>
    
    

    </asp:Content>

