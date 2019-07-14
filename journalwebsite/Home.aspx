<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="journalwebsite.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style> .card  {margin-top:20px;}
  #list {margin-top:25px; margin-left:20px;}
 .card  a{
      border:solid 1px ;
      background-color:purple;
      padding:3px;
      color:white;
  }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container" style="margin-top:20px; margin-bottom:20px;">
    <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="la.jpg" alt="Los Angeles">
    </div>
    <div class="carousel-item">
      <img src="chicago.jpg" alt="Chicago">
    </div>
    <div class="carousel-item">
      <img src="ny.jpg" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>
        </div>

    <div class="jumbotron bg-light" >
  <h1 class="display-3">Welcome To BT Journal</h1>
  <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
      This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
      This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
      This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
      This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
      This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
  </p>
  <hr class="my-4">
  <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
  <p class="lead">
     
    <a class="btn btn-primary btn-lg" href="Sections.aspx" role="button">Go to Articals</a>
  </p>
</div>
    

</asp:Content>
