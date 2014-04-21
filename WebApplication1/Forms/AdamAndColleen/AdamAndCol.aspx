<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AdamAndCol.aspx.vb"
    Inherits="WebApplication1.LandingPage" %>

<%--<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">--%>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Adam Schaal Bootstrapped">
    <meta name="author" content="Adam Schaal">
    <title>AdamSchaal.com</title>
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
                <h3 class="black-shadow" style="color: White">This site is dedicated to my girlfriend.</h3>
            </header>
        </div>
        <!-- ==== GREYWRAP ==== -->
        <div id="greywrap">
            <br />
            <br />
            <div class="row">
                <div class="col-lg-4 callout">
                    <span class="icon icon-heart"></span>
                    <h2>
                        <a style="color: Gray" href="/Forms/AdamAndColleen/Proposal/Proposal.aspx">Proposal</a></h2>
                    <p>
                        Click <a style="color: Gray" href="/Forms/AdamAndColleen/Proposal/Proposal.aspx">here</a>
                        to see more about my proposal.
                    </p>
                </div>
                <!-- col-lg-4 -->
                <div class="col-lg-4 callout">
                    <span class="icon icon-people"></span>
                    <h2>
                        <a style="color: Gray" href="/Forms/AdamAndColleen/Wedding/Wedding.aspx">Wedding</a></h2>
                    <p>
                        Click <a style="color: Gray" href="/Forms/AdamAndColleen/Wedding/Wedding.aspx">here</a>
                        to learn more about our wedding.
                    </p>
                </div>
                <!-- col-lg-4 -->
                <div class="col-lg-4 callout">
                    <span class="icon icon-bed"></span>
                    <h2>
                        <a style="color: Gray" href="/Forms/AdamAndColleen/Honeymoon/Honeymoon.aspx">Honeymoon</a></h2>
                    <p>
                        Click <a style="color: Gray" href="/Forms/AdamAndColleen/Honeymoon/Honeymoon.aspx">here</a>
                        to check out details about our awesome honeymoon.
                    </p>
                </div>
                <!-- col-lg-4 -->
            </div>
            <!-- row -->
        </div>
        <div class="container" id="specialThanks" name="specialThanks">
            <div class="row">
                <br />
                <h1 class="centered">
                    SPECIAL THANKS TO</h1>
                <hr />
                <!-- col -->
                <div class="col-lg-12 centered">
<%--                    <h3>
                        Newsletter</h3>--%>
                        <h3>Lauren</h3>
                        For all your Boston knowledge and help.
                        <h3>Mom and Dad</h3>
                        For all your help in planning.
                        <h3>Susan</h3>
                        For helping me secretly arrange Colleen's time off.
                        <h3>Andrea</h3>
                        For your advice of things to do in Boston.
                        <h3>My Coworkers - TI, LE, RT (you guys rock)</h3>
                        Whose interest and advice helped me complete this site. 
                </div>
                <!-- col -->
            </div>
            <!-- row -->
        </div>
                        <br />
        <%--        <div class="row centered">
            <button id="btnSpecialThanks" type="button" class="btn btn-default" data-container="body" data-toggle="popover"
                data-placement="top" data-title="Special Thanks">
                Special Thanks</button>
        </div>--%>
        <div id="footerwrap">
            <div class="container">
                <h4>
                    Created by <a href="../../../Default.aspx">Adam T Schaal</a></h4>
            </div>
        </div>
    </body>
</asp:Content>
