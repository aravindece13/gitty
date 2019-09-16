<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/BranchAdmin.master" AutoEventWireup="false" CodeFile="BidToolAdmin.aspx.vb" Inherits="BranchAdmin_BidToolAdmin" %>
<%@ Register Src="~/BidTool/BidToolAdmin.ascx" TagName="formBidToolAdmin" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<h1>Branch Admin | BidTool Administration</h1>


   
  <uc1:formBidToolAdmin runat="server" />



  <telerik:RadWindowManager ID="Singleton" VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        <Windows>
               
                <telerik:RadWindow ID="wndwBidToolAdminAccessBlock" runat="server" Height="720px" Width="750px" Left="100px"
                    ReloadOnShow="true" ShowContentDuringLoad="false"  />
                


        </Windows> 

    </telerik:RadWindowManager>

</asp:Content>

