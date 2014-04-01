<%@ Page Title="Timeline of Events" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Proposal_Timeline.aspx.vb" Inherits="WebApplication1.ProposalStory_Timeline" %>

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
                        Timeline of Events</h1>
                        <p>In order to pull this off, I had to be quite sneaky!  Colleen can almost always tell when I'm hiding something so I had to be a good planner and enlist help!</p>
                        <p>Read along to find out how I did it, the funny things that happened along the way, and how it all came together in the end.</p>
                        
                        <hr />
                        <div class="panel-group" id="accordion">
                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                  February
                                </a>
                              </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse">
                              <div class="panel-body">
                                  <table id="tblPlanning" class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Event</th>
                                            <th>Location</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="rptFebruary" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblDate" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblContent" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblLocation" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                  March
                                </a>
                              </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                              <div class="panel-body">
                                  <table class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Event</th>
                                            <th>Location</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="rptMarch" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblDate" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblContent" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblLocation" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                  April
                                </a>
                              </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                              <div class="panel-body">
                                  <table class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Event</th>
                                            <th>Location</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="rptApril" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblDate" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblContent" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblLocation" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                        </div>
                </div>
            </div>
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="Div1" role="navigation">
                <div class="list-group">
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal.aspx" type="radio" class="list-group-item">Proposal</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Story.aspx" type="radio" class="list-group-item">Proposal Story</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_How.aspx" type="radio" class="list-group-item">How did I think of it?</a>
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Where.aspx" type="radio" class="list-group-item">Where did it happen?</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_WhereNow.aspx" type="radio" class="list-group-item">Where are we now?</a> 
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_PicVideos.aspx" type="radio" class="list-group-item">Pictures and Video</a>
                    <a href="/Forms/AdamAndColleen/Proposal/Proposal_Timeline.aspx" type="radio" 
                        class="list-group-item active">Planning Timeline</a>
                </div>
            </div>
        </div>
        <!--/row-->
    </div>
    <!--/.container-->
</asp:Content>