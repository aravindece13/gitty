<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="ActionUpdateNote.aspx.vb" Inherits="AMRAssetMngr_ActionUpdateNote" %>

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
    <h6>Update Asset Note</h6>
    
   
          <asp:HiddenField ID="id" runat="server" />
          <asp:HiddenField ID="name" runat="server"  />
          
          <asp:HiddenField ID="timestmp" runat="server" />
          <asp:HiddenField ID="updateby" runat="server" />
          <asp:HiddenField ID="action" runat="server" />
          
          
          <div style="padding: 10px 2px 5px 5px; width:500px; height:70px;">
              <asp:Label ID="lblName" runat="server"></asp:Label><br /> 
              <asp:Label ID="lblDescription" runat="server"></asp:Label><br />
              <asp:Label ID="lblStatus" runat="server"></asp:Label><br />
              <asp:Label ID="lblNotes" runat="server"></asp:Label><br />
              
          </div>
          
          
          
  
          
          
          <div style="padding: 10px 2px 5px 5px; width:500px; height:100px;">

              <telerik:RadTextBox ID="notes" runat="server" Label="Notes: " MaxLength="255" 
                  Width="400px" Height="100px" 
                 Wrap="true" TextMode="MultiLine"></telerik:RadTextBox>
          </div>
          <div style="padding: 10px 2px 5px 5px; width:500px; height:20px;">

              <asp:Button ID="btnUpdateNote" runat="server" Text="Update Asset Note" />
              <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />    
          </div>
          
    </div>



</asp:Content>

