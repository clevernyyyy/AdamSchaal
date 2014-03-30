<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Proposal_PicVideos.aspx.vb" Inherits="WebApplication1.Proposal_PicVideos" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <!-- Add fancyBox -->
    <link rel="stylesheet" href="/Styles/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
    <script type="text/javascript" src="/Scripts/jquery.fancybox.pack.js?v=2.1.5"></script>

    <!-- Optionally add helpers - button, thumbnail and/or media -->
    <link rel="stylesheet" href="/Styles/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
    <script type="text/javascript" src="/Scripts/jquery.fancybox-buttons.js?v=1.0.5"></script>
    <script type="text/javascript" src="/Scripts/jquery.fancybox-media.js?v=1.0.6"></script>

    <link rel="stylesheet" href="/Styles/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
    <script type="text/javascript" src="/Scripts/jquery.fancybox-thumbs.js?v=1.0.7"></script>

    <script type="text/javascript" src="/Scripts/Proposal.js?021714"></script>
    
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container">
        <div class="row row-offcanvas row-offcanvas-right">
            <div class="col-xs-12 col-sm-9">
                <div class="slideUp propContent" style="min-height:900px">
                    <h1 class="centered">Pictures and Videos</h1>
                        <hr />
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#omaha" data-toggle="tab" data-parent="#accordion">Omaha</a></li>
                            <li><a href="#boston" data-toggle="tab" data-parent="#accordion">Boston</a></li>
                            <li><a href="#proposal" data-toggle="tab" data-parent="#accordion">Proposal</a></li>
                            <li><a href="#riveriaMaya" data-toggle="tab" data-parent="#accordion">Riveria Maya</a></li>
                            <li><a href="#randoms" data-toggle="tab" data-parent="#accordion">Randoms</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="omaha">
                                <p>Here are some pictures and videos from Omaha.</p>
                                <hr />
                                
                                <!--  Insert Control Here  -->
                                
                                <div style="margin: auto; width: 740px;">
                                    <asp:Repeater ID="rptPictures" runat="server">
                                        <ItemTemplate>                                            
                                            <a id="link" runat="server" class="fancybox thumb" rel="gallery"><img  id="img" runat="server" alt="" /></a>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <div style="clear: left;"></div>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                </div>
                                <hr />

                                <br />
                                <p>I tell Colleen about the trip to Boston.</p>
                                <p>Test One</p>
                                <embed src="/img/Videos/IMG_2500.MOV"
                                Pluginspage="http://www.apple.com/quicktime/" width="320" height="250" 
                                CONTROLLER="true" LOOP="false" AUTOPLAY="false" name="Test_One"></embed>

                                <p>Test Two</p>
                                <embed src="/img/Videos/IMG_2501.MOV" 
                                Pluginspage="http://www.apple.com/quicktime/" width="320" height="250" 
                                CONTROLLER="true" LOOP="false" AUTOPLAY="false" name="Test_Two"></embed>

                                
                            </div>
                            <div class="tab-pane" id="boston">
                                <p>We have had a heck of a time in Boston.  Here are some pictures!</p>
                                <hr />
                                
                                <!--  Insert Control Here  -->

                            </div>
                            <div class="tab-pane" id="proposal">
                                <p>Would you like to see the proposal take place?</p>
                                
                                <!--  Insert Control Here  -->

                                <br />
                                <p>I tell Colleen that Boston isn't our final destination.</p>
                            </div>
                            <div class="tab-pane" id="riveriaMaya">
                                <p>Pictures from our time in Riveria Maya.</p>

                                <!--  Insert Control Here  -->

                            </div>
                            <div class="tab-pane" id="randoms">
                                <p>Some Random pictures from our trip!  Airlines, Other cities, etc...</p>
                                
                                <!--  Insert Control Here  -->

                            </div>
                        </div>

        
                </div>


            </div>
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="Div1" role="navigation">
                <div class="list-group">
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal.aspx" type="radio" class="list-group-item">Proposal</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Story.aspx" type="radio" class="list-group-item">Proposal Story</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_How.aspx" type="radio" class="list-group-item">How did I think of it?</a>
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Where.aspx" type="radio" class="list-group-item">Where did it happen?</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_WhereNow.aspx" type="radio" class="list-group-item">Where are we now?</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_PicVideos.aspx" type="radio" class="list-group-item active">Pictures and Video</a>
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Timeline.aspx" type="radio" class="list-group-item">Proposal Timeline</a>
                </div>
            </div>
        </div>
        <!--/row-->
    </div>
    <!--/.container-->
</asp:Content>