<div class="container-fluid p-3 bg-light">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fa-solid fa-book"></i> Ebooks</h3>
        </div>
        <div class="col-md-6">
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
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
