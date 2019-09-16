<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="ActionCheckOut.aspx.vb" Inherits="AMRAssetMngr_ActionCheckOut" %>

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
    <h6>Asset Check Out</h6>
    
      
    
        
        <asp:SqlDataSource ID="SqlDS_CheckOut" runat="server" 
          ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
          SelectCommand="SELECT [ID], [status], [name], [description],[assettag] FROM [aAsset] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="ID" QueryStringField="id" 
                    Type="Int32" />
            </SelectParameters>
      </asp:SqlDataSource>
    
        
    
          <asp:HiddenField ID="id" runat="server" />
          <asp:HiddenField ID="name" runat="server"  />
          <asp:HiddenField ID="status" runat="server" />
          <asp:HiddenField ID="timestmp" runat="server" />
          <asp:HiddenField ID="updateby" runat="server" />
          <asp:HiddenField ID="action" runat="server" />
          
          
          <div style="padding: 10px 2px 5px 5px; width:500px; height:40px;">
              <asp:Label ID="lblName" runat="server"></asp:Label> <br /> 
              <asp:Label ID="lblDescription" runat="server"></asp:Label><br />
              <asp:Label ID="lblStatus" runat="server"></asp:Label>
          </div>
          
          
          <div id="divDates" style="padding: 10px 2px 5px 5px; width:500px; height:20px;">
              <asp:Label ID="lblOutdt" runat="server" Text="Out Date: "></asp:Label>
              <telerik:RadDatePicker ID="outdt" runat="server" Width="100px"></telerik:RadDatePicker>
              <asp:Label ID="lblDuedt" runat="server" Text="Due Date: "></asp:Label>
              <telerik:RadDatePicker ID="duedt"  runat="server" Width="100px"></telerik:RadDatePicker>
          </div>
          
          <div style="padding: 10px 2px 5px 5px; width:500px; height:40px;">  
              
              <telerik:RadComboBox ID="cursponsor" runat="server" 
                  DataSourceID="SqlDS_CurSponsorComboBox" DataTextField="Label" Width="105px" Label="Sponsor: "  
                  DataValueField="Value" EmptyMessage="DK/WI Employee" Height="145px">
              </telerik:RadComboBox>
              <asp:CompareValidator
                      ValueToCompare=""
                      Operator="NotEqual"
                      ControlToValidate="cursponsor"
                      ErrorMessage="!"
                      runat="server"
                      ID="Comparevalidator1" />
                 
              <asp:SqlDataSource ID="SqlDS_CurSponsorComboBox" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                  SelectCommand="SELECT [Label], [Value] FROM [aAsset_Menu] WHERE ([Type] = @Type) ORDER BY [Seq], [Label]">
                  <SelectParameters>
                      <asp:Parameter DefaultValue="Sponsor" Name="Type" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              
                 
              <telerik:RadTextBox ID="curuser" Label="Customer: " runat="server" Width="250px" MaxLength="20" EmptyMessage="ie. Vail, Town of or just Vail"></telerik:RadTextBox><br /> 
              <asp:RequiredFieldValidator ID="TextBoxRequiredFieldValidator" runat="server" Display="Dynamic"  ControlToValidate="curuser" ErrorMessage="Please enter a customer name." />  
          
              <asp:Label ID="lblCheckOutEligible" runat="server" Text="" Font-Size="Medium" ForeColor="Red"></asp:Label>
          </div>    
          
          <div style="padding: 10px 2px 5px 5px; width:500px; height:20px;">
              <telerik:RadTextBox ID="OrderNo" runat="server" Label="Order #: " MaxLength="13" Width="120px"></telerik:RadTextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"  ControlToValidate="OrderNO" ErrorMessage="Please enter an Order Number." />  
          </div>
          <div style="padding: 10px 2px 5px 5px; width:500px; height:20px;">
              <telerik:RadTextBox ID="note" runat="server" Label="Note: " MaxLength="50" Width="400px" EmptyMessage="Max 50 Characters"></telerik:RadTextBox>
          </div>
          <div style="padding: 10px 2px 5px 5px; width:500px; height:20px;">

              <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" />
              <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />    
          </div>
          
    </div>

</asp:Content>

