<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Popups.master" AutoEventWireup="false" CodeFile="ActionCreateAsset.aspx.vb" Inherits="AMRAssetMngr_ActionCreateAsset" %>

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
    <h6>Create Meter Asset</h6>
    
      <asp:HiddenField ID="Assetclass" runat="server" Value="Meter" />
      <asp:HiddenField ID="Status" runat="server" Value="Available" />
      <asp:HiddenField ID="timestmp" runat="server" />
      <asp:HiddenField ID="updateby" runat="server" />

      
       
      <div id="divFields" style="width:550px;padding: 5px 2px 10px 5px;"> 
            <div style="padding:2px 0px 2px 0px;">
              <telerik:RadComboBox ID="Type" runat="server" Label="Asset Type: " 
                  DataSourceID="SqlDS_Type" Width="100px" DataTextField="Label" 
                  DataValueField="Value" Height="100px">
              </telerik:RadComboBox><br />
              <asp:SqlDataSource ID="SqlDS_Type" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:InsiteConnectionString %>" 
                  SelectCommand="SELECT [Type], [Label], [Value] FROM [aAsset_Menu] WHERE ([Type] = @Type) ORDER BY [Seq], [Label]">
                  <SelectParameters>
                      <asp:Parameter DefaultValue="Type" Name="Type" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource> 
       </div> 
       <div style="padding:2px 0px 2px 0px;"> 
              <telerik:RadTextBox ID="Name" Label="Asset Name: " 
                  EmptyMessage="Example: DEN 5002"  runat="server" MaxLength="20" Width="300px">
              </telerik:RadTextBox>
       </div>
       <div style="padding:2px 0px 2px 0px;"> 
              <telerik:RadTextBox ID="Description" Label="Description: " EmptyMessage="Example: Sensus 5002 Handheld" 
                        runat="server" MaxLength="50" Width="300px">
              </telerik:RadTextBox>
       </div>
       <div style="padding:2px 0px 2px 0px;">

             
              <telerik:RadTextBox ID="Serialno" Label="Serial #: " runat="server" 
                  MaxLength="20" Width="300px">
              </telerik:RadTextBox>
       </div>
        <div style="padding:2px 0px 2px 0px;">

            <telerik:RadNumericTextBox ID="AssetTag" Label="Asset Tag: " Width="100px"  runat="server" NumberFormat-DecimalDigits="0">
            </telerik:RadNumericTextBox>
              <%--<telerik:RadTextBox ID="AssetTag" Label="Asset Tag #: " runat="server" ToolTip="An integer value. Leave off the leading zero's." 
                  MaxLength="20" Width="300px">
              </telerik:RadTextBox>--%>
              
              
       </div>
       <div style="padding:10px 0px 10px 0px;">  
              
              <telerik:RadTextBox ID="Notes" Label="Notes: " 
                  EmptyMessage="Up to 255 characters" MaxLength="255" runat="server" 
                  Height="60px" Width="450px" Rows="5" Wrap="true" TextMode="MultiLine" >
              </telerik:RadTextBox>
        </div>
      </div>    
          
          
          
          
          <div style="padding: 10px 2px 5px 5px; width:500px; height:20px;">

              <asp:Button ID="btnCreate" runat="server" Text="Create New Meter Asset" />
              <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />    
          </div>
          
    </div>




</asp:Content>

