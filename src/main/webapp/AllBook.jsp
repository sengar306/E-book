<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin:All Books</title>
    <%@ include file ="all_component/navbar.jsp"%>

</head>
<body>
<%@ include file="all_component/navbar.jsp"%>
<h3 class ="text-center">Hello Admin</h3>
<table class="table table-success table-striped">
    <thead class="bg-primary text-white">
    <tr>
        <th scope="col">S.No.</th>
        <th scope="col">Book</th>
        <th scope="col">Author</th>
        <th scope="col">Price</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>Harry Potter</td>
        <td>J.K. Rolling</td>
        <td>299</td>
        <td>
            <a href = "#" class="btn btn-sm btn-primary">Edit</a>
            <a href ="#" class="btn btn-sm btn-danger">Delete</a>
        </td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        <a href = "#" class="btn btn-sm btn-primary">Edit</a>
        <a href ="#" class="btn btn-sm btn-danger">Delete</a>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td colspan="2">Larry the Bird</td>
        <td>@twitter</td>
        <a href = "#" class="btn btn-sm btn-primary">Edit</a>
        <a href ="#" class="btn btn-sm btn-danger">Delete</a>
    </tr>
    </tbody>
</table>

</body>
</html>