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
                        <li><a href="#rivieraMaya" data-toggle="tab" data-parent="#accordion">Riviera Maya</a></li>
                        <%--<li><a href="#tulum" data-toggle="tab" data-parent="#accordion">Tulum</a></li>
                            <li><a href="#chichenItza" data-toggle="tab" data-parent="#accordion">Chichén Itza</a></li>--%>
                        <li><a href="#randoms" data-toggle="tab" data-parent="#accordion">Randoms</a></li>
                        <li><a href="#videos" data-toggle="tab" data-parent="#accordion">Videos</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="omaha">
                            <p>
                                Here are some pictures and videos from Omaha.</p>
                            <!--  Omaha Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoOmaha" runat="server" tabPhoto="Omaha/" />
                            </div>
                            <br />
                            <%--<p>I tell Colleen about the trip to Boston.</p>--%>
                        </div>
                        <div class="tab-pane" id="boston">
                            <p>
                                We have had a heck of a time in Boston. Here are some pictures!</p>
                            <!--  Boston Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoBoston" runat="server" tabPhoto="Boston/" />
                            </div>
                        </div>
                        <div class="tab-pane" id="proposal">
                            <p>
                                Would you like to see the proposal take place?</p>
                            <!--  Proposal Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoProposal" runat="server" tabPhoto="Proposal/" />
                            </div>
                            <br />
                            <%--<p>I tell Colleen that Boston isn't our final destination.</p>--%>
                        </div>
                        <div class="tab-pane" id="rivieraMaya">
                            <ul class="nav nav-tabs" id="dashboard_tabs">
                                <li><a href="#tulum" data-toggle="tab">Tulum</a></li>
                                <li><a href="#chichenItza" data-toggle="tab">Chichén Itza</a></li>
                                <li><a href="#hardRock" data-toggle="tab">Hard Rock Resort</a></li>
                            </ul>
                            
                    <div class="tab-content">
                        <div class="tab-pane" id="tulum">
                            <p>
                                Pictures from our time visiting the Mayan ruins of Tulum. We also got to swim in
                                the Caribbean Sea!</p>
                            <!--  Tulum Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoTulum" runat="server" tabPhoto="Tulum/" />
                            </div>
                        </div>
                        <div class="tab-pane" id="chichenItza">
                            <p>
                                Pictures from our visit one of the new 7 Wonders of the World, Chichén Itza.</p>
                            <!--  Chichén Itza Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoChichenItza" runat="server" tabPhoto="Chichén Itza/" />
                            </div>
                        </div>
                        <div class="tab-pane" id="hardRock">
                            <p>
                                Here are some pictures from our four star resort. I have to say this was an awesome
                                place to stay!</p>
                            <!--  Hard Rock Resort Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoHardRock" runat="server" tabPhoto="Hard Rock/" />
                            </div>
                        </div>
                        </div>

                        </div>
                        <div class="tab-pane" id="randoms">
                            <p>
                                Some random pictures from our trip! Airlines, other cities, etc...</p>
                            <!--  Randoms Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlPhotoRandoms" runat="server" tabPhoto="Randoms/" />
                            </div>
                        </div>
                        <div class="tab-pane" id="videos">
                            <p>
                                Here are the videos from my trip</p>
                            <!--  Vieos Control  -->
                            <div>
                                <uctrl:rptPhoto ID="uctrlVideos" runat="server" tabPhoto="Videos/" lYouTube="true" />
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
