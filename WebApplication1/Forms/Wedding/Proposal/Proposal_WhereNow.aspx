<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" 
CodeBehind="Proposal_WhereNow.aspx.vb" Inherits="WebApplication1.Proposal_WhereNow" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <br />
<br />
<br />
    <script type="text/javascript" src="/Scripts/Proposal.js?021714"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container">
        <div class="row row-offcanvas row-offcanvas-right">
            <div class="col-xs-12 col-sm-9">
                <p class="pull-right visible-xs">
                    <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">
                        Toggle nav</button>
                </p>
                <div class="slideUp propContent" style="min-height:900px">
                    <h1 class="centered">
                        Where are we now?</h1>
                        <hr />
                        <h3>
                            <!-- Button -->
                            <a id="btnGetNow" runat="server" href= "" class="btn btn-primary" data-text-loading="Loading..."
                                style="width:140px; margin-right:20px;" data-reset-text="Try that again">
                                What's Going On?
                            </a>
                            <!-- Heading -->
                            Find out what we're doing at this very instant!
                        </h3>

                        <asp:Label ID="lblNow" runat="server" style="font-size:larger"></asp:Label>
                        <%--<p>Where the result will go.</p>--%>

                        <br />
                        <br />
                        <br />

                        <h3>
                            <!-- Cheat Button -->
                            <a id="btnGetAll" href= "" runat="server" class="btn btn-danger" data-text-loading="Loading..." 
                                style="width:140px; margin-right:20px;" data-reset-text="Try that again">
                                Cheat Code
                            </a>
                            <!-- Heading -->
                            Wanna see the whole itinerary?
                        </h3>
                        <p>Where the result will go.</p>

                </div>
            </div>
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="Div1" role="navigation">
                <div class="list-group">
                    <a href="/Forms/Wedding/Proposal/Proposal.aspx" type="radio" class="list-group-item">Proposal</a> 
                    <a href="/Forms/Wedding/Proposal/Proposal_Story.aspx" type="radio" class="list-group-item">Proposal Story</a> 
                    <a href="/Forms/Wedding/Proposal/Proposal_How.aspx" type="radio" class="list-group-item">How did I think of it?</a>
                    <a href="/Forms/Wedding/Proposal/Proposal_Where.aspx" type="radio" class="list-group-item">Where did it happen?</a> 
                    <a href="/Forms/Wedding/Proposal/Proposal_WhereNow.aspx" type="radio" class="list-group-item active">Where are we now?</a> 
                    <a href="/Forms/Wedding/Proposal/Proposal_PicVideos.aspx" type="radio" class="list-group-item">Pictures and Video</a>
                    <a href="/Forms/Wedding/Proposal/Proposal_Timeline.aspx" type="radio" class="list-group-item">Proposal Timeline</a>
                </div>
                <br />
                <img class="img img-rounded" src="/img/HDpix/red angels.jpg" height="180px" width="260px" alt="">
                <p>  Probably flying in style.</p>
            </div>
        </div>
        <!--/row-->
    </div>
    <!--/.container-->
</asp:Content>