<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cart Page</title>
<%@include file ="all_component/allCSS.jsp"%>
        </head>
        <body>
<%@include file="all_component/navbar.jsp"%>
        <div class="container">
        <div class ="row p-2">
        <div class="col-md-6">

        <div class ="card bg-white">
        <div class ="card-body">
        <h3 class = "text-center text-success">Your Selected Item </h3>
        <table class="table">
        <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Handle</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        </tr>
        <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        </tr>
        <tr>
        <th scope="row">3</th>
        <td colspan="2">Larry the Bird</td>
        <td>@twitter</td>
        </tr>
        </tbody>
        </table>
        </div>
        </div>
        </div>
        <div class="col-md-6">'
        <div class="card">
        <div class = "card-body">
        <h3 class="text-center text-success">Your Details for order</h3>
        <form class="row g-3">
        <div class="col-md-6">
        <label for="inputEmail4" class="form-label">Email</label>
        <input type="email" class="form-control" id="inputEmail4">
        </div>
        <div class="col-md-6">
        <label for="inputName4" class="form-label">Name</label>
        <input type="text" class="form-control" id="inputName4">
        </div>
        <div class="col-12">
        <label for="inputAddress" class="form-label">Address</label>
        <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
        </div>
        <div class="col-12">
        <label for="inputAddress2" class="form-label">Address 2</label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
        </div>
        <div class="col-md-6">
        <label for="inputCity" class="form-label">City</label>
        <input type="text" class="form-control" id="inputCity">
        </div>
        <div class="col-md-4">
        <label for="inputState" class="form-label">State</label>
        <select id="inputState" class="form-select">
        <option selected>Choose...</option>
        <option>...</option>
        </select>
        </div>
        <div class="col-md-2">
        <label for="inputZip" class="form-label">Zip</label>
        <input type="text" class="form-control" id="inputZip">
        </div>
        <div class="col-md-4">
        <label for="inputpayment" class="form-label">Payment</label>
        <select id="inputpayment" class="form-select">
        <option selected>Option</option>
        <option>C.O.D</option>
        <option>U.P.I</option>
        </select>
        </div>
        <div class="col-12">
        <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck">
        <label class="form-check-label" for="gridCheck">
        Want to book order
        </label>
        </div>
        </div>
        <div class="col-12">
        <button type="submit" class="btn btn-warning">Book Order</button>
        </div>
        </form>
        </div>
        </div>
        </div>
        </div>
        </div>
        </body>
<%@include file="all_component/footer.jsp"%>

        </html>