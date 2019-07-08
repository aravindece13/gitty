<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Sales.master" AutoEventWireup="false" CodeFile="BidToolAdmin.aspx.vb" Inherits="Sales_BidToolAdmin" %>

<%@ Register Src="~/BidTool/BidToolAdmin.ascx" TagName="formBidToolAdmin" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Sales | BidTool Administration</h1>


   
  <uc1:formBidToolAdmin ID="FormBidToolAdmin1" runat="server" />



  <telerik:RadWindowManager ID="Singleton" VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        <Windows>
               
                <telerik:RadWindow ID="wndwBidToolAdminAccessBlock" runat="server" Height="720px" Width="750px" Left="100px"
                    ReloadOnShow="true" ShowContentDuringLoad="false" Behaviors="None" >
                        
                </telerik:RadWindow>
                


        </Windows> 

    </telerik:RadWindowManager>

</asp:Content>

