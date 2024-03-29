<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" 
integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" 
crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" 
integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" 
crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" 
integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" 
crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" 
integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" 
crossorigin="anonymous"></script>

</head>
<body>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">BOOK / JDBC / MODEL1</h1>
    <p class="lead">Book Information / Input/Modify/Delete/Search</p>
  </div>
</div>

<div class="container-fluid">
	<div class="row">
  <div class="col-4">
    <div class="list-group" id="list-tab" role="tablist">
      <a class="list-group-item list-group-item-action active" id="list-insert-list" data-toggle="list" href="#insert" role="tab" aria-controls="home">Input Book Info</a>
      <a class="list-group-item list-group-item-action" id="list-all-list" data-toggle="list" href="#all" role="tab" aria-controls="profile">Search  Book Index</a>
      <a class="list-group-item list-group-item-action" id="list-delete-list" data-toggle="list" href="#delete" role="tab" aria-controls="messages">Delete Book Info</a>
      <a class="list-group-item list-group-item-action" id="list-modify-list" data-toggle="list" href="#modify" role="tab" aria-controls="modify">Modify Book Info</a>
      <a class="list-group-item list-group-item-action" id="list-search-list" data-toggle="list" href="#search" role="tab" aria-controls="search">Search Book Info</a>
    </div>
  </div>
  <div class="col-8">
    <div class="tab-content" id="nav-tabContent">
      <div class="tab-pane fade show active" id="insert" role="tabpanel" aria-labelledby="list-insert-list">Insert</div>
      <div class="tab-pane fade" id="all" role="tabpanel" aria-labelledby="list-all-list">All</div>
      <div class="tab-pane fade" id="delete" role="tabpanel" aria-labelledby="list-delete-list">Delete</div>
      <div class="tab-pane fade" id="modify" role="tabpanel" aria-labelledby="list-modify-list">Modify</div>
      <div class="tab-pane fade" id="search" role="tabpanel" aria-labelledby="list-search-list">Search</div>
    </div>
  </div>
</div>

</div>
</body>
</html>