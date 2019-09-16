<%@ Control Language="VB" AutoEventWireup="false" CodeFile="BidToolAdmin.ascx.vb" Inherits="BidTool_BidToolAdmin" %>

<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <script type="text/javascript">
        function pageLoad() {
            window.$ = jQuery = $telerik.$;
        }

        function onKeyPress(sender, args) {
            if (args.get_keyCode() != 13)
                return;

            var el = Telerik.Web.UI.Grid.GetCurrentElement(args.get_domEvent());

            //handles InPlace edit mode
            if ($(el).parents("tr").attr("id") && $(el).parents("tr").attr("id") != "") {
                sender.get_masterTableView().updateItem($(el).parents("tr")[0]);
            } else {
                //handles EditForms edit mode           
                var editFrom = $(el).parents("tr:has(div)");
                if (editFrom.length > 0 && editFrom.prev("tr").attr("id") != "") {
                    sender.get_masterTableView().updateItem(editFrom.prev("tr")[0]);
                }
            }
        }


        //        function GridCreated(sender, eventArgs) {
        //            var scrollArea = document.getElementById(sender.get_element().id + "_GridData");
        //            var length = sender.get_masterTableView().get_dataItems().length;
        //            var row = sender.get_masterTableView().get_dataItems()[length - 1];
        //            scrollArea.scrollTop = row.get_element().offsetTop;
        //        }



//        function clientClose(sender, args) {
//            if (args.get_argument() != null) {
//                alert("'" + sender.get_name() + "'" + " was closed and returned the following argument: '" + args.get_argument() + "'");
//            }
//        }



    </script>
</telerik:RadCodeBlock>


<telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Runat="server" IsSticky="false" InitialDelayTime="0" MinDisplayTime="100" Transparency="0">
</telerik:RadAjaxLoadingPanel>

<telerik:RadAjaxManagerProxy ID="RadAjaxManagerProxy1" runat="server">
        <AjaxSettings>
            
            <telerik:AjaxSetting AjaxControlID="activeWhse">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdAssemblies" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="listAssembliesCopy" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="hdnWhseID" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdAssemblies">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                        
                        
                        <telerik:AjaxUpdatedControl ControlID="grdAssemblies" />
                        <telerik:AjaxUpdatedControl ControlID="grdRelated" />
                        <telerik:AjaxUpdatedControl ControlID="hdnAssemblyIDEdit" />
                        <telerik:AjaxUpdatedControl ControlID="hdnWhseID" />
                        <telerik:AjaxUpdatedControl ControlID="hdnProdID" />
                        <telerik:AjaxUpdatedControl ControlID="assemblyEditName" />
                        
                        <telerik:AjaxUpdatedControl ControlID="btnAssemblyNameUpdate"  />
                        <telerik:AjaxUpdatedControl ControlID="btnAssemblyNameEditMode" />
                        <telerik:AjaxUpdatedControl ControlID="lineToMoveAssemblyID" />
                        <telerik:AjaxUpdatedControl ControlID="lineToDeleteAssemblyID" />
                        <telerik:AjaxUpdatedControl ControlID="btnStockSearch" />
                        <telerik:AjaxUpdatedControl ControlID="btnStockSearchClear" />
                        <telerik:AjaxUpdatedControl ControlID="btnUpdateStatusInactive" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdDetail">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdRelated" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="hdnProdID" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnRelatedSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdRelated" LoadingPanelID="RadAjaxLoadingPanel1" />

                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAssemblyAdd">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdAssemblies" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="listAssembliesCopy" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAssemblyNameUpdate">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdAssemblies" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="btnAssemblyNameUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="btnAssemblyNameEditMode" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="assemblyEditName" LoadingPanelID="RadAjaxLoadingPanel1" />
                       
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnAssemblyNameEditMode">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="btnAssemblyNameUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="btnAssemblyNameEditMode"  />
                        <telerik:AjaxUpdatedControl ControlID="assemblyEditName" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="grdRelated">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lineToMoveAssemblyID" />
                        <telerik:AjaxUpdatedControl ControlID="lineToDeleteAssemblyID" />
                    </UpdatedControls>
            </telerik:AjaxSetting>              

            <telerik:AjaxSetting AjaxControlID="grdStockSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="grdStockSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lineToMoveAssemblyID" />
                        <telerik:AjaxUpdatedControl ControlID="lineToDeleteAssemblyID" />
                    </UpdatedControls>
            </telerik:AjaxSetting> 
            <telerik:AjaxSetting AjaxControlID="btnStockSearchClear">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdStockSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="txtProdIDSearch"  />
                        <telerik:AjaxUpdatedControl ControlID="txtDescSearch"  />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnStockSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdStockSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="listAssembliesCopy">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <%--<telerik:AjaxUpdatedControl ControlID="listAssembliesCopy" />--%>
                        <telerik:AjaxUpdatedControl ControlID="lineToMoveAssemblyID" />
                        <telerik:AjaxUpdatedControl ControlID="lineToDeleteAssemblyID" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnDeleteLine">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lineToMoveAssemblyID" />
                        <telerik:AjaxUpdatedControl ControlID="lineToDeleteAssemblyID" />
                    </UpdatedControls>
            </telerik:AjaxSetting> 
            <telerik:AjaxSetting AjaxControlID="btnLineUpdate">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lineToMoveAssemblyID" />
                        <telerik:AjaxUpdatedControl ControlID="lineToDeleteAssemblyID" />
                    </UpdatedControls>
            </telerik:AjaxSetting> 
            <telerik:AjaxSetting AjaxControlID="btnUpdateStatusInactive">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdAssemblies" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="grdAssembliesInactive" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="grdDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="grdRelated" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="lineToMoveAssemblyID" />
                        <telerik:AjaxUpdatedControl ControlID="lineToDeleteAssemblyID" />

                        <telerik:AjaxUpdatedControl ControlID="hdnAssemblyIDEdit" />
                        <telerik:AjaxUpdatedControl ControlID="hdnWhseID" />
                        <telerik:AjaxUpdatedControl ControlID="hdnProdID" />
                        <telerik:AjaxUpdatedControl ControlID="assemblyEditName" />
                        <telerik:AjaxUpdatedControl ControlID="btnUpdateStatusInactive" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnUpdateStatusActive">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdAssemblies" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="grdAssembliesInactive" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="btnUpdateStatusActive" />
                        <telerik:AjaxUpdatedControl ControlID="lblStatusUpdate" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdAssembliesInactive">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdAssembliesInactive" />
                        <telerik:AjaxUpdatedControl ControlID="btnUpdateStatusActive" />
                        <telerik:AjaxUpdatedControl ControlID="lblStatusUpdate" />
                        <telerik:AjaxUpdatedControl ControlID="hdnAssemblyIDToActivate" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="activeWhse2">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdAssembliesInactive" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="btnUpdateStatusActive" />
                        <telerik:AjaxUpdatedControl ControlID="lblStatusUpdate" />
                       
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdSalesReps">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="slsRepID" />
                        <telerik:AjaxUpdatedControl ControlID="slsEmail" />
                        <telerik:AjaxUpdatedControl ControlID="slsMobile" />
                        <telerik:AjaxUpdatedControl ControlID="slsName" />
                        <telerik:AjaxUpdatedControl ControlID="btnSalesRepDetail" />
                       
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnSalesRepDetail">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdSalesReps" />
                        <telerik:AjaxUpdatedControl ControlID="slsRepID" />
                        <telerik:AjaxUpdatedControl ControlID="slsEmail" />
                        <telerik:AjaxUpdatedControl ControlID="slsMobile" />
                        <telerik:AjaxUpdatedControl ControlID="slsName" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnSalesRepAdd">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdSalesReps" />
                        <telerik:AjaxUpdatedControl ControlID="aSalesRepID" />
                        <telerik:AjaxUpdatedControl ControlID="aeMail" />
                        <telerik:AjaxUpdatedControl ControlID="aMobile" />
                        <telerik:AjaxUpdatedControl ControlID="aSalesName" />                    
                    </UpdatedControls>
            </telerik:AjaxSetting>
    
            
            <telerik:AjaxSetting AjaxControlID="activeWhse3">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="grdGrabDetail" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="eGrabListName" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="listGrabListCopy" LoadingPanelID="RadAjaxLoadingPanel1"  />

                        <%--<telerik:AjaxUpdatedControl ControlID="listGLAssembliesCopy" LoadingPanelID="RadAjaxLoadingPanel1"  />--%>
                    </UpdatedControls>
            </telerik:AjaxSetting>
        
            <telerik:AjaxSetting AjaxControlID="grdGrabList">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGrabDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                        
                        <telerik:AjaxUpdatedControl ControlID="hdnGrabListIDEdit" />
                        <telerik:AjaxUpdatedControl ControlID="hdnWhseID3" />
                        <telerik:AjaxUpdatedControl ControlID="hdnProdID3" />
                        <telerik:AjaxUpdatedControl ControlID="eGrabListName" />
                        <telerik:AjaxUpdatedControl ControlID="btnGrabListNameEdit"  />
                        <telerik:AjaxUpdatedControl ControlID="btnGrabListNameUpdate" />
                        <telerik:AjaxUpdatedControl ControlID="btnGrabListToInactive" />
                        <%--<telerik:AjaxUpdatedControl ControlID="grdGLRelated" />--%>
                        <telerik:AjaxUpdatedControl ControlID="listGrabListCopy" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="btnGLStockSearch" />
                        <telerik:AjaxUpdatedControl ControlID="btnGLStockSearchClear" />
                        
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdGrabDetail">
                    <UpdatedControls> 
                        <%--<telerik:AjaxUpdatedControl ControlID="grdGrabDetail" LoadingPanelID="RadAjaxLoadingPanel1" />--%>
                        <telerik:AjaxUpdatedControl ControlID="hdnProdID3" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnGrabListToInactive">
                    <UpdatedControls> 
                       <telerik:AjaxUpdatedControl ControlID="grdGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                       <telerik:AjaxUpdatedControl ControlID="grdGrabDetail" LoadingPanelID="RadAjaxLoadingPanel1"  />
                       <telerik:AjaxUpdatedControl ControlID="btnGrabListToInactive" />
                       <telerik:AjaxUpdatedControl ControlID="grdInactiveGrab" LoadingPanelID="RadAjaxLoadingPanel1"  />
                       <telerik:AjaxUpdatedControl ControlID="listGrabListCopy" LoadingPanelID="RadAjaxLoadingPanel1"  />
                       <telerik:AjaxUpdatedControl ControlID="eGrabListName" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="listGrabListCopy">
                    <UpdatedControls> 
                       <telerik:AjaxUpdatedControl ControlID="grdGrabDetail" LoadingPanelID="RadAjaxLoadingPanel1"  />
                    </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnGLRelatedSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGLRelated" LoadingPanelID="RadAjaxLoadingPanel1" />

                    </UpdatedControls>
            </telerik:AjaxSetting>
             <telerik:AjaxSetting AjaxControlID="btnGrabListAdd">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGrabList" LoadingPanelID="RadAjaxLoadingPanel1" />
                        
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnGrabListNameUpdate">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGrabList" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="btnGrabListNameEdit" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="btnGrabListNameUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="eGrabListName" LoadingPanelID="RadAjaxLoadingPanel1" />
                       
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnGrabListNameEdit">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="btnGrabListNameUpdate" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="btnGrabListNameEdit"  />
                        <telerik:AjaxUpdatedControl ControlID="eGrabListName" />
                    </UpdatedControls>
            </telerik:AjaxSetting>
            
            <telerik:AjaxSetting AjaxControlID="btnGrabListAdd">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGrabList" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="newGrabList"  />
                       
                    </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="grdGLRelated">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGrabDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
            </telerik:AjaxSetting>    
            <telerik:AjaxSetting AjaxControlID="grdGLStockSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGrabDetail" LoadingPanelID="RadAjaxLoadingPanel1" />
                        
                    </UpdatedControls>
            </telerik:AjaxSetting> 
            
            <telerik:AjaxSetting AjaxControlID="btnGLStockSearch">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGLStockSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                    </UpdatedControls>
            </telerik:AjaxSetting>           
            <telerik:AjaxSetting AjaxControlID="btnGLStockSearchClear">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdGLStockSearch" LoadingPanelID="RadAjaxLoadingPanel1" />
                        <telerik:AjaxUpdatedControl ControlID="txtGLProdIDSearch"  />
                        <telerik:AjaxUpdatedControl ControlID="txtGLDescSearch"  />
                    </UpdatedControls>
            </telerik:AjaxSetting>            
            <telerik:AjaxSetting AjaxControlID="activeWhse4">
                    <UpdatedControls> 
                        <telerik:AjaxUpdatedControl ControlID="grdInactiveGrab" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="btnGrabListToActive" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <%--<telerik:AjaxUpdatedControl ControlID="eGrabListName" LoadingPanelID="RadAjaxLoadingPanel1"  />

                        <telerik:AjaxUpdatedControl ControlID="listGLAssembliesCopy" LoadingPanelID="RadAjaxLoadingPanel1"  />--%>
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="grdInactiveGrab">
                    <UpdatedControls> 
                        
                        <telerik:AjaxUpdatedControl ControlID="btnGrabListToActive" LoadingPanelID="RadAjaxLoadingPanel1"  />
                        <telerik:AjaxUpdatedControl ControlID="lblInactiveGrabListName" />

                       <%-- <telerik:AjaxUpdatedControl ControlID="listGLAssembliesCopy" LoadingPanelID="RadAjaxLoadingPanel1"  />--%>
                    </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnGrabListToActive">
                    <UpdatedControls> 
                       <telerik:AjaxUpdatedControl ControlID="grdInactiveGrab" LoadingPanelID="RadAjaxLoadingPanel1"  />
                       <telerik:AjaxUpdatedControl ControlID="grdGrabList" LoadingPanelID="RadAjaxLoadingPanel1"  />
                       <telerik:AjaxUpdatedControl ControlID="btnGrabListToActive" />

                        
                    </UpdatedControls>
            </telerik:AjaxSetting>

        </AjaxSettings>
