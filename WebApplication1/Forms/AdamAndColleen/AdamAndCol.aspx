<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AdamAndCol.aspx.vb"
	Inherits="WebApplication1.LandingPage" %>


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
	<%--<link href="/Styles/main.css" rel="stylesheet" />--%>
	<link href="/Styles/icomoon.css" rel="stylesheet" />
	<link href="/Styles/animate-custom.css" rel="stylesheet" />
	<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic'
		rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet'
		type='text/css' />
	<link rel="shortcut icon" href="/favicon (2) (1).ico" type="image/x-icon">
	<link rel="icon" href="/favicon (2).ico" type="image/x-icon">
	<script type="text/javascript" src="/Scripts/jquery.min.js"></script>
	<script type="text/javascript" src="/Scripts/modernizr.custom.js"></script>
	<script type="text/javascript" src="/Scripts/Proposal.js"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
	<body data-spy="scroll" data-offset="0" data-target="#navbar-main">
		<!-- ==== HEADERWRAP ==== -->
		<div id="headerwrapAdamAndCol" id="home" name="home">
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
					<h3 class="black-shadow" style="color:White">This site is dedicated to my Girlfriend.</h3>
			</header>
		</div>
		<!-- ==== GREYWRAP ==== -->

		<div id="greywrap">
			<div class="row">
				<div class="col-lg-4 callout">
					<span class="icon icon-heart"></span>
					<h2>
						<a style="color:Gray" href="/Forms/AdamAndColleen/Proposal/Proposal.aspx">Proposal</a></h2>
					<p>
						Click <a style="color:Gray" href="/Forms/AdamAndColleen/Proposal/Proposal.aspx">here</a> to see more about my proposal.
					</p>
				</div>
				<!-- col-lg-4 -->
				<div class="col-lg-4 callout">
					<span class="icon icon-people"></span>
					<h2>
						<a style="color:Gray" href="/Forms/AdamAndColleen/Wedding/Wedding.aspx">Wedding</a></h2>
					<p>
						Click <a style="color:Gray" href="/Forms/AdamAndColleen/Wedding/Wedding.aspx">here</a> to learn more about our wedding.
					</p>
				</div>
				<!-- col-lg-4 -->
				<div class="col-lg-4 callout">
					<span class="icon icon-bed"></span>
					<h2>
						<a style="color:Gray" href="/Forms/AdamAndColleen/Honeymoon/Honeymoon.aspx">Honeymoon</a></h2>
					<p>
						Click <a style="color:Gray" href="/Forms/AdamAndColleen/Honeymoon/Honeymoon.aspx">here</a> to check out details about our awesome honeymoon.
					</p>
				</div>
				<!-- col-lg-4 -->
			</div>
			<!-- row -->
		</div>
		<div class="row centered">
			<button id="btnSpecialThanks" type="button" class="btn btn-default" data-container="body" data-toggle="popover" 
			data-placement="top" data-title="Special Thanks">Special Thanks</button>
		</div>
	</body>
</asp:Content>


