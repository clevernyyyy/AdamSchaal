<%@ Page Title="Timeline of Events" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Proposal_Timeline.aspx.vb" Inherits="WebApplication1.ProposalStory_Timeline" %>

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
                        Timeline of Events</h1>
                        <hr />
                        <h3>SubHeading</h3>
                        <p>Wording</p>

                </div>
            </div>
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="Div1" role="navigation">
                <div class="list-group">
                    <a href="/Forms/Wedding/Proposal/Proposal.aspx" type="radio" class="list-group-item">Proposal</a> 
                    <a href="/Forms/Wedding/Proposal/Proposal_Story.aspx" type="radio" class="list-group-item">Proposal Story</a> 
                    <a href="/Forms/Wedding/Proposal/Proposal_How.aspx" type="radio" class="list-group-item">How did I think of it?</a>
                    <a href="/Forms/Wedding/Proposal/Proposal_Where.aspx" type="radio" class="list-group-item">Where did it happen?</a> 
                    <a href="/Forms/Wedding/Proposal/Proposal_WhereNow.aspx" type="radio" class="list-group-item">Where are we now?</a> 
                    <a href="/Forms/Wedding/Proposal/Proposal_PicVideos.aspx" type="radio" class="list-group-item">Pictures and Video</a>
                    <a href="/Forms/Wedding/Proposal/Proposal_Timeline.aspx" type="radio" class="list-group-item active">Proposal Timeline</a>
                </div>
            </div>
        </div>
        <!--/row-->
    </div>
    <!--/.container-->
</asp:Content>