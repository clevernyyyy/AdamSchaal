<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Proposal.aspx.vb"
    Inherits="WebApplication1.Proposal" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Adam Schaal Bootstrapped">
    <meta name="author" content="Adam Schaal">
    <link rel="shortcut icon" href="">
    <title>AdamSchaal.com</title>
    <link type="text/css" rel="stylesheet" href="/Styles/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <link type="text/css" rel="stylesheet" href="https://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
    <!-- Custom styles for this template -->
    <link href="/Styles/main.css" rel="stylesheet" />
    <link href="/Styles/icomoon.css" rel="stylesheet" />
    <link href="/Styles/animate-custom.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic'
        rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet'
        type='text/css' />
    <link rel="shortcut icon" href="/favicon (2).ico" type="image/x-icon">
    <link rel="icon" href="/favicon (2).ico" type="image/x-icon">
    <script type="text/javascript" src="/Scripts/jquery.min.js"></script>
    <script type="text/javascript" src="/Scripts/modernizr.custom.js"></script>
    <script type="text/javascript" src="/Scripts/Proposal.js?021714"></script>
    <br />
<br />
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <br />
    <div class="container">
        <div class="row row-offcanvas row-offcanvas-right">
            <div class="col-xs-12 col-sm-9">
                <p class="pull-right visible-xs">
                    <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">
                        Toggle nav</button>
                </p>
                <div  id="jumbotron"  class="jumbotron">
                    <h1>
                        Proposal</h1>
                    <p style="display:inline-block">
                        In this page you will learn everything you could possibly want to know about my
                        proposal to the most wonderful girl in the world, Colleen Morrissey.
                    </p>
                    
            
                    <img class="img img-circle" style="float:right;" src="/Photos/Col_Adam/Face.jpg" height="60px" width="60px" alt="">
                    <span class="/Styles/icon icon-plus" style="float:right; margin-top:20px; margin-left:10px; margin-right:10px;"></span>
                    <img class="img img-circle" style="float:right" src="/Photos/Col_Adam/CollFace2.jpg" height="60px" width="60px" alt="">
                   </div>
                
            </div>
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="Div1" role="navigation">
                <div class="list-group">
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal.aspx" type="radio" class="list-group-item active">Proposal</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Story.aspx" type="radio" class="list-group-item">Our Story</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_How.aspx" type="radio" class="list-group-item">How did I think of it?</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Where.aspx" type="radio" class="list-group-item">Where did it happen?</a>
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_WhereNow.aspx" type="radio" class="list-group-item">Where are we now?</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_PicVideos.aspx" type="radio" class="list-group-item">Pictures and Video</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Timeline.aspx" type="radio" class="list-group-item">Planning Timeline</a>
                </div>
            </div>
            <!--/span-->

            <!--/span-->
            <div class="col-xs-12 col-sm-12">
                <div id="gridDetails" class="row">
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            Our Story</h2>
                        <p>
                            Hear the story from the beginning.
                        </p>
                        <p>
                            <a class="btn btn-default" href="/Forms/AdamAndColleen/Proposal/Proposal_Story.aspx" role="button">View details &raquo;</a></p>
                    </div>
                    <!--/span-->
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            How did it happen?</h2>
                        <p>
                            Learn all the goofy, fun details.
                        </p>
                        <p>
                            <a class="btn btn-default" href="/Forms/AdamAndColleen/Proposal/Proposal_How.aspx" role="button">View details &raquo;</a></p>
                    </div>
                    <!--/span-->
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            Where did it happen?</h2>
                        <p>
                            Learn all the aspects of our trip!
                        </p>
                        <p>
                            <a class="btn btn-default" href="/Forms/AdamAndColleen/Proposal/Proposal_Where.aspx" role="button">View details &raquo;</a></p>
                    </div>
                    <!--/span-->
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            Where are we now?</h2>
                        <p>
                            Find real time updates where we are.
                        </p>
                        <p>
                            <a class="btn btn-default" href="/Forms/AdamAndColleen/Proposal/Proposal_WhereNow.aspx" role="button">View details &raquo;</a></p>
                    </div>
                    <!--/span-->
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            Pictures and Video</h2>
                        <p>
                            Want to see it go down?
                        </p>
                        <p>
                            <a class="btn btn-default" href="/Forms/AdamAndColleen/Proposal/Proposal_PicVideos.aspx" role="button">View details &raquo;</a></p>
                    </div>
                    <!--/span-->
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            Planning Timeline</h2>
                        <p>
                            Secretly my favorite part of the site.
                        </p>
                        <p>
                            <a class="btn btn-default" href="/Forms/AdamAndColleen/Proposal/Proposal_Timeline.aspx" role="button">View details &raquo;</a></p>
                    </div>
                    <!--/span-->
                </div>
                <!--/row-->
            </div>
            <!--/span-->
        </div>
        <!--/row-->
    </div>
    <!--/.container-->
</asp:Content>
