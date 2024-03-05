<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook:Register</title>
<%@include file="all_component/allCSS.jsp" %>
</head>
<body style=" background-color:#f0f1f2 " >
<%@include file="all_component/navbar.jsp" %>
<div class="container p-2">
<div class ="row">
<div class= "col-md-4 offset-md-4">
<div class="card">
<div class= "card-body">  
<h4 class ="text-center">Registration Page</h4>
<form action="register" method="post" >
	<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Enter Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="background-color:#f0f1f2"  required="required" name="fname">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Phone Number</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" style="background-color:#f0f1f2" required="required" name="email" >
    <div id="emailHelp" class="form-text">Phone Number</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phoneNo">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check" required="required">
    <label class="form-check-label" for="exampleCheck1">Agree terms and condition</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>
</div>
</div>
</div>
<%@include file ="all_component/footer.jsp" %>

</body>
</html>