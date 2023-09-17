<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LiveCricketScores._Default" Async="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <%--<div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>--%>
    <%--    <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>--%>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <div class="live-cricket-matches">
  <h2>Live Cricket Matches</h2>
  <table>
    <thead>
      <tr>
        
        <th>Match Name</th>
        <th>Match Type</th>
        <th>Match Status</th>
        <th>Venue</th>
        <th>Date and Time</th>
        <th>Teams</th>
        <th>Score</th>
        
        <th>Match Started</th>
        <th>Match Ended</th>
      </tr>
    </thead>
    <tbody>
      <% foreach (var  match in matches) { %>
        <tr>
         
          <td><%= match.name %></td>
          <td><%= match.matchType %></td>
          <td class ="match-status"><%= match.status %></td>
          <td><%= match.venue %></td>
          <td><%= match.dateTimeGMT %></td>
          <td><%= match.teams[0] %> vs <%= match.teams[1] %></td>
          <td class="score"><%= match.score[0].r %> - <%=  match.score.Count==2 ? match.score[1].r : 0 %></td>
         
          <td><%= match.matchStarted %></td>
          <td><%= match.matchEnded %></td>
        </tr>
      <% } %>
    </tbody>
  </table>
</div>

        </div>
    </div>

</asp:Content>
