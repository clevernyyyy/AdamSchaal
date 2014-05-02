<%@ Page Title="How Did I Think Of It?" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Proposal_How.aspx.vb" Inherits="WebApplication1.ProposalStory_How" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <br />
    <br />
    <br />
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
                        How did I think of it?</h1>
                        <hr />
                        <h3>The Plan</h3>
                        <p>For the last ten years, Colleen has stood by me through thick and thin.  Even when I didn't have 
                        the money to take her everywhere I wanted to in the world she was okay with the smaller trips that I could 
                        afford.  I've never felt like I've fully deserved her, but I've always known she's the one.  I long dreamed 
                        of the perfect proposal, one that would both sweep her off her feet and demonstrate the depth of my love to 
                        her.</p>
                        <p>My initial plan was a goofy one.  I had planned to rent out a movie theatre and play a movie with me singing
                        a proposal (or more likely lip-syncing).  I never really made that happen though.  Next I wrote some of your 
                        favorite celebrities to try to get together a celebrity video to help me propose.  That also didn't pan out.
                        </p>
                        <p>Finally I decided that I was far more likely to do it on a trip.  Next was planning the trip.  I found a 
                        good deal for the Hard Rock Hotel in Riviera Maya, however it only flew out of big airports.  Dallas?  Nah.  
                        Florida?  Won't work.  Boston?  Hmmm that seems interesting.  I would like to see Lauren and I know that you 
                        would like to see Nicole.  Let's book it I thought.  It was later that I learned that I could have flown directly 
                        from Omaha if I wanted to, but at an extra fee.  But I was already happy with the Boston plans.  So in late 
                        January/early February I set my plans into motion.                             
                        </p>
                </div>
            </div>
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="Div1" role="navigation">
                <div class="list-group">
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal.aspx" type="radio" class="list-group-item">Proposal</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Story.aspx" type="radio" class="list-group-item">Our Story</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_How.aspx" type="radio" class="list-group-item active">How did I think of it?</a>
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Where.aspx" type="radio" class="list-group-item">Where did it happen?</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_WhereNow.aspx" type="radio" class="list-group-item">Where are we now?</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_PicVideos.aspx" type="radio" class="list-group-item">Pictures and Video</a>
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Timeline.aspx" type="radio" class="list-group-item">Planning Timeline</a>
                </div>
            </div>
        </div>
        <!--/row-->
    </div>
    <!--/.container-->
</asp:Content>