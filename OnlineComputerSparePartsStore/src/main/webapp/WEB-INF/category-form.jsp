
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <html>
        <head>
            <title>Category Management</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 		
 		</head>
        <body>
        <body style='background-color: GhostWhite ;'>
            <header>
            
            <!-- *******************Nav Bar******************** -->
             <nav class="navbar navbar-expand-lg navbar-light bg-light" >
	<div class="container" style="background-color:teal">
		<a class="navbar-brand" href="index.jsp" style="color:white; font-family:Cursive;font-size:200%">TECH STORE</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="index.jsp" style="color:white">Home</a></li>
				
				
			
               <li class="nav-item"><a class="nav-link" href="login.jsp" style="color:white">Login</a></li>
               <li class="nav-item"><a class="nav-link" href="#" style="color:white">Register</a></li>
			
			</ul>
		</div>
		
		 <div class="float-right" align="center">
    <form class="form-inline my-2 my-lg-0" action="search-product" method="post">
      <input class="form-control mr-sm-2" type="search"  aria-label="Search"  name="SEARCH" >
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="color:white; border-color:white"  >Search</button>
    </form>
    </div>
		
	</div>
</nav>
</nav>
          </header>
            <br>
            <!-- ********************Page content**************** -->
            
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body" style="background-color: Azure">
                        <c:if test="${category != null}">
                       	
                       	<form action="update" method="post">
                        </c:if>
                        <c:if test="${category == null}">
                            <form action="insert" method="post">
                        </c:if>
                        <caption>
                            <h2>
                                <c:if test="${category != null}">
                                    Edit Category
                                </c:if>
                                <c:if test="${category == null}">
                                    Add New Category
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${category != null}">
                            <input type="hidden" name="id" value="<c:out value='${category.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Category Name</label> <input type="text" value="<c:out value='${category.name}' />" class="form-control" name="name" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Category Description</label> <input type="text" value="<c:out value='${category.description}' />" class="form-control" name="description" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Category Quantity</label> <input type="text" value="<c:out value='${category.quantity}' />" class="form-control" name="quantity" required="required">
                        </fieldset>

                        <button type="submit" class="btn btn-success"  style="background-color: teal">Save</button>
                        </form>
                    </div>
                </div>
            </div>
      
 				<!-- ********************Page content**************** -->
 <!-- Footer -->
<footer class="page-footer font-small unique-color-dark">

  		<div style="background-color: #48C9B0 ;">
    	<div class="container">

      	<div class="container mt-5 mb-5 d-flex justify-content-center">

      
            <div class="maincard p-3">
                <div class="thecard">
                    <div class="thefront text-center py-4 facebook">
                        <div class="social-icon"> <i class="fa fa-facebook fa-2x"></i> </div>
                    </div>
                    
                </div>
            </div>
       
            <div class="maincard p-3">
                <div class="thecard">
                    <div class="thefront text-center py-4 instagram">
                        <div class="social-icon"> <i class="fa fa-instagram fa-2x"></i> </div>
                    </div>
                    
                </div>
            </div>
       
            <div class="maincard p-3">
                <div class="thecard">
                    <div class="thefront text-center py-4 youtube">
                        <div class="social-icon"> <i class="fa fa-youtube fa-2x"></i> </div>
                    </div>
                  
                </div>
            </div>
       
            <div class="maincard p-3">
                <div class="thecard">
                    <div class="thefront text-center py-4 whatsapp">
                        <div class="social-icon"> <i class="fa fa-whatsapp fa-2x"></i> </div>
                    </div>
                   
                </div>
            </div>
       
            <div class="maincard p-3">
                <div class="thecard">
                    <div class="thefront text-center py-4 pinterest">
                        <div class="social-icon"> <i class="fa fa-pinterest fa-2x"></i> </div>
                    </div>
                 
                </div>
            </div>
       
  
</div>

  	<!-- Footer Links -->
  		<div class="container text-center text-md-left mt-5">

    	<!-- Grid row -->
    	<div class="row mt-3">

      	<!-- Grid column -->
      	<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold">Tech Store</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>The Tech Store welcomes you to take advantage of competitive pricing and expert purchasing advice on your personal technology needs.</p>
		</div>

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

        	<!-- Links -->
        	<h6 class="text-uppercase font-weight-bold">Categories</h6>
        	<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        	<p>
          	<a href="#!" style="color:black">Drive and Storage</a>
        </p>
        <p>
          	<a href="#!" style="color:black">Power Cables</a>
        </p>
        <p>
          <a href="#!" style="color:black">Processes</a>
        </p>
        <p>
          	<a href="#!" style="color:black">Security Devices</a>
        </p>

      </div>

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
		        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
		        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
	        <p>
        	<a href="#!" style="color:black">About Us</a>
        </p>
        <p>
          	<a href="#!" style="color:black">Feedback</a>
        </p>
        <p>
          	<a href="#!" style="color:black">Help</a>
        </p>
      

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Contact</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <i class="fa fa-home"></i>No.13, Colombo 7.</p>
        <p>
          <i class="fa fa-envelope"></i> techstore@gmail.com</p>
        <p>
          <i class="fa fa-phone"></i> + 01 134 567 88</p>
        <p>
          <i class="fa fa-phone"></i> + 07 734 567 89</p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2021 Copyright:
    <a href="#" style="color:white"> Techstore.lk</a>
  </div>
  <!-- Copyright -->

	</footer>
<!-- Footer -->
        </body>

        </html>