</telerik:RadAjaxManagerProxy>


<div id="divBody" style="width:1300px;height:800px; margin: 0px 0px 10px 10px;">
    <div style="width:100%;">
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Width="1300px" MultiPageID="RadMultiPage1" Skin="MetroTouch"  >
            <Tabs>
                <telerik:RadTab runat="server" Text="Assemblies" Selected="true" >
                    <Tabs>
                        <telerik:RadTab runat="server" Text="Active" PageViewID="Active" Selected="true"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Inactive" PageViewID="Inactive" ></telerik:RadTab>
                    </Tabs>
                </telerik:RadTab>
                <telerik:RadTab runat="server" Text="Stock GrabLists" PageViewID="GrabLists"  >
                    <Tabs>
                        <telerik:RadTab runat="server" Text="Active" PageViewID="GLActive" Selected="true"></telerik:RadTab>
                        <telerik:RadTab runat="server" Text="Inactive" PageViewID="GLInactive" ></telerik:RadTab>
                    </Tabs>
                </telerik:RadTab>
                <telerik:RadTab runat="server" Text="Sales Rep Detail" PageViewID="SalesReps" >                
                </telerik:RadTab>
                <telerik:RadTab runat="server" Text="BidTool Admin Access" PageViewID="PageAccess" >                
                </telerik:RadTab>

            </Tabs>
        </telerik:RadTabStrip>
    </div>
    <div style="width:100%; margin:0px 0px 0px 10px;">
        <telerik:RadMultiPage ID="RadMultiPage1" runat="server" Height="800px" Width="1300px">
            
            <telerik:RadPageView ID="Active" runat="server" Selected="true" Width="1300px" Height="700px">
                <div style="width:1300px; height:30px; padding:10px;">
                    <div style="width:300px; float:left;">
                        <telerik:RadComboBox ID="activeWhse" runat="server" Label="Branch:" Width="165px" 
                            DataSourceID="SqlDS_qBranch" DataTextField="comboname" DataValueField="branchno" 
                            AutoPostBack="true" LabelCssClass="myLabelCss">
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_qBranch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspGetBranchesActiveOnlyLessCorporate" SelectCommandType="StoredProcedure">
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:400px; float:left;">
                        <telerik:RadTextBox ID="assemblyAddName" runat="server" Label="New Assembly:" maxlength="50" Width="360px" LabelWidth="100px" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:220px; float:left;">
                        <telerik:RadButton ID="btnAssemblyAdd" ButtonType="StandardButton" runat="server" UseSubmitBehavior="false" Width="200px"   
                                    Text="Add Assembly" Skin="Office2010Blue"   
                                    ToolTip="Click to add Assembly for Branch chosen at left." >
                        </telerik:RadButton>
                    </div>
                </div>
                <div style="width:270px; height:700px; float:left;">
      
                            <telerik:RadGrid ID="grdAssemblies" runat="server" Width="250px" Height="650px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_grdAssemblies" GridLines="None"  
                                ResolvedRenderMode="Classic">
                        
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Selecting AllowRowSelect="true" />
                                        <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />

                                </ClientSettings>
                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="AssemblyID" DataSourceID="SqlDS_grdAssemblies" >
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="AssemblyID" DataType="System.Int64"  HeaderText="AssemblyID" 
                                            ReadOnly="True" SortExpression="AssemblyID" UniqueName="AssemblyID" Visible="false">
                                        </telerik:GridBoundColumn>
                                       
                                        <telerik:GridBoundColumn DataField="AssemblyName" HeaderText="Branch Assemblies" SortExpression="AssemblyName" UniqueName="AssemblyName">
                                            <HeaderStyle Width="250px" />
                                            <ItemStyle Width="250px" Wrap="false" Font-Size="Small" />
                                        </telerik:GridBoundColumn>

                                        <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status" Visible="false">
                                        </telerik:GridBoundColumn> 

                                        <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="false">
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>

                            <asp:SqlDataSource ID="SqlDS_grdAssemblies" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspTakeOffAssemblyAdminGet" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="activeWhse" Name="WhseID" PropertyName="SelectedValue" Type="String" />
                                    <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                    
                </div>

                <div style="width:1000px; height:650px; float:left; border:2px solid #4c68a2;">                
                  
                    <div style="width:550px; height:650px; float:left; margin-right:10px; ">
                        
                        <div style="width:550px; height:20px; float:left; margin:5px 0px 5px 0px;">
                            <div style="width:400px; padding:5px; float: left;">
                                <telerik:RadTextBox ID="assemblyEditName" runat="server" Label="Assembly:" maxlength="50" Width="400px" LabelWidth="80px" 
                                    DisabledStyle-ForeColor="Black" DisabledStyle-BackColor="White" 
                                    EnableedStle-ForeColor="Black" EnabledStyle-BackColor="LightBlue" LabelCssClass="myLabelCss">
                                </telerik:RadTextBox>
                            </div>
                            <div style="width:120px;; float:right; vertical-align:middle; padding:3px; ">
                                <telerik:RadButton ID="btnAssemblyNameEditMode" ButtonType="StandardButton" runat="server" UseSubmitBehavior="true" Width="100px" Text="Edit Name"  
                                        Skin="Office2010Blue">
                                </telerik:RadButton>
                                <telerik:RadButton ID="btnAssemblyNameUpdate" ButtonType="StandardButton" runat="server" UseSubmitBehavior="true" Width="100px" Text="Update Name"   
                                        Skin="Office2010Blue">
                                </telerik:RadButton>
                            </div>
                        </div>
                        <div style="width:550px; height:500px; float:left; vertical-align:top;">
                            <asp:HiddenField ID="hdnAssemblyIDEdit" runat="server" />
                            <asp:HiddenField ID="hdnWhseID" runat="server" />
                            <asp:HiddenField ID="hdnProdID" runat="server" />

                            <telerik:RadGrid ID="grdDetail" runat="server" Width="548px" Height="470px" DataSourceID="SqlDS_grdDetail" GroupPanelPosition="Top"
                                AllowAutomaticUpdates="True" AllowMultiRowEdit="True" AllowSorting="True" ResolvedRenderMode="Classic">
                                <ClientSettings EnableRowHoverStyle="true" AllowKeyboardNavigation="true">
                                    <ClientEvents OnKeyPress="onKeyPress" />
                                    <Selecting AllowRowSelect="True" />
                                    <KeyboardNavigationSettings EnableKeyboardShortcuts="true" AllowSubmitOnEnter="True" />
                                    <Scrolling AllowScroll="True" SaveScrollPosition="true" UseStaticHeaders="True" ScrollHeight="300px" />
                                    <Resizing AllowColumnResize="false"  />
                                </ClientSettings>
                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="AssemblyDetailID, ProdID" DataSourceID="SqlDS_grdDetail" 
                                    CommandItemDisplay="Top" EditMode="Batch" Width="540px" >
                                    
                                    <CommandItemSettings CancelChangesText="Cancel" SaveChangesText="Save Changes" ShowAddNewRecordButton="False" 
                                        ShowCancelChangesButton="True" ShowRefreshButton="False" ShowSaveChangesButton="True" />
                                    
                                    <BatchEditingSettings EditType="Cell" OpenEditingEvent="Click" />
                                    
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="AssemblyDetailID" DataType="System.Int64" FilterControlAltText="Filter AssemblyDetailID column" 
                                            HeaderText="AssemblyDetailID" ReadOnly="True" SortExpression="AssemblyDetailID" UniqueName="AssemblyDetailID" Visible="False">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Seq" DataType="System.Int32"  HeaderText="Line" ReadOnly="True" SortExpression="Seq" UniqueName="Seq">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Bottom" Width="30px" Wrap="False" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="30px" Font-Size="Small" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="ProdID"  HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                            <HeaderStyle VerticalAlign="Bottom" Width="100px" Wrap="False" />
                                            <ItemStyle VerticalAlign="Top" Width="100px" Wrap="False" Font-Size="Small" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" 
                                            ReadOnly="True" SortExpression="Description" UniqueName="Description" >
                                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="300px" Wrap="False" />
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="300px" Wrap="False" Font-Size="Small" />
                                        </telerik:GridBoundColumn>
                                        <telerik:GridTemplateColumn DataField="QtyBase" DataType="System.Decimal" HeaderText="Base Qty" 
                                            SortExpression="QtyBase" UniqueName="QtyBase">
                                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Width="50px" />
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Top" Width="50px" Font-Size="Small" />

                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblQtyBase" Font-Size="Small" Text='<%# Eval("QtyBase", "{0:N1}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <span>
                                                    <telerik:RadNumericTextBox ID="txtQtyUpdate" runat="server" Width="40px" MinValue="0" AutoCompleteType="Disabled" Font-Size="Small">
                                                    </telerik:RadNumericTextBox>
                                                </span>
                                            </EditItemTemplate>

                                        </telerik:GridTemplateColumn>
                                        <telerik:GridBoundColumn DataField="Line2"  HeaderText="Line2" ReadOnly="True" 
                                            SortExpression="Line2" UniqueName="Line2" Visible="False">
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>

                            <asp:SqlDataSource ID="SqlDS_grdDetail" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspTakeOffAssemblyAdminGetDetail" SelectCommandType="StoredProcedure" 
                                UpdateCommand="uspTakeOffAssemblyAdminUpdateDetailQty" UpdateCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="grdAssemblies" Name="AssemblyID" PropertyName="SelectedValue" Type="Int64" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="AssemblyDetailID" Type="Int64" />
                                    <asp:Parameter Name="QtyBase" Type="Decimal" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                        </div>
                        <div style="width:550px; height:30px; float:left; margin-top:10px; " >
                            <div style="width:500px; float:left; margin-left:10px; vertical-align:top;"> 
                                                 
                                <div style="width:250px; float:left; margin-right:10px; ">
                                    <telerik:RadComboBox ID="lineToMoveAssemblyID" runat="server" Label="Line to Move:" 
                                        DataSourceID="SqlDS_grdDetail" DataTextField="Line2" DataValueField="AssemblyDetailID"  
                                        LabelCssClass="myLabelCss" Width="150px" AppendDataBoundItems="true">
                                        <Items>
                                            <telerik:RadComboBoxItem Text="-" Value = "0" runat="server" /> 
                                        </Items>
                                    </telerik:RadComboBox>
                                    <asp:HiddenField runat="server" ID="lineOld" />
                                </div>
                                <div style="width:120px; float:left; margin-right:10px;">
                                    <telerik:RadComboBox ID="lineNew" runat="server" Label="New Line:" Width="40px" LabelCssClass="myLabelCss"  >
                                        <Items>
                                            <telerik:RadComboBoxItem Text="1" Value="1" />
                                            <telerik:RadComboBoxItem Text="2" Value="2" />
                                            <telerik:RadComboBoxItem Text="3" Value="3" />
                                            <telerik:RadComboBoxItem Text="4" Value="4" />
                                            <telerik:RadComboBoxItem Text="5" Value="5" />
                                            <telerik:RadComboBoxItem Text="6" Value="6" />
                                            <telerik:RadComboBoxItem Text="7" Value="7" />
                                            <telerik:RadComboBoxItem Text="8" Value="8" />
                                            <telerik:RadComboBoxItem Text="9" Value="9" />
                                            <telerik:RadComboBoxItem Text="10" Value="10" />
                                            <telerik:RadComboBoxItem Text="11" Value="11" />
                                            <telerik:RadComboBoxItem Text="12" Value="12" />
                                            <telerik:RadComboBoxItem Text="13" Value="13" />
                                            <telerik:RadComboBoxItem Text="14" Value="14" />
                                            <telerik:RadComboBoxItem Text="15" Value="15" />
                                            <telerik:RadComboBoxItem Text="16" Value="16" />
                                            <telerik:RadComboBoxItem Text="17" Value="17" />
                                            <telerik:RadComboBoxItem Text="18" Value="18" />
                                            <telerik:RadComboBoxItem Text="19" Value="19" />
                                            <telerik:RadComboBoxItem Text="20" Value="20" />
                                            <telerik:RadComboBoxItem Text="21" Value="21" />
                                            <telerik:RadComboBoxItem Text="22" Value="22" />
                                            <telerik:RadComboBoxItem Text="23" Value="23" />
                                            <telerik:RadComboBoxItem Text="24" Value="24" />
                                            <telerik:RadComboBoxItem Text="25" Value="25" />
                
                                        </Items>
                                    </telerik:RadComboBox>
                                </div>
                                <div style="width:80px; float:left; padding:2px 0px 2px 0px;"> 
                                    <telerik:RadButton ID="btnLineUpdate" runat="server" Text="Update" Width="70px" AutoPostBack="true" Skin="Office2010Blue"></telerik:RadButton>
                                </div> 
       
                            </div>
                  
                        </div>  
                        <div style="width:550px; height:30px; float:left; margin-top:5px; " >
                            <div style="width:500px; float:left; margin-left:10px; "> 
                                                 
                                <div style="width:270px; float:left; margin-right:10px;">
                                    <telerik:RadComboBox ID="lineToDeleteAssemblyID" runat="server" Label="Line to Delete:" 
                                        DataSourceID="SqlDS_grdDetail" DataTextField="Line2" DataValueField="AssemblyDetailID"  
                                        LabelCssClass="myLabelCss" Width="150px" AppendDataBoundItems="true">
                                        <Items>
                                            <telerik:RadComboBoxItem Text="-" Value = "0" runat="server" /> 
                                        </Items>
                                    </telerik:RadComboBox>
                                    <asp:HiddenField runat="server" ID="lineToDelete" />
                                            
                                </div>
                                <div style="width:80px; float:left; padding:2px 0px 2px 0px;"> 
                                    <telerik:RadButton ID="btnDeleteLine" runat="server" Text="Delete Line" Width="70px" AutoPostBack="true" Skin="Office2010Blue"></telerik:RadButton>
                                </div>
                            </div>
                        </div>
                        <div style="width:550px; height:30px; float:left; margin-top:5px; padding-left:20px;" >
                            <telerik:RadButton ID="btnUpdateStatusInactive" runat="server" Text="Inactivate Assembly" Width="500px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                        </div>

                    </div>
                    
                    <div style="width:425px; height:650px; float:right;">
                         <div style="width:100%; margin:0px 0px 0px 0px;">   
                            <telerik:RadTabStrip ID="RadTabStrip2" runat="server" Skin="Metro" MultiPageID="RadMultiPage2"  >
                                <Tabs>
                                    <telerik:RadTab runat="server" Text="Assembly Copy" PageViewID="Assemblies" Selected="true"></telerik:RadTab>         
                                    <telerik:RadTab runat="server" Text="Related" PageViewID="RelatedProducts"  ></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Stock Search" PageViewID="StockSearch" ></telerik:RadTab>
                                </Tabs>                    
                            </telerik:RadTabStrip>
                         </div>
                         <div style="width:100%; margin:0px 0px 10px 0px;">
                            <telerik:RadMultiPage ID="RadMultiPage2" runat="server"  >
                                                                       
                                    <telerik:RadPageView ID="RelatedProducts" runat="server" Width="425px" Height="600px" >
                                            <div style="width:425px; margin: 10px 0px 10px 10px;">
                                                <telerik:RadButton ID="btnRelatedSearch" runat="server" Text="Related Search" ToolTip="Select a Line Item then Click" Width="375px" Skin="Office2010Blue">
                                                </telerik:RadButton>
                                            </div>

                                            <telerik:RadGrid ID="grdRelated" runat="server" Width="420px" Height="525px"
                                                DataSourceID="SqlDS_grdRelated" AllowPaging="false" AllowSorting="True" CellSpacing="0" GridLines="None"  >
                   
                                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                                            <Selecting AllowRowSelect="true" />
                                                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                            <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                                                </ClientSettings>
                   
                   
                                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDS_grdRelated" Width="420px">
                       
                                                    <Columns>
                                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID" Visible="true">
                                                            <HeaderStyle Width="100px" Font-Size="Small" />
                                                            <ItemStyle Width="100px"  VerticalAlign="Top" Font-Size="Small" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Description2" HeaderText="Description" ReadOnly="True" SortExpression="Description2" UniqueName="Description2">
                                                            <HeaderStyle Width="300px" Font-Size="Small" />
                                                            <ItemStyle Width="300px" VerticalAlign="Top" Wrap="false" Font-Size="Small" />
                                                        </telerik:GridBoundColumn>
                                                    </Columns>
                      
                                        
                                                </MasterTableView>
                                   
                   
                                            </telerik:RadGrid>
                                            <asp:SqlDataSource ID="SqlDS_grdRelated" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                SelectCommand="uspTakeOffRelatedProductsGet2" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:Parameter Name="ProdID" DbType="String" DefaultValue="0" />
                                                    <asp:Parameter Name="WhseID" DbType="String" DefaultValue="0" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                    
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="Assemblies" runat="server"  Width="425px" Height="550px" Selected="true">
                                        <div style="width:100%; "> 
                                         
                                         <telerik:RadListBox ID="listAssembliesCopy" runat="server"  DataSourceID="SqlDS_listAssembliesCopy" Width="425px" Height="550px" 
                                                DataKeyField="AssemblyID" DataValueField="AssemblyID" DataTextField="AssemblyName"
                                                 
                                                 SelectionMode="Single"
                                                AutoPostBack="true" AllowDelete="false" Skin="Metro" Font-Size="Small" >
                        
                                         </telerik:RadListBox>
                                         <asp:SqlDataSource ID="SqlDS_listAssembliesCopy" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                SelectCommand="uspTakeOffAssemblyListGet" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter Name="WhseID" ControlID = "hdnWhseID" DefaultValue="" PropertyName="Value" Type="String" />
                                                </SelectParameters>
                                         </asp:SqlDataSource>
                                    
                                        </div>
                                    </telerik:RadPageView>
                                    
                                    <telerik:RadPageView ID="StockSearch" runat="server" Width="425px" Height="600px" >

                                        <div style="width:425px; height:60px; margin-bottom:5px; float:left;"> 
                                            <div style="width:425px; margin-top:5px;" >   
                                                <div style="float:left; width:325px;">    
                                                    <telerik:RadTextBox ID="txtProdIDSearch" runat="server" Label="Number Contains:" Width="325px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                                    </telerik:RadTextBox>
                                                </div>
                                                
                                                <div style="width:90px; float:right;">
                                                    <telerik:RadButton ID="btnStockSearch" runat="server" Text="Search" Width="80px"  AutoPostBack="true" OnClick="btnStockSearch_Click" Skin="Office2010Blue"></telerik:RadButton>
                                                </div> 

                                            </div>
                                            <div style="width:425px; margin-top:5px;" >
                                                <div style="float:left; width:325px;">  
                                                    <telerik:RadTextBox ID="txtDescSearch" runat="server" Label="Description Contains:" Width="325px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                                    </telerik:RadTextBox>
                                                </div>
                                                <div style="width:90px; float:right;">
                                                        <telerik:RadButton ID="btnStockSearchClear" runat="server" Text="Clear" Width="80px" AutoPostBack="true" Skin="Office2010Blue"></telerik:RadButton>
                                                </div>
                                            </div>
                
                                        </div> 
                                        <div style="width:425px; height:530px; ">
                
                                            <telerik:RadGrid ID="grdStockSearch" runat="server" Width="420px" Height="525px"
                                                DataSourceID="SqlDS_grdStockSearch" AllowPaging="False" AllowSorting="True" CellSpacing="0" GridLines="None" PageSize="20" >
                   
                                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                                            <Selecting AllowRowSelect="true" />
                                                            <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                </ClientSettings>
                   
                   
                                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDS_grdStockSearch" Width="420px" >
                       
                                                    <Columns>
                                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                                            <HeaderStyle Width="100px" Font-Size="Small" />
                                                            <ItemStyle Width="100px" Font-Size="Small" VerticalAlign="Top" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                                                            <HeaderStyle Width="300px" Font-Size="Small" />
                                                            <ItemStyle Width="300px" Font-Size="Small" VerticalAlign="Top" />
                                                        </telerik:GridBoundColumn>
                                                    </Columns>
                      
                                        
                                                </MasterTableView>
                                   
                   
                                            </telerik:RadGrid>
                
                                                <asp:SqlDataSource ID="SqlDS_grdStockSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                    SelectCommand="uspProductSearchSimple" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:ControlParameter Name="ProdID" ControlID = "txtProdIDSearch"  PropertyName="Text" DefaultValue="" Type="String" />
                                                        <asp:ControlParameter Name="Description" ControlID = "txtDescSearch" PropertyName="Text" DefaultValue="" Type="String" />
                                                        <asp:ControlParameter Name="WhseID" ControlID = "hdnWhseID" DefaultValue="" PropertyName="Value" Type="String" />                                                    
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                        </div>
                                    
                                        
                                    </telerik:RadPageView>
                                            
                            </telerik:RadMultiPage>
                         </div>
                    </div>
                   
                </div>
                
            </telerik:RadPageView>
            
            <telerik:RadPageView ID="Inactive" runat="server" Width="1300px" Height="700px">
                <div style="width:1300px; height:20px; padding:10px; font-size:x-large; color:#4c68a2;">
                    Inactive Assemblies
                </div>
                
                <div style="width:1300px; height:30px; padding:10px;">
                    <div style="width:300px; float:left;">
                        <telerik:RadComboBox ID="activeWhse2" runat="server" Label="Branch:" Width="165px" 
                            DataSourceID="SqlDS_qBranch" DataTextField="comboname" DataValueField="branchno" 
                            AutoPostBack="true" LabelCssClass="myLabelCss">
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_activeWhse2" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspGetBranchesActiveOnlyLessCorporate" SelectCommandType="StoredProcedure">
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div style="width:400px; height:650px; float:left;">
      
                            <telerik:RadGrid ID="grdAssembliesInactive" runat="server" Width="400px" Height="500px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_grdAssembliesInactive" GridLines="None"  
                                ResolvedRenderMode="Classic">
                        
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Selecting AllowRowSelect="true" />
                                        <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />

                                </ClientSettings>
                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="AssemblyID" DataSourceID="SqlDS_grdAssembliesInactive" >
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="AssemblyID" DataType="System.Int64"  HeaderText="AssemblyID" 
                                            ReadOnly="True" SortExpression="AssemblyID" UniqueName="AssemblyID" Visible="false">
                                        </telerik:GridBoundColumn>
                                       
                                        <telerik:GridBoundColumn DataField="AssemblyName" HeaderText="Inactive Branch Assemblies" SortExpression="AssemblyName" UniqueName="AssemblyName">
                                            <HeaderStyle Width="400px" />
                                            <ItemStyle Width="400px" Wrap="false" />
                                        </telerik:GridBoundColumn>

                                        <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status" Visible="false">
                                        </telerik:GridBoundColumn> 

                                        <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="false">
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>

                            <asp:SqlDataSource ID="SqlDS_grdAssembliesInactive" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspTakeOffAssemblyAdminGet" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="activeWhse2" Name="WhseID" PropertyName="SelectedValue" Type="String" />
                                    <asp:Parameter DefaultValue="Inactive" Name="Status" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                    
                </div>
                <div style="width:700px; height:400px; float:left; margin-left:20px; margin-top:100px;">
                    <div style="width:700px; margin:20px; font-size:medium; color:#4c68a2;">
                        <asp:Label ID="lblStatusUpdate" runat="server" ></asp:Label>
                        <asp:HiddenField ID="hdnAssemblyIDToActivate" runat="server" />
                    </div>
                    
                    <div style="width:700px; margin:20px; font-size:medium; color:#4c68a2; padding-left:20px;">
                        <telerik:RadButton ID="btnUpdateStatusActive" runat="server" Text="Activate Assembly" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                    </div>
                </div>
                
                    
                
            
            </telerik:RadPageView>

            <telerik:RadPageView ID="SalesReps" runat="server" Width="1300px" Height="700px">
                <div style="width:1300px; height:650px;margin:10px;">
                    <div style="width:750px; height:650px; float:left;">
                        <telerik:RadGrid ID="grdSalesReps" runat="server" Width="750px" Height="650px"  DataSourceID="SqlDS_grdSalesReps" AllowSorting="True" 
                            GroupPanelPosition="Top" ResolvedRenderMode="Classic">
                            
                            <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Selecting AllowRowSelect="true" />
                                        <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                        <Resizing AllowColumnResize="true" />
                            </ClientSettings>
                            <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdSalesReps" DataKeyNames="SalesRepID">
                                <Columns>
                                    <telerik:GridBoundColumn DataField="SalesRepID" HeaderText="Sales ID" SortExpression="SalesRepID" UniqueName="SalesRepID">
                                        <HeaderStyle VerticalAlign="Bottom" Width="50px" />
                                        <ItemStyle VerticalAlign="Top" Wrap="false" Width="50px"/>
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="GUI_Name" HeaderText="GUI Name" SortExpression="GUI_Name" UniqueName="GUI_Name">
                                        <HeaderStyle VerticalAlign="Bottom" Width="170px" />
                                        <ItemStyle VerticalAlign="Top" Wrap="false" Width="170px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="SalesName" HeaderText="Sales Name" SortExpression="SalesName" UniqueName="SalesName">
                                        <HeaderStyle VerticalAlign="Bottom" Width="150px" />
                                        <ItemStyle VerticalAlign="Top" Wrap="false" Width="150px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="eMail" HeaderText="eMail" SortExpression="eMail" UniqueName="eMail">
                                        <HeaderStyle VerticalAlign="Bottom" Width="250px" />
                                        <ItemStyle VerticalAlign="Top" Wrap="false" Width="250px" />
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" UniqueName="Mobile">
                                        <HeaderStyle VerticalAlign="Bottom" Width="130px" />
                                        <ItemStyle VerticalAlign="Top" Wrap="false" Width="130px" />
                                    </telerik:GridBoundColumn>
                                </Columns>
                            </MasterTableView>
                        </telerik:RadGrid>


                        <asp:SqlDataSource ID="SqlDS_grdSalesReps" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspSalesRepDetailGetAll" SelectCommandType="StoredProcedure">
                        </asp:SqlDataSource>


                    </div>
                    <div style="width:500px; height:650px; float:left; margin-left:20px;">
                        <div style="width:500px; height:100px; ">
                           <p> BidTool allows for the customization of Sales Rep information on quotes.  Given a Sales Rep ID, we can customize the name and provide email and mobile contact
                            information.  The column at left labeled 'GUI Name' is the official name that appears within SXe/GUI.
                            <br /> <br />
                           </p>

                        </div>
                        <div style="width:100%; margin:0px 0px 0px 0px;">   
                            <telerik:RadTabStrip ID="RadTabStrip3" runat="server" Skin="Metro" MultiPageID="RadMultiPage3"  >
                                <Tabs>
                                    <telerik:RadTab runat="server" Text="Edit" PageViewID="Edit" Selected="true"></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Add" PageViewID="Add" ></telerik:RadTab>
                                </Tabs>                    
                            </telerik:RadTabStrip>
                         </div>

                        <div style="width:500px; height:400px;">
                            <telerik:RadMultiPage ID="RadMultiPage3" runat="server"  >
                                <telerik:RadPageView ID="Edit" runat="server"  Width="480px" Height="480px" Selected="true">
                                    <div style="margin:20px;">
                                        <div style="Width:500px; padding:5px; float:left;">
                                            <telerik:RadTextBox ID="slsRepID" runat="server" length="10" Label="Sales Rep ID:" LabelWidth="100px" Width="350px" 
                                                LabelCssClass="myLabelCss" Enabled="false" DisabledStyle-ForeColor="Black">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="Width:500px; padding:5px; float:left;">
                                             <telerik:RadTextBox ID="slsName" runat="server" length="50" Label="Sales Name:" LabelWidth="100px" Width="350px" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="Width:500px; padding:5px; float:left;">
                                             <telerik:RadTextBox ID="slsEmail" runat="server" length="50" Label="eMail:" LabelWidth="100px" Width="350px" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="Width:500px; padding:5px; float:left;">
                                             <telerik:RadTextBox ID="slsMobile" runat="server" length="50" Label="Mobile:" LabelWidth="100px" Width="350px" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="Width:500px; margin-top:20px;padding-left:20px; float:left;">
                                            <telerik:RadButton ID="btnSalesRepDetail" runat="server" Text="Update Sales Detail" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                                        </div>
                                    </div>
                                </telerik:RadPageView>
                                <telerik:RadPageView ID="Add" runat="server"  Width="480px" Height="480px">
                                    <div style="margin:20px; height:75px;">
                                        <div style="Width:500px; padding:5px; float:left;">
                                            <p>If a Sales Rep ID has been recently added into SXe, use this form to submit details.</p>
                                        </div>

                                        <div style="Width:500px; padding:5px; float:left;">
                                            <telerik:RadTextBox ID="aSalesRepID" runat="server" length="10" Label="Sales Rep ID:" LabelWidth="100px" Width="350px" 
                                                LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="Width:500px; padding:5px; float:left;">
                                             <telerik:RadTextBox ID="aSalesName" runat="server" length="50" Label="Sales Name:" LabelWidth="100px" Width="350px" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="Width:500px; padding:5px; float:left;">
                                             <telerik:RadTextBox ID="aeMail" runat="server" length="50" Label="eMail:" LabelWidth="100px" Width="350px" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="Width:500px; padding:5px; float:left;">
                                             <telerik:RadTextBox ID="aMobile" runat="server" length="50" Label="Mobile:" LabelWidth="100px" Width="350px" LabelCssClass="myLabelCss">
                                            </telerik:RadTextBox>
                                        </div>
                                        <div style="Width:500px; margin-top:20px;padding-left:20px; float:left;">
                                            <telerik:RadButton ID="btnSalesRepAdd" runat="server" Text="Add Sales Detail" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                                        </div>
                                    </div>

                                </telerik:RadPageView>
                            </telerik:RadMultiPage>
                        </div>


                    </div>

                </div>
            
            </telerik:RadPageView>

            <telerik:RadPageView ID="GLActive" runat="server" Width="1300px" Height="700px">
                <div style="width:1300px; height:30px; padding:10px;">
                    <div style="width:300px; float:left;">
                        <telerik:RadComboBox ID="activeWhse3" runat="server" Label="Branch:" Width="165px" 
                            DataSourceID="SqlDS_qBranch" DataTextField="comboname" DataValueField="branchno" 
                            AutoPostBack="true" LabelCssClass="myLabelCss">
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_activeWhse3" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspGetBranchesActiveOnlyLessCorporate" SelectCommandType="StoredProcedure">
                        </asp:SqlDataSource>
                    </div>
                    <div style="width:400px; float:left;">
                        <telerik:RadTextBox ID="newGrabList" runat="server" Label="New GrabList:" maxlength="50" Width="360px" LabelWidth="100px" LabelCssClass="myLabelCss">
                        </telerik:RadTextBox>
                    </div>
                    <div style="width:220px; float:left;">
                        <telerik:RadButton ID="btnGrabListAdd" ButtonType="StandardButton" runat="server" UseSubmitBehavior="false" Width="200px"   
                                    Text="Add GrabList" Skin="Office2010Blue"   
                                    ToolTip="Click to add a Stock GrabList for Branch chosen at left." >
                        </telerik:RadButton>
                    </div>
                </div>
                <div style="width:270px; height:700px; float:left;">
      
                            <telerik:RadGrid ID="grdGrabList" runat="server" Width="250px" Height="650px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_grdGrabList" 
                                    GridLines="None" ResolvedRenderMode="Classic">
                        
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Selecting AllowRowSelect="true" />
                                        <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />

                                </ClientSettings>
                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="GrabListID" DataSourceID="SqlDS_grdGrabList" >
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="GrabListID" DataType="System.Int64"  HeaderText="GrabListID" 
                                            ReadOnly="True" SortExpression="GrabListID" UniqueName="GrabListID" Visible="false">
                                        </telerik:GridBoundColumn>
                                       
                                        <telerik:GridBoundColumn DataField="GrabListName" HeaderText="Branch Grab Lists" SortExpression="GrabListName" UniqueName="GrabListName">
                                            <HeaderStyle Width="250px" />
                                            <ItemStyle Width="250px" Wrap="false" Font-Size="Small" />
                                        </telerik:GridBoundColumn>

                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>

                            <asp:SqlDataSource ID="SqlDS_grdGrabList" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspTakeOffGrabListStockGet" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="activeWhse3" Name="WhseID" PropertyName="SelectedValue" Type="String" />
                                    <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                    
                </div>

                <div style="width:1000px; height:650px; float:left; border:2px solid #4c68a2;">
                    
                    
                    <div style="width:550px; height:650px; float:left; margin-right:10px; ">
                        
                        <div style="width:550px; height:20px; float:left; margin:5px 0px 5px 0px;">
                            <div style="width:400px; padding:5px; float: left;">
                                <telerik:RadTextBox ID="eGrabListName" runat="server" Label="GrabList:" maxlength="50" Width="400px" LabelWidth="80px" 
                                    DisabledStyle-ForeColor="Black" DisabledStyle-BackColor="White" 
                                    EnableedStle-ForeColor="Black" EnabledStyle-BackColor="LightBlue" LabelCssClass="myLabelCss">
                                </telerik:RadTextBox>
                            </div>
                            <div style="width:120px;; float:right; vertical-align:middle; padding:3px; ">
                                <telerik:RadButton ID="btnGrabListNameEdit" ButtonType="StandardButton" runat="server" UseSubmitBehavior="true" Width="100px" Text="Edit Name"  
                                        Skin="Office2010Blue">
                                </telerik:RadButton>
                                <telerik:RadButton ID="btnGrabListNameUpdate" ButtonType="StandardButton" runat="server" UseSubmitBehavior="true" Width="100px" Text="Update Name"   
                                        Skin="Office2010Blue">
                                </telerik:RadButton>
                            </div>
                        </div>
                        <asp:Label ID="lblTest" runat="server" ></asp:Label>
                        <asp:HiddenField ID="hdnWhseID3" runat="server" />
                        <asp:HiddenField ID="hdnProdID3" runat="server" />
                        <asp:HiddenField ID="hdnGrabListIDEdit" runat="server" />
                        <div style="width:550px; height:500px; float:left; vertical-align:top;">
                            
                           
                            <telerik:RadGrid ID="grdGrabDetail" runat="server" Width="548px" Height="450px" 
                                DataSourceID="SqlDS_grdGrabDetail" GroupPanelPosition="Top"
                                 AllowAutomaticDeletes="True" AllowSorting="True" 
                                ResolvedRenderMode="Classic">
                                <ClientSettings EnableRowHoverStyle="true" AllowKeyboardNavigation="true" EnablePostBackOnRowClick="true">
                                    
                                    <Selecting AllowRowSelect="True" />
                                    <KeyboardNavigationSettings EnableKeyboardShortcuts="true" AllowSubmitOnEnter="True" />
                                    <Scrolling AllowScroll="True" SaveScrollPosition="true" UseStaticHeaders="True" ScrollHeight="300px" />
                                    <Resizing AllowColumnResize="false"  />
                                </ClientSettings>
                                <MasterTableView AutoGenerateColumns="False" DataSourceID="SqlDS_grdGrabDetail" DataKeyNames="GrabListDetailID, ProdID" CommandItemDisplay="None"  Width="540px" >
                                    
                                    <%--CommandItemSettings CancelChangesText="Cancel" SaveChangesText="Save" ShowAddNewRecordButton="False" 
                                        ShowCancelChangesButton="True" ShowRefreshButton="False" ShowSaveChangesButton="True"  />--%>
                                                                      
                                    <Columns>
                                        <telerik:GridButtonColumn Text="Delete" CommandName="Delete" ButtonType="ImageButton">
                                            <HeaderStyle Width="20px" />
                                            <ItemStyle Width="20px" />
                                        </telerik:GridButtonColumn>

                                        <telerik:GridBoundColumn DataField="GrabListDetailID" DataType="System.Int64" ReadOnly="True" Visible="false" 
                                            SortExpression="GrabListDetailID" UniqueName="GrabListDetailID" HeaderText="GrabListDetailID">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="ProdID"  HeaderText="ProdID" SortExpression="ProdID" UniqueName="ProdID" Visible="false">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description" >
                                            <HeaderStyle Width="500px" />
                                            <ItemStyle Width="500px" Wrap="false" />
                                        </telerik:GridBoundColumn>
                                         
                                    </Columns>

                                    <EditFormSettings>
                                        <EditColumn ButtonType="ImageButton" />
                                    </EditFormSettings>
                                </MasterTableView>
                            </telerik:RadGrid>

                            <asp:SqlDataSource ID="SqlDS_grdGrabDetail" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspTakeOffGrabListStockDetailGet" SelectCommandType="StoredProcedure" >
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="grdGrabList" Name="GrabListID" PropertyName="SelectedValue" Type="Int64" DefaultValue="0" />
                                </SelectParameters>
                                
                            </asp:SqlDataSource>

                        </div>
                          
                       
                        <div style="width:550px; height:30px; float:left; margin-top:5px; padding-left:20px;" >
                            <telerik:RadButton ID="btnGrabListToInactive" runat="server" Text="Inactivate GrabList" Width="500px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                        </div>

                    </div>
                    
                    <div style="width:425px; height:650px; float:right;">
                         <div style="width:100%; margin:0px 0px 0px 0px;">   
                            <telerik:RadTabStrip ID="RadTabStrip4" runat="server" Skin="Metro" MultiPageID="RadMultiPage4"  >
                                <Tabs>
                                    <telerik:RadTab runat="server" Text="GrabList Copy" PageViewID="GrabListCopy" ></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Related" PageViewID="GLRelatedProducts"  ></telerik:RadTab>
                                    <telerik:RadTab runat="server" Text="Stock Search" PageViewID="GLStockSearch" Selected="true"></telerik:RadTab>
                                </Tabs>                    
                            </telerik:RadTabStrip>
                         </div>
                         <div style="width:100%; margin:0px 0px 10px 0px;">
                            <telerik:RadMultiPage ID="RadMultiPage4" runat="server"  >
                                    
                                    <telerik:RadPageView ID="GrabListCopy" runat="server"  Width="425px" Height="550px" Selected="true">
                                        <div style="width:100%; "> 
                                         
                                         <telerik:RadListBox ID="listGrabListCopy" runat="server"  DataSourceID="SqlDS_listGrabListCopy" Width="425px" Height="550px" 
                                                DataKeyField="GrabListID" DataValueField="GrabListID" DataTextField="GrabListName" SelectionMode="Single"
                                                AutoPostBack="true" AllowDelete="false" Skin="Metro" Font-Size="Small" >
                                         </telerik:RadListBox>
                                         <asp:SqlDataSource ID="SqlDS_listGrabListCopy" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                SelectCommand="uspTakeOffGrabListStockGet" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="activeWhse3" Name="WhseID" PropertyName="SelectedValue" Type="String" />
                                                    <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                                                </SelectParameters>
                                         </asp:SqlDataSource>
                                    
                                        </div>
                                    </telerik:RadPageView>
                                                                       
                                    <telerik:RadPageView ID="GLRelatedProducts" runat="server" Width="425px" Height="600px" >
                                            <div style="width:425px; margin: 10px 0px 10px 10px;">
                                                <telerik:RadButton ID="btnGLRelatedSearch" runat="server" Text="Related Search" ToolTip="Select a Line Item then Click" Width="375px" Skin="Office2010Blue">
                                                </telerik:RadButton>
                                            </div>

                                            <telerik:RadGrid ID="grdGLRelated" runat="server" Width="420px" Height="525px"
                                                DataSourceID="SqlDS_grdGLRelated" AllowPaging="false" AllowSorting="True" CellSpacing="0" GridLines="None"  >
                   
                                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                                            <Selecting AllowRowSelect="true" />
                                                            <Scrolling AllowScroll="true" SaveScrollPosition="true" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                            <Resizing AllowColumnResize="true" AllowResizeToFit="true" />
                                                </ClientSettings>
                   
                   
                                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDS_grdGLRelated" Width="420px">
                       
                                                    <Columns>
                                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID" Visible="true">
                                                            <HeaderStyle Width="100px" Font-Size="Small" />
                                                            <ItemStyle Width="100px"  VerticalAlign="Top" Font-Size="Small" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Description2" HeaderText="Description" ReadOnly="True" SortExpression="Description2" UniqueName="Description2">
                                                            <HeaderStyle Width="300px" Font-Size="Small" />
                                                            <ItemStyle Width="300px" VerticalAlign="Top" Wrap="false" Font-Size="Small" />
                                                        </telerik:GridBoundColumn>
                                                    </Columns>
                      
                                        
                                                </MasterTableView>
                                   
                   
                                            </telerik:RadGrid>
                                            <asp:SqlDataSource ID="SqlDS_grdGLRelated" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                SelectCommand="uspTakeOffRelatedProductsGet2" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:Parameter Name="ProdID" DbType="String" DefaultValue="0" />
                                                    <asp:Parameter Name="WhseID" DbType="String" DefaultValue="0" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                    
                                    </telerik:RadPageView>
                                    
                                    
                                    <telerik:RadPageView ID="GLStockSearch" runat="server" Width="425px" Height="600px" Selected="true" >

                                        <div style="width:425px; height:60px; margin-bottom:5px; float:left;"> 
                                            <div style="width:425px; margin-top:5px;" >   
                                                <div style="float:left; width:325px;">    
                                                    <telerik:RadTextBox ID="txtGLProdIDSearch" runat="server" Label="Number Contains:" Width="325px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                                    </telerik:RadTextBox>
                                                </div>
                                                
                                                <div style="width:90px; float:right;">
                                                    <telerik:RadButton ID="btnGLStockSearch" runat="server" Text="Search" Width="80px"  AutoPostBack="true"  Skin="Office2010Blue"></telerik:RadButton>
                                                </div> 

                                            </div>
                                            <div style="width:425px; margin-top:5px;" >
                                                <div style="float:left; width:325px;">  
                                                    <telerik:RadTextBox ID="txtGLDescSearch" runat="server" Label="Description Contains:" Width="325px" LabelWidth="150px" LabelCssClass="myLabelCss">
                                                    </telerik:RadTextBox>
                                                </div>
                                                <div style="width:90px; float:right;">
                                                        <telerik:RadButton ID="btnGLStockSearchClear" runat="server" Text="Clear" Width="80px" AutoPostBack="true"  Skin="Office2010Blue"></telerik:RadButton>
                                                </div>
                                            </div>
                
                                        </div> 
                                        <div style="width:425px; height:530px; ">
                
                                            <telerik:RadGrid ID="grdGLStockSearch" runat="server" Width="420px" Height="525px"
                                                DataSourceID="SqlDS_grdGLStockSearch" AllowPaging="False" AllowSorting="True" CellSpacing="0" GridLines="None" >
                   
                                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                                            <Selecting AllowRowSelect="true" />
                                                            <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />
                                                </ClientSettings>
                   
                   
                                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProdID" DataSourceID="SqlDS_grdGLStockSearch" Width="420px" >
                       
                                                    <Columns>
                                                        <telerik:GridBoundColumn DataField="ProdID" HeaderText="ProdID" ReadOnly="True" SortExpression="ProdID" UniqueName="ProdID">
                                                            <HeaderStyle Width="100px" Font-Size="Small" />
                                                            <ItemStyle Width="100px" Font-Size="Small" VerticalAlign="Top" />
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" UniqueName="Description">
                                                            <HeaderStyle Width="300px" Font-Size="Small" />
                                                            <ItemStyle Width="300px" Font-Size="Small" VerticalAlign="Top" />
                                                        </telerik:GridBoundColumn>
                                                    </Columns>
                      
                                        
                                                </MasterTableView>
                                   
                   
                                            </telerik:RadGrid>
                
                                                <asp:SqlDataSource ID="SqlDS_grdGLStockSearch" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                                    SelectCommand="uspProductSearchSimple" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:ControlParameter Name="ProdID" ControlID = "txtGLProdIDSearch"  PropertyName="Text" DefaultValue="zz999" Type="String" />
                                                        <asp:ControlParameter Name="Description" ControlID ="txtGLDescSearch" PropertyName="Text" DefaultValue="zz999" Type="String" />
                                                        <asp:ControlParameter Name="WhseID" ControlID = "activeWhse3" PropertyName="SelectedValue" DefaultValue="9zz9" Type="String" />  
                                                                                                        
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                        </div>
                                    
                                        
                                    </telerik:RadPageView>
                                    

                                
                            </telerik:RadMultiPage>
                         </div>
                    </div>
                    
                </div>
                
            </telerik:RadPageView>

            <telerik:RadPageView ID="GLInactive" runat="server" Width="1300px" Height="700px">
               <div style="width:1300px; height:20px; padding:10px; font-size:x-large; color:#4c68a2;">
                    Inactive GrabLists
               </div>
                
                <div style="width:1300px; height:30px; padding:10px;">
                    <div style="width:300px; float:left;">
                        <telerik:RadComboBox ID="activeWhse4" runat="server" Label="Branch:" Width="165px" 
                            DataSourceID="SqlDS_activeWhse4" DataTextField="comboname" DataValueField="branchno" 
                            AutoPostBack="true" LabelCssClass="myLabelCss">
                        </telerik:RadComboBox>
                        <asp:SqlDataSource ID="SqlDS_activeWhse4" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                            SelectCommand="uspGetBranchesActiveOnlyLessCorporate" SelectCommandType="StoredProcedure">
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div style="width:400px; height:650px; float:left;">
      
                            <telerik:RadGrid ID="grdInactiveGrab" runat="server" Width="400px" Height="500px" AllowSorting="True" CellSpacing="0" DataSourceID="SqlDS_grdInactiveGrab" GridLines="None"  
                                ResolvedRenderMode="Classic">
                        
                                <ClientSettings EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                        <Selecting AllowRowSelect="true" />
                                        <Scrolling AllowScroll="true" SaveScrollPosition="false" UseStaticHeaders="True" FrozenColumnsCount="0" />

                                </ClientSettings>
                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="GrabListID" DataSourceID="SqlDS_grdInactiveGrab" >
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="GrabListID" DataType="System.Int64"  HeaderText="GrabListID" 
                                            ReadOnly="True" SortExpression="GrabListID" UniqueName="GrabListID" Visible="false">
                                        </telerik:GridBoundColumn>
                                       
                                        <telerik:GridBoundColumn DataField="GrabListName" HeaderText="Inactive Branch GrabLists" SortExpression="GrabListName" UniqueName="GrabListName">
                                            <HeaderStyle Width="400px" />
                                            <ItemStyle Width="400px" Wrap="false" />
                                        </telerik:GridBoundColumn>

                                        <telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" UniqueName="Status" Visible="false">
                                        </telerik:GridBoundColumn> 

                                        <telerik:GridBoundColumn DataField="WhseID" HeaderText="WhseID" SortExpression="WhseID" UniqueName="WhseID" Visible="false">
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>

                            <asp:SqlDataSource ID="SqlDS_grdInactiveGrab" runat="server" ConnectionString="<%$ ConnectionStrings:DKConnectionString %>" 
                                SelectCommand="uspTakeOffGrabListStockGet" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="activeWhse4" Name="WhseID" PropertyName="SelectedValue" Type="String" />
                                    <asp:Parameter DefaultValue="Inactive" Name="Status" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                    
                </div>
                <div style="width:700px; height:400px; float:left; margin-left:20px; margin-top:100px;">
                    <div style="width:700px; margin:20px; font-size:medium; color:#4c68a2;">
                        <asp:Label ID="lblInactiveGrabListName" runat="server" ></asp:Label>
                        <asp:HiddenField ID="hdnInactiveGrabListID" runat="server" />
                        <asp:HiddenField ID="hdnInactiveGrabListName" runat="server" />
                    </div>
                    
                    <div style="width:700px; margin:20px; font-size:medium; color:#4c68a2; padding-left:20px;">
                        <telerik:RadButton ID="btnGrabListToActive" runat="server" Text="Activate GrabList" Width="200px" AutoPostBack="true" Skin="BlackMetroTouch"></telerik:RadButton>
                    </div>
                </div>
                
                    
            </telerik:RadPageView>

            <telerik:RadPageView ID="PageAccess" runat="server" Width="1300px" Height="700px">
                <div style="width:1300px; height:650px;margin:10px;">
                    <div style="width:1000px; margin-bottom:20px;">
                        <p style="font-size:medium; color: #4c68a2; font-weight:bold; width:100%;">
                            Access to add/update Assemblies, GrabLists and Sales Person information is limited to the people below (Branch Mngrs, Admins, and select Inside and Outside Sales).  
                            If you feel you should have access, please direct your request to your branch manager and Derek Johnson.
                        </p>
                        <br />

                        <p style="font-size:medium; color: #4c68a2; font-weight:bold;width:100%;">
                            Use your browser's back button to return to the last page.
                        </p>
                    </div>
                    <div style="width:1000px; height:500px;float:left;">
                        
                        
                        <%--<telerik:RadListBox ID="listBoxUsers" runat="server" Width="900px" Height="500px" 
                            DataSourceID="SqlDS_listBoxUsers" DataTextField="FullName" ResolvedRenderMode="Classic">
                        </telerik:RadListBox>--%>
                        
                        <telerik:RadListView ID="listBoxUsers" runat="server" Width="900px" Height="500px"  DataSourceID="SqlDS_listBoxUsers"  >
                         
          
                          <ItemTemplate>
                               <fieldset style="float: left; width: 125px; Margin:5px; ">
                                   
                                  <p style="width:115px;">
                                    <%#Eval("FullName")%>
                                  </p>
                               </fieldset>
                          </ItemTemplate>
          
          
                        </telerik:RadListView>
                        
                        <asp:SqlDataSource ID="SqlDS_listBoxUsers" runat="server" ConnectionString="<%$ ConnectionStrings:IntranetAppServices %>" 
                            SelectCommand="SELECT [FullName] FROM [Intranet_Personalization] WHERE ([BranchAdmin] = @BranchAdmin) AND ([Status] = 'Active') ORDER BY [FullName]">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="BranchAdmin" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                
                </div>

            </telerik:RadPageView>
        </telerik:RadMultiPage>    
    
    </div>


</div>
