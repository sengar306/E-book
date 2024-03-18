<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin:home</title>
    <%@include file="all_component/allCSS.jsp"%>
    <style type = "text/css">
        a{
            text-decoration: none;
            color:black;
        }
        a:hover{
            text-decoration: none;
            color:blue;
        }
    </style>


</head>
<body>
<%@include file="all_component/navbar.jsp"%>
<div class="container ">
    <div class = "row p-5">

        <div class = "col-md-3">
            <a href="addbook.jsp">
                <div class ="card">
                    <div class ="card-body text-center">
                        <i class="fa-solid fa-plus fa-3x text-primary"></i><br>
                        <h4>Add Books</h4>

                    </div>
                </div>
            </a>
        </div>
        <div class = "col-md-3">
            <a href ="AllBook.jsp">
                <div class ="card">
                    <div class ="card-body text-center">
                        <i class="fa-solid fa-bars fa-3x text-danger"></i><br>
                        <h4>All Detail</h4>

                    </div>
                </div>
            </a>
        </div>
        <div class = "col-md-3">
            <a href="http://localhost:8080/Ebook-App/">
            <div class ="card">
                <div class ="card-body text-center">
                    <i class="fa-solid fa-right-from-bracket fa-3x text-warning"></i><br>
                    <h4>Logout</h4>

                </div>
            </div>
            </a>
        </div>
        <div class = "col-md-3">
            <a href="http://localhost:8080/Ebook-App/">
                <div class ="card">
                    <div class ="card-body text-center">
                        <i class="fa-solid fa-user fa-3x" ></i><br>
                        <h4>Admin</h4>

                    </div>
    </div>
</div>
</body>
</html>