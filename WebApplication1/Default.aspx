<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>


<%--<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">--%>
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
    <script type="text/javascript" src="/Scripts/jquery.min.js"></script>
    <script type="text/javascript" src="/Scripts/modernizr.custom.js"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <body data-spy="scroll" data-offset="0" data-target="#navbar-main">
        <!-- ==== HEADERWRAP ==== -->
        <div id="headerwrap" id="home" name="home">
            <header class="clearfix">
	  		 		<h1><span class="/Styles/icon icon-pyramid"></span></h1>
	  		 		<p>Welcome to AdamSchaal.com</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
	  		 		<h3 style="color:White">This site is dedicated to my Girlfriend.</h3>
	  		</header>
        </div>
        <!-- ==== GREYWRAP ==== -->

        <div id="greywrap">
            <div class="row">
                <div class="col-lg-4 callout">
                    <span class="icon icon-heart"></span>
                    <h2>
                        Proposal</h2>
                    <p>
                        Click here to see more about my proposal.
                    </p>
                </div>
                <!-- col-lg-4 -->
                <div class="col-lg-4 callout">
                    <span class="icon icon-people"></span>
                    <h2>
                        Wedding</h2>
                    <p>
                        Click here to learn more about our wedding.
                    </p>
                </div>
                <!-- col-lg-4 -->
                <div class="col-lg-4 callout">
                    <span class="icon icon-bed"></span>
                    <h2>
                        Honeymoon</h2>
                    <p>
                        Click here to check out details about our awesome honeymoon.
                    </p>
                </div>
                <!-- col-lg-4 -->
            </div>
            <!-- row -->
        </div>


        <!-- ==== ABOUT ==== -->
    <div class="container" id="about" name="about">
        <div class="row white">
            <br>
            <h1 class="centered">
                A LITTLE ABOUT ME</h1>
            <hr>
            <div class="col-lg-5">
                <h4 class="centered">Personal Information</h4>
                <hr />
                Hi.  My name is Adam T Schaal.  I am a 28 year old living in Omaha, NE.  I currently work as a Software 
                Developer II with a Berkshire Hathaway insurance company.  I have worked as a Structural Engineer, as a 
                Construction Superintendent, and now a Developer.  I think that development is where I needed to end up.  
                <br />
                <br />
                I enjoy computers, working with them, building them, hacking them.  I'm currently a part-time graduate 
                student in Information Assurance working towards my Master's Degree.  I really enjoy school and the groups 
                I am a part of.  I participate in a computer security organization called NULLify - we engage in Capture 
                the Flag events, Cyber Security Competitions, and other Hack-based events.
       
            </div>
            <!-- col-lg-2 -->
            <div class="col-lg-2 centered">
                <img class="img img-circle" src="/img/Col_Adam/Face.jpg" height="130px" width="120px"
                    alt="">
                <br>
                <h4>
                    <b>Me</b></h4>
                <a href="#" class="icon icon-twitter"></a>
                <a href="#" class="icon icon-facebook"></a>
                <br />
                <br />
                
                <%--<img class="img img-circle" src="/img/Col_Adam/CollFace.png" height="112px" width="115px"
                    alt="">
                <br>
                <h4>
                    <b>Colleen</b></h4>
                <a href="#" class="icon icon-twitter"></a>
                <a href="#" class="icon icon-facebook"></a>--%>
            </div>
            <!-- col-lg-5 -->
            <div class="col-lg-5">
                <h4 class="centered">
                    Educational Information</h4>
                    <hr />
               <ul type="square" id="educationBullets1">
                    <li>University of Nebraska at Omaha (2004-2008)
                        <ul type="circle" id="UNO_1">
                            <li>Achieved Bachelor's Degree in Architectural Engineering with a Structural Engineering emphasis</li>
                        </ul></li>
                    <li>Achieved EIT Certification</li>
                    <li>University of Nebraska at Omaha (2008-2009)
                        <ul type="circle" id="UNO_2">
                            <li>Achieved Master's Degree in Structural Engineering</li>
                        </ul>
                        </li>
                    <li>University of Nebraska at Omaha (2012-today)
                        <ul type="circle" id="UNO_3">
                            <li>Working towards Master's Degree in Information Assurance and Cyber Security</li>
                        </ul></li>
               </ul>
               
                    
             
            </div>
            <!-- col-lg-5 -->
        </div>
        <!-- row -->
    </div>
    
            <br>
            <br>
        <div class="container" id="contact" name="contact">
        <div class="row">
            <br>
            <h1 class="centered">
                THANKS FOR VISITING US</h1>
            <hr>
            <br>
            <br>
            <div class="col-lg-4">
                <h3>
                    Contact Information</h3>
                <p>
                    <span class="icon icon-home"></span>   Some Address, Omaha, NE
                    <br />
                    <%--                    <span class="icon icon-phone"></span>
                    <br />--%>
                    <span class="icon icon-phone"></span>   402.630.4979
                    <br />
                    <span class="icon icon-envelop"></span><a href="#">   adamschaal1263@gmail.com</a>
                    <br />
                    <span class="icon icon-twitter"></span><a href="#">   @whatsTwitter? </a>
                    <br />
                    <span class="icon icon-facebook"></span><a href="#">   Adam Schaal</a>
                    <br />
                </p>
            </div>
            <!-- col -->
            <div class="col-lg-4">
                <h3>
                    Newsletter</h3>
                <p>
                    Register to my newsletter and be updated with the latests information regarding
                    my services, offers and much more. AKA I'll send pure spam to you.  My updates can include, 
                    but aren't limited to updates on my coolness factor, what I'm doing at this exact instant, 
                    what kind of bathroom floors I see, etc.</p>
                <p>
                    <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="inputEmail1" class="col-lg-4 control-label">
                        </label>
                        <div class="col-lg-10">
                            <input type="email" class="form-control" id="inputEmail1" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="col-lg-4 control-label">
                        </label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="text1" placeholder="Your Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-10">
                            <button type="submit" class="btn btn-success">
                                Sign in</button>
                        </div>
                    </div>
                    </form>
                    <!-- form -->
                </p>
            </div>
            <!-- col -->
            <div class="col-lg-4">
                <h3>
                    Support Me</h3>
                <p>
                    Clearly I need support.  Here are some ways you can do it:  
                    Cheer me on, send me money, root for my causes, but most of all enjoy life.</p>
                    <p>Also feel free to sign up for my newsletter.  Just kidding, I seriously don't have a newsletter.</p>
            </div>
            <!-- col -->
        </div>
        <!-- row -->
    </div>

        <div id="footerwrap">
        <div class="container">
            <h4>
                Created by <a href="#about">Adam T Schaal</a></h4>
        </div>
    </div>
    </body>
</asp:Content>
