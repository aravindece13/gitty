<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Training.master" AutoEventWireup="false" CodeFile="BidTool.aspx.vb" Inherits="Training_BidTool" %>

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
          function openWndw2(sender, args) {
              var oWnd1 = radopen(null, "wndw2");
              //              
              oWnd1.center();
          }
          function openWndw3(sender, args) {
              var oWnd1 = radopen(null, "wndw3");
              //              
              oWnd1.center();
          }
          function openWndw4(sender, args) {
              var oWnd1 = radopen(null, "wndw4");
              //              
              oWnd1.center();
          }
          function openWndw5(sender, args) {
              var oWnd1 = radopen(null, "wndw5");
              //              
              oWnd1.center();
          }
          function openWndw6(sender, args) {
              var oWnd1 = radopen(null, "wndw6");
              //              
              oWnd1.center();
          }
          function openWndw7(sender, args) {
              var oWnd1 = radopen(null, "wndw7");
              //              
              oWnd1.center();
          }
          function openWndw8(sender, args) {
              var oWnd1 = radopen(null, "wndw8");
              //              
              oWnd1.center();
          }
          function openWndw9(sender, args) {
              var oWnd1 = radopen(null, "wndw9");
              //              
              oWnd1.center();
          }
          function openWndw10(sender, args) {
              var oWnd1 = radopen(null, "wndw10");
              //              
              oWnd1.center();
          }
          function openWndw11(sender, args) {
              var oWnd1 = radopen(null, "wndw11");
              //              
              oWnd1.center();
          }
          function openWndw12(sender, args) {
              var oWnd1 = radopen(null, "wndw12");
              //              
              oWnd1.center();
          }
          function openWndw13(sender, args) {
              var oWnd1 = radopen(null, "wndw13");
              //              
              oWnd1.center();
          }
          function openWndw14(sender, args) {
              var oWnd1 = radopen(null, "wndw14");
              //              
              oWnd1.center();
          }
          function openWndw15(sender, args) {
              var oWnd1 = radopen(null, "wndw15");
              //              
              oWnd1.center();
          }
          function openWndw16(sender, args) {
              var oWnd1 = radopen(null, "wndw16");
              //              
              oWnd1.center();
          }
          function openWndw17(sender, args) {
              var oWnd1 = radopen(null, "wndw17");
              //              
              oWnd1.center();
          }
          function openWndw18(sender, args) {
              var oWnd1 = radopen(null, "wndw18");
              //              
              oWnd1.center();
          }
          function openWndw19(sender, args) {
              var oWnd1 = radopen(null, "wndw19");
              //              
              oWnd1.center();
          }

          function openWndw20(sender, args) {
              var oWnd1 = radopen(null, "wndw20");
              //              
              oWnd1.center();
          }

          function openWndw21(sender, args) {
              var oWnd1 = radopen(null, "wndw21");
              //              
              oWnd1.center();
          }

          function openWndw22(sender, args) {
              var oWnd1 = radopen(null, "wndw22");
              //              
              oWnd1.center();
          }
          function openWndw23(sender, args) {
              var oWnd1 = radopen(null, "wndw23");
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
        <h2 style="width:500px;">BidTool Training</h2> 
    </div>

    <div style="width:100%;margin:10px;">
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Skin="MetroTouch" MultiPageID="RadMultiPage1" Width="900px">
            <Tabs>
                <telerik:RadTab runat="server" Text="High Level" PageViewID="">
                </telerik:RadTab>
                <telerik:RadTab runat="server" Text="Basic Training" PageViewID="" Selected="true">
                </telerik:RadTab>
            </Tabs>
        </telerik:RadTabStrip>


        <telerik:RadMultiPage ID="RadMultiPage1" runat="server">
            
            <telerik:RadPageView ID="HighLevel" runat="server">
                 <div style="width:100%;margin:10px;">
                    <div style="width:100%; ">
                        <div style="font-size:medium;width:900px; margin: 0px 0px 20px 10px;">
                            The following videos provide some background on why the Intranet BidTool was built the way it was, as well as some discussion of the new Project concept.  These videos were produced a few months before
                            the launch of the first version of Intranet BidTool, so some functionality and graphics may not be representative of the current version. 
                            
                            Click on the 'View' button to launch the video.  Be sure to use the expand button at the bottom right
                            corner of the video viewer to exand the video to fill your screen.
                        </div>   
                    </div>
                    <div style="width:100%;height:650px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">High Level &amp; Theory</h4>
                            </div>
                            <div style="width:100%;">
                                               
                               <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>Intro:  Business And Technical Objectives</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton25" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw22">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                       This is the first video in a series covering the first BidTool developed for the company Intranet using a database back-end. The content of the video is a PowerPoint 
                                       that covers the business and technical objectives in creating this entirely new BidTool.
                                    </div>
                                </div>
                    
     
                                <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>High Level Intro - Application Structure &amp; Navigation</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton24" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw21">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                       This introductory video goes over a lot of information quickly, and was produced with the intent to give a fast overview of basic concepts and how the BidTool application is laid out. 
                                       Other videos have/will be produced to educate on how to do different tasks within the application. Please use those videos to answer 'how-to' types of questions.
                                    </div>
                                </div>
                                
                                <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>Output - The End Goal</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton26" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw23">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                       Features and highlights of the base PDF and Excel outputs for BidTool.
                                    </div>
                                </div>

                            </div>
                        </div>
        
                    </div>
                </div>
                <div>
                   <%-- <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Width="770px" Height="480px" Source="~/Training/BidTool_2015_Intro.mp4"
                        HDSource="~/Training/BidTool_2015_Intro.mp4" ResolvedRenderMode="Classic"
                        Skin="MetroTouch">
                    </telerik:RadMediaPlayer>--%>
                </div>
            
            </telerik:RadPageView>
            <telerik:RadPageView ID="Basic" runat="server" Selected="true">
                 <div style="width:100%;margin:10px;">
                    <div style="width:100%; ">
                        <div style="font-size:medium;width:900px; margin: 0px 0px 20px 10px;">
                            The following videos will walk you through BidTool workflow and functionality.  Click on the 'View' button to launch the video.  Be sure to use the expand button at the bottom right
                            corner of the video viewer to exand the video to fill your screen.
                        </div>   
                    </div>
                    <div style="width:100%; height:130px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">0. 'Start' Page | Search &amp; Management of Projects &amp; Quotes</h4>
                            </div>
                            <div>
                            <%--<div style="width:100%;">
                                <h6>Starting a quote without first creating a project</h6>
                            </div>--%>    
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton19" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw20">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    While it doesn't have an official name, 'Start' is the page used to manage your Projects and Quotes. In this video we go over the different ways to search for 
                                    projects or quotes, and how to enter a new Project or Quote.
                                </div>
                            </div>
                        </div>
        
                    </div>
        
        
                    <div style="width:100%; height:100px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">01. Starting a Quote</h4>
                            </div>
                            <div>
                            <%--<div style="width:100%;">
                                <h6>Starting a quote without first creating a project</h6>
                            </div>--%>    
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="btnVid1" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw1">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    This video demonstrates starting a quote without first creating a Project, which is created in the background.
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:100px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">02. Header</h4>
                            </div>
                            <div style="width:100%; vertical-align:top;">
              <%--              <div style="width:100%;">
                                <h6>Header - Customer and quote comments</h6>
                            </div> --%>   
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton1" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw2">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    In this video, we cover changing customer assignments, modifying customer names, and adding customer facing and internal quote comments. 
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:100px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">03. Project </h4>
                            </div>
                            <div style="width:100%; vertical-align:top;">
            <%--                <div style="width:100%;">
                                <h6>Project</h6>
                            </div>  --%>  
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton2" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw3">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    This video covers the purpose of the Projects tab, as well as how to edit a Project.
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:100px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">04. Terms &amp; Conditions </h4>
                            </div>
                            <div style="width:100%; vertical-align:top;">
                           <%-- <div style="width:100%;">
                                <h6></h6>
                            </div>  --%>  
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton3" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw4">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    Learn how to add terms for ductile, PVC, and HDPE pipe, and how to modify the terms when appropriate.
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:650px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">05. TakeOff</h4>
                            </div>
                            <div style="width:100%;">
                                <div style="margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>TakeOff Navigation</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton4" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw5">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                        High level tour of the pages within the TakeOff section.
                                    </div>
                                </div>
                    
                                <div style="width:100%; margin-bottom:10px; float:left;">    
                                    <div style="width:100%;">
                                        <h6>Define Sections</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton12" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw6">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                        Learn how to add, modify, reorder, and delete Sections and Subsections, the structure of the takeoff.
                                    </div>
                                </div>
                    
                                <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>Stock Product Grab List</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton13" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw7">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                        Learn how to quickly assemble a list of products to use in the takeoff. While an entirely elective step, this functionality can save you a lot of time when it comes time to build your takeoff.
                                    </div>
                                </div>

                                <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>NonStocks</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton14" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw8">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                        How to enter and edit your NonStock products.
                                    </div>
                                </div>
     
                                <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>NonStocks - Update #1 June 2014</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton15" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw9">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                        A quick clip to demonstrate how Nonstocks are represented on PDF outputs.
                                    </div>
                                </div>
                                <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>Line Items</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton5" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw10">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                        How to add line items (via a grab list, product search, assemblies, and related items), move items, add Section and Subsection comments, 
                                        and apply an average calculation for the customer output..
                                    </div>
                                </div>
                                <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>TakeOff Assignments</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton18" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw11">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                        Learn how to create a second takeoff for a project, change takeoff names, and the takeoff assignment for the quote.
                                    </div>
                                </div>

                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:200px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">06. Costs</h4>
                            </div>
                            <div>
                                 <div style="width:100%;margin-bottom:10px;float:left;">    
                                   <%-- <div style="width:100%;">
                                        <h6></h6>
                                    </div>  --%>  
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton16" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw12">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                        Learn how to review and update costs, product comments, general comments, and apply block pricing.
                                    </div>
                                </div>
     
                                <div style="width:100%;margin-bottom:10px;float:left;">    
                                    <div style="width:100%;">
                                        <h6>Purchasing View</h6>
                                    </div>    
                                    <div style="width:100px; vertical-align:middle; float:left;">
                                        <telerik:RadButton ID="RadButton17" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw13">
                                        </telerik:RadButton>
                
                                    </div>
                                    <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                       A demonstration of how notes and comments are used by Purchasing to order the right material for the correct cost.
                                    </div>
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:130px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">07. Pricing</h4>
                            </div>
                            <div style="width:100%; vertical-align:top;">
                            <%--<div style="width:100%;">
                                <h6></h6>
                            </div>  --%>  
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton6" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw14">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    In this video, we cover the Pricing page layout, how to 'float' a quote, re-price using a net price, margin %, or a cut off of the extended price. We also look at how to use the grid sorting to quickly identify which products you want to spend your time on.
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:100px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">08. Taxes</h4>
                            </div>
                            <div style="width:100%; vertical-align:top;">
                            <%--<div style="width:100%;">
                                <h6></h6>
                            </div> --%>   
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton7" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw15">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    Learn how to apply a tax rate and change the tax status of specific products.
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:100px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">09. Municipal Specs</h4>
                            </div>
                            <div style="width:100%; vertical-align:top;">
                           <%-- <div style="width:100%;">
                                <h6></h6>
                            </div> --%>   
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton8" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw16">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    The Muni Spec page ties into the Dana Kepner municipal specification database. The user has quick access to contact information, 
                                    specification notes, and links to important web resources for the municipality.
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:100px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">10. Output</h4>
                            </div>
                            <div style="width:100%; vertical-align:top;">
                           <%-- <div style="width:100%;">
                                <h6></h6>
                            </div>   --%> 
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton9" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw17">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    A look at the Output page, the output options and a look at the Formal pdf output that incorporates almost all data formats available in other quote outputs.
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:100px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">11. Utilities</h4>
                            </div>
                            <div style="width:100%; vertical-align:top;">
                           <%-- <div style="width:100%;">
                                <h6></h6>
                            </div>--%>    
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton10" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw18">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    Perform various maintenance tasks using utility buttons on this page.
                                </div>
                            </div>
                        </div>
        
                    </div>
                    <div style="width:100%;height:100px;">
                        <div style="width:100%; margin-bottom:20px;">
                            <div style="width:100%; margin-bottom:10px;">
                                <h4 style="width:900px;">12.  SXe Services &amp; Orders</h4>
                            </div>
                            <div style="width:100%; vertical-align:top;">
                            <%--<div style="width:100%;">
                                <h6></h6>
                            </div>  --%>  
                                <div style="width:100px; vertical-align:middle; float:left;">
                                    <telerik:RadButton ID="RadButton11" runat="server"  Text="View" Width="80px" Skin="MetroTouch" ButtonType="StandardButton" AutoPostBack="false" OnClientClicking="openWndw19">
                                    </telerik:RadButton>
                
                                </div>
                                <div style="width:800px; text-align:left; font-size:medium; vertical-align:top; float:left;">
                                    Learn how to associate a quote to a job, request contract pricing and quote order imports, and view orders associated with the job.
                                </div>
                            </div>
                        </div>
        
                    </div>
        

    
    
                </div>
            
            </telerik:RadPageView>
        </telerik:RadMultiPage>


    </div>

    



    <telerik:RadWindowManager ID="Singleton" VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        <Windows>
               
                <telerik:RadWindow ID="wndw1" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 01. Starting a Quote" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/97869667?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933&amp;autoplay=1" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                
                <telerik:RadWindow ID="wndw2" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 02. Header Tab" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/97931099?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw3" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 03. Project" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/97969540?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw4" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 04. Terms &amp; Conditions" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/97976423?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw5" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 05a. TakeOff - Navigation" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/97978826?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw6" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 05b. TakeOff - DefineSections" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98046301?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw7" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 05c. TakeOff - Stock Product Grablist" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98051664?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw8" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 05d. TakeOff - NonStocks" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98054435?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw9" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 05d. TakeOff - NonStocks Update 1" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98460856?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw10" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 05e. TakeOff - Line Items" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98060337?byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw11" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 05f. TakeOff - TakeOff Assignment" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98074447?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw12" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 06. Costs" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98141731?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw13" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | Purchasing View" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98461490?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw14" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 07. Pricing" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98152432?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw15" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 08. Taxes" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98177374?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw16" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 09. Municipal Specs" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98348938?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw17" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 10. Output" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98376745?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw18" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 11. Utilities" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98381059?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw19" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 12. SXe Services And Orders" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98382778?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw20" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Intranet BidTool | 0. 'Start' Page" >
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/98738676?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw21" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="High Level Intro: App Structure & Navigation">
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/81145733?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw22" runat="server" Height="720px" Width="1280px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" 
                        Title="BidTool Introduction: Business And Technical Objectives">
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                             <telerik:RadMediaPlayer ID="RadMediaPlayer1" runat="server" Width="1280px" Height="720px" 
                                    Source="~/Training/BidTool_2015_Intro.mp4" HDActive="true"
                                    HDSource="~/Training/BidTool_2015_Intro.mp4" ResolvedRenderMode="Classic"
                                    Skin="MetroTouch">
                             </telerik:RadMediaPlayer>

                            <%--<iframe src="//player.vimeo.com/video/78952155?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>--%>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>
                <telerik:RadWindow ID="wndw23" runat="server" Height="620px" Width="940px" Left="50px" 
                    ReloadOnShow="true" ShowContentDuringLoad="false" Modal="true" OnClientClose="clientClose" Title="Output - The End Goal">
                    <ContentTemplate>                    
                         <div style="margin:5px;">
                            <iframe src="//player.vimeo.com/video/79901629?title=0&amp;byline=0&amp;portrait=0&amp;color=ff9933" width="900" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                         </div>      
                    </ContentTemplate> 
                </telerik:RadWindow>

        </Windows> 

    </telerik:RadWindowManager>


</asp:Content>

