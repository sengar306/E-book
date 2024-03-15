<%@page import ="java.sql.*"%>
<%@ page import ="com.DB.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<%@ include file = "all_component/navbar.jsp" %>
<div class ="container-fluid back-img">
<h2 class="text-center text-primary">EBook Management System</h2>
</div>


 
<!-- start New Book -->
<div class="container " >
<h3 class="text-center">Recent Book</h3>
<div class="row">
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container">
<a href="" class="btn btn-danger btn-sm mx-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm mx-1">View Details</a>
<a href="" class="btn btn-danger btn-sm mx-1">299</a>

</div>

</div>
</div>


</div>
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container ">
<a href="" class="btn btn-danger btn-sm mx-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm mx-1">View Details</a>
<a href="" class="btn btn-danger btn-sm mx-1">299</a>

</div>

</div>
</div>


</div>
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container ">
<a href="" class="btn btn-danger btn-sm mx-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm mx-1">View Details</a>
<a href="" class="btn btn-danger btn-sm  mx-1">299</a>

</div>

</div>
</div>


</div>
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container ">
<a href="" class="btn btn-danger btn-sm mx-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm mx-1">View Details</a>
<a href="" class="btn btn-danger btn-sm mx-1">299</a>

</div>

</div>
</div>


</div>
</div>
<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-White">View All</a>
</div>

</div>
<!-- End Recent Books -->
<hr>
<!-- start New Book -->
<div class="container " >
<h3 class="text-center">New Book</h3>
<div class="row">
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container">
<a href="" class="btn btn-danger btn-sm mx-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm mx-1">View Details</a>
<a href="" class="btn btn-danger btn-sm mx-1">299</a>

</div>

</div>
</div>


</div>
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container ">
<a href="" class="btn btn-danger btn-sm mx-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm mx-1">View Details</a>
<a href="" class="btn btn-danger btn-sm mx-1">299</a>

</div>

</div>
</div>


</div>
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container ">
<a href="" class="btn btn-danger btn-sm mx-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm mx-1">View Details</a>
<a href="" class="btn btn-danger btn-sm  mx-1">299</a>

</div>

</div>
</div>


</div>
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container ">
<a href="" class="btn btn-danger btn-sm mx-1"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a>
<a href="" class="btn btn-success btn-sm mx-1">View Details</a>
<a href="" class="btn btn-danger btn-sm mx-1">299</a>

</div>

</div>
</div>


</div>
</div>
<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-White">View All</a>
</div>

</div>
<!-- End New Books -->
<hr>
<!-- start Old book -->
<div class="container " >
<h3 class="text-center">Old Book</h3>
<div class="row">
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container">

<a href="" class="btn btn-success btn-sm mx-2 ml-2">View Details</a>
<a href="" class="btn btn-danger btn-sm mx-2">299</a>

</div>

</div>
</div>


</div>
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container ">

<a href="" class="btn btn-success btn-sm mx-2 ml-2">View Details</a>
<a href="" class="btn btn-danger btn-sm mx-2">299</a>

</div>

</div>
</div>


</div>
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:Old</p>
<div class="button-container ">

<a href="" class="btn btn-success btn-sm   ml-2 mx-2">View Details</a>
<a href="" class="btn btn-danger btn-sm  mx-2">299</a>

</div>

</div>
</div>


</div>
<div class="col-md-3">
<div class ="card crd-ho">
<div class="card-body text-center">
<img alt ="" src="book/HarryPotter.jpg" style="width:150px; height:200px;" class="img-thumblin">
<p>HarryPotter</p>
<p>J.K.Rollings</p>
<p>Categories:New</p>
<div class="button-container  ">

<a href="" class="btn btn-success btn-sm mx-2 ml-2">View Details</a>
<a href="" class="btn btn-danger btn-sm mx-2 ml-2">299</a>

</div>

</div>
</div>


</div>
</div>
<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-White">View All</a>
</div>

</div>
<!-- End Old Books -->
<hr>
<%@include file="all_component/footer.jsp" %>

</body>
</html>