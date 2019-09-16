<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="ActionUpdateReturn.aspx.vb" Inherits="AMRAssetMngr_ActionUpdateReturn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<script type="text/javascript">
            function CloseAndRebind(args) {
//                GetRadWindow().BrowserWindow.refreshGrid(args);
                GetRadWindow().close();
            }

            function GetRadWindow() {
                var oWindow = null;
                if (window.radWindow) oWindow = window.radWindow; //Will work in Moz in all cases, including clasic dialog
                else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow; //IE (and Moz as well)

                return oWindow;
            }

            function CancelEdit() {
                GetRadWindow().close();
            }
        </script>


    


  <div id="divFormView" style="padding: 5px 2px 5px 5px;">
    <h6>Update Asset Return Date</h6>
    
      
          <asp:HiddenField ID="id" runat="server" />
          <asp:HiddenField ID="name" runat="server"  />
          <asp:HiddenField ID="status" runat="server" />
          <asp:HiddenField ID="outdt" runat="server" />
          
          <asp:HiddenField ID="cursponsor" runat="server" />    
          <asp:HiddenField ID="curuser" runat="server" />    
          <asp:HiddenField ID="timestmp" runat="server" />
          <asp:HiddenField ID="updateby" runat="server" />
          <asp:HiddenField ID="action" runat="server" />
          <asp:HiddenField ID="orderno" runat="server" />
          
          
          <div style="padding: 10px 2px 5px 5px; width:500px; height:40px;">
              <asp:Label ID="lblName" runat="server"></asp:Label><br /> 
              <asp:Label ID="lblDescription" runat="server"></asp:Label><br />
              <asp:Label ID="lblStatus" runat="server"></asp:Label> 
          </div>
          
          

          
          <div style="padding: 10px 2px 10px 5px; width:500px; height:50px;">
              <asp:Label ID="lblcursponsor" runat="server"></asp:Label><br />
              <asp:Label ID="lblcuruser" runat="server"></asp:Label><br />
              <asp:Label ID="lbloutdt" runat="server"></asp:Label><br />
              <asp:Label ID="lblduedt" runat="server"></asp:Label><br />
              <asp:Label ID="lblorderno" runat="server"></asp:Label><br />
              
              <asp:Label ID="lblUpdateEligible" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
          </div>    
          
          <div style="padding: 30px 2px 5px 5px; width:500px; height:50px;">
              <asp:Label ID="lblDueDtNew" runat="server"></asp:Label>
              <telerik:RadDatePicker ID="duedtnew" runat="server" Width="100px">
              </telerik:RadDatePicker>
          </div>
          
          <div style="padding: 10px 2px 5px 5px; width:500px; height:20px;">
              <telerik:RadTextBox ID="note" runat="server" Label="Note: " MaxLength="50" Width="400px" EmptyMessage="Max 50 Characters"></telerik:RadTextBox>
          </div>
          <div style="padding: 10px 2px 5px 5px; width:500px; height:20px;">

              <asp:Button ID="btnUpdateReturn" runat="server" Text="Update Return Date" />
              <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />    
          </div>
          
    </div>









</asp:Content>

