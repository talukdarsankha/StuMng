<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add students</title>
<%@include file="all.jsp" %>
</head>
<body>

<%@include file="nav.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page isELIgnored="false" %>

<div style="width:600px; padding: 50px 50px; margin: 50px 320px;  box-shadow: 0px 0px 20px gray;">
 <h1 style="text-align: center; ">Add Student</h1>
 
<form action="add" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter student name" name="F">
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Date of Addmission</label>
    <input type="date" class="form-control" id="exampleInputPassword1" placeholder="Select date" name="D">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Qualification</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter student Qualification" name="Q">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Address</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter student address" name="A">
  </div>
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email-id</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter student mail-id" name="E">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter student pasword" name="P">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  
</form>  
  </div>
  

</body>
</html>