<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
    CodeBehind="Proposal_PicVideos.aspx.vb" Inherits="WebApplication1.Proposal_PicVideos" %>

<%@ Register Src="/Controls/ctrl_rptPhoto.ascx" TagPrefix="uctrl" TagName="rptPhoto" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <!-- Add fancyBox -->
    <link rel="stylesheet" href="/Styles/jquery.fancybox.css?v=2.1.5" type="text/css"
        media="screen" />
    <script type="text/javascript" src="/Scripts/jquery.fancybox.pack.js?v=2.1.5"></script>
    <!-- Optionally add helpers - button, thumbnail and/or media -->
    <link rel="stylesheet" href="/Styles/jquery.fancybox-buttons.css?v=1.0.5" type="text/css"
        media="screen" />
    <script type="text/javascript" src="/Scripts/jquery.fancybox-buttons.js?v=1.0.5"></script>
    <script type="text/javascript" src="/Scripts/jquery.fancybox-media.js?v=1.0.6"></script>
    <link rel="stylesheet" href="/Styles/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css"
        media="screen" />
    <script type="text/javascript" src="/Scripts/jquery.fancybox-thumbs.js?v=1.0.7"></script>
    <script type="text/javascript" src="/Scripts/Photos.js"></script>
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container">
        <div class="row row-offcanvas row-offcanvas-right">
            <div class="col-xs-12 col-sm-9">
                <div class="slideUp propContent" style="min-height: 900px">
                    <h1 class="centered">
                        Pictures and Videos</h1>
                    <hr />
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#omaha" data-toggle="tab" data-parent="#accordion">Omaha</a></li>
                        <li><a href="#boston" data-toggle="tab" data-parent="#accordion">Boston</a></li>
                        <li><a href="#proposal" data-toggle="tab" data-parent="#accordion">Proposal</a></li>
                        <li><a href="#mexico" data-toggle="tab" data-parent="#accordion">Mexico</a></li>
                        <li><a href="#randoms" data-toggle="tab" data-parent="#accordion">Randoms</a></li>
                        <li><a href="#videos" data-toggle="tab" data-parent="#accordion">Videos</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="omaha">
                            <p>
                                Here are some pictures and videos from Omaha.
                            </p>
                            <!--  Omaha Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoOmaha" runat="server" tabPhoto="Omaha/" />
                            </div>
                            <br />
                            <%--<p>I tell Colleen about the trip to Boston.</p>--%>
                        </div>
                        <div class="tab-pane" id="boston">
                            <ul class="nav nav-tabs" id="dashboard_tabs_boston">
                                <li><a href="#dayOne" data-toggle="tab">Day One</a></li>
                                <li><a href="#dayTwo" data-toggle="tab">Day Two</a></li>
                                <li><a href="#dayThree" data-toggle="tab">Day Three</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" id="dayOne">
                                    <p>
                                        Pictures from our first day in Boston. We were able to spend time with my sister
                                        Lauren and her boyfriend Demetri. We toured the Charles River, we went to Woody's
                                        Bar and Grill, and then to Fenway Park.
                                    </p>
                                    <!--  Day One Control  -->
                                    <div>
                                        <uctrl:rptPhoto ID="uctrlPhotoDayOne" runat="server" tabPhoto="Day_1/" />
                                    </div>
                                </div>
                                <div class="tab-pane" id="dayTwo">
                                    <p>
                                        We took a lot of pictures on our second day in Boston. We spent time with Nicole
                                        and her boyfriend John along part of the Freedom Trail. We went to the Quincy market
                                        where we shopped a little, saw the Cheers bar, and watched street performers. For
                                        lunch we ate at Dick's Last Resort, one of those restaurants where the waiters are
                                        rude to you. After lunch, we went to Boston's Frost bar where everything is made
                                        of ice: the walls, the glasses and the decorations. It was quite cool, literally!
                                        Next we took a duck tour of Boston. (Quack, quack) What a fun day!
                                    </p>
                                    <!--  Day Two Control  -->
                                    <div>
                                        <uctrl:rptPhoto ID="uctrlPhotoDayTwo" runat="server" tabPhoto="Day_2/" />
                                    </div>
                                </div>
                                <div class="tab-pane" id="dayThree">
                                    <p>
                                        I was quite sick on day three. Lauren took Colleen around the Freedom trail, they
                                        went to Cantina Italiano, then Mike's Pastry, and finally ended up in the Boston
                                        Commons where I met up with them. This is where I proposed. (See Proposal and Video
                                        tabs)
                                    </p>
                                    <!--  dayThree Control  -->
                                    <div>
                                        <uctrl:rptPhoto ID="uctrlPhotoDayThree" runat="server" tabPhoto="Day_3/" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="proposal">
                            <p>
                                I will never forget my proposal. I woke Colleen and I up at 5 AM because I was extremely
                                sick from food poisoning. "Oh no!" I thought. This was the day I had planned on
                                proposing in the morning! Instead, Colleen and Lauren had to take off on their own
                                while I recovered in the hotel. Eventually I met them at the chilly Boston Commons
                                where it turned out there was thousands of people on a hunger walk/run for Boston.
                                Colleen, Lauren and I went over to the Boston Public Gardens side to check out the
                                tulips and the man-made gardens. It was beautiful. I knew that even though nothing
                                seemed to go right, this was still the perfect place and time for me to propose
                                to my life-long love.
                            </p>
                            <!--  Proposal Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoProposal" runat="server" tabPhoto="Proposal/" />
                            </div>
                            <br />
                            <%--<p>I tell Colleen that Boston isn't our final destination.</p>--%>
                        </div>
                        <div class="tab-pane" id="mexico">
                            <ul class="nav nav-tabs" id="dashboard_tabs_mexico">
                                <li><a href="#rivieraMaya" data-toggle="tab">Riviera Maya</a></li>
                                <li><a href="#tulum" data-toggle="tab">Tulum</a></li>
                                <li><a href="#chichenItza" data-toggle="tab">Chichén Itza</a></li>
                                <li><a href="#hardRock" data-toggle="tab">Hard Rock Resort</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" id="rivieraMaya">
                                    <p>
                                        Pictures from our arrival and time in Riviera Maya
                                    </p>
                                    <!--  Riviera Maya Control  -->
                                    <div>
                                        <uctrl:rptPhoto ID="uctrlPhotoRivieraMaya" runat="server" tabPhoto="RivieraMaya/" />
                                    </div>
                                </div>
                                <div class="tab-pane" id="tulum">
                                    <p>
                                        Pictures from our time visiting the Mayan ruins of Tulum. We also got to swim in
                                        the Caribbean Sea!
                                    </p>
                                    <!--  Tulum Control  -->
                                    <div>
                                        <uctrl:rptPhoto ID="uctrlPhotoTulum" runat="server" tabPhoto="Tulum/" />
                                    </div>
                                </div>
                                <div class="tab-pane" id="chichenItza">
                                    <p>
                                        Pictures from our visit one of the new 7 Wonders of the World, Chichén Itza.</p>
                                    </p>
                                    <!--  Chichén Itza Control  -->
                                    <div>
                                        <uctrl:rptPhoto ID="uctrlPhotoChichenItza" runat="server" tabPhoto="Chichén Itza/" />
                                    </div>
                                </div>
                                <div class="tab-pane" id="hardRock">
                                    <p>
                                        Here are some pictures from our four star resort. I have to say this was an awesome
                                        place to stay!</p>
                                    </p>
                                    <!--  Hard Rock Resort Control  -->
                                    <div>
                                        <uctrl:rptPhoto ID="uctrlPhotoHardRock" runat="server" tabPhoto="Hard Rock/" />
                                    </div>
                                    <br />
                                    <p>
                                        Our resort wasn't only beautiful but also had excellent restaurants that we got
                                        to try every night!
                                    </p>
                                    <!--  Food Resort Control  -->
                                    <div>
                                        <uctrl:rptPhoto ID="uctrlPhotoResortFood" runat="server" tabPhoto="Resort Food/" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="randoms">
                            <p>
                                Some random pictures from our trip! Airlines, other cities, etc...
                            </p>
                            <!--  Randoms Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoRandoms" runat="server" tabPhoto="Randoms/" />
                            </div>
                        </div>
                        <div class="tab-pane" id="videos">
                            <p>
                                Here are the videos from my trip
                            </p>
                            <!--  Vieos Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlVideos" runat="server" tabPhoto="Videos/" lYouTube="true" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="Div1" role="navigation">
            <div class="list-group">
                <a href="/Forms/AdamAndColleen/Proposal/Proposal.aspx" type="radio" class="list-group-item">
                    Proposal</a> <a href="/Forms/AdamAndColleen/Proposal/Proposal_Story.aspx" type="radio"
                        class="list-group-item">Our Story</a> <a href="/Forms/AdamAndColleen/Proposal/Proposal_How.aspx"
                            type="radio" class="list-group-item">How did I think of it?</a> <a href="/Forms/AdamAndColleen/Proposal/Proposal_Where.aspx"
                                type="radio" class="list-group-item">Where did it happen?</a> <a href="/Forms/AdamAndColleen/Proposal/Proposal_WhereNow.aspx"
                                    type="radio" class="list-group-item">Where are we now?</a> <a href="/Forms/AdamAndColleen/Proposal/Proposal_PicVideos.aspx"
                                        type="radio" class="list-group-item active">Pictures and Video</a>
                <a href="/Forms/AdamAndColleen/Proposal/Proposal_Timeline.aspx" type="radio" class="list-group-item">
                    Planning Timeline</a>
            </div>
        </div>
    </div>
    <!--/row-->
    </div>
    <!--/.container-->
</asp:Content>
