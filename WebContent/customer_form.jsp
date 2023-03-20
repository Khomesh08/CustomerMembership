<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>

<body background="1.jpg">
<header style="color:red">
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
   <div class="container-fluid">
    <a class="navbar-brand" href="#">Customer Membership</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="customer_list">Customer</a>
        </li>  
      </ul>
    </div>
  </div>
</nav>
</header>
  <div  class="container" style="width:30%">
<c:if test="${customer == null }">


<form action="add" method="post">
<h1 align = center>Insert Customer</h1>
<hr>
  </c:if>
  
  <c:if test="${customer != null }">
  <form action="update" method="post">
  
  <h2 align="center"> Edit Customer</h2>
  <hr>
  
  </c:if>
  
  <div  class="form-floating"  hidden="hidden">
    <input type="text" id="tbName" value="<c:out value="${customer.id }"></c:out>" class ="form-control" name="tbId" aria-describedby="nameHelp">
    </div>
<br><br>
  
    <div  class="form-floating" >
    <input type="text" id="tbName" value="<c:out value="${customer.name }"></c:out>" class ="form-control" name="tbName" aria-describedby="nameHelp"  placeholder="Enter Name" required>
     	<label for="form-floating">Name</label>
    <small id="nameHelp" class="form-text text-muted"></small>
  </div><br><br>

  
    <div  class="form-floating">
    <input type="email"  id="tbEmail"  value="<c:out value="${customer.email}"></c:out>" class ="form-control" name="tbEmail" aria-describedby="emailHelp" placeholder="Enter email" required>
      <label for="form-floating">Email</label>
    
    <small id="emailHelp" class="form-text text-muted"></small>
 </div><br><br>
 
   
     <div  class="form-floating">
    <input type="tel"  id="tbMobile" value="<c:out value="${customer.mobile }"></c:out>" class ="form-control" name="tbMobile" aria-describedby="emailHelp" placeholder="Enter Mobile Number" required>
        <label for="exampleInputEmail1">Mobile</label>
    
    <small id="emailHelp" class="form-text text-muted"></small>
  </div><br><br>
 
  
  
    <div  align ="center" >
 	<button  class="btn btn-outline-success">Save</button>
 	</div>
 	</form>

  </div>

</body>
</html>