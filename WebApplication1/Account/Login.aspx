<%@ Page Title="Log In" Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb"
    Inherits="WebApplication1.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Adam Schaal Bootstrapped">
    <meta name="author" content="Adam Schaal">
    <link rel="shortcut icon" href="">
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>AdamSchaal.com - Admin Login</title>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <!-- StyleSheet -->
    <link rel="stylesheet" href="/Styles/bootstrap.css" />
    <link rel="stylesheet" href="/Styles/custom.css" />
</head>
<body>
    <!-- Navigation Bar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-pyramid" style="font-size: 30px; color: #3498db;"></span>
                </button>
                <a class="navbar-brand hidden-xs hidden-sm" href="/Default.aspx">
                    <span class="icon icon-pyramid" style="font-size: 18px; color: #3498db;"></span>
                </a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/Default.aspx" class="smoothScroll">AdamSchaal.com</a></li>
                    <li><a href="#forgot" data-toggle="modal"><i class="icon-user icon-white"></i> Forgot
                        Password</a></li>
                    <li class="divider-vertical"></li>
                    <li><a href="#contact" data-toggle="modal"><i class="icon-envelop icon-white"></i> Contact
                        Us</a></li>
                    <li class="divider-vertical"></li>
            </div>
        </div>
    </div>

    <!-- Navigation Ends -->
    <!-- Main Container -->
    <section>
<div class="container login">
    <div class="row ">
        <div class="center col-xs-6 col-sm-4 well">
            <legend><h1>Please Sign In</h1></legend>
            <div id="lblIncorrect" class="alert alert-error hidden">
                <a class="close" data-dismiss="alert" href="#">×</a>Incorrect Username or Password!
            </div>
            <form method="POST" action="" accept-charset="UTF-8">
            
            <input type="text" id="username" class="center col-sm-12 well-sm" name="username" placeholder="Username" />
            <br />
            <br />
            <input type="password" id="password" class="center col-sm-12 well-sm" name="password" placeholder="Password" />
            
            <label class="checkbox">
                <input type="checkbox" name="remember" value="1" /> Remember Me
            </label>
            <button id="btnLogin" runat="server" type="submit" name="submit" class="btn btn-primary btn-block">Sign in</button>
            </form>
        </div>
    </div>
</div>
<p class="text-center muted ">&copy; Copyright 2014 AdamSchaal.com</p>
</section>
    <!-- Main Container Ends -->
    <!-- Forgot Password Model Box -->
    <div id="forgot" class="modal hide fade in" style="display: none;">
        <div class="modal-header">
            <a class="close" data-dismiss="modal">×</a>
            <h3>
                Forgot Password</h3>
        </div>
        <div class="modal-body">
            <p>
                Enter your username to reset the password</p>
            <form>
            <div class="controls controls-row">
                <input id="name" name="name" type="text" class="center col-sm-4 well-sm" placeholder="Name" />
            </div>
            </form>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn btn-primary">Submit</a> <a href="#" class="btn" data-dismiss="modal">
                Close</a>
        </div>
    </div>
    <!-- Contact Us Model Box -->
    <div id="contact" class="modal hide fade in" style="display: none;">
        <div class="modal-header">
            <a class="close" data-dismiss="modal">×</a>
            <h3>
                Contact Us</h3>
        </div>
        <div class="modal-body">
            <form>
            <div class="controls controls-row">
                <input id="name" name="name" type="text" class="center col-sm-3 well-sm" placeholder="Name" />
            </div>
            <div class="controls controls-row">
                <input id="email" name="email" type="email" class="center col-sm-3 well-sm" placeholder="Email address" />
            </div>
            <div class="controls">
                <textarea id="message" name="message" class="center col-sm-5 well-sm" placeholder="Your Message" rows="5"></textarea>
            </div>
            </form>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn btn-primary">Submit</a> <a href="#" class="btn" data-dismiss="modal">
                Close</a>
        </div>
    </div>
    <!-- JavaScript -->
    <script type="text/javascript" src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
    <script type="text/javascript" src="/Scripts/bootstrap.min.js"></script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="/Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="/Scripts/retina.js"></script>
    <script type="text/javascript" src="/Scripts/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="/Scripts/smoothscroll.js"></script>
    <script type="text/javascript" src="/Scripts/jquery-func.js"></script>
</body>
</html>
