<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Training.master" AutoEventWireup="false" CodeFile="Intranet.aspx.vb" Inherits="Training_Intranet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
      <script type="text/javascript">


          function openWndw1(sender, args) {
              var oWnd1 = radopen(null, "wndw1");
              //              
              oWnd1.center();
          }
          
          function clientClose(sender, args) {
              if (args.get_argument() != null) {
                  alert("'" + sender.get_name() + "'" + " was closed and returned the following argument: '" + args.get_argument() + "'");
              }
          }
      </script>
</telerik:RadCodeBlock>

 <div style="width:100%; margin:10px;">
        <h2 style="width:500px;">Basic Intranet Training</h2> 
 </div>



 <div style="width:100%;margin:10px;">
                    <div style="width:100%; ">
                        <div style="font-size:medium;width:900px; margin: 0px 0px 20px 10px;">
                            The Intranet is a pretty straightforward web application.  This video demonstrates some of the navigation and features.
                            
                            Click on the 'View' button to launch the video.  Be sure to use the expand button at the bottom right
                            corner of the video viewer to exand the video to fill your screen.
                        </div>   
                    </div>
                    <div style="width:100%;height:650px;">
                        <div style="width:100%; margin-bottom:20px;">
                           <%-- <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">High Level &amp; Theory</h4>
                            </div>--%>
                            <div style="width:100%;">
                                               
                               <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>Intranet Basics</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton25" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw1">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                       This video covers the basics for the Intranet. From the home page, to site navigation, and HR page demonstration, and some niceties that come with the training video player.
                                       There is a little bit of 'chop' in this video, but not enough to make it hard to understand the basic concepts.

                                    </div>
                                </div>
                            </div>
                         </div>
                      </div>
 </div>

    <telerik:RadWindowManager ID="Singleton" VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        <Windows>

                <telerik:RadWindow ID="wndw1" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet Basics" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98773876?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
        </Windows>
    </telerik:RadWindowManager>

</asp:Content>

