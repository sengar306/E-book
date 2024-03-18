<%@page import ="java.sql.*"%>
<%@ page import ="com.DB.DBConnect" %>
<%@ page import="com.entity.newbook" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <script>
    function toggleText(descriptionId) {
      var description = document.getElementById(descriptionId);
      description.style.display = (description.style.display === "none") ? "block" : "none";
    }
  </script>
<meta charset="UTF-8">
<title> E-book : Index</title>
<%@include file="all_component/allCSS.jsp"%>
<style type="text/css">
.back-img{
background: url("IMG/Book.jpg");
height: 50vh;
width:100%;
background-repeat:no-repeat;
background-size:cover;
}
</style>
</head>
<body style="background-color:#f7f7f7;">

 <%System.out.println(request.getAttribute("islogin"));%>

   <% if (request.getAttribute("islogin")!=null){%>
 <div class="container-fluid p-3 bg-light">
   <div class="row">
     <div class="col-md-3 text-success">
       <h3><i class="fa-solid fa-book"></i> Ebooks</h3>
     </div>
     <div class="col-md-6">
       <form action="searchservlet"  method="get" class="d-flex" role="search >
         <input class="form-control " type="search" placeholder="Search" aria-label="Search" name="search">
         <button class="btn btn-primary my-2 my-sm-0" type="submit" >Search</button>
       </form>
     </div>
     <div class="col-md-3 d-flex align-items-center justify-content-end"> <!-- Parent div for alignment -->
       <a href="login.jsp" class="btn btn-success ml-1 btn-danger"><i class="fa-solid fa-right-to-bracket "></i> Logout</a>

       <!-- User div -->
       <div class="ms-2 text-black"><%=request.getParameter("name")%></div>
     </div>
   </div>
 </div>
 <nav class="navbar navbar-expand-lg  navbar-dark bg-primary  ">

   <a class="navbar-brand" href="#">  </a>
   <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
     <span class="navbar-toggler-icon"></span>
   </button>
   <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       <li class="nav-item active">
         <a class="nav-link " aria-current="page" href="#"><i class="fa-solid fa-house"></i> home
           <span class="sr-only">(current)</span></a>
       </li>
       <li class="nav-item active">
         <a class="nav-link " href="#"><i class="fa-solid fa-book-open"></i> New Book</a> </li>
       <li class="nav-item active">      <a class="nav-link " href="#"><i class="fa-solid fa-book-open"></i> Recent Book</a><li>
       <li class="nav-item active">    <a class="nav-link " href="#"> <i class="fa-solid fa-book"></i> Old Book</a>
       </li>


     </ul>
     <form class="d-flex" role="search">

       <button class="btn btn-outline-light my-2 my-sm-0 mx-3" type="submit"><a href="<%request.getContextPath();%>cart.jsp"> "<i class="fa-solid fa-cart-shopping"></i></a> My cart</button>

       <button class="btn btn-outline-light my-2 my-sm-0 ml-3 mx-3" type="submit"><i class="fa-solid fa-phone "></i> Contact us</button>
     </form>
   </div>

 </nav>

 <% } %>


   <% if (request.getAttribute("islogin")==null) { %>
 <%@ include file="all_component/navbar.jsp" %>
   <% } %>


 <div class ="container-fluid back-img">
</div>
<style>
  .card-container {
    display: inline-block;
    flex-wrap: wrap;
    justify-content:space-between ;
    margin-top: 20px;

  }
  .card {
    display: inline-flex;
    width: 300px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
    transition: transform 0.2s;
  }
  .card:hover {
    transform: scale(1.05);
    box-shadow:4px 5px 6px  #d9c16c;

  }
  .card-body {
    padding: 15px;

  }

  img{
    width: 150px;
    height: 200px;
  }
</style>
</head>
<body>
<%-- Iterate over the list of books and generate card HTML for each book --%>
<div class="container">
  <h1>Book List</h1>
  <div class="row">
    <%
      List<newbook> mylist = (List<newbook>)request.getAttribute("myList");
      for(newbook book:mylist){
    %>
    <div class="col-sm-4 p-3">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title"><%= book.getBookname() %></h5>
          <img src="<%= book.getBookImage() %>">
          <p class="card-text"><%= book.getBook_price()%></p>
          <button onclick="toggleText('<%= book.getBook_Id() %>')">Description</button>
          <div id="<%= book.getBook_Id() %>" style="display: none;">
            <%= book.getBook_description()%>
          </div>
        </div>
      </div>
    </div>
    <% } %>
  </div>
</div>


<%@include file="all_component/footer.jsp" %>

</body>
</html